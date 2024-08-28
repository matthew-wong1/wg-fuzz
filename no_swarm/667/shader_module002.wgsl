struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = !all(select(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, true)), !arg_0.yx, vec2<bool>(arg_0.x, arg_0.x))) & false;
    var var_1 = 1351i;
    let var_2 = min(u_input.a, _wgslsmith_mod_i32(abs(u_input.a << (4294967295u % 32u)), abs(~1i)));
    let var_3 = u_input.a;
    var_1 = _wgslsmith_sub_i32(var_2, -5227i);
    return ~(-2147483647i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~(~u_input.c), ~4294967295u, ~_wgslsmith_add_u32(arg_1.b, 4294967295u), arg_1.b), vec4<u32>(countOneBits(~arg_1.b), _wgslsmith_mult_u32(u_input.c, ~max(u_input.b.x, u_input.e.x)), 45799u, select(~4294967295u, _wgslsmith_add_u32(1u, arg_1.b << (u_input.d % 32u)), true)));
    var_0 = ~arg_1.b;
    let var_1 = select(false, true, false | all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true))));
    var_0 = 4294967295u;
    var_0 = arg_1.b;
    return vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(-arg_0.b), 850f, _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(-arg_0.b)))));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1233f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-963f + 1000f) * _wgslsmith_f_op_f32(sign(1293f)))) + _wgslsmith_f_op_f32(f32(-1f) * -825f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(Struct_2(vec4<i32>(i32(-1i) * -1i, u_input.a ^ arg_0, -2147483647i, func_3(vec4<bool>(false, true, true, true)) | -73129i), _wgslsmith_f_op_f32(step(-192f, _wgslsmith_f_op_f32(ceil(-1000f)))), u_input.a, Struct_1(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, 2147483647i, u_input.a), vec3<i32>(-1i, -5212i, 1i)), 18687u), Struct_1(countOneBits(-vec3<i32>(-2147483647i, arg_0, 19982i)), abs(~u_input.c))), Struct_1(vec3<i32>(-35330i, u_input.a, -2147483647i), u_input.e.x)));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(vec4<i32>(2147483647i, u_input.a, -2147483647i, u_input.a), 1002f, 1i, Struct_1(vec3<i32>(u_input.a, -2147483647i, 9936i), u_input.d), Struct_1(vec3<i32>(u_input.a, 4230i, 46650i), 1u)), Struct_1(vec3<i32>(u_input.a, -2147483647i, -21810i), u_input.e.x))), vec4<f32>(_wgslsmith_f_op_f32(max(-1261f, var_1.x)), var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-375f + -836f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 641f, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, var_1.x, false)), _wgslsmith_f_op_f32(min(var_1.x, -291f)), _wgslsmith_f_op_f32(var_1.x + var_1.x), 474f)))));
    let var_2 = all(vec3<bool>(all(vec4<bool>(true, true, all(vec2<bool>(false, false)), true)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), !any(vec2<bool>(true, true))));
    let var_3 = Struct_2(vec4<i32>(_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(u_input.a, 0i, arg_0), -2147483647i), -countOneBits(u_input.a), arg_0 << (21993u % 32u), _wgslsmith_add_i32(i32(-1i) * -26822i, 10595i) & u_input.a), 1073f, ~(~u_input.a), Struct_1(-(countOneBits(vec3<i32>(arg_0, arg_0, arg_0)) | (vec3<i32>(2147483647i, -1i, 0i) >> (vec3<u32>(13092u, u_input.e.x, u_input.c) % vec3<u32>(32u)))), ~(~u_input.c)), Struct_1(vec3<i32>(firstLeadingBit(-1i) ^ arg_0, u_input.a, 2147483647i), ~1u));
    return select(!vec2<bool>(all(vec4<bool>(var_2, true, true, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, var_2, false)), true), false), !vec2<bool>(all(vec4<bool>(false, true, var_2, false)), false), true), _wgslsmith_f_op_f32(f32(-1f) * -1000f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.b, var_1.x))));
}

fn func_1() -> vec3<i32> {
    let var_0 = vec2<i32>(1i, abs(~(~(-1i))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f)), _wgslsmith_f_op_f32(560f - -153f))));
    var var_2 = vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_div_u32(firstTrailingBit(u_input.e.x), ~62410u), 90644u), ~(~min(~u_input.b.x, abs(u_input.b.x))), 1u);
    var var_3 = func_2(2147483647i);
    let var_4 = Struct_1(vec3<i32>(-15604i, firstTrailingBit(-2147483647i) & _wgslsmith_mult_i32(firstTrailingBit(var_0.x), _wgslsmith_mod_i32(u_input.a, 2612i)), var_0.x), 58746u);
    return ~vec3<i32>(~firstLeadingBit(-12393i), -var_0.x, -5799i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = 418f;
    var_0 = _wgslsmith_div_i32(u_input.a, max(~(-10759i), u_input.a) >> (u_input.b.x % 32u));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)));
    let var_2 = vec4<u32>(select(u_input.b.x, firstLeadingBit(min(1u, 4294967295u)), true), ~(~(u_input.e.x >> (u_input.b.x % 32u)) | 14827u), u_input.d, _wgslsmith_mult_u32(abs(18032u), ~4294967295u));
    var_0 = u_input.a;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(608f - 1184f), -158f))), _wgslsmith_f_op_f32(abs(-732f))) + _wgslsmith_f_op_f32(821f * _wgslsmith_f_op_f32(-909f + 118f)));
    var var_3 = _wgslsmith_clamp_vec3_i32(func_1(), ~vec3<i32>(~u_input.a, u_input.a, -2303i), abs(-(~func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-reverseBits(vec2<i32>(var_3.x, -16387i))) ^ (abs(select(vec2<i32>(u_input.a, var_3.x), var_3.zz, true)) << ((countOneBits(u_input.b.zy) ^ select(u_input.b.zx, vec2<u32>(u_input.d, u_input.b.x), vec2<bool>(false, true))) % vec2<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -1139f, 715f, _wgslsmith_f_op_f32(1073f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1196f - -723f))))));
}

