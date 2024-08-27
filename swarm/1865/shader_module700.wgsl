struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, true, false, true), vec2<f32>(-1029f, -318f), vec3<bool>(true, true, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: u32) -> vec2<f32> {
    global0 = Struct_2(!(!select(global0.a, !vec4<bool>(false, arg_0, arg_0, arg_0), global0.a)), _wgslsmith_div_vec2_f32(vec2<f32>(514f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -936f), -351f, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(129f, global0.b.x), global0.b)))))), vec3<bool>(arg_0 && true, true, global0.c.x));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * 188f));
    let var_1 = arg_2;
    let var_2 = reverseBits(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.a, 13776i)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.a, -21186i)), max(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a))))) ^ -1i;
    global0 = Struct_2(global0.a, global0.b, !select(global0.a.xww, !select(global0.c, global0.c, global0.a.xxy), select(vec3<bool>(true, global0.a.x, global0.c.x), global0.a.wyx, arg_0)));
    return vec2<f32>(global0.b.x, global0.b.x);
}

fn func_2() -> vec3<u32> {
    let var_0 = global0.a.x;
    var var_1 = ~vec2<i32>(u_input.a, u_input.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(func_3(true, ~1u, 41064u))));
    let var_3 = Struct_3(_wgslsmith_clamp_i32(reverseBits(firstTrailingBit(i32(-1i) * -1i)), ~u_input.a, -u_input.a ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(0i, 19321i)) & -2147483647i)), Struct_1(-_wgslsmith_mult_vec2_i32(vec2<i32>(-4810i, u_input.a), vec2<i32>(u_input.a, u_input.a)) | _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a)), ~vec2<i32>(0i, 63356i)), 1u, u_input.a, abs(min(vec3<i32>(-52805i, 2147483647i, 0i), vec3<i32>(11580i, u_input.a, -16598i))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(99805u, 11462u, 16752u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-global0.b.x), var_2, vec4<i32>(i32(-1i) * 0i, _wgslsmith_add_i32(reverseBits(u_input.a), 1i), _wgslsmith_div_i32(0i, i32(-1i) * -2147483647i), var_1.x));
    var var_4 = false;
    return ~vec3<u32>(_wgslsmith_clamp_u32(var_3.b.b, _wgslsmith_mod_u32(var_3.b.b, var_3.b.b), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 80464u, 1u, var_3.b.b), vec4<u32>(6557u, var_3.b.b, 863u, 72588u))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_3.b.b, 1u), _wgslsmith_mod_u32(23854u, var_3.b.b)), 0u) << (select(min(vec3<u32>(var_3.b.b, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.b.b, 20391u), vec2<u32>(4294967295u, 0u))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, var_3.b.b) | vec3<u32>(12174u, var_3.b.b, 29149u), vec3<u32>(4294967295u, var_3.b.b, 1u))), select(vec3<u32>(106367u, ~var_3.b.b, ~35566u), vec3<u32>(abs(var_3.b.b), ~var_3.b.b, ~var_3.b.b), any(!vec3<bool>(false, global0.c.x, false))), global0.a.yzw) % vec3<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(u_input.a), ~(-25485i), -(~27150i & u_input.a)), -u_input.a, _wgslsmith_mult_i32(~_wgslsmith_clamp_i32(-2147483647i, -21800i, u_input.a), u_input.a) ^ ((firstTrailingBit(u_input.a) << (1u % 32u)) << (_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_mod_u32(1u, 66738u), ~4294967295u) % 32u)), -(~(~(~(-10789i)))));
    let var_1 = _wgslsmith_dot_vec3_u32(firstLeadingBit(~min(~vec3<u32>(9890u, 1666u, 0u), vec3<u32>(0u, 4294967295u, 1u))), ~func_2());
    let var_2 = Struct_1(vec2<i32>(var_0.x, abs(var_0.x)), var_1, abs(_wgslsmith_mult_i32(15637i, select(countOneBits(var_0.x), -6883i, arg_0 || global0.a.x))), var_0.zww);
    var var_3 = true;
    global0 = Struct_2(vec4<bool>(true, false, !(var_1 <= 4294967295u) & (false | any(global0.a)), global0.c.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1403f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(325f)))), _wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))))), vec3<bool>(global0.c.x, true, global0.c.x));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = func_1(any(!global0.a), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(global0.b.x + global0.b.x)));
    let var_2 = select(firstLeadingBit(-2147483647i), (2147483647i ^ ~_wgslsmith_add_i32(var_1.a.x, var_1.a.x)) ^ firstLeadingBit(-19420i), global0.c.x);
    var var_3 = vec3<bool>(all(!(!global0.c)), false, all(select(!global0.a, vec4<bool>(true, all(vec4<bool>(false, false, true, global0.a.x)), select(false, true, false), false), vec4<bool>(false, global0.a.x, true, global0.c.x))));
    var var_4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1286f, -1260f, global0.b.x))) - vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(global0.b.x * global0.b.x), global0.b.x))))));
    var var_5 = Struct_3(var_1.a.x, func_1(global0.c.x, _wgslsmith_f_op_vec2_f32(-var_4.yz)), var_4.x, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + 1344f) * global0.b.x), -788f, var_3.x)), _wgslsmith_f_op_f32(438f - _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(-var_4.x)))), _wgslsmith_mult_vec4_i32(abs(reverseBits(-vec4<i32>(26278i, 1i, var_1.c, u_input.a))), vec4<i32>(abs(-var_1.d.x), -13516i & ~var_2, min(u_input.a, 1i), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(33120u, var_1.b, var_1.b)), vec3<u32>(~var_1.b, _wgslsmith_sub_u32(4294967295u, var_5.b.b), func_1(global0.a.x, vec2<f32>(-1359f, var_5.d.x)).b), select(~vec3<u32>(52719u, 1u, var_1.b), vec3<u32>(var_5.b.b, var_1.b, 66253u), !global0.a.xxz)), firstTrailingBit(vec3<u32>(~0u, 1u >> (var_5.b.b % 32u), var_5.b.b))), var_4.x);
}

