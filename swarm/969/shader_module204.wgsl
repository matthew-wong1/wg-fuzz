struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(4294967295u, vec2<bool>(true, false), 1u, -1026f), Struct_2(6529u, vec2<bool>(true, false), 31629u, -1433f), Struct_2(39238u, vec2<bool>(true, true), 57634u, -859f), Struct_2(4294967295u, vec2<bool>(true, true), 0u, 788f), Struct_2(0u, vec2<bool>(false, true), 0u, -1000f), Struct_2(1u, vec2<bool>(true, false), 9971u, -790f), Struct_2(125532u, vec2<bool>(false, true), 0u, 281f), Struct_2(4294967295u, vec2<bool>(true, true), 74725u, 376f), Struct_2(95122u, vec2<bool>(true, true), 18035u, -243f), Struct_2(1952u, vec2<bool>(false, true), 4294967295u, 1699f), Struct_2(1u, vec2<bool>(false, true), 21238u, -1131f), Struct_2(97555u, vec2<bool>(false, false), 28862u, -2605f), Struct_2(4294967295u, vec2<bool>(false, true), 101643u, 197f), Struct_2(4294967295u, vec2<bool>(false, true), 15154u, -366f), Struct_2(4294967295u, vec2<bool>(true, true), 27161u, -469f), Struct_2(51154u, vec2<bool>(true, true), 47863u, -2155f), Struct_2(0u, vec2<bool>(false, false), 0u, -989f), Struct_2(0u, vec2<bool>(false, true), 3588u, 1334f), Struct_2(0u, vec2<bool>(false, false), 7194u, 1000f), Struct_2(0u, vec2<bool>(true, true), 32412u, -678f), Struct_2(0u, vec2<bool>(false, true), 23321u, 405f), Struct_2(0u, vec2<bool>(false, false), 4294967295u, -497f), Struct_2(44946u, vec2<bool>(false, false), 16543u, -610f), Struct_2(4294967295u, vec2<bool>(false, false), 0u, -692f), Struct_2(42132u, vec2<bool>(true, true), 0u, -569f), Struct_2(4294967295u, vec2<bool>(false, false), 0u, -1208f), Struct_2(47897u, vec2<bool>(true, false), 4294967295u, -350f), Struct_2(0u, vec2<bool>(false, true), 32013u, 419f), Struct_2(4294967295u, vec2<bool>(false, true), 1u, -785f), Struct_2(4294967295u, vec2<bool>(false, false), 4294967295u, 416f));

var<private> global1: array<vec4<f32>, 32>;

var<private> global2: array<u32, 19> = array<u32, 19>(62238u, 0u, 28863u, 4294967295u, 1u, 1u, 75641u, 0u, 20523u, 42002u, 2388u, 31531u, 4294967295u, 1u, 31389u, 9025u, 98482u, 0u, 1u);

var<private> global3: array<i32, 29> = array<i32, 29>(-1i, 3793i, 2147483647i, 1505i, 18320i, 0i, -10348i, 27440i, -1i, 1i, 16689i, 3315i, -16347i, 10644i, 19348i, 0i, 2147483647i, -5720i, i32(-2147483648), 0i, -8264i, 22939i, 27985i, -6765i, -2796i, 0i, 0i, 0i, 20406i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> f32 {
    let var_0 = vec4<bool>(all(!(!select(vec4<bool>(true, true, arg_0.a.b.x, arg_0.a.b.x), vec4<bool>(arg_0.a.b.x, true, arg_0.a.b.x, false), vec4<bool>(false, true, true, arg_0.a.b.x)))), true, arg_0.a.b.x, any(!(!vec4<bool>(false, arg_0.a.b.x, true, false))));
    var var_1 = arg_0.a;
    global0 = array<Struct_2, 30>();
    var var_2 = true;
    var_2 = arg_1 <= u_input.a;
    return var_1.d;
}

fn func_2() -> Struct_2 {
    global2 = array<u32, 19>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1844f, 887f), 1000f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)) + _wgslsmith_f_op_f32(f32(-1f) * -1588f)) + 1559f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 130179u), 30u)], Struct_1(~vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], -1i))), 26174u)) - -1130f);
    var var_1 = select(vec2<bool>(true, false), vec2<bool>(!any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)), true), !all(vec4<bool>(true, true, true, true)));
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(29294u, ~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(1u, 19u)], abs(1u) | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 4294967295u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 19u)], 19u)], u_input.a, global2[_wgslsmith_index_u32(0u, 19u)])), 19u)], 19u)])), 30u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<i32>) -> vec3<f32> {
    var var_0 = 25203i;
    let var_1 = ~(global3[_wgslsmith_index_u32(func_2().a, 29u)] ^ 1i);
    let var_2 = func_2();
    let var_3 = var_1 << (arg_1.c % 32u);
    var var_4 = firstLeadingBit(firstLeadingBit(~vec3<u32>(u_input.a, 13550u, _wgslsmith_div_u32(var_2.c, 4294967295u))));
    return vec3<f32>(_wgslsmith_f_op_f32(296f * arg_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.d + arg_1.d), var_2.d, arg_1.b.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_f_op_f32(-158f * -886f))))), var_2.d);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_4(~(~(~vec3<u32>(15079u, global2[_wgslsmith_index_u32(arg_1.a.a, 19u)], 1u))), func_2(), func_2(), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(20597i, var_0)), _wgslsmith_div_vec2_i32(arg_1.b.a, arg_1.b.a)), ~max(0i, 9378i), _wgslsmith_mod_i32(-1i << (1u % 32u), 2147483647i)), max(reverseBits(-2147483647i), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, ~arg_1.a.a), 29u)]), -3042i)));
    let var_2 = _wgslsmith_f_op_f32(round(arg_1.a.d));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(arg_1.a.a, 32u)]), vec4<f32>(-344f, -159f, var_2, 321f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(0u, 32u)] - vec4<f32>(var_1.x, -759f, var_2, 1488f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1762f, var_2, 1112f, -1442f) + global1[_wgslsmith_index_u32(9259u, 32u)])), arg_0)) - _wgslsmith_f_op_vec4_f32(min(global1[_wgslsmith_index_u32(arg_1.a.c, 32u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(0u, 32u)], vec4<f32>(-125f, -318f, -1000f, var_2)) * vec4<f32>(var_2, arg_1.a.d, arg_1.a.d, var_1.x))))) * global1[_wgslsmith_index_u32(34949u, 32u)]);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = arg_3.b;
    let var_1 = firstLeadingBit(arg_3.b.a);
    let var_2 = _wgslsmith_mult_u32(1465u ^ _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a.c, 50192u, arg_3.a.a, u_input.a), vec4<u32>(global2[_wgslsmith_index_u32(1u, 19u)], 52842u, 1u, 4294967295u)), min(vec4<u32>(1u, 0u, global2[_wgslsmith_index_u32(56299u, 19u)], arg_3.a.a), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(arg_3.a.c, 19u)], u_input.a)) >> ((vec4<u32>(arg_3.a.c, arg_3.a.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, 0u, 0u, 11774u)) % vec4<u32>(32u))), firstLeadingBit(1u));
    let var_3 = arg_3;
    var_0 = Struct_1(-abs(~vec2<i32>(12801i, -1i)));
    return select(arg_3.a.b, arg_3.a.b, func_2().b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1287f, -1459f, _wgslsmith_div_f32(288f, 139f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 424f, -2438f, -242f) - global1[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(true, false, false, true), Struct_3(Struct_2(1u, vec2<bool>(true, false), u_input.a, -2181f), Struct_1(vec2<i32>(14512i, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 19u)], 19u)], 19u)], 19u)], 29u)]))))), _wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 32u)]), vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1338f, -1132f, 973f) * vec3<f32>(1100f, 408f, 1433f)))), Struct_3(Struct_2(max(global2[_wgslsmith_index_u32(61784u, 19u)], 0u), vec2<bool>(false, true), func_2().a, _wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(true, true, false, true), Struct_3(global0[_wgslsmith_index_u32(u_input.a, 30u)], Struct_1(vec2<i32>(-1i, global3[_wgslsmith_index_u32(0u, 29u)]))))).x), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(64989u, 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)]), vec2<i32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 29u)], global3[_wgslsmith_index_u32(66552u, 29u)])))));
    let var_1 = Struct_4(!vec2<bool>(var_0.x, !func_2().b.x), true, Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 29u)], -1i), vec2<i32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 29u)], abs(-2147483647i)))));
    global2 = array<u32, 19>();
    var var_2 = func_2();
    let var_3 = Struct_4(var_0, var_0.x, var_1.c);
    global3 = array<i32, 29>();
    var var_4 = func_2();
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(max(var_2.d, _wgslsmith_f_op_f32(f32(-1f) * -1366f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(486f)))) + _wgslsmith_f_op_f32(-var_2.d))), var_4.d, _wgslsmith_f_op_f32(var_4.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.d))))));
    let var_6 = !var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1405i, 41813u, -vec4<i32>(max(_wgslsmith_clamp_i32(-34176i, global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(25909u, 29u)]), 22303i), 2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_1.c.a, vec2<i32>(var_1.c.a.x, var_3.c.a.x)), vec2<i32>(var_1.c.a.x, 29146i)), var_3.c.a.x));
}

