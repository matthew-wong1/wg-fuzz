struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(514f, -1000f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-140f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) - -328f))));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -620f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-135f, _wgslsmith_f_op_f32(sign(global0.x))))))) - vec2<f32>(arg_1.a.a, -208f));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(arg_1.a.a + -121f)))));
    var var_0 = arg_1;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(620f * var_0.a.a)), _wgslsmith_mod_u32(var_0.b & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.b, var_0.b), _wgslsmith_add_vec3_u32(vec3<u32>(1865u, 4294967295u, 0u), vec3<u32>(1u, arg_1.b, arg_1.b))), ~(arg_1.b | arg_1.b)));
    return global0.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(round(global0.x))))) == _wgslsmith_f_op_f32(func_3(min(_wgslsmith_div_vec3_i32(~vec3<i32>(arg_1.x, u_input.b, arg_1.x), vec3<i32>(-44839i, 2147483647i, u_input.a)), vec3<i32>(_wgslsmith_add_i32(0i, u_input.b), ~arg_2.x, u_input.a)), Struct_2(Struct_1(_wgslsmith_f_op_f32(897f - -767f)), 4294967295u)));
    var var_1 = Struct_2(Struct_1(1213f), 1u);
    var_1 = Struct_2(var_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(max(~81422u, var_1.b), _wgslsmith_mod_u32(var_1.b, var_1.b), reverseBits(_wgslsmith_mult_u32(4294967295u, var_1.b)), max(var_1.b, min(var_1.b, 87944u))), ~(vec4<u32>(4294967295u, var_1.b, var_1.b, 62459u) & vec4<u32>(16872u, var_1.b, var_1.b, 73724u))));
    var var_2 = Struct_3(~vec2<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(60825u, 25134u, var_1.b, var_1.b), vec4<u32>(var_1.b, var_1.b, 1u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b, var_1.b, 4294967295u, var_1.b), vec4<u32>(var_1.b, 14352u, var_1.b, var_1.b))), _wgslsmith_mod_u32(4294967295u, 4294967295u) ^ _wgslsmith_div_u32(var_1.b, 4294967295u)), ~(0u >> (0u % 32u)), var_1.a, ~(~var_1.b), countOneBits(~(-vec3<i32>(arg_2.x, arg_1.x, 1i)) ^ vec3<i32>(abs(34929i), arg_2.x & arg_2.x, -arg_2.x)));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-891f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global0.x, var_2.c.a)), _wgslsmith_f_op_f32(step(1192f, var_2.c.a)), all(vec3<bool>(var_0, false, var_0))))))));
    return Struct_2(Struct_1(var_2.c.a), var_2.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = ~(~vec3<u32>(40482u, ~1u, _wgslsmith_div_u32(arg_2.x | 60591u, arg_2.x)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1001f, -1379f) * vec2<f32>(arg_1, global0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(404f, global0.x), vec2<f32>(global0.x, arg_3.a), vec2<bool>(true, false)))))))));
    var var_1 = func_2(select(vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_mult_i32(0i, 54325i) <= firstTrailingBit(arg_0.x), true, false), true), arg_0, abs(reverseBits(~(vec2<i32>(35122i, 1i) & arg_0))));
    var var_2 = func_2(vec3<bool>(1i >= _wgslsmith_dot_vec2_i32(vec2<i32>(17484i, arg_0.x), vec2<i32>(arg_0.x, arg_0.x)), !all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true))), !(1i < _wgslsmith_sub_i32(arg_0.x, 2103i))), arg_0, abs(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(-73737i, arg_0.x), abs(arg_0)))));
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(exp2(arg_1))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(236f, 189f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -279f), _wgslsmith_f_op_f32(206f * var_1.a.a))))));
    return _wgslsmith_sub_u32(var_2.b, ~_wgslsmith_add_u32(func_2(vec3<bool>(false, true, false), ~vec2<i32>(arg_0.x, 1i), select(vec2<i32>(1i, -14413i), arg_0, vec2<bool>(false, true))).b, func_2(vec3<bool>(true, true, true), arg_0, select(arg_0, arg_0, vec2<bool>(false, true))).b));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(998f + -172f)), -1075f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-825f, _wgslsmith_f_op_f32(global0.x - -1000f))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(round(global0.x)), arg_1.x);
    var var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(-37975i, _wgslsmith_mod_i32(-1i, arg_0.x)), u_input.a);
    var var_1 = !(select(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), !any(vec2<bool>(true, false)), any(vec4<bool>(false, true, false, false)) & true) || (~(i32(-1i) * -12279i) < abs(firstTrailingBit(-49307i))));
    var_1 = !(true || all(vec3<bool>(true, select(false, false, true), all(vec3<bool>(false, true, true)))));
    return Struct_3(vec2<u32>(arg_2.x, abs(arg_2.x)), _wgslsmith_add_u32(countOneBits(9638u) | (arg_2.x ^ arg_2.x), arg_2.x) >> (arg_2.x % 32u), func_2(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), arg_2.x >= 0u), vec3<bool>(true, any(vec4<bool>(false, true, false, false)), true), true | any(vec4<bool>(false, true, false, true))), min(arg_0.yx, max(_wgslsmith_add_vec2_i32(vec2<i32>(-46762i, arg_0.x), arg_0.xz), arg_0.yx)), -arg_0.wz).a, 10638u, countOneBits(_wgslsmith_mult_vec3_i32(arg_0.yxx >> (~arg_2 % vec3<u32>(32u)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(35423i, u_input.a, u_input.a), arg_0.zzz)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(global0.x, 784f);
    let var_0 = func_4(-vec4<i32>(u_input.a, u_input.b, 5037i, -(u_input.a & u_input.a)), vec3<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -573f) + _wgslsmith_f_op_f32(-global0.x)), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-297f * -1000f) - global0.x))), vec3<u32>(1u, func_1(vec2<i32>(0i, u_input.b), -1866f, ~vec2<u32>(4294967295u, 25537u), Struct_1(global0.x)) | abs(_wgslsmith_add_u32(14421u, 50998u)), 4776u));
    global0 = vec2<f32>(var_0.c.a, global0.x);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -2059f) - vec2<f32>(global0.x, -1205f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a, global0.x)));
    let var_1 = var_0.e.x >> ((~(firstLeadingBit(var_0.b) << (abs(1u) % 32u)) | select(0u, countOneBits(0u), true)) % 32u);
    let var_2 = func_2(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))), ~var_0.e.yz, -var_0.e.yy ^ vec2<i32>(4470i, _wgslsmith_mod_i32(var_1, var_1) >> (countOneBits(1u) % 32u)));
    let var_3 = func_2(vec3<bool>(-2240f == _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.a, var_0.c.a) + global0.x), false, (func_4(vec4<i32>(50238i, var_1, -46379i, 29590i), vec3<f32>(566f, var_2.a.a, -996f), vec3<u32>(1u, 13667u, var_0.d)).e.x >= 19680i) || any(vec4<bool>(true, true, false, false))), var_0.e.zy >> (abs(max(vec2<u32>(var_0.a.x, var_2.b), var_0.a)) % vec2<u32>(32u)), -reverseBits(abs(-vec2<i32>(var_1, var_1)))).a;
    var var_4 = var_2.a;
    var_4 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i >> (~countOneBits(~var_2.b) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-732f))) - var_3.a) * -1000f), -2147483647i, var_2.b & var_0.a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_4(vec4<i32>(var_1, 10525i, u_input.b, -2147483647i), vec3<f32>(var_4.a, global0.x, var_3.a), vec3<u32>(4294967295u, 1u, var_0.d)).c.a, _wgslsmith_f_op_f32(var_0.c.a + global0.x))), vec2<f32>(1817f, global0.x), select(vec2<bool>(false, all(vec4<bool>(false, false, false, true))), vec2<bool>(true, var_2.b < var_0.b), vec2<bool>(2147483647i == u_input.b, true)))));
}

