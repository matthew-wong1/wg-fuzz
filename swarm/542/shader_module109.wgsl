struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(477f), 1u, Struct_1(-674f), Struct_1(-755f), Struct_1(885f)), Struct_2(Struct_1(-1435f), 57582u, Struct_1(-851f), Struct_1(-942f), Struct_1(1226f)), Struct_2(Struct_1(-808f), 4294967295u, Struct_1(-1472f), Struct_1(-103f), Struct_1(-1095f)), Struct_2(Struct_1(1153f), 53578u, Struct_1(-925f), Struct_1(1914f), Struct_1(-962f)), Struct_2(Struct_1(324f), 4294967295u, Struct_1(1136f), Struct_1(1363f), Struct_1(495f)), Struct_2(Struct_1(-268f), 50735u, Struct_1(930f), Struct_1(2539f), Struct_1(2706f)), Struct_2(Struct_1(-590f), 20214u, Struct_1(1379f), Struct_1(479f), Struct_1(-1299f)), Struct_2(Struct_1(709f), 1u, Struct_1(214f), Struct_1(-1463f), Struct_1(694f)), Struct_2(Struct_1(1214f), 9764u, Struct_1(-229f), Struct_1(501f), Struct_1(-1492f)), Struct_2(Struct_1(-362f), 1u, Struct_1(-1074f), Struct_1(-181f), Struct_1(366f)), Struct_2(Struct_1(-1037f), 4294967295u, Struct_1(960f), Struct_1(477f), Struct_1(836f)), Struct_2(Struct_1(1720f), 4077u, Struct_1(-502f), Struct_1(1328f), Struct_1(1000f)), Struct_2(Struct_1(-1417f), 0u, Struct_1(-1319f), Struct_1(1355f), Struct_1(306f)), Struct_2(Struct_1(-288f), 21419u, Struct_1(-156f), Struct_1(-351f), Struct_1(513f)), Struct_2(Struct_1(-581f), 1u, Struct_1(-261f), Struct_1(-1000f), Struct_1(-394f)));

var<private> global2: u32;

var<private> global3: Struct_4 = Struct_4(vec4<u32>(23200u, 1u, 1u, 50356u), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec2<f32>(954f, -1172f), vec3<f32>(132f, 441f, -467f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32) -> Struct_3 {
    global1 = array<Struct_2, 15>();
    global2 = 59260u;
    var var_0 = !(_wgslsmith_mult_i32(-u_input.a.x, u_input.a.x) >= _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(global3.b.x, 0i), global3.b.x ^ 21939i), _wgslsmith_sub_i32(abs(global3.b.x), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(global3.b.x, 0i, 637i, global3.b.x)))));
    global0 = _wgslsmith_sub_i32(global3.b.x, -(~(~0i))) >> (u_input.b.x % 32u);
    var var_1 = ~max(_wgslsmith_sub_u32(~global3.a.x, 0u) << (~global3.a.x % 32u), _wgslsmith_clamp_u32(~global3.a.x, 4294967295u, ~_wgslsmith_add_u32(u_input.b.x, global3.a.x)));
    return Struct_3((vec4<i32>(-1i) * -max(vec4<i32>(1i, global3.b.x, u_input.a.x, 0i), vec4<i32>(-1i, global3.b.x, u_input.a.x, 16279i))) >> (vec4<u32>(~(1u & u_input.b.x), ~49887u, global3.a.x, _wgslsmith_mod_u32(select(u_input.b.x, u_input.b.x, false), ~1u)) % vec4<u32>(32u)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<f32> {
    var var_0 = global3.b.x;
    var var_1 = -21490i;
    let var_2 = _wgslsmith_f_op_vec3_f32(-global3.d);
    var_0 = 2147483647i;
    let var_3 = 29463u;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.d));
}

fn func_1() -> vec2<bool> {
    var var_0 = func_2(_wgslsmith_f_op_f32(global3.d.x + 1555f));
    global3 = Struct_4(global3.a, abs(global3.b), global3.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.d) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_vec2_i32(var_0.a.yz, vec2<i32>(2147483647i, -51922i))))))));
    var var_1 = 2147483647i;
    let var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(2264i << (_wgslsmith_clamp_u32(global3.a.x, 28280u, 103527u) % 32u), _wgslsmith_clamp_i32(_wgslsmith_div_i32(50287i, 18505i), ~(-11545i), u_input.a.x >> (u_input.b.x % 32u)), _wgslsmith_clamp_i32(0i, u_input.a.x, _wgslsmith_div_i32(-49068i, 2014i)), global3.b.x ^ countOneBits(2147483647i))), reverseBits(1i));
    var var_3 = Struct_1(global3.c.x);
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~global3.b.x;
    let var_0 = !select(!select(func_1(), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec2<bool>(false, false))), vec2<bool>(any(vec2<bool>(true, true)) || (global3.b.x > 2147483647i), true), false);
    var var_1 = select(select(select(vec3<bool>(var_0.x, true, true), !(!vec3<bool>(var_0.x, false, true)), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, var_0.x, var_0.x))), vec3<bool>(true, var_0.x, !(!var_0.x)), true), select(select(vec3<bool>(true, true, any(vec3<bool>(var_0.x, var_0.x, var_0.x))), !vec3<bool>(var_0.x, false, var_0.x), !(!vec3<bool>(var_0.x, true, true))), !vec3<bool>(true, false, var_0.x), false), var_0.x & all(select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(true, var_0.x, var_0.x, true))));
    global2 = ~(1u & ~u_input.b.x);
    global0 = _wgslsmith_div_i32(countOneBits(_wgslsmith_sub_i32(-42240i, 58034i)), _wgslsmith_clamp_i32(global3.b.x, -u_input.a.x << (1u % 32u), _wgslsmith_dot_vec3_i32(global3.b, -(~global3.b))));
    global2 = ~1u | ~global3.a.x;
    let var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(26178u), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(global3.c.x, vec4<u32>(~41785u, 30597u, u_input.b.x, countOneBits(~u_input.b.x)), global3.a);
}

