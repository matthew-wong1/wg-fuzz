struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = vec4<i32>(~1i, 15599i, _wgslsmith_add_i32(u_input.c.x, 0i ^ arg_0), 4089i);
    return ~u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    let var_0 = -2147483647i | (-arg_0.d << (1u % 32u));
    let var_1 = 358f;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 + 516f), -1206f), 699f, false)), _wgslsmith_f_op_f32(abs(arg_1.x)))), _wgslsmith_f_op_f32(ceil(-212f))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(562f - _wgslsmith_f_op_f32(-413f * var_1))));
    var var_4 = arg_0;
    return ~30907u;
}

fn func_1() -> vec4<u32> {
    let var_0 = u_input.a;
    var var_1 = !select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, all(vec4<bool>(true, true, false, true)), true), !(1u == var_0));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-216f, -100f))));
    var var_3 = select(firstTrailingBit(vec3<u32>(~u_input.a >> (func_2(-10631i) % 32u), _wgslsmith_mult_u32(func_3(Struct_1(u_input.c.ywz, vec4<f32>(-486f, 2204f, 936f, -1038f), 22674u, -1i), vec2<f32>(460f, -489f)), _wgslsmith_sub_u32(var_0, 66288u)), ~_wgslsmith_add_u32(69878u, u_input.a))), ~(~vec3<u32>(var_0, 50615u, var_0)), select(var_1.x & (true && !var_1.x), var_1.x, (u_input.c.x > u_input.b.x) & !select(var_1.x, false, var_1.x)));
    var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 1u), min(~firstTrailingBit(vec3<u32>(1u, 4294967295u, var_3.x)), firstLeadingBit(vec3<u32>(var_3.x, var_0, var_0))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.x, var_0, _wgslsmith_div_u32(var_0, var_0)), ~(~vec3<u32>(1u, 4957u, var_3.x))) % vec3<u32>(32u)), ~min(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(1u, 19552u, u_input.a), vec3<u32>(var_0, 60371u, 0u)), vec3<u32>(0u, var_0, 1u), vec3<u32>(0u, var_0, 53415u)), ~vec3<u32>(var_0, u_input.a, 1621u)));
    return firstLeadingBit(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 19067u, u_input.a, 5393u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, var_0, var_3.x, 91649u), vec4<u32>(4294967295u, 1u, 47471u, u_input.a))), ~19372u, _wgslsmith_sub_u32(var_3.x & 5830u, var_0 >> (20961u % 32u)), (74596u << (1u % 32u)) >> (~var_0 % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 75674u, 1u, 21555u) >> (reverseBits(vec4<u32>(4294967295u, u_input.a, 1u, 4294967295u)) % vec4<u32>(32u)), func_1() ^ vec4<u32>(1u, u_input.a, u_input.a, u_input.a)));
    var var_1 = vec2<u32>(68201u ^ ~u_input.a, _wgslsmith_sub_u32(~31477u, ~u_input.a)) >> (~(~vec2<u32>(var_0.x, _wgslsmith_mod_u32(u_input.a, 52928u))) % vec2<u32>(32u));
    var_1 = firstTrailingBit(var_0.ww);
    let var_2 = _wgslsmith_mod_vec2_u32(var_0.xz, ~var_0.yz);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(715f)), _wgslsmith_f_op_f32(-1000f - 296f)))));
    var var_4 = select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), vec2<bool>(false, true & (u_input.a > u_input.a)), select(vec2<bool>(true, true), vec2<bool>(true, true), !all(vec2<bool>(false, true)))), select(vec2<bool>(all(vec4<bool>(true, true, false, true)), true), vec2<bool>(true, true), u_input.b.x < max(-u_input.c.x, 2147483647i)), select(vec2<bool>(true, _wgslsmith_f_op_f32(min(193f, var_3)) == -117f), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec3<bool>(false, false, false))), vec2<bool>(true, true)), false));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_2, var_2, vec2<bool>(false, true)), vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_sub_u32(var_2.x, 41943u), var_0.x), var_2.x, u_input.a, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(~0u, _wgslsmith_div_u32(var_1.x << (10827u % 32u), _wgslsmith_sub_u32(var_0.x, u_input.a))), vec2<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, 12367u), var_0.wwz)), 32480u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_3 - -1564f), 386f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_3, var_3), _wgslsmith_f_op_f32(abs(var_3)))))));
}

