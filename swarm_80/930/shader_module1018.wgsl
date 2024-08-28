struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(-1i, vec3<i32>(i32(-2147483648), -17223i, -8576i), 58183u, -1i, vec4<f32>(649f, -1476f, -1029f, 1180f)), Struct_1(i32(-2147483648), vec3<i32>(-26637i, i32(-2147483648), -1i), 39721u, i32(-2147483648), vec4<f32>(592f, -617f, 955f, 366f)), Struct_1(20503i, vec3<i32>(0i, -51584i, i32(-2147483648)), 1u, 50079i, vec4<f32>(-1216f, -758f, 821f, 1973f)), Struct_1(-52616i, vec3<i32>(1i, 1i, 0i), 0u, 1i, vec4<f32>(-1618f, 1122f, -1081f, 859f)), Struct_1(-33968i, vec3<i32>(-1i, 2147483647i, 2147483647i), 0u, -82663i, vec4<f32>(3006f, 438f, -532f, -1753f)), Struct_1(55408i, vec3<i32>(-1i, -58333i, i32(-2147483648)), 22213u, -2271i, vec4<f32>(-198f, -562f, 358f, 564f)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = Struct_3(true, Struct_2(!all(vec3<bool>(true, false, true)), Struct_1(firstLeadingBit(~u_input.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -25215i, u_input.a.x), abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), 0u, u_input.a.x, vec4<f32>(1f, -265f, _wgslsmith_f_op_f32(911f * 233f), _wgslsmith_f_op_f32(sign(-1777f)))), vec3<f32>(-1079f, 309f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1007f + 755f))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-340f))));
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<i32> {
    let var_0 = Struct_3(false, Struct_2(!all(vec4<bool>(true, false, true, true)) || ((arg_1 ^ u_input.a.x) >= -u_input.a.x), Struct_1(10895i, _wgslsmith_div_vec3_i32(vec3<i32>(36805i, 18327i, u_input.a.x), vec3<i32>(u_input.a.x, arg_1, -1i)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_0, 1u), vec3<u32>(arg_0, arg_0, arg_0)), max(vec3<u32>(4294967295u, arg_0, 0u), vec3<u32>(44246u, 8558u, arg_0))), -1i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-806f, -1054f, 143f, -2740f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(122f)) + _wgslsmith_f_op_f32(-1240f + -210f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-126f, 159f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(arg_0, arg_0, 4294967295u)))))));
    let var_1 = Struct_2(any(vec4<bool>(!(!var_0.a), any(select(vec3<bool>(var_0.a, true, var_0.b.a), vec3<bool>(var_0.a, true, true), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(trunc(813f)) > _wgslsmith_f_op_f32(abs(3163f)), all(vec3<bool>(true, false, true)))), global1[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 6u)], vec3<f32>(_wgslsmith_f_op_f32(var_0.b.c.x - 630f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c.x + var_0.b.c.x) * _wgslsmith_f_op_f32(var_0.b.c.x * var_0.b.c.x)) + _wgslsmith_f_op_f32(select(-1263f, -280f, select(var_0.b.a, var_0.b.a, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.b.e.x)))));
    global0 = array<vec2<bool>, 20>();
    global1 = array<Struct_1, 6>();
    var var_2 = 0u;
    return vec3<i32>(arg_1, ~(-_wgslsmith_add_i32(var_0.b.b.b.x, var_0.b.b.a) ^ arg_1), -7749i);
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 23009i, -30338i), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), ~func_2(22352u, u_input.a.x)), abs(min(vec3<i32>(1i, u_input.a.x, 0i), vec3<i32>(u_input.a.x, 0i, 1i))) << (~(~vec3<u32>(4294967295u, 11464u, 12670u)) % vec3<u32>(32u))), u_input.a.x, _wgslsmith_add_i32(-1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1816i, -1i), ~vec3<i32>(u_input.a.x, u_input.a.x, 0i))));
    var var_1 = -820f;
    let var_2 = Struct_3(any(select(global0[_wgslsmith_index_u32(~countOneBits(26368u), 20u)], !vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(false, false), !global0[_wgslsmith_index_u32(1u, 20u)]))), Struct_2(false, global1[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(431f)), 768f, -349f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2081f, -876f, 583f)))))));
    var var_3 = abs(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(79619u, 110475u, 92750u), vec3<u32>(9481u, var_2.b.b.c, var_2.b.b.c))) << (_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(var_2.b.b.c, 97593u)), ~vec2<u32>(4294967295u, 16306u)) % vec2<u32>(32u))) & vec2<u32>(var_2.b.b.c, var_2.b.b.c);
    let var_4 = var_2.b;
    return var_2.b.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.a.x != _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), !(!vec3<bool>(20735i <= u_input.a.x, true, true)), false);
    let var_1 = -3440i;
    let var_2 = select(~vec2<i32>(_wgslsmith_sub_i32(~27167i, _wgslsmith_mult_i32(1i, var_1)), u_input.a.x), ~_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(u_input.a.x, 1i)), _wgslsmith_add_vec2_i32(u_input.a, u_input.a)), vec2<bool>(false, all(!(!vec4<bool>(var_0.x, true, var_0.x, false)))));
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(27633u, ~29600u, vec4<f32>(-193f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-356f, 650f, var_0.x))))), 298f, 1u);
}

