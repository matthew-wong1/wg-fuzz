struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(false, false, false, true, false, true, true, true, true, false, false, false, true, false, false, false, false, false, true);

var<private> global1: array<bool, 3> = array<bool, 3>(false, false, true);

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(48567i, vec2<i32>(i32(-2147483648), 0i), 113f), Struct_1(21327i, vec2<i32>(i32(-2147483648), 22485i), 1000f), Struct_1(-7719i, vec2<i32>(52351i, -31670i), -1304f), Struct_1(-76040i, vec2<i32>(0i, 2147483647i), -1021f), Struct_1(-31474i, vec2<i32>(2147483647i, -1i), -697f), Struct_1(6168i, vec2<i32>(2147483647i, 0i), 651f), Struct_1(16242i, vec2<i32>(61906i, i32(-2147483648)), 1000f), Struct_1(-5646i, vec2<i32>(56473i, 35209i), -746f), Struct_1(i32(-2147483648), vec2<i32>(8682i, i32(-2147483648)), -1227f), Struct_1(-1i, vec2<i32>(-3520i, 0i), 976f), Struct_1(1i, vec2<i32>(1i, -1i), 1320f), Struct_1(49575i, vec2<i32>(44318i, i32(-2147483648)), -376f), Struct_1(-1i, vec2<i32>(-3675i, -15153i), 1391f), Struct_1(16229i, vec2<i32>(10678i, 2147483647i), 532f), Struct_1(-25100i, vec2<i32>(-1i, -28296i), 136f), Struct_1(2147483647i, vec2<i32>(2095i, -2077i), -336f), Struct_1(i32(-2147483648), vec2<i32>(-8686i, -1i), -164f), Struct_1(1i, vec2<i32>(1i, -23072i), 978f), Struct_1(1i, vec2<i32>(16825i, -12562i), -518f), Struct_1(-39624i, vec2<i32>(2147483647i, 48517i), -315f));

var<private> global3: array<vec2<i32>, 32>;

var<private> global4: u32 = 61872u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> vec3<i32> {
    var var_0 = Struct_1(abs(1i), ~abs(_wgslsmith_sub_vec2_i32(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], vec2<i32>(-21023i, 2147483647i))) << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    let var_1 = _wgslsmith_f_op_f32(exp2(var_0.c));
    let var_2 = Struct_1(reverseBits(~_wgslsmith_dot_vec2_i32(var_0.b, countOneBits(vec2<i32>(var_0.a, var_0.a)))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.a, 41327i), _wgslsmith_add_i32(2147483647i, 0i)), -13265i), _wgslsmith_sub_vec2_i32(~global3[_wgslsmith_index_u32(u_input.a.x, 32u)], ~var_0.b) >> (u_input.a.wy % vec2<u32>(32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c))), var_0.c)));
    var var_3 = _wgslsmith_sub_vec2_u32(u_input.a.wy | ~u_input.a.yx, _wgslsmith_mod_vec2_u32(u_input.a.zx, ~(firstLeadingBit(vec2<u32>(0u, u_input.a.x)) ^ vec2<u32>(u_input.a.x, 4294967295u))));
    let var_4 = true;
    return ~_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.a, max(-4312i, var_0.a) ^ (var_2.b.x ^ 2147483647i), var_0.b.x), countOneBits(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, -24285i, var_2.a), vec3<i32>(79379i, 1i, var_0.a), vec3<i32>(var_2.a, var_2.a, var_2.a))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 20>();
    var var_0 = _wgslsmith_f_op_f32(-arg_0.c);
    let var_1 = _wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, _wgslsmith_mod_i32(1i, min(arg_0.a, arg_0.b.x)), select(37197i, arg_0.a, false) ^ _wgslsmith_add_i32(-1i, arg_0.a)), _wgslsmith_mult_vec3_i32(firstTrailingBit(func_3(arg_0.c)), ~(~vec3<i32>(arg_0.a, -71389i, 2147483647i))));
    global1 = array<bool, 3>();
    var var_2 = arg_0;
    return Struct_1((arg_0.a ^ func_3(_wgslsmith_div_f32(arg_0.c, -196f)).x) ^ var_1.x, -arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1516f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c, var_2.c))))));
}

fn func_1() -> i32 {
    let var_0 = func_2(global2[_wgslsmith_index_u32(0u << (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.a.zxy, u_input.a.yxw, vec3<u32>(1u, u_input.a.x, 0u)), vec3<u32>(59526u, 1734u, abs(u_input.a.x))) % 32u), 20u)]);
    global1 = array<bool, 3>();
    let var_1 = vec2<bool>(global0[_wgslsmith_index_u32(0u, 19u)] && global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(4294967295u, u_input.a.x)), 19u)], true);
    var var_2 = func_2(func_2(var_0));
    let var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(-select(min(vec4<i32>(var_0.a, 0i, -2147483647i, -79574i), vec4<i32>(var_2.a, 1i, var_2.a, -2147483647i)), vec4<i32>(-2147483647i, 1i, var_2.a, var_2.b.x) & vec4<i32>(var_0.a, var_0.b.x, var_2.a, -46374i), select(vec4<bool>(false, global1[_wgslsmith_index_u32(65249u, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], true), global1[_wgslsmith_index_u32(28122u, 3u)])), reverseBits(vec4<i32>(var_0.b.x, 8811i, 1995i, -15703i) ^ ~vec4<i32>(var_0.a, -2648i, 89097i, var_2.b.x))), ~2147483647i, -38132i, _wgslsmith_dot_vec2_i32(var_2.b, var_2.b));
    return ~_wgslsmith_clamp_i32(-(i32(-1i) * -2147483647i), (var_3.x & var_0.b.x) << (abs(u_input.a.x) % 32u), func_2(func_2(Struct_1(-1i, vec2<i32>(0i, -1i), -404f))).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(max(~1i, func_1()) & firstTrailingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(-7319i, 57454i), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -1i), global3[_wgslsmith_index_u32(0u, 32u)]))), 0i, true);
    global3 = array<vec2<i32>, 32>();
    global0 = array<bool, 19>();
    let var_1 = ~_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xy, u_input.a.zx), u_input.a.wy)), vec2<u32>(min(~21830u, 0u), u_input.a.x));
    global1 = array<bool, 3>();
    var var_2 = func_2(global2[_wgslsmith_index_u32(~abs(firstTrailingBit(0u)), 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(18776u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * -128f)));
}

