struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(847f, 499f, 2359f, 590f, 1079f, 1980f, -1671f, -373f, 1069f);

var<private> global1: array<bool, 7>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> bool {
    global1 = array<bool, 7>();
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    global1 = array<bool, 7>();
    return !(!(~_wgslsmith_sub_u32(u_input.b.x, 2621u) > _wgslsmith_sub_u32(max(0u, u_input.b.x), u_input.d)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: f32, arg_3: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(467f, global0[_wgslsmith_index_u32(arg_3, 9u)], 538f, 265f))))));
    global1 = array<bool, 7>();
    global0 = array<f32, 9>();
    global1 = array<bool, 7>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1048f, -200f, arg_2, 468f)))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(arg_0.x, 9u)], -770f, var_0.x, global0[_wgslsmith_index_u32(26927u, 9u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 9u)], 1183f, var_0.x, global0[_wgslsmith_index_u32(32830u, 9u)])))))));
    return !(!vec3<bool>(func_2(), true, true));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_4, arg_3: bool) -> Struct_4 {
    let var_0 = u_input.a;
    let var_1 = u_input.c.x;
    var var_2 = select(select(vec3<bool>(func_2(), select(false, !arg_1, func_2()), true), arg_0, arg_0), select(vec3<bool>(arg_0.x, false, arg_3), select(vec3<bool>(arg_3, arg_3, !arg_0.x), func_3(arg_2.b, arg_2, _wgslsmith_f_op_f32(ceil(400f)), arg_2.a.x & u_input.b.x), all(select(vec4<bool>(false, arg_1, false, false), vec4<bool>(arg_1, false, arg_0.x, global1[_wgslsmith_index_u32(arg_2.a.x, 7u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_2.a.x, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], arg_1)))), true), arg_3);
    let var_3 = u_input.b.x;
    var var_4 = -2141f;
    return Struct_4(~(~_wgslsmith_add_vec2_u32(firstTrailingBit(arg_2.b.xy), _wgslsmith_add_vec2_u32(u_input.b.zw, arg_2.a))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, _wgslsmith_clamp_u32(arg_2.b.x, 4432u, 47435u), ~0u, 4294967295u), u_input.b) << (~arg_2.b % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_4(arg_0.b.zw & arg_0.b.yy, _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c, select(4294967295u, 11715u, func_3(arg_0.b, Struct_4(arg_0.b.yz, arg_0.b), 1617f, u_input.b.x).x), abs(u_input.b.x), 0u), ~(~(~vec4<u32>(0u, 4294967295u, 38384u, arg_0.b.x)))));
    var var_1 = arg_1;
    var var_2 = ~(~vec4<u32>(u_input.d, reverseBits(~arg_2.c), 17525u, 1u));
    let var_3 = _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, u_input.b.x, var_0.a.x, arg_2.c)), ~vec4<u32>(11541u, _wgslsmith_div_u32(arg_2.c, var_0.b.x), min(1u, u_input.d), abs(30365u))) & 11996u;
    let var_4 = _wgslsmith_div_u32(12496u, arg_2.c);
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<f32>) -> Struct_2 {
    global1 = array<bool, 7>();
    global1 = array<bool, 7>();
    let var_0 = _wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, u_input.a), 4596i));
    let var_1 = max(vec2<i32>(0i, select(-56276i, var_0 | u_input.c.x, false) >> (40458u % 32u)), -(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, var_0), u_input.c.xz << (u_input.b.yz % vec2<u32>(32u))) & vec2<i32>(min(12081i, var_0), 0i ^ u_input.a)));
    let var_2 = _wgslsmith_mod_u32(~0u & abs(min(countOneBits(u_input.d), abs(47367u))), firstTrailingBit(u_input.b.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 7>();
    var var_0 = true;
    let var_1 = Struct_3(0i, func_5(Struct_2(func_4(func_1(vec3<bool>(true, global1[_wgslsmith_index_u32(9823u, 7u)], false), false, Struct_4(vec2<u32>(11013u, 5602u), u_input.b), global1[_wgslsmith_index_u32(u_input.b.x, 7u)]), _wgslsmith_div_vec3_i32(vec3<i32>(40823i, 33399i, 1i), u_input.c), Struct_1(vec3<f32>(-1274f, 755f, -1025f), false, u_input.b.x, true, vec3<f32>(-678f, -1872f, global0[_wgslsmith_index_u32(u_input.d, 9u)])), false)), vec4<f32>(global0[_wgslsmith_index_u32(28763u, 9u)], -145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-396f - global0[_wgslsmith_index_u32(4294967295u, 9u)])), global0[_wgslsmith_index_u32(abs(~30619u), 9u)]), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(96649u, 11383u, 53603u, 0u), vec4<u32>(2198u, u_input.d, u_input.b.x, 4294967295u)), 9u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 9u)] * global0[_wgslsmith_index_u32(1u, 9u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(12503u, 9u)] + global0[_wgslsmith_index_u32(u_input.d, 9u)])))), 9403i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-387f - -1099f))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(~u_input.d), 9u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1484f, global0[_wgslsmith_index_u32(u_input.d, 9u)])) * global0[_wgslsmith_index_u32(~0u, 9u)])))));
    global0 = array<f32, 9>();
    global1 = array<bool, 7>();
    var var_2 = Struct_3(8974i, var_1.b, abs(abs(~(-20444i))), _wgslsmith_div_f32(1040f, var_1.b.a.a.x));
    let var_3 = var_2.b.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -14188i, var_2.c, 1i) | vec4<i32>(var_1.a, 0i, -1i, var_2.c), vec4<i32>(var_1.a, 10331i, var_1.c, var_1.c))), vec4<i32>(21215i ^ u_input.c.x, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, abs(-2206i), abs(26848i)), ~abs(var_2.a), abs(var_2.a) ^ var_2.c)), func_1(select(!func_3(vec4<u32>(4294967295u, 4294967295u, var_1.b.a.c, var_1.b.a.c), Struct_4(u_input.b.yw, u_input.b), -1080f, var_1.b.a.c), vec3<bool>(false, true, true), true), !all(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 7u)], false), vec2<bool>(false, global1[_wgslsmith_index_u32(var_1.b.a.c, 7u)]), true)), Struct_4(~vec2<u32>(14231u, 1u) & firstTrailingBit(vec2<u32>(0u, u_input.d)), vec4<u32>(0u, 4294967295u, 32007u, 49557u) >> (_wgslsmith_mod_vec4_u32(u_input.b, u_input.b) % vec4<u32>(32u))), true).a, 9876u, u_input.a);
}

