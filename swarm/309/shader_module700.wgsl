struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(1711f, 627f, -1080f, -873f, -423f, 1500f, 1529f, -635f, 1088f, -1000f, -1196f, 260f, -789f, -287f, 1701f, 1000f, -1000f, 587f, 465f, -714f, 1303f, 1465f, 318f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<bool> {
    let var_0 = reverseBits(~(-min(u_input.a.x, u_input.a.x)) << (_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) % 32u));
    let var_1 = var_0;
    global0 = array<f32, 23>();
    var var_2 = Struct_3(Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), -1i != var_0), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true), all(vec4<bool>(true, true, true, false))), true), Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), any(vec4<bool>(true, true, false, false))), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), true || all(vec2<bool>(true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1043f, global0[_wgslsmith_index_u32(u_input.c.x, 23u)], 1408f, global0[_wgslsmith_index_u32(4294967295u, 23u)])))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(25235u, 23u)], global0[_wgslsmith_index_u32(5406u, 23u)], 1560f, global0[_wgslsmith_index_u32(u_input.c.x, 23u)])))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.c.xzy, firstTrailingBit(u_input.c.zwx)), u_input.c.ywx, vec3<u32>(u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, 1u, u_input.c.x), 1u)), Struct_1(vec2<bool>(false, true), vec4<bool>(-1000f != global0[_wgslsmith_index_u32(44320u, 23u)], true, true, true), false)), Struct_2(Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), u_input.c.x > u_input.c.x), true), Struct_1(vec2<bool>(select(false, true, true), all(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], -201f, 1167f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], -2038f), vec4<f32>(-854f, global0[_wgslsmith_index_u32(9995u, 23u)], 1102f, global0[_wgslsmith_index_u32(u_input.c.x, 23u)]))))), firstLeadingBit(~(~u_input.c.yzw)), Struct_1(vec2<bool>(true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), true)));
    let var_3 = Struct_5(select(!(!var_2.b.b.a), !select(select(vec2<bool>(var_2.a.e.a.x, true), var_2.a.e.b.xz, var_2.b.b.b.yz), vec2<bool>(true, true), true), true));
    return !var_2.b.b.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = func_3().x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(14552u, 23u)] - global0[_wgslsmith_index_u32(52777u, 23u)]), _wgslsmith_f_op_f32(f32(-1f) * -644f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-601f, -1000f))), arg_1.a.x)))));
    let var_2 = _wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(u_input.c.x, ~u_input.c.x), 0u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(9938u, u_input.c.x, 0u, 4294967295u), u_input.c))), vec3<u32>(select(u_input.c.x, u_input.c.x, all(func_3().xw)), 1u, ~(~3447u)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1099f)) * global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x, 4294967295u), _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x)), 23u)])));
    let var_3 = -2147483647i << (0u % 32u);
    return select(arg_2, arg_1.b, true);
}

fn func_2() -> Struct_4 {
    let var_0 = ~(~(~(~(61552u >> (0u % 32u)))));
    global0 = array<f32, 23>();
    var var_1 = _wgslsmith_add_vec2_u32(countOneBits(abs(u_input.c.yx | countOneBits(vec2<u32>(4294967295u, var_0)))), vec2<u32>(~(~u_input.c.x), var_0) << (u_input.c.wy % vec2<u32>(32u)));
    global0 = array<f32, 23>();
    let var_2 = u_input.a;
    return Struct_4(Struct_1(vec2<bool>(all(vec2<bool>(true, true)), false), func_4(-1499f, Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, true, true), false), func_3()), !((u_input.a.x | u_input.a.x) != -2147483647i)));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_5) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(-1099f, 1000f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.x, u_input.c.x), 23u)] + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 23u)], 1449f) * global0[_wgslsmith_index_u32(0u, 23u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~u_input.c.x, 23u)])) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-898f + 1319f), _wgslsmith_f_op_f32(trunc(-1000f)))))));
    var var_1 = arg_0.a.c;
    var_1 = any(vec4<bool>(true, false & all(select(arg_0.a.b.xy, arg_3.a, arg_0.a.b.x)), arg_0.a.b.x, false));
    let var_2 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-184f - var_0.x)) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 23u)] + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(18172u, 23u)] - 241f)))));
    let var_3 = -2147483647i;
    return Struct_2(arg_0.a, func_2().a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-361f, global0[_wgslsmith_index_u32(arg_1.x, 23u)], global0[_wgslsmith_index_u32(arg_1.x, 23u)], 2162f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], var_0.x, -1000f, var_2)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2))), 305f, 396f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.yzx, vec3<u32>(0u, 0u, u_input.c.x)), 23u)])))), u_input.c.wzy, arg_0.a);
}

fn func_1() -> i32 {
    global0 = array<f32, 23>();
    let var_0 = true || (-2147483647i <= u_input.b);
    var var_1 = !(!any(!vec4<bool>(false, true, var_0, false)));
    let var_2 = Struct_3(func_5(func_2(), max(firstTrailingBit(~vec2<u32>(70080u, 110075u)), select(~vec2<u32>(0u, u_input.c.x), firstTrailingBit(vec2<u32>(u_input.c.x, 4294967295u)), var_0)), _wgslsmith_add_i32(u_input.a.x | (u_input.b & u_input.b), _wgslsmith_add_i32(abs(u_input.a.x), _wgslsmith_add_i32(u_input.a.x, 0i))), Struct_5(vec2<bool>(!var_0, true))), Struct_2(func_2().a, Struct_1(vec2<bool>(var_0 || false, false), vec4<bool>(u_input.a.x < 14137i, var_0, var_0, var_0 || var_0), var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(80210u, 23u)], global0[_wgslsmith_index_u32(23989u, 23u)], global0[_wgslsmith_index_u32(11516u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]), vec4<f32>(1590f, 1000f, global0[_wgslsmith_index_u32(35506u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), var_0)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(77068u, 23u)], global0[_wgslsmith_index_u32(u_input.c.x, 23u)], -817f, global0[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], 1165f, -1838f, -2550f), true)))), select(u_input.c.wwx, u_input.c.wzx, !vec3<bool>(var_0, var_0, var_0)), Struct_1(!func_3().xx, vec4<bool>(var_0 && false, !var_0, false, var_0), true)));
    global0 = array<f32, 23>();
    return -20474i;
}

fn func_6(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: Struct_5) -> Struct_4 {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    var var_0 = ~(abs(_wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_1.x, u_input.c.x), 83495u, 5485u)) | 63137u);
    var_0 = _wgslsmith_div_u32(0u, 40622u);
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(func_5(func_2(), arg_1.zx, -min(firstLeadingBit(u_input.b), _wgslsmith_mult_i32(-2147483647i, u_input.a.x)), Struct_5(arg_3.a)).c.xz));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 23>();
    var var_0 = func_6(_wgslsmith_sub_i32(reverseBits(u_input.a.x) << (u_input.c.x % 32u), max(func_1(), 46734i >> (u_input.c.x % 32u))) == max(0i, 1i), u_input.c, Struct_5(func_2().a.a), Struct_5(vec2<bool>((u_input.b <= u_input.b) | false, true & func_4(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], Struct_1(vec2<bool>(true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, false, false)).x)));
    let var_1 = func_5(Struct_4(var_0.a), ~u_input.c.xx, firstLeadingBit((i32(-1i) * -2147483647i) | (u_input.b >> (27520u % 32u))), Struct_5(!var_0.a.a));
    var_0 = Struct_4(var_1.b);
    var_0 = Struct_4(var_0.a);
    global0 = array<f32, 23>();
    var var_2 = ~reverseBits(vec3<u32>(~u_input.c.x, ~_wgslsmith_mult_u32(29156u, var_1.d.x), ~(~u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

