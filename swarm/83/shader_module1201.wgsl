struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = all(select(vec3<bool>(true, true, false), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, (u_input.c << (55734u % 32u)) >= firstLeadingBit(u_input.c), select(1u, u_input.b.x, true) <= 1u)));
    let var_1 = vec3<i32>(abs(~(~(-1i))), 13292i, 0i);
    global0 = Struct_2(global0.a, vec4<i32>(-1i) * -(vec4<i32>(u_input.c, 2147483647i, u_input.c, -29898i) >> (~vec4<u32>(u_input.b.x, 91672u, u_input.b.x, 1u) % vec4<u32>(32u))), global0.c);
    var var_2 = Struct_2(global0.a, global0.b, global0.a.x);
    var var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.a << (min(u_input.b.x, 55801u) % 32u)), u_input.b), vec3<u32>(63709u, 105967u, u_input.a));
    return -9517i ^ (firstTrailingBit(1i) >> (_wgslsmith_mult_u32(16739u, u_input.a) % 32u));
}

fn func_2() -> vec2<i32> {
    global0 = Struct_2(global0.a, global0.b, _wgslsmith_div_f32(636f, global0.a.x));
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.c, -2550i), global0.b.x & 14458i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(global0.b.x, u_input.c, 8816i, -2147483647i), global0.b, vec4<bool>(true, true, true, var_0.x)), _wgslsmith_div_vec4_i32(global0.b, vec4<i32>(18590i, global0.b.x, global0.b.x, u_input.c))), vec4<i32>(firstTrailingBit(-2147483647i), i32(-1i) * -17558i, -15370i << (1u % 32u), reverseBits(-1i)))), ~(~(-vec3<i32>(global0.b.x, u_input.c, u_input.c))));
    let var_2 = global0.b.wzw;
    var var_3 = global0.b;
    return max(countOneBits(global0.b.zz) & vec2<i32>(-_wgslsmith_div_i32(var_1.x, 0i), func_3()), vec2<i32>(var_2.x, var_1.x));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = vec3<i32>(arg_2, -arg_0, _wgslsmith_dot_vec2_i32(func_2() ^ global0.b.ww, global0.b.yz));
    var var_1 = true;
    global0 = Struct_2(global0.a, abs(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.zy, var_0.xx), reverseBits(-18521i), arg_0, u_input.c)) << (~(~select(vec4<u32>(1u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(47818u, 1u, 4294967295u, 68358u), false)) % vec4<u32>(32u)), -365f);
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.a, global0.a) * vec2<f32>(-1414f, 126f)), global0.b, arg_1);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(172f, _wgslsmith_f_op_f32(min(154f, global0.c))))))), _wgslsmith_mod_vec4_i32(~global0.b, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(24913i, 2147483647i, u_input.c), -2147483647i, ~2147483647i, func_2().x), global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(304f * -127f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(218f, _wgslsmith_f_op_f32(arg_1 - -802f))), _wgslsmith_f_op_f32(abs(1188f)))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, select(vec3<bool>(all(vec3<bool>(true, false, false)) && true, countOneBits(-21059i) <= select(-2147483647i, global0.b.x, true), true && all(vec2<bool>(true, true))), vec3<bool>(true, !all(vec2<bool>(false, false)), true), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xy), ~u_input.b.yx) < (func_1(global0.b.x, global0.c, global0.b.x) & u_input.b.x)), _wgslsmith_div_i32(abs(i32(-1i) * -1i), global0.b.x));
    let var_1 = u_input.b;
    var var_2 = Struct_2(global0.a, vec4<i32>(-30334i, u_input.c, countOneBits(~(-39882i)), _wgslsmith_dot_vec3_i32(vec3<i32>(select(global0.b.x, 65733i, false), 1i, u_input.c), global0.b.zwy)), _wgslsmith_f_op_f32(-1f));
    global1 = any(select(select(!select(var_0.b, var_0.b, var_0.a), vec3<bool>(true, true, true), true), var_0.b, !(!(!vec3<bool>(true, true, var_0.a)))));
    global0 = Struct_2(var_2.a, -var_2.b, global0.a.x);
    var_0 = Struct_1(var_0.a, var_0.b, global0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(-149f)), _wgslsmith_f_op_f32(min(global0.a.x, 1396f))))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(~(-32530i), _wgslsmith_mod_i32(global0.b.x & -2147483647i, -global0.b.x)), -2147483647i));
}

