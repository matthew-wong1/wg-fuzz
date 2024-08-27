struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> f32 {
    var var_0 = arg_1.c;
    var var_1 = true;
    var_1 = true;
    let var_2 = abs(abs(~u_input.a));
    var_1 = true;
    return _wgslsmith_f_op_f32(arg_1.a.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) + _wgslsmith_f_op_f32(round(-2010f))), arg_1.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(914f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2, arg_2, true))), _wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.c.x, arg_1.a)) * _wgslsmith_f_op_f32(arg_2.c.x - arg_2.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(346f, -297f, -1000f, arg_0.a), arg_2.c, true)) - vec4<f32>(226f, arg_1.a, arg_0.a, -1000f)))));
    let var_1 = Struct_3(arg_0, _wgslsmith_mult_vec3_u32(~reverseBits(firstLeadingBit(vec3<u32>(arg_0.b, 0u, 0u))), arg_2.b & arg_2.b), arg_2.c, countOneBits(1i));
    let var_2 = firstLeadingBit(max(~select(~vec4<i32>(16924i, var_1.d, -27919i, -2485i), vec4<i32>(var_1.d, -28597i, 1i, arg_2.d) & vec4<i32>(var_1.d, var_1.d, 15544i, arg_2.d), vec4<bool>(true, true, true, true)), ~vec4<i32>(-40210i, -20923i, arg_2.d, arg_2.d) >> (vec4<u32>(countOneBits(55837u), var_1.b.x, ~0u, 22678u) % vec4<u32>(32u))));
    var_0 = arg_2.c;
    var var_3 = Struct_2(-962f);
    return ~vec3<u32>(arg_1.b, _wgslsmith_mod_u32(arg_1.b, abs(arg_2.b.x)), firstLeadingBit(~17075u)) | ~var_1.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a, 335f) - -177f))))));
    let var_1 = select(select(select(select(!arg_3, !vec2<bool>(true, arg_3.x), all(vec4<bool>(arg_3.x, true, true, arg_3.x))), arg_3, !(true | arg_3.x)), vec2<bool>(true, true), vec2<bool>(310f < _wgslsmith_f_op_f32(-var_0.a), arg_3.x)), arg_3, arg_3);
    let var_2 = abs(-1i);
    var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2178f - _wgslsmith_f_op_f32(func_3(Struct_3(arg_2, vec3<u32>(arg_2.b, arg_0.x, u_input.a.x), vec4<f32>(984f, var_0.a, arg_2.a, 1078f), var_2), Struct_3(Struct_1(436f, arg_0.x), vec3<u32>(4294967295u, 25164u, 58624u), vec4<f32>(-743f, -1140f, 646f, var_0.a), 0i), arg_3.x))), 433f), _wgslsmith_f_op_f32(ceil(var_0.a)))));
    let var_3 = countOneBits(firstLeadingBit(var_2));
    return arg_2.b >> (1u % 32u);
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_div_i32(firstTrailingBit(2147483647i), ~(-30750i) << (func_4(func_2(Struct_1(-219f, 0u), Struct_1(-144f, u_input.a.x), Struct_3(Struct_1(547f, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(-1274f, 2162f, 868f, -729f), 7880i)), max(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 12047u), u_input.a.xw), vec2<u32>(u_input.a.x, 4294967295u)), Struct_1(-685f, abs(u_input.a.x)), vec2<bool>(true, any(vec2<bool>(true, false)))) % 32u));
    return vec2<bool>(any(vec3<bool>(true, true, true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1375f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(105f - -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1616f) + _wgslsmith_f_op_f32(select(-1135f, 1000f, var_0.x))))) * -1824f);
    let var_2 = Struct_1(var_1, reverseBits(u_input.a.x));
    var var_3 = -1i;
    var_3 = -_wgslsmith_mult_i32(-max(i32(-1i) * -69884i, 1i), firstLeadingBit(max(abs(0i), _wgslsmith_add_i32(89525i, -11480i))));
    var_3 = 1466i;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(1399f, _wgslsmith_div_f32(857f, _wgslsmith_f_op_f32(-var_1))), -1406f, var_4.a));
}

