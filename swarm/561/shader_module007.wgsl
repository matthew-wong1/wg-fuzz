struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: bool,
    d: bool,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(i32(-2147483648), 1i, 22047i, 37098i), Struct_1(true, vec3<bool>(true, false, true)), 1i, vec3<i32>(2147483647i, 2147483647i, 2147483647i), false);

var<private> global1: i32 = 28973i;

var<private> global2: array<i32, 31>;

var<private> global3: array<vec3<i32>, 19>;

var<private> global4: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(2147483647i, 22941i), vec2<i32>(10020i, 1i), vec2<i32>(i32(-2147483648), 21565i), vec2<i32>(23210i, 33691i), vec2<i32>(-20201i, -20811i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), 3107i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, -15926i), vec2<i32>(-68977i, 0i), vec2<i32>(2147483647i, -21079i), vec2<i32>(38370i, 24933i), vec2<i32>(-2003i, 5206i), vec2<i32>(-1i, 19791i), vec2<i32>(-12620i, 2114i), vec2<i32>(-63641i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, -28136i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(48245i, -15567i), vec2<i32>(-9693i, i32(-2147483648)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32) -> vec3<i32> {
    global2 = array<i32, 31>();
    var var_0 = false;
    var var_1 = min(_wgslsmith_sub_u32(arg_2, ~1u), ~arg_2);
    let var_2 = global0.b;
    var var_3 = select(!vec4<bool>(_wgslsmith_f_op_f32(trunc(458f)) >= 1f, !arg_1.b.b.x, var_2.b.x, true), select(!(!vec4<bool>(true, true, false, global0.e)), select(vec4<bool>(true, !var_2.a, arg_0.x >= arg_0.x, !arg_1.e), vec4<bool>(var_2.a, !global0.e, all(var_2.b), true), select(vec4<bool>(arg_1.e, true, true, global0.e), vec4<bool>(global0.e, global0.e, global0.b.a, global0.b.a), select(vec4<bool>(false, false, false, var_2.b.x), vec4<bool>(var_2.b.x, false, true, false), var_2.a))), arg_1.b.a), var_2.b.x);
    return vec3<i32>(-u_input.a.x, -1i, 1i);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_2(firstLeadingBit(u_input.a), Struct_1(global0.e, select(select(global0.b.b, global0.b.b, global0.e), select(vec3<bool>(global0.e, global0.e, global0.b.a), vec3<bool>(global0.b.a, global0.b.b.x, true), global0.b.b), !global0.b.b)), 11615i, vec3<i32>(33551i, _wgslsmith_add_i32(global0.c | global0.d.x, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(48502u, 31u)])), -37790i), true), Struct_1(all(global0.b.b.xy), global0.b.b), 25503i);
    global3 = array<vec3<i32>, 19>();
    global1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.d, 31u)], -2147483647i, global0.a.x) ^ vec3<i32>(2147483647i, -16067i, u_input.a.x), func_3(vec4<f32>(-211f, 345f, 460f, -1826f), Struct_2(u_input.a, global0.b, -44422i, vec3<i32>(2147483647i, 52234i, 1i), false), 1u)), select(u_input.a.ywz, vec3<i32>(-56805i, global2[_wgslsmith_index_u32(u_input.d, 31u)], 10621i), vec3<bool>(true, true, false))) | ~1i, -27066i);
    var var_1 = vec2<u32>(reverseBits(~1u), min(6981u, max(abs(u_input.c.x), select(33960u, u_input.d, var_0.a.e)))) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(34358u, u_input.d) >> (~(vec2<u32>(u_input.d, u_input.d) << (vec2<u32>(34628u, 11999u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(u_input.d, ~u_input.d), firstTrailingBit(firstTrailingBit(u_input.c.wx | vec2<u32>(26985u, u_input.c.x))));
    let var_2 = Struct_4(_wgslsmith_clamp_u32(~(~50550u), 4294967295u, 30391u) < var_1.x, var_0.a.e, var_0.a.b.a, !all(global0.b.b), vec4<bool>(false, any(!global0.b.b.yy) && !global0.e, all(vec4<bool>(all(vec4<bool>(global0.b.a, false, var_0.b.a, var_0.b.a)), true, var_0.b.a, true)), any(global0.b.b.zx)));
    return Struct_2(u_input.a, global0.b, -14974i, ~u_input.a.xxx, ~1i >= _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(var_0.a.d.yz, vec2<i32>(-34032i, -29208i)), 1i));
}

fn func_1() -> Struct_5 {
    let var_0 = ~(~((vec2<u32>(u_input.d, u_input.d) & _wgslsmith_mult_vec2_u32(u_input.c.ww, u_input.c.xy)) & ~vec2<u32>(3050u, u_input.c.x)));
    global3 = array<vec3<i32>, 19>();
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -927f));
    var var_3 = _wgslsmith_sub_vec4_u32(firstLeadingBit(~u_input.c), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~u_input.c, ~u_input.c | ~vec4<u32>(0u, u_input.c.x, u_input.d, 0u)), max(u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 3026u, var_0.x, var_0.x), vec4<u32>(u_input.c.x, 1u, 17479u, 1u)))));
    return Struct_5(func_2(), ~vec4<i32>(abs(-8971i), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(25510u, 31u)], _wgslsmith_div_i32(var_1.a.x, 5009i)), global0.c, global0.c), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-(~global2[_wgslsmith_index_u32(reverseBits(5620u), 31u)]), i32(-1i) * -1i, ~(-2147483647i) ^ ~global0.c);
    var var_1 = ~(~(min(countOneBits(u_input.c.x), 0u) | u_input.c.x));
    var var_2 = vec2<bool>(false, true);
    global3 = array<vec3<i32>, 19>();
    let var_3 = 6712u | u_input.d;
    var var_4 = func_1();
    var var_5 = vec2<bool>(var_4.c.b.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-980f, 340f, -637f)), vec3<f32>(1134f, -184f, 1193f), true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(2136f, 1282f, -1114f), vec3<f32>(328f, 1707f, -232f)), _wgslsmith_div_vec3_f32(vec3<f32>(-625f, -1000f, -1761f), vec3<f32>(409f, 707f, -423f)), vec3<bool>(false, true, false))), true)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(f32(-1f) * -1392f), _wgslsmith_f_op_f32(-375f * -169f)), vec3<f32>(1027f, _wgslsmith_div_f32(617f, -1000f), _wgslsmith_f_op_f32(trunc(-926f)))))), vec3<u32>(u_input.d, _wgslsmith_clamp_u32(abs(4294967295u), 0u << (u_input.d % 32u), ~(4294967295u | u_input.c.x)), reverseBits(u_input.c.x)), vec4<i32>(countOneBits(countOneBits(~(-1i))), ~(i32(-1i) * -global0.a.x), var_0.x, 20937i), global0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -152f, 160f), vec3<f32>(-125f, 761f, 361f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2139f, -386f, 456f), vec3<f32>(1126f, 307f, -3010f), vec3<bool>(true, var_2.x, var_4.c.b.b.x))))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(-167f, 772f)), 1f, 893f)))));
}

