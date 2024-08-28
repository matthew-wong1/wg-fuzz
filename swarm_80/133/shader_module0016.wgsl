struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
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

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<vec2<bool>, 5>;

var<private> global2: array<Struct_3, 12>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_3) -> u32 {
    global1 = array<vec2<bool>, 5>();
    global2 = array<Struct_3, 12>();
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, -2147483647i), u_input.b.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-2147483647i, 2147483647i, u_input.b.x)) << (104330u % 32u), -(~u_input.b.x));
    let var_1 = select(!select(select(!vec4<bool>(false, true, true, arg_3.c), !arg_3.b.a, select(arg_3.b.a, vec4<bool>(false, arg_3.c, false, arg_3.b.c.c.x), arg_3.b.a)), vec4<bool>(true, !arg_3.c, true, !arg_3.b.c.c.x), select(!arg_3.b.a, select(arg_3.b.a, arg_3.b.a, arg_3.c), !vec4<bool>(arg_3.b.c.b, true, false, false))), vec4<bool>(arg_3.b.c.c.x, true, select(true, !arg_3.c, arg_3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.x))) <= 182f), true);
    var var_2 = 151f;
    return ~max(40176u, 21739u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<i32>) -> bool {
    var var_0 = vec2<f32>(988f, -2449f);
    global0 = array<Struct_2, 6>();
    var var_1 = abs(_wgslsmith_dot_vec2_i32(abs(~u_input.b.xz), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b.x, 37879i) << (max(vec2<u32>(arg_0.b.d.x, 42694u), arg_0.b.d.yz) % vec2<u32>(32u)), vec2<i32>(firstLeadingBit(u_input.b.x), _wgslsmith_add_i32(arg_2.x, u_input.b.x)))));
    let var_2 = -421f;
    global2 = array<Struct_3, 12>();
    return true;
}

fn func_2() -> u32 {
    global1 = array<vec2<bool>, 5>();
    let var_0 = vec4<u32>(0u, ~1u, u_input.a, ~_wgslsmith_div_u32(u_input.d, (u_input.d << (u_input.a % 32u)) ^ ~u_input.d));
    global2 = array<Struct_3, 12>();
    global2 = array<Struct_3, 12>();
    let var_1 = vec3<bool>((u_input.b.x | u_input.b.x) >= -u_input.b.x, !func_4(Struct_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-704f, 325f, -560f, -788f), vec4<f32>(592f, 1787f, -1157f, 1093f))), global0[_wgslsmith_index_u32(func_3(-2133f, vec2<f32>(-1049f, -1699f), vec4<f32>(1010f, -1244f, 2567f, -1298f), global2[_wgslsmith_index_u32(u_input.a, 12u)]), 6u)], true), global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(var_0.x, u_input.c.x)), 6u)], abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 2147483647i), vec4<i32>(-1i, u_input.b.x, u_input.b.x, -11370i)))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(253f))) < 1000f));
    return 17986u;
}

fn func_1() -> Struct_2 {
    global1 = array<vec2<bool>, 5>();
    global1 = array<vec2<bool>, 5>();
    return global0[_wgslsmith_index_u32(countOneBits(func_2()), 6u)];
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.d.x, ~u_input.d, ~0u, arg_0.b.c.a) & ~select(vec4<u32>(arg_0.b.c.a, 15937u, 1u, 40350u), vec4<u32>(4294967295u, arg_0.b.d.x, arg_0.b.d.x, u_input.d), arg_0.c), vec4<u32>(~(~arg_0.b.d.x), ~reverseBits(arg_0.b.d.x), arg_0.b.d.x, ~u_input.a)) | u_input.c.x, 6u)];
    let var_1 = vec2<bool>(var_0.a.x, select(var_0.a.x, func_4(Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(550f, -255f, var_0.b, var_0.b), vec4<f32>(arg_0.a.x, var_0.b, -2262f, var_0.b), arg_0.b.c.c.x)), Struct_2(vec4<bool>(arg_0.c, true, false, true), 179f, var_0.c, arg_0.b.d), true), global0[_wgslsmith_index_u32(39858u, 6u)], vec4<i32>(-1i) * -vec4<i32>(49322i, u_input.b.x, u_input.b.x, u_input.b.x)), true));
    let var_2 = var_1.x;
    global2 = array<Struct_3, 12>();
    global0 = array<Struct_2, 6>();
    return Struct_2(select(vec4<bool>(true, var_2, true, func_4(Struct_3(arg_0.a, Struct_2(arg_0.b.a, arg_0.b.b, Struct_1(1u, false, var_1), arg_0.b.d), var_1.x), func_1(), _wgslsmith_mod_vec4_i32(vec4<i32>(247i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(22435i, u_input.b.x, u_input.b.x, 22210i)))), vec4<bool>(any(vec2<bool>(true, true)), _wgslsmith_mult_u32(var_0.d.x, arg_0.b.c.a) <= arg_0.b.c.a, !var_0.a.x && true, _wgslsmith_add_u32(arg_0.b.c.a, 45709u) == var_0.d.x), !func_1().a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(1567f * _wgslsmith_f_op_f32(-479f - arg_0.a.x)))), Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(20166u, 65251u), ~vec2<u32>(4294967295u, 80172u)), !any(vec4<bool>(true, true, var_2, true)), select(select(!arg_0.b.a.zz, select(var_0.c.c, vec2<bool>(true, var_0.a.x), vec2<bool>(var_0.a.x, var_0.a.x)), any(var_0.a)), vec2<bool>(func_4(global2[_wgslsmith_index_u32(12656u, 12u)], Struct_2(arg_0.b.a, var_0.b, Struct_1(arg_0.b.c.a, false, vec2<bool>(arg_0.c, false)), arg_0.b.d), vec4<i32>(12904i, 0i, u_input.b.x, -62785i)), var_0.c.c.x | false), true)), reverseBits(var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 12>();
    let var_0 = Struct_4(~(~(0u & u_input.a) & ~121055u), global2[_wgslsmith_index_u32(u_input.c.x, 12u)], func_5(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), func_1(), !(80i >= u_input.b.x))), vec3<bool>(false, true, -1738f > _wgslsmith_f_op_f32(-func_5(global2[_wgslsmith_index_u32(4294967295u, 12u)]).b)));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(15436u, 4386u, u_input.d, 58477u), ~vec4<u32>(90856u, 86225u, 41437u, var_0.c.c.a)), max(vec4<u32>(var_0.b.b.d.x, var_0.c.c.a, 1u, 53134u), vec4<u32>(4294967295u, 31581u, u_input.a, u_input.c.x)) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.d, var_0.a), vec4<u32>(var_0.c.c.a, u_input.c.x, 4294967295u, u_input.c.x))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 33756u, var_0.b.b.d.x, var_0.b.b.d.x), vec4<u32>(u_input.c.x, 26622u, 4312u, 4294967295u)))), any(!(!(!var_0.c.a.xyw))), vec2<bool>(_wgslsmith_add_u32(~var_0.a, func_5(global2[_wgslsmith_index_u32(81444u, 12u)]).d.x) > u_input.c.x, func_1().a.x));
    global0 = array<Struct_2, 6>();
    global1 = array<vec2<bool>, 5>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.b), -1197f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -391f))))), _wgslsmith_f_op_f32(-var_0.c.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(204f)), 688f), _wgslsmith_f_op_f32(var_0.b.b.b - func_5(global2[_wgslsmith_index_u32(var_0.c.d.x, 12u)]).b))));
    let var_3 = Struct_4(~(~var_0.b.b.c.a), Struct_3(var_2, Struct_2(func_5(Struct_3(vec4<f32>(var_2.x, var_2.x, 832f, var_0.c.b), global0[_wgslsmith_index_u32(var_0.c.c.a, 6u)], false)).a, -206f, Struct_1(4294967295u, var_1.b, select(var_1.c, global1[_wgslsmith_index_u32(var_1.a, 5u)], false)), firstLeadingBit(u_input.c << (u_input.c % vec3<u32>(32u)))), func_5(Struct_3(var_0.b.a, var_0.c, var_1.c.x)).c.b), Struct_2(var_0.b.b.a, 216f, var_0.b.b.c, _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.a, 1u), var_0.c.d), ~vec3<u32>(1u, u_input.d, u_input.a))), func_5(Struct_3(vec4<f32>(684f, _wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(-var_0.c.b), -1834f), func_1(), false)).a.zwy);
    let var_4 = -u_input.b.x;
    global2 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4);
}

