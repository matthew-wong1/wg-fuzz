struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(128f, 318f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -803f), 1f)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 1u) & (vec2<u32>(0u, u_input.c) | vec2<u32>(u_input.c, 35460u)), vec2<u32>(u_input.c, 0u)), Struct_1(abs(vec4<u32>(~42823u, 116753u, u_input.c, ~u_input.c)), firstTrailingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(49595u, 0u, u_input.c, 0u), ~vec4<u32>(u_input.c, u_input.c, 0u, 92783u))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-285f, -2132f))))))), u_input.d);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32) -> vec2<i32> {
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    let var_0 = select(select(vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), !all(vec2<bool>(true, true))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), true), any(vec2<bool>(true, true))), vec2<bool>(true, true)), vec2<bool>(true & ((i32(-1i) * -9610i) >= ~arg_2), true), true);
    let var_1 = _wgslsmith_add_u32(~84754u, _wgslsmith_mult_u32(_wgslsmith_div_u32(~u_input.c, _wgslsmith_dot_vec4_u32(max(arg_1.c.a, arg_1.c.a), vec4<u32>(arg_1.c.b.x, u_input.c, arg_1.b.x, u_input.c))), ~_wgslsmith_dot_vec2_u32(arg_1.c.a.xz, ~vec2<u32>(10604u, u_input.c))));
    global0 = array<i32, 26>();
    return abs(vec2<i32>(abs(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-32429i, -9584i), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_1.c.b.x, 26u)], 1i), arg_0.x)), arg_1.d.x));
}

fn func_1(arg_0: f32) -> vec2<u32> {
    var var_0 = func_3(~(-u_input.d.zxy), func_2(any(vec2<bool>(true, true)), -84779i), global0[_wgslsmith_index_u32(~1u, 26u)]) << (~vec2<u32>(~4294967295u, ~_wgslsmith_mult_u32(u_input.c, u_input.c)) % vec2<u32>(32u));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1015f - arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + 648f), -1000f)))), vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(abs(30396u), 0u)), (28131u >> (_wgslsmith_mult_u32(u_input.c, u_input.c) % 32u)) << (u_input.c % 32u)), func_2(any(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))), _wgslsmith_add_i32(min(u_input.b.x, global0[_wgslsmith_index_u32(u_input.c, 26u)]) >> (~u_input.c % 32u), u_input.b.x)).c, ~_wgslsmith_sub_vec4_i32(u_input.d, u_input.d));
    var_0 = vec2<i32>(0i, 24449i);
    global0 = array<i32, 26>();
    let var_2 = func_2(true, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(abs(~(-1i)), -var_1.d.x | var_1.d.x, -reverseBits(1i)), global0[_wgslsmith_index_u32(u_input.c, 26u)])).c;
    return select(vec2<u32>(var_1.b.x, var_2.b.x), vec2<u32>(select(firstLeadingBit(var_2.b.x & var_2.a.x), abs(_wgslsmith_mult_u32(7516u, var_2.a.x)), all(vec4<bool>(true, true, true, true))), ~35104u), select(vec2<bool>(true, any(vec4<bool>(false, true, true, false)) & true), vec2<bool>(true, true), vec2<bool>(false, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 26>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-842f * 1701f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1618f, -119f)))), _wgslsmith_mult_vec2_u32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f) + -833f)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.c), ~1u), ~abs(vec2<u32>(u_input.c, u_input.c)))), func_2(true, -13096i).c, vec4<i32>(~(i32(-1i) * -15630i), ~(-2147483647i & u_input.d.x), u_input.d.x, firstLeadingBit(~(-3765i))) << (~(max(vec4<u32>(29141u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 20602u, 66330u, u_input.c)) & vec4<u32>(u_input.c, 4294967295u, 8036u, u_input.c)) % vec4<u32>(32u)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1032f, _wgslsmith_f_op_f32(-var_0.c.c.x)))), ~_wgslsmith_div_vec2_u32(var_0.b, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 57682u) >> (vec2<u32>(29270u, var_0.b.x) % vec2<u32>(32u)), vec2<u32>(var_0.c.a.x, var_0.b.x))), var_0.c, -var_0.d);
    let var_2 = var_0.c;
    var var_3 = Struct_1(var_1.c.b << (var_0.c.a % vec4<u32>(32u)), var_1.c.b, var_2.c);
    var var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_2.c + _wgslsmith_f_op_vec2_f32(exp2(var_2.c))), u_input.d.xzw, u_input.d.x, _wgslsmith_clamp_vec3_i32(select(firstTrailingBit(vec3<i32>(u_input.b.x, 16837i, var_1.d.x)), _wgslsmith_mult_vec3_i32(u_input.d.wxz, firstLeadingBit(var_1.d.wzz)), true), var_0.d.xyz, reverseBits(_wgslsmith_add_vec3_i32(var_1.d.yyx, ~var_1.d.zxx))));
}

