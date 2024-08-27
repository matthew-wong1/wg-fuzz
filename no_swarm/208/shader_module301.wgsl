struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> bool {
    var var_0 = Struct_2(vec3<bool>(_wgslsmith_f_op_f32(-arg_2) > -115f, true, arg_1.a), arg_1, _wgslsmith_mod_vec3_i32(vec3<i32>(-arg_0.b, ~(-1i), arg_1.b) ^ vec3<i32>(arg_1.b >> (u_input.a.x % 32u), 1i, arg_1.b), vec3<i32>(_wgslsmith_div_i32(1i, -28523i), arg_1.b, arg_1.b) | vec3<i32>(1i, max(1i, -25596i), -2147483647i >> (u_input.c.x % 32u))));
    let var_1 = ~1u;
    var var_2 = Struct_1(select(_wgslsmith_add_u32(u_input.c.x << (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 38745u, var_1), u_input.a.wzy)), 25730u, false) > 4294967295u, ~countOneBits(_wgslsmith_dot_vec2_i32(max(var_0.c.yx, vec2<i32>(-2147483647i, arg_1.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.b, 2147483647i), vec2<i32>(2147483647i, 2147483647i)))));
    let var_3 = (vec4<u32>(var_1, ~(~var_1), 1u, _wgslsmith_add_u32(u_input.c.x, var_1)) ^ ~vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(54201u, 4294967295u, var_1, 1u), vec4<u32>(4294967295u, 83089u, var_1, u_input.a.x)), 47961u & var_1, ~var_1)) << (~_wgslsmith_sub_vec4_u32(firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.c.x, 6591u, 8533u, 13245u))), u_input.a) % vec4<u32>(32u));
    var var_4 = true;
    return !(!all(var_0.a));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_2(vec3<bool>(true, global0.x, arg_1.a), arg_1, ~vec3<i32>(14887i, abs(firstLeadingBit(-40552i)), _wgslsmith_mult_i32(arg_1.b, -38883i)));
    global0 = select(!select(vec2<bool>(false, false), vec2<bool>(var_0.c.x > 8738i, true), true), select(var_0.a.xz, select(var_0.a.xx, var_0.a.yz, any(vec2<bool>(global0.x, true))), vec2<bool>(true, arg_1.a)), !vec2<bool>(func_3(Struct_1(false, arg_1.b), arg_1, 533f), arg_1.a));
    var var_1 = Struct_2(!(!var_0.a), var_0.b, var_0.c);
    var var_2 = var_1.b.a;
    let var_3 = ~(~u_input.a);
    return var_0.b;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global0 = vec2<bool>(all(!(!(!vec3<bool>(true, global0.x, true)))), all(select(select(!vec4<bool>(var_0.a, arg_0.a, var_0.a, global0.x), vec4<bool>(arg_0.a, true, true, var_0.a), vec4<bool>(false, var_0.a, true, var_0.a)), !vec4<bool>(false, true, false, global0.x), vec4<bool>(false, global0.x | false, global0.x, global0.x))));
    global0 = vec2<bool>(!arg_0.a, false);
    var var_1 = Struct_1(true, select(~_wgslsmith_mod_i32(-var_0.b, 2147483647i), abs(min(-var_0.b, -2147483647i)), !arg_0.a));
    var_1 = func_2(34143u, var_0, ~(-1513i >> ((~u_input.c.x & u_input.b) % 32u)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(global0.x, -31033i));
    let var_1 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -534f) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-693f - _wgslsmith_f_op_f32(f32(-1f) * -505f)))), ~33627i);
    let var_3 = _wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(var_2.b, var_2.b)), reverseBits(vec2<i32>(1i, var_0.b)))) | ~abs(-vec2<i32>(var_2.b, var_2.b)), (vec2<i32>(-16453i, 2147483647i) << (firstLeadingBit(vec2<u32>(u_input.a.x, 39510u) >> (var_1.xw % vec2<u32>(32u))) % vec2<u32>(32u))) ^ vec2<i32>(min(countOneBits(var_2.b), _wgslsmith_add_i32(58105i, var_2.b)), -2147483647i));
    var var_4 = _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -27297i, ~(var_2.b | 53873i) & func_1(func_2(13525u, Struct_1(var_2.a, 47810i), 2147483647i)).b), var_3);
    var var_5 = any(!vec3<bool>(all(!vec3<bool>(global0.x, var_2.a, global0.x)), 10017i <= -var_0.b, true));
    var var_6 = firstTrailingBit(vec4<i32>(max(var_0.b, var_0.b), -37679i, -63368i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(198f, -1072f, 708f), vec3<f32>(-259f, -296f, -1000f))) + vec3<f32>(1f, 1f, 1f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(446f - -711f), _wgslsmith_f_op_f32(f32(-1f) * -152f)), _wgslsmith_f_op_f32(-2117f + _wgslsmith_f_op_f32(1000f - 873f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -194f))))), vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, 1145f, any(vec2<bool>(true, false)) | all(vec4<bool>(true, global0.x, var_2.a, false)))), -2181f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1247f - -2116f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_f32(f32(-1f) * -644f), func_2(var_1.x, Struct_1(true, var_2.b), var_6.x).a)))));
}

