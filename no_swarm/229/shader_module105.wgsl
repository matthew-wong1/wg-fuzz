struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(1203f, -926f, 332f, 614f), vec4<f32>(-711f, 377f, 609f, 341f), vec4<f32>(1000f, 104f, 1294f, -1000f), vec4<f32>(633f, -1000f, 1245f, -3294f), vec4<f32>(-1516f, 899f, 111f, 519f), vec4<f32>(-490f, 1748f, 396f, -651f), vec4<f32>(-772f, -1467f, -428f, 189f), vec4<f32>(-1281f, 1376f, 243f, 1459f), vec4<f32>(-1328f, -1124f, 517f, 1209f));

var<private> global1: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(-59810i, vec3<u32>(24055u, 0u, 1u), Struct_3(vec3<bool>(true, true, true)), 765f), Struct_4(i32(-2147483648), vec3<u32>(57540u, 1u, 30266u), Struct_3(vec3<bool>(false, true, false)), -1068f), Struct_4(2147483647i, vec3<u32>(54896u, 43207u, 0u), Struct_3(vec3<bool>(true, true, false)), 3605f), Struct_4(-34097i, vec3<u32>(27768u, 43077u, 37773u), Struct_3(vec3<bool>(false, true, true)), -337f), Struct_4(63132i, vec3<u32>(0u, 0u, 12238u), Struct_3(vec3<bool>(true, false, true)), -1247f), Struct_4(-33986i, vec3<u32>(47038u, 4294967295u, 1u), Struct_3(vec3<bool>(false, true, false)), 794f), Struct_4(-85998i, vec3<u32>(61358u, 37444u, 37815u), Struct_3(vec3<bool>(true, true, false)), -892f), Struct_4(10990i, vec3<u32>(48000u, 1u, 1u), Struct_3(vec3<bool>(false, false, false)), -597f), Struct_4(-23056i, vec3<u32>(35309u, 46978u, 0u), Struct_3(vec3<bool>(true, false, true)), -1603f), Struct_4(-79740i, vec3<u32>(549u, 66936u, 4294967295u), Struct_3(vec3<bool>(true, true, true)), 596f), Struct_4(2147483647i, vec3<u32>(12734u, 11039u, 0u), Struct_3(vec3<bool>(false, false, true)), 1497f));

var<private> global2: vec2<bool>;

var<private> global3: array<u32, 11> = array<u32, 11>(11333u, 72201u, 1u, 31843u, 4294967295u, 4294967295u, 0u, 4294967295u, 21944u, 1u, 35180u);

var<private> global4: Struct_3 = Struct_3(vec3<bool>(true, false, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = (vec3<i32>(-2147483647i, arg_0, arg_0) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 20271u, u_input.a.x), ~vec3<u32>(1u, 0u, global3[_wgslsmith_index_u32(1u, 11u)])), _wgslsmith_mod_vec3_u32(vec3<u32>(55146u, u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 11u)]) << (vec3<u32>(442u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), max(vec3<u32>(4294967295u, 0u, 38091u), vec3<u32>(28469u, 37882u, u_input.a.x)))) % vec3<u32>(32u))) | -(~vec3<i32>(~2147483647i, _wgslsmith_sub_i32(arg_0, -22979i), arg_0));
    global3 = array<u32, 11>();
    global4 = Struct_3(select(select(vec3<bool>(true, select(true, false, false), all(vec2<bool>(false, global2.x))), global4.a, _wgslsmith_f_op_f32(floor(-1140f)) == -762f), !select(vec3<bool>(true, false, true), select(vec3<bool>(global2.x, global4.a.x, true), vec3<bool>(false, false, global4.a.x), true), false), global4.a));
    var var_1 = Struct_2(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 726f, 1266f, 567f) * vec4<f32>(369f, -1568f, -1692f, 559f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(-1576f)), _wgslsmith_div_f32(597f, 644f), -880f, 973f), global0[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x, true), 9u)]))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-128f, 1076f, -1189f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1926f, -438f, -179f))), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f))), ~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(4294967295u, 50287u), abs(global3[_wgslsmith_index_u32(57454u, 11u)]) | global3[_wgslsmith_index_u32(firstTrailingBit(1u), 11u)]));
    global2 = !(!vec2<bool>(global2.x, any(!global4.a.yx)));
    return -25386i;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    global4 = arg_1;
    return max(62363i, _wgslsmith_dot_vec3_i32(vec3<i32>(-13120i, arg_2.b, arg_3.c.b), max(vec3<i32>(arg_3.c.b, arg_2.b, arg_3.c.b), vec3<i32>(arg_3.c.b, arg_3.c.b, arg_2.b))) | (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.c.b, 1i, arg_3.c.b), vec3<i32>(arg_2.b, -1426i, arg_2.b)) ^ -79470i)) <= min(~_wgslsmith_sub_i32(arg_3.c.b, 9836i), firstTrailingBit(i32(-1i) * -arg_3.c.b));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> i32 {
    let var_0 = Struct_3(vec3<bool>(func_4(arg_1, Struct_3(vec3<bool>(global4.a.x, global2.x, false)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1019f, -730f, -892f)), func_3(2966i), 1f), Struct_2(global4.a.x, vec4<f32>(arg_1.x, 1117f, 2266f, -1583f), Struct_1(vec3<f32>(arg_1.x, -767f, arg_1.x), -1i, 1821f), 72737u ^ global3[_wgslsmith_index_u32(9862u, 11u)])), 46741u > countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(10070u, 0u, 0u, 0u), vec4<u32>(u_input.a.x, 19049u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]))), select(all(select(global4.a, global4.a, vec3<bool>(true, true, true))), false, select(false, false, true) | false)));
    global0 = array<vec4<f32>, 9>();
    let var_1 = 22177u;
    global1 = array<Struct_4, 11>();
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1121f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(197f - -802f)) + _wgslsmith_f_op_f32(exp2(arg_1.x)))), arg_1.x));
    return 26508i;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32, arg_3: vec2<i32>) -> Struct_2 {
    global1 = array<Struct_4, 11>();
    global3 = array<u32, 11>();
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.d)), -232f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.d)) * -908f), 328f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(4294967295u, 9u)] - global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_2, 9u)]))))));
    var var_1 = vec3<i32>(-arg_3.x, func_2(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(-1029f - -1000f), any(vec4<bool>(global2.x, arg_1.a.x, true, arg_1.a.x)))) < _wgslsmith_f_op_f32(sign(var_0.a.x)), vec2<f32>(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(floor(arg_0.d))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.d, arg_0.d), arg_0.d))), -_wgslsmith_mult_i32(-13606i, max(-10130i, -arg_0.a)));
    let var_2 = Struct_1(var_0.a.yyw, arg_0.a, 1f);
    return Struct_2(any(arg_0.c.a.xz), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23606u, 11u)], 9u)] * _wgslsmith_f_op_vec4_f32(trunc(global0[_wgslsmith_index_u32(1u, 9u)])))), var_0.a)), Struct_1(var_0.a.yzz, i32(-1i) * -(var_1.x >> (arg_0.b.x % 32u)), _wgslsmith_f_op_f32(select(-988f, _wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(select(arg_0.d, -792f, false))), (arg_0.a << (36978u % 32u)) <= func_2(true, var_0.a.xw)))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 9>();
    var var_0 = func_1(global1[_wgslsmith_index_u32(12933u >> (0u % 32u), 11u)], Struct_3(!(!global4.a)), ~u_input.a.x, vec2<i32>(2147483647i, (_wgslsmith_mult_i32(1i, 1i) << (global3[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 11u)] % 32u)) & -2147483647i));
    var var_1 = any(vec3<bool>(!var_0.a, var_0.a, select(!global4.a.x, true & global2.x, !global4.a.x)));
    let var_2 = 2147483647i;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.a.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.c * 1000f), -390f), _wgslsmith_f_op_f32(-var_0.c.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)), -399f) * var_0.b.x), -1000f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, 755f, var_0.b.x, -922f), var_0.b)), _wgslsmith_f_op_vec4_f32(ceil(var_0.b)), !vec4<bool>(var_0.a, false, global4.a.x, true))))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(select(var_0.c.c, func_1(global1[_wgslsmith_index_u32(24098u, 11u)], Struct_3(global4.a), 13442u, vec2<i32>(1i, -1i)).c.c, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-738f)), 429f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-114f - -106f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(var_0.b.ywz, var_3.wyz), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(abs(1201f))), _wgslsmith_f_op_f32(634f * var_3.x))))), -1043f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_0.d, u_input.a.x << (471u % 32u))), abs(u_input.a) & ~_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(0u, 60783u))), 11u)], 41740u);
}

