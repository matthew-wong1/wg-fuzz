struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(~u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, 88967u, u_input.a) | select(vec3<u32>(u_input.a, 4294967295u, 1792u), vec3<u32>(4294967295u, u_input.d, 1210u), vec3<bool>(false, false, false)), vec3<u32>(u_input.a, countOneBits(30215u), 67334u | u_input.a)) >= reverseBits(~(~1u)), ~(~u_input.e));
    let var_1 = var_0;
    let var_2 = var_1;
    var var_3 = var_0.d.x;
    let var_4 = var_2.a;
    return var_2;
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    var var_0 = Struct_1(i32(-1i) * -func_1(vec3<f32>(-567f, -509f, -457f), u_input.b.x).a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(389f))), (1i == u_input.b.x) || true)))), any(select(vec2<bool>(72440u < u_input.e.x, false), vec2<bool>(true, true), false)), arg_0.zy);
    let var_1 = u_input.a;
    var_0 = Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(sign(-568f)), var_0.c, vec2<u32>(~10349u, select(~0u, abs(var_0.d.x), true) & _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 12629u), _wgslsmith_dot_vec3_u32(vec3<u32>(18299u, 44214u, 64266u), arg_0))));
    let var_2 = vec4<u32>(16146u, var_1, 1u, reverseBits((0u & var_1) | arg_0.x));
    let var_3 = arg_0.zz;
    return -_wgslsmith_mod_i32(84868i, -2147483647i);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    let var_0 = ~func_1(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, 919f, 1671f)) + _wgslsmith_f_op_vec3_f32(-arg_1))), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a << (10625u % 32u), _wgslsmith_mod_i32(-29962i, arg_0.a), arg_0.a ^ -2147483647i), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.c, u_input.b.x, 1i), vec3<i32>(u_input.c, 2147483647i, -20630i)))).d.x;
    var var_1 = ~u_input.e;
    var var_2 = arg_0;
    var_1 = vec2<u32>(~(1u >> (u_input.e.x % 32u)), ~countOneBits(0u));
    var var_3 = !vec4<bool>(arg_0.c, !select(true, true, true), (-1i >= func_3(vec3<u32>(1u, 0u, var_2.d.x))) & !arg_0.c, false);
    return _wgslsmith_f_op_f32(-1279f * arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(1175f, 532f)), -265f, -2282f) + vec3<f32>(_wgslsmith_f_op_f32(-545f - -1245f), -594f, _wgslsmith_f_op_f32(-354f - -414f)))), u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, 728f, 770f, var_0.b), vec4<f32>(var_0.b, var_0.b, 371f, 1000f), vec4<bool>(var_0.c, true, false, var_0.c)))))) * vec4<f32>(var_0.b, var_0.b, _wgslsmith_f_op_f32(func_2(func_1(vec3<f32>(var_0.b, -1135f, 739f), -2147483647i), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b, -151f, 1351f), vec3<f32>(-746f, -474f, -404f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f), _wgslsmith_f_op_f32(var_0.b + var_0.b))))));
    var_0 = func_1(vec3<f32>(1115f, 1044f, _wgslsmith_f_op_f32(938f - _wgslsmith_f_op_f32(-469f - _wgslsmith_f_op_f32(abs(-388f))))), u_input.c);
    var var_2 = ~(-_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, -1i, u_input.b.x, u_input.c) << (~vec4<u32>(0u, u_input.d, u_input.a, 35983u) % vec4<u32>(32u)), vec4<i32>(2147483647i, ~24666i, func_3(vec3<u32>(u_input.e.x, 17436u, u_input.e.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -41465i), u_input.b))));
    var_0 = func_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(202f * _wgslsmith_f_op_f32(var_0.b + -111f))), _wgslsmith_f_op_f32(var_1.x * -1745f), 1313f), var_2.x | -(~firstLeadingBit(u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1623f, var_0.b)) - _wgslsmith_f_op_f32(var_0.b * var_1.x)), -209f, 937f))));
}

