struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(43546u, 0u, 71094u, 4294967295u, 1u, 138407u, 41467u, 58256u, 4294967295u, 40385u, 1u, 7672u, 56928u, 44353u, 35736u);

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-1404f, -661f, -690f), vec3<f32>(-1548f, 215f, 471f), vec3<f32>(1403f, -1373f, -238f), vec3<f32>(241f, -959f, 144f));

var<private> global3: vec3<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<u32> {
    return countOneBits(vec4<u32>(_wgslsmith_mod_u32(global1.a.a.x, countOneBits(global0[_wgslsmith_index_u32(~global1.a.a.x, 15u)])), global1.a.a.x | 15413u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1.a.a.x, 27488u, global1.a.a.x, global0[_wgslsmith_index_u32(global1.a.a.x, 15u)]), vec4<u32>(global0[_wgslsmith_index_u32(global1.a.a.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], 8533u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)])), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.a.x, 18172u, 4294967295u, 2932u), vec4<u32>(global1.a.a.x, 0u, 20452u, 1u), vec4<u32>(global1.a.a.x, global0[_wgslsmith_index_u32(global1.a.a.x, 15u)], global1.a.a.x, 1u))), 15u)], 10938u), global1.a.a.x));
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = max(1i, 2147483647i);
    global0 = array<u32, 15>();
    let var_1 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(11514u, arg_0.x ^ global1.a.a.x)), _wgslsmith_clamp_vec2_u32(~global1.a.a.zy, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 15u)])) >> (global1.a.a.xx % vec2<u32>(32u))) | ~arg_0.x;
    var var_2 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, arg_0.x), ~vec2<u32>(arg_0.x, global0[_wgslsmith_index_u32(0u, 15u)])), 0u, _wgslsmith_dot_vec4_u32(func_3(), _wgslsmith_mult_vec4_u32(arg_0, vec4<u32>(9132u, 30426u, 22436u, var_1)))), vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-15381i, global1.a.c, -2147483647i, 1i), u_input.a), -u_input.a), u_input.a.x), min(-firstTrailingBit(var_0), ~var_0)), all(!vec4<bool>(select(global1.b, true, false), true, global1.b, true)), _wgslsmith_f_op_f32(-global1.c));
    global2 = array<vec3<f32>, 4>();
    return Struct_3(var_2.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    global1 = Struct_2(Struct_1(~func_3().zxw, vec3<i32>(min(-global3.x, _wgslsmith_mod_i32(1i, 31372i)), _wgslsmith_mult_i32(-arg_0.a.c, arg_0.a.b.x), -_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(12822i, arg_0.a.c, 1i, 2147483647i))), -10664i), global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1467f)) + _wgslsmith_div_f32(-1046f, -794f)), 1617f));
    var var_0 = global1.c;
    global0 = array<u32, 15>();
    global1 = Struct_2(arg_0.a, !global1.b, global1.c);
    return Struct_3(func_2(~vec4<u32>(arg_0.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 45361u, arg_2), vec4<u32>(60198u, 4294967295u, global1.a.a.x, 0u)), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global1.a.a.x, 15u)], arg_1.a.x), global1.a.a.x >> (arg_1.a.x % 32u))).a);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: bool, arg_3: f32) -> Struct_3 {
    var var_0 = ~min(2147483647i, -12956i);
    global1 = Struct_2(global1.a, arg_2, arg_1.x);
    global0 = array<u32, 15>();
    var var_1 = global1.a.a.x;
    global0 = array<u32, 15>();
    return func_4(func_2(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(1u, global1.a.a.x, 0u, 3922u) << (vec4<u32>(global0[_wgslsmith_index_u32(0u, 15u)], global1.a.a.x, 1u, global1.a.a.x) % vec4<u32>(32u))), select(min(vec4<u32>(92023u, global1.a.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a.a.x, 15u)], 15u)], 0u), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], global0[_wgslsmith_index_u32(global1.a.a.x, 15u)], global1.a.a.x)), select(vec4<u32>(68126u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1644u, 15u)], 15u)], 13893u, global1.a.a.x), vec4<u32>(global1.a.a.x, global1.a.a.x, global1.a.a.x, global1.a.a.x), vec4<bool>(false, true, arg_2, global1.b)), !vec4<bool>(global1.b, false, true, true)))), Struct_1(global1.a.a, vec3<i32>(1i, 1i, firstLeadingBit(0i)) << ((vec3<u32>(0u, global1.a.a.x, global1.a.a.x) << (~global1.a.a % vec3<u32>(32u))) % vec3<u32>(32u)), -_wgslsmith_div_i32(1i, u_input.a.x | global1.a.b.x)), 67895u >> (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(global1.a.a.x, global1.a.a.x, 19478u, global1.a.a.x), vec4<u32>(38675u, 30530u, global1.a.a.x, 264u)), vec4<u32>(0u, global0[_wgslsmith_index_u32(24697u, 15u)], global1.a.a.x, 12267u) << (vec4<u32>(global0[_wgslsmith_index_u32(69457u, 15u)], global0[_wgslsmith_index_u32(global1.a.a.x, 15u)], global0[_wgslsmith_index_u32(22291u, 15u)], 4294967295u) % vec4<u32>(32u))), abs(firstTrailingBit(vec4<u32>(4294967295u, global1.a.a.x, global1.a.a.x, 4294967295u)))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1179f, 1346f), -1000f))), vec2<f32>(_wgslsmith_f_op_f32(floor(-577f)), -1284f));
    global3 = global1.a.b;
    let var_1 = func_1(vec3<f32>(-1934f, var_0.x, global1.c), vec2<f32>(_wgslsmith_f_op_f32(global1.c - -1306f), global1.c), false, _wgslsmith_f_op_f32(f32(-1f) * -937f));
    var var_2 = vec3<i32>(~min(~(-global1.a.c), u_input.a.x), firstTrailingBit(~(-2147483647i)), u_input.a.x);
    let var_3 = Struct_3(Struct_1(~vec3<u32>(global1.a.a.x, firstLeadingBit(34925u), _wgslsmith_add_u32(var_1.a.a.x, global0[_wgslsmith_index_u32(var_1.a.a.x, 15u)])), _wgslsmith_clamp_vec3_i32(func_4(Struct_3(global1.a), Struct_1(var_1.a.a, vec3<i32>(global3.x, global3.x, 26877i), 2147483647i), 751u).a.b | _wgslsmith_mod_vec3_i32(global1.a.b, vec3<i32>(var_2.x, -18133i, u_input.a.x)), select(~vec3<i32>(global3.x, 55783i, var_2.x), vec3<i32>(-1115i, 2147483647i, 50089i) << (var_1.a.a % vec3<u32>(32u)), global1.b), select(vec3<i32>(0i, var_2.x, var_2.x), vec3<i32>(global1.a.c, 838i, global1.a.c), vec3<bool>(true, global1.b, false)) ^ u_input.a.xxw), _wgslsmith_dot_vec3_i32(~(u_input.a.ywy << (vec3<u32>(global1.a.a.x, var_1.a.a.x, global0[_wgslsmith_index_u32(1u, 15u)]) % vec3<u32>(32u))), vec3<i32>(-2147483647i, func_1(global2[_wgslsmith_index_u32(global1.a.a.x, 4u)], vec2<f32>(global1.c, var_0.x), global1.b, global1.c).a.c, _wgslsmith_add_i32(-64146i, -38390i)))));
    var var_4 = !vec2<bool>(firstLeadingBit(~global0[_wgslsmith_index_u32(global1.a.a.x, 15u)]) <= 0u, global1.b);
    var var_5 = !select(vec4<bool>(all(select(vec2<bool>(global1.b, false), vec2<bool>(var_4.x, var_4.x), vec2<bool>(false, global1.b))), !(!var_4.x), var_4.x, ~var_3.a.a.x >= min(57856u, 4294967295u)), select(vec4<bool>(!var_4.x, true, false, any(vec3<bool>(global1.b, false, global1.b))), vec4<bool>(global1.b & false, true, !var_4.x, global1.b), any(!vec2<bool>(true, var_4.x))), select(vec4<bool>(!global1.b, true, true, true), vec4<bool>(var_4.x, true, var_4.x, false), select(vec4<bool>(true, global1.b, false, global1.b), !vec4<bool>(false, global1.b, global1.b, var_4.x), !vec4<bool>(true, global1.b, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(global1.a.c)), 160819u);
}

