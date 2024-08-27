struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(-18442i, vec3<i32>(0i, -1i, 0i), false), Struct_1(i32(-2147483648), vec3<i32>(-1i, 0i, 41389i), false), Struct_1(2147483647i, vec3<i32>(2147483647i, -25354i, -1i), true), Struct_1(-48239i, vec3<i32>(52961i, 1i, 81836i), false), Struct_1(41342i, vec3<i32>(1i, -53421i, 33132i), false), Struct_1(14767i, vec3<i32>(1i, -30432i, -59727i), true), Struct_1(-1i, vec3<i32>(2147483647i, -1i, 1i), false), Struct_1(2147483647i, vec3<i32>(3902i, -1i, 0i), true), Struct_1(-24523i, vec3<i32>(0i, -1i, 0i), true), Struct_1(-1i, vec3<i32>(-1i, -26669i, 2147483647i), true), Struct_1(-3030i, vec3<i32>(19604i, i32(-2147483648), 27815i), false), Struct_1(-29038i, vec3<i32>(26573i, 1i, -28632i), false), Struct_1(i32(-2147483648), vec3<i32>(-44831i, -5056i, i32(-2147483648)), true), Struct_1(1614i, vec3<i32>(15613i, 1i, i32(-2147483648)), false), Struct_1(i32(-2147483648), vec3<i32>(-6433i, i32(-2147483648), 31435i), false), Struct_1(2147483647i, vec3<i32>(21315i, -1i, 0i), false), Struct_1(-1i, vec3<i32>(2147483647i, 25575i, 19698i), true), Struct_1(i32(-2147483648), vec3<i32>(-11081i, 38382i, 836i), false), Struct_1(1i, vec3<i32>(1i, 1i, 10484i), false), Struct_1(1i, vec3<i32>(3229i, i32(-2147483648), -1i), true), Struct_1(-1i, vec3<i32>(-1i, -26668i, 11516i), false));

var<private> global2: vec2<f32> = vec2<f32>(1412f, -1789f);

var<private> global3: array<u32, 8>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec2<bool> {
    global3 = array<u32, 8>();
    var var_0 = select(vec2<bool>(true, false), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !vec2<bool>(true, all(vec2<bool>(false, true))), all(vec3<bool>(true, true, true))), true);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(global2.x + 1201f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(351f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(160f, _wgslsmith_f_op_f32(sign(global2.x)), !var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -1018f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) * -1087f));
    var var_2 = false;
    var var_3 = 4294967295u;
    return select(vec2<bool>(!any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x))), _wgslsmith_clamp_u32(~1u, global3[_wgslsmith_index_u32(u_input.b.x, 8u)], u_input.b.x) < _wgslsmith_div_u32(max(global3[_wgslsmith_index_u32(0u, 8u)], 498u), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 8u)], 8u)], 4294967295u))), vec2<bool>(false, var_0.x), true);
}

fn func_2() -> Struct_1 {
    global3 = array<u32, 8>();
    var var_0 = any(vec3<bool>(true, any(select(vec2<bool>(true, true), func_3(), func_3().x)), !func_3().x));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a.x, reverseBits(u_input.a.x), u_input.a.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(5920u, 8u)], 2454u, 0u), vec3<u32>(u_input.b.x, 4294967295u, 28603u) << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.c.x), 28715i, -2147483647i)), u_input.a.yyw, true);
    let var_2 = global1[_wgslsmith_index_u32(abs(u_input.b.x), 21u)];
    var var_3 = abs(16973u);
    return global1[_wgslsmith_index_u32(~0u, 21u)];
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x + global2.x))) - global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x))) * -211f), global2.x);
    var var_1 = firstLeadingBit(~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(54707u, arg_1)), abs(u_input.b), firstLeadingBit(u_input.b)), u_input.b, u_input.b));
    var var_2 = func_2();
    global0 = var_2.b.x;
    return !vec2<bool>(func_3().x, arg_3.c);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    return !(arg_2.c & arg_2.c) && true;
}

fn func_1() -> bool {
    var var_0 = true;
    var var_1 = !vec4<bool>(func_5(global1[_wgslsmith_index_u32(1u, 21u)], func_4(1i, ~7988u, vec4<bool>(false, true, true, false), func_2()), func_2()), true == ((u_input.b.x << (global3[_wgslsmith_index_u32(u_input.b.x, 8u)] % 32u)) >= firstTrailingBit(global3[_wgslsmith_index_u32(1u, 8u)])), all(vec4<bool>(true, true, true, true)), true);
    var var_2 = vec4<u32>(abs(select(~(~48833u), 44427u, true || var_1.x)), firstLeadingBit(~(~69438u >> (u_input.b.x % 32u))), 42025u, abs(global3[_wgslsmith_index_u32(max(~u_input.b.x, u_input.b.x), 8u)]));
    global1 = array<Struct_1, 21>();
    var var_3 = -2147483647i;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(all(vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, func_1())), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(48995u, global3[_wgslsmith_index_u32(u_input.b.x, 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12680u, 8u)], 8u)], 8u)], global3[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec4<u32>(u_input.b.x, 1u, global3[_wgslsmith_index_u32(7304u, 8u)], u_input.b.x))) <= 0u, !func_5(func_2(), vec2<bool>(false, true), Struct_1(u_input.a.x, u_input.a.yzy, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-_wgslsmith_div_vec2_i32(u_input.a.xx, u_input.a.xz))), ~_wgslsmith_clamp_vec3_i32(firstTrailingBit(min(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.c)), min(max(u_input.c, u_input.c), u_input.c | u_input.a.wwx), -(~u_input.a.zyy)), firstLeadingBit(vec3<u32>(35949u & (4294967295u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], 8u)]), ~(global3[_wgslsmith_index_u32(0u, 8u)] >> (global3[_wgslsmith_index_u32(u_input.b.x, 8u)] % 32u)), u_input.b.x)), abs(select(abs(u_input.b ^ vec2<u32>(u_input.b.x, u_input.b.x)), ~u_input.b & vec2<u32>(1u, 1u), var_0.x)), ~(~_wgslsmith_mult_i32(-1i, ~u_input.a.x)));
}

