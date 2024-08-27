struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(u_input.c.wwz, -_wgslsmith_mod_vec3_i32(abs(u_input.c.zzw), _wgslsmith_div_vec3_i32(u_input.c.zzw, u_input.b.yyz)), u_input.b.www), any(vec3<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), false)));
    var var_1 = _wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec4_i32(reverseBits(countOneBits(u_input.b)), ~firstTrailingBit(vec4<i32>(var_0.a.x, u_input.c.x, var_0.a.x, -1236i)))), ~var_0.a.x);
    let var_2 = Struct_1(~reverseBits(-u_input.c.zzy), false);
    var_1 = var_0.a.x;
    var var_3 = Struct_2(vec3<bool>(var_0.b, all(!(!vec4<bool>(false, true, true, var_0.b))), true));
    return select(var_3.a, var_3.a, var_0.b);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(-vec3<i32>(0i, firstTrailingBit(~u_input.b.x), 24691i), true);
    let var_1 = Struct_2(select(!vec3<bool>(var_0.b, var_0.b & var_0.b, all(vec2<bool>(var_0.b, true))), select(vec3<bool>(true, any(vec3<bool>(true, var_0.b, var_0.b)), !var_0.b), !func_3(), true), func_3().x));
    var var_2 = Struct_2(!vec3<bool>(!any(vec4<bool>(var_1.a.x, var_0.b, false, false)), var_1.a.x, var_0.b));
    var_2 = var_1;
    var_2 = var_1;
    return _wgslsmith_div_i32(-2147483647i, -23042i);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> u32 {
    let var_0 = vec4<i32>(-u_input.b.x, _wgslsmith_div_i32(reverseBits(u_input.b.x), 31032i) & -17754i, ~_wgslsmith_div_i32(func_2(), u_input.b.x) << (~countOneBits(~16281u) % 32u), 24386i);
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = abs(~(~min(vec4<u32>(36625u, 4294967295u, var_1.x, var_1.x), select(arg_0, arg_0, arg_1.a.x))));
    var_2 = arg_0;
    return _wgslsmith_add_u32(arg_0.x << (var_2.x % 32u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_2.x, arg_0.x, var_2.x), ~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(20548u, ~_wgslsmith_div_u32(func_1(vec4<u32>(31161u, 1u, 33560u, 0u), Struct_2(vec3<bool>(false, true, true))), abs(4294967295u)), firstTrailingBit(_wgslsmith_sub_u32(~0u, 31603u)));
    var_0 = ~abs(vec3<u32>(~var_0.x, var_0.x, 55152u)) >> (vec3<u32>(select(min(countOneBits(var_0.x), var_0.x), (var_0.x << (27120u % 32u)) & ~1u, -721f == _wgslsmith_f_op_f32(round(-797f))), abs(~4294967295u << (~var_0.x % 32u)), ~4294967295u) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -315f);
    let var_2 = Struct_1(~_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(~u_input.b.wwy, vec3<i32>(22085i, u_input.a.x, u_input.a.x) | vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x)), max(vec3<i32>(-28291i, u_input.b.x, u_input.c.x), vec3<i32>(u_input.a.x, -1i, -2147483647i)), vec3<i32>(1i, ~u_input.c.x, ~2147483647i)), !any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))));
    var_1 = -1330f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-115f + 327f), _wgslsmith_div_f32(-1510f, 1863f), _wgslsmith_f_op_f32(f32(-1f) * -612f), -662f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 3167f, -657f, -763f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1132f, -476f, 724f, 341f) * vec4<f32>(-578f, 1286f, 946f, -882f)), var_2.b)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-489f, -1117f, 351f, -188f) * vec4<f32>(869f, 967f, 193f, 1334f)))))), var_0.x, vec3<u32>(_wgslsmith_mult_u32(~8227u ^ (var_0.x << (var_0.x % 32u)), ~4294967295u ^ _wgslsmith_div_u32(var_0.x, 0u)), 27267u, var_0.x), vec3<i32>(~(-firstLeadingBit(var_2.a.x)), u_input.c.x, _wgslsmith_sub_i32(var_2.a.x << (reverseBits(var_0.x) % 32u), u_input.c.x)), ~(~min(~vec4<u32>(var_0.x, var_0.x, 4504u, 16301u), vec4<u32>(var_0.x, var_0.x, 1u, 57168u) & vec4<u32>(19104u, var_0.x, var_0.x, var_0.x))));
}

