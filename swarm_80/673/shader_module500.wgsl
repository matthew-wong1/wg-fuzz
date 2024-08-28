struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: bool;

var<private> global2: array<bool, 24>;

var<private> global3: vec3<f32> = vec3<f32>(-1000f, 973f, 763f);

var<private> global4: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 68879u), vec2<u32>(0u, 4294967295u), vec2<u32>(40477u, 4294967295u), vec2<u32>(67359u, 37793u), vec2<u32>(0u, 20181u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 25660u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 36143u), vec2<u32>(0u, 1u), vec2<u32>(93089u, 9359u), vec2<u32>(27219u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 34704u), vec2<u32>(39663u, 59644u), vec2<u32>(36073u, 4294967295u), vec2<u32>(4041u, 1u), vec2<u32>(0u, 24137u), vec2<u32>(57904u, 69008u), vec2<u32>(0u, 99745u), vec2<u32>(35727u, 4322u), vec2<u32>(0u, 4294967295u), vec2<u32>(28911u, 1u), vec2<u32>(6624u, 4294967295u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(44977u, 24u)];
    var var_1 = Struct_5(arg_0, Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.x), -1000f, _wgslsmith_f_op_f32(max(254f, -2638f)), _wgslsmith_f_op_f32(ceil(global3.x))))));
    global3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1104f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1187f * arg_0.a) * -589f), global3.x)))));
    let var_2 = Struct_3(Struct_1(~40466u, !select(select(vec2<bool>(arg_0.b.b.x, false), var_1.a.b.b, vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], arg_1.b.x)), select(vec2<bool>(arg_0.b.b.x, false), vec2<bool>(var_1.a.b.b.x, arg_0.b.b.x), true), any(vec4<bool>(var_1.a.b.b.x, false, false, arg_0.b.b.x)))));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.a.xzz) - var_1.b.a.yyz);
    return select(var_1.a.b.a & var_2.a.a, abs(firstTrailingBit(~var_2.a.a)), any(vec3<bool>(all(vec3<bool>(true, var_1.a.b.b.x, var_1.a.b.b.x)), any(vec4<bool>(false, var_2.a.b.x, false, true)), var_1.a.b.b.x))) <= arg_1.a;
}

fn func_2() -> Struct_5 {
    let var_0 = select(select(!select(select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(0u, 24u)]), vec3<bool>(global2[_wgslsmith_index_u32(5844u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)])), !vec3<bool>(global2[_wgslsmith_index_u32(6501u, 24u)], true, false), !vec3<bool>(global2[_wgslsmith_index_u32(67557u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], true)), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 24u)], false, all(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(4294967295u, 24u)]))), select(vec3<bool>(global2[_wgslsmith_index_u32(37856u, 24u)], false, false), !vec3<bool>(true, false, global2[_wgslsmith_index_u32(16744u, 24u)]), global2[_wgslsmith_index_u32(~16476u, 24u)]), global2[_wgslsmith_index_u32(17902u, 24u)]), !(true & any(vec3<bool>(true, global2[_wgslsmith_index_u32(59329u, 24u)], true)))), !vec3<bool>(!global2[_wgslsmith_index_u32(countOneBits(28857u), 24u)], true & global2[_wgslsmith_index_u32(~0u, 24u)], true), select(!vec3<bool>(true, func_3(Struct_2(1525f, Struct_1(4294967295u, vec2<bool>(global2[_wgslsmith_index_u32(14630u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]))), Struct_1(0u, vec2<bool>(global2[_wgslsmith_index_u32(28723u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]))), any(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(16432u, 24u)], false))), select(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(57081u, 24u)]), select(!vec3<bool>(true, global2[_wgslsmith_index_u32(68386u, 24u)], false), vec3<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 24u)]), true), vec3<bool>(false, true, false)), !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 24u)]));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(global3.zx, global3.zx));
    let var_2 = Struct_3(Struct_1(~46476u, select(var_0.xz, select(!var_0.zz, vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(23884u, 24u)], false)), _wgslsmith_f_op_f32(sign(1514f)) >= global3.x)));
    var var_3 = countOneBits(firstTrailingBit(vec4<i32>(u_input.a, _wgslsmith_mod_i32(-u_input.a, 27137i), u_input.a, _wgslsmith_add_i32(countOneBits(u_input.a), _wgslsmith_dot_vec3_i32(u_input.b.xxy, vec3<i32>(-13038i, u_input.a, -2147483647i))))));
    let var_4 = var_0.yy;
    return Struct_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.x))) - _wgslsmith_f_op_f32(global3.x + 477f)), var_2.a), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1454f, _wgslsmith_div_f32(global3.x, var_1.x), _wgslsmith_f_op_f32(-var_1.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: Struct_5) -> Struct_5 {
    global1 = arg_1;
    global0 = true;
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f + 488f), arg_2.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * arg_2.b.a.x) + -451f))) - _wgslsmith_f_op_vec3_f32(select(arg_0.b.a.xwx, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(-1575f, -1196f), _wgslsmith_f_op_f32(284f - -129f), _wgslsmith_f_op_f32(f32(-1f) * -2369f)))), any(!arg_0.a.b.b))));
    let var_1 = ~arg_0.a.b.a;
    global2 = array<bool, 24>();
    return Struct_5(func_2().a, func_2().b);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_5) -> u32 {
    global3 = vec3<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.x - global3.x))) * -714f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(356f, -345f)), -969f)));
    return ~_wgslsmith_dot_vec3_u32(arg_1, countOneBits(_wgslsmith_mod_vec3_u32(arg_1 ^ vec3<u32>(arg_1.x, 1u, 0u), _wgslsmith_sub_vec3_u32(arg_1, arg_1))));
}

fn func_1() -> vec4<u32> {
    global0 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(~_wgslsmith_div_u32(3934u, 1u)), ~firstLeadingBit(65423u), 9124u), 24u)];
    let var_0 = all(vec4<bool>(global2[_wgslsmith_index_u32(func_5(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -899f, global3.x))), _wgslsmith_sub_vec3_u32(max(vec3<u32>(4294967295u, 873u, 2440u), vec3<u32>(75711u, 138662u, 1u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(106f, 187f)) * 1031f), func_4(func_2(), global3.x != global3.x, Struct_5(Struct_2(122f, Struct_1(3972u, vec2<bool>(global2[_wgslsmith_index_u32(20610u, 24u)], global2[_wgslsmith_index_u32(55021u, 24u)]))), Struct_4(vec4<f32>(648f, global3.x, 1215f, global3.x))))), 24u)], global2[_wgslsmith_index_u32(45662u, 24u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(108791u, 13184u, 4294967295u, 1u), vec4<u32>(0u, 1u, 0u, 1u))) & _wgslsmith_sub_u32(1u, func_2().a.b.a), 24u)], !(!(!global2[_wgslsmith_index_u32(383u, 24u)]))));
    let var_1 = vec2<i32>(-13460i & u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(max(2147483647i, _wgslsmith_clamp_i32(-1442i, 1i, 0i)), -41156i, firstLeadingBit(firstLeadingBit(u_input.b.x))), -u_input.b.wxy));
    global4 = array<vec2<u32>, 26>();
    global3 = vec3<f32>(_wgslsmith_f_op_f32(global3.x - 908f), global3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1064f, global3.x))));
    return ~(~(~(~(~vec4<u32>(4294967295u, 54637u, 4294967295u, 39381u)))));
}

fn func_6(arg_0: vec4<u32>) -> Struct_1 {
    global0 = any(vec3<bool>(!global2[_wgslsmith_index_u32(31983u, 24u)], any(select(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.x, 24u)], true, false), vec3<bool>(global2[_wgslsmith_index_u32(22706u, 24u)], false, global2[_wgslsmith_index_u32(44827u, 24u)]), false), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(arg_0.x, 24u)] || global2[_wgslsmith_index_u32(arg_0.x, 24u)])), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, arg_0.x), 24u)]));
    var var_0 = 0u;
    let var_1 = Struct_3(func_2().a.b);
    global2 = array<bool, 24>();
    let var_2 = Struct_3(func_4(Struct_5(func_2().a, Struct_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -560f, -265f, -337f), vec4<f32>(global3.x, global3.x, -1604f, -1009f))))), var_1.a.b.x, func_4(func_4(func_4(Struct_5(Struct_2(global3.x, var_1.a), Struct_4(vec4<f32>(-414f, global3.x, global3.x, global3.x))), true, Struct_5(Struct_2(global3.x, Struct_1(arg_0.x, vec2<bool>(var_1.a.b.x, var_1.a.b.x))), Struct_4(vec4<f32>(global3.x, 793f, global3.x, 367f)))), all(vec3<bool>(false, true, var_1.a.b.x)), func_4(Struct_5(Struct_2(-982f, var_1.a), Struct_4(vec4<f32>(global3.x, -1815f, global3.x, global3.x))), false, Struct_5(Struct_2(global3.x, Struct_1(arg_0.x, var_1.a.b)), Struct_4(vec4<f32>(global3.x, global3.x, -1619f, 477f))))), func_4(Struct_5(Struct_2(global3.x, var_1.a), Struct_4(vec4<f32>(global3.x, global3.x, -578f, -767f))), any(vec3<bool>(true, true, global2[_wgslsmith_index_u32(1u, 24u)])), Struct_5(Struct_2(-1187f, Struct_1(1u, var_1.a.b)), Struct_4(vec4<f32>(global3.x, -1381f, global3.x, 1532f)))).a.b.b.x, func_2())).a.b);
    return func_4(func_2(), false, Struct_5(func_2().a, func_2().b)).a.b;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_4) -> Struct_4 {
    global2 = array<bool, 24>();
    var var_0 = Struct_3(arg_0.b);
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(countOneBits(arg_0.b.a), 0u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.a.a, arg_0.b.a), 40780u >> (var_0.a.a % 32u)) >> (select(0u | arg_0.b.a, ~0u, !arg_0.b.b.x) % 32u)), arg_0.b.a, arg_0.b.a, firstTrailingBit(4294967295u));
    let var_2 = func_2().b;
    var var_3 = vec4<bool>(true, arg_0.b.b.x, any(vec2<bool>(!(12985u <= var_0.a.a), any(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.b.a, 24u)], arg_0.b.b.x, true, false), vec4<bool>(arg_0.b.b.x, false, true, true), arg_0.b.b.x)))), !(((-40278i >> (var_0.a.a % 32u)) == -1965i) & !global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, 53613u), 24u)]));
    return Struct_4(_wgslsmith_f_op_vec4_f32(-arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_2(global3.x, func_6(func_1())), Struct_4(_wgslsmith_f_op_vec4_f32(-func_4(Struct_5(Struct_2(-2050f, Struct_1(4294967295u, vec2<bool>(global2[_wgslsmith_index_u32(13104u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]))), Struct_4(vec4<f32>(799f, global3.x, -1000f, 2245f))), true, Struct_5(Struct_2(global3.x, Struct_1(5762u, vec2<bool>(false, true))), Struct_4(vec4<f32>(global3.x, global3.x, global3.x, -493f)))).b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.x, -2266f), global3.zy)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-767f, -807f)))) * vec2<f32>(global3.x, _wgslsmith_f_op_f32(max(var_0.a.x, 1833f)))), _wgslsmith_f_op_vec2_f32(min(var_0.a.yw, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global3.zx * global3.xx))))), vec2<bool>(true && global2[_wgslsmith_index_u32(abs(28201u), 24u)], var_0.a.x != -383f))), vec4<u32>(func_1().x, _wgslsmith_add_u32(_wgslsmith_mod_u32(43051u, 4294967295u), 2280u) | (1u << (_wgslsmith_clamp_u32(1u, 4294967295u, 0u) % 32u)), 6374u, func_5(Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(-154f, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a)), countOneBits(vec3<u32>(1u, 4294967295u, 1u)), 760f, Struct_5(Struct_2(-1752f, Struct_1(1u, vec2<bool>(false, global2[_wgslsmith_index_u32(3179u, 24u)]))), func_7(Struct_2(332f, Struct_1(0u, vec2<bool>(false, global2[_wgslsmith_index_u32(33295u, 24u)]))), Struct_4(vec4<f32>(145f, global3.x, var_0.a.x, 266f)))))));
}

