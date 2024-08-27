struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(false, Struct_2(Struct_1(vec4<i32>(-14163i, 1i, -20118i, 13721i), 2147483647i, vec2<bool>(false, false), vec3<u32>(4294967295u, 1u, 1u)), vec2<u32>(2750u, 4294967295u), Struct_1(vec4<i32>(28782i, 0i, 7674i, 1i), 9350i, vec2<bool>(true, false), vec3<u32>(1u, 1u, 0u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(0i, -16752i, -16880i, 61370i), -4121i, vec2<bool>(false, false), vec3<u32>(0u, 31994u, 4294967295u)), vec2<u32>(28001u, 0u), Struct_1(vec4<i32>(-24266i, i32(-2147483648), -1i, 84146i), 51294i, vec2<bool>(true, false), vec3<u32>(1204u, 66725u, 11578u)))), Struct_3(true, Struct_2(Struct_1(vec4<i32>(1i, 0i, 0i, i32(-2147483648)), -1i, vec2<bool>(true, true), vec3<u32>(4294967295u, 1u, 4294967295u)), vec2<u32>(52847u, 0u), Struct_1(vec4<i32>(2147483647i, 1i, 1i, -78151i), 2147483647i, vec2<bool>(true, false), vec3<u32>(24227u, 4294967295u, 1u)))), Struct_3(true, Struct_2(Struct_1(vec4<i32>(-74919i, -3580i, -42915i, -1i), -34568i, vec2<bool>(true, false), vec3<u32>(56317u, 0u, 9625u)), vec2<u32>(1u, 0u), Struct_1(vec4<i32>(57667i, i32(-2147483648), -1i, 1i), 0i, vec2<bool>(false, false), vec3<u32>(4294967295u, 15988u, 28748u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -71594i, -6896i, -11842i), 1i, vec2<bool>(false, false), vec3<u32>(0u, 78879u, 1u)), vec2<u32>(1u, 1u), Struct_1(vec4<i32>(10964i, -4219i, i32(-2147483648), 1i), 2147483647i, vec2<bool>(false, false), vec3<u32>(4294967295u, 114560u, 4294967295u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(0i, -13496i, -804i, -1i), -7096i, vec2<bool>(true, false), vec3<u32>(18705u, 22507u, 0u)), vec2<u32>(4294967295u, 0u), Struct_1(vec4<i32>(0i, 0i, i32(-2147483648), 0i), -30258i, vec2<bool>(true, true), vec3<u32>(1u, 0u, 49354u)))), Struct_3(true, Struct_2(Struct_1(vec4<i32>(-1i, 1i, 18310i, -18764i), 1i, vec2<bool>(true, true), vec3<u32>(0u, 1u, 15733u)), vec2<u32>(1u, 45311u), Struct_1(vec4<i32>(0i, -1i, 4323i, i32(-2147483648)), -9889i, vec2<bool>(false, false), vec3<u32>(57124u, 0u, 4294967295u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(-1i, 2147483647i, i32(-2147483648), 1i), -2962i, vec2<bool>(true, true), vec3<u32>(11733u, 4294967295u, 4349u)), vec2<u32>(4294967295u, 1u), Struct_1(vec4<i32>(38453i, 38603i, i32(-2147483648), 0i), -1i, vec2<bool>(false, false), vec3<u32>(4294967295u, 4294967295u, 0u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(-1i, 1i, 17302i, -44972i), 33614i, vec2<bool>(false, false), vec3<u32>(1053u, 1u, 1u)), vec2<u32>(0u, 23353u), Struct_1(vec4<i32>(-18431i, -19831i, -29770i, i32(-2147483648)), -28775i, vec2<bool>(true, false), vec3<u32>(0u, 8721u, 27882u)))), Struct_3(true, Struct_2(Struct_1(vec4<i32>(-15152i, 24563i, -43824i, 0i), -1i, vec2<bool>(true, false), vec3<u32>(4294967295u, 0u, 17756u)), vec2<u32>(285u, 1u), Struct_1(vec4<i32>(63303i, 2147483647i, 13128i, 0i), i32(-2147483648), vec2<bool>(true, false), vec3<u32>(0u, 0u, 92578u)))), Struct_3(true, Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, -38012i, -10820i), 2147483647i, vec2<bool>(true, true), vec3<u32>(4294967295u, 96924u, 1u)), vec2<u32>(0u, 1u), Struct_1(vec4<i32>(i32(-2147483648), 42181i, -30740i, -9312i), 1i, vec2<bool>(false, false), vec3<u32>(310u, 0u, 1u)))), Struct_3(true, Struct_2(Struct_1(vec4<i32>(27510i, 2147483647i, -1i, 58461i), 2147483647i, vec2<bool>(false, false), vec3<u32>(74702u, 28662u, 19839u)), vec2<u32>(0u, 4294967295u), Struct_1(vec4<i32>(15091i, -24611i, 0i, i32(-2147483648)), -2365i, vec2<bool>(false, true), vec3<u32>(4294967295u, 40816u, 0u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1i, -1i, 55463i), 2147483647i, vec2<bool>(true, true), vec3<u32>(45248u, 31221u, 0u)), vec2<u32>(23865u, 0u), Struct_1(vec4<i32>(2147483647i, 0i, 71515i, 2147483647i), 2147483647i, vec2<bool>(false, false), vec3<u32>(4294967295u, 1u, 27938u)))), Struct_3(true, Struct_2(Struct_1(vec4<i32>(-11647i, 3467i, 18748i, -32037i), i32(-2147483648), vec2<bool>(false, true), vec3<u32>(1u, 4294967295u, 0u)), vec2<u32>(27077u, 39288u), Struct_1(vec4<i32>(-3675i, -55636i, -1i, -19289i), i32(-2147483648), vec2<bool>(false, false), vec3<u32>(58349u, 0u, 38481u)))), Struct_3(true, Struct_2(Struct_1(vec4<i32>(3314i, 1i, 1i, 589i), 19831i, vec2<bool>(false, true), vec3<u32>(4294967295u, 1u, 27532u)), vec2<u32>(0u, 28834u), Struct_1(vec4<i32>(7676i, i32(-2147483648), i32(-2147483648), 1i), -26099i, vec2<bool>(true, false), vec3<u32>(79458u, 1u, 36977u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(-3722i, 2147483647i, 0i, 1i), 9533i, vec2<bool>(true, true), vec3<u32>(1587u, 45179u, 47980u)), vec2<u32>(9815u, 31800u), Struct_1(vec4<i32>(-14276i, 0i, 58438i, 0i), 18587i, vec2<bool>(true, true), vec3<u32>(15515u, 52404u, 1u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(8472i, 1i, 51409i, i32(-2147483648)), 2147483647i, vec2<bool>(true, true), vec3<u32>(4294967295u, 1u, 7499u)), vec2<u32>(4294967295u, 0u), Struct_1(vec4<i32>(-1i, 29773i, -1i, 0i), -1i, vec2<bool>(false, false), vec3<u32>(4294967295u, 0u, 22759u)))), Struct_3(true, Struct_2(Struct_1(vec4<i32>(-33529i, -2364i, -1i, 1i), -66039i, vec2<bool>(false, true), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec2<u32>(16987u, 0u), Struct_1(vec4<i32>(35913i, 8192i, 1i, i32(-2147483648)), -1i, vec2<bool>(true, true), vec3<u32>(1u, 4294967295u, 4294967295u)))), Struct_3(true, Struct_2(Struct_1(vec4<i32>(-54746i, -16121i, 12838i, 25416i), 2147483647i, vec2<bool>(true, false), vec3<u32>(4294967295u, 4294967295u, 9145u)), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec4<i32>(-17854i, 2147483647i, -20365i, -18608i), 39247i, vec2<bool>(false, false), vec3<u32>(34677u, 42787u, 39687u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(-1i, -1i, 4654i, -29684i), i32(-2147483648), vec2<bool>(false, true), vec3<u32>(1u, 0u, 0u)), vec2<u32>(72605u, 4294967295u), Struct_1(vec4<i32>(2147483647i, 1i, -29034i, 2147483647i), 38474i, vec2<bool>(false, true), vec3<u32>(30144u, 31203u, 1u)))), Struct_3(true, Struct_2(Struct_1(vec4<i32>(-1i, 0i, 0i, -11785i), i32(-2147483648), vec2<bool>(true, true), vec3<u32>(21349u, 4294967295u, 45712u)), vec2<u32>(17599u, 0u), Struct_1(vec4<i32>(-7319i, 60291i, 2147483647i, 2147483647i), 0i, vec2<bool>(false, true), vec3<u32>(4294967295u, 0u, 1460u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(20825i, 29118i, -47284i, -1i), 17981i, vec2<bool>(true, false), vec3<u32>(1u, 24163u, 45486u)), vec2<u32>(0u, 7981u), Struct_1(vec4<i32>(2924i, -1i, -25218i, 1i), -1i, vec2<bool>(false, true), vec3<u32>(1u, 1u, 4294967295u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(1i, 1i, i32(-2147483648), -1i), -69849i, vec2<bool>(false, false), vec3<u32>(18860u, 53076u, 0u)), vec2<u32>(63155u, 4294967295u), Struct_1(vec4<i32>(1i, 1i, 32888i, 0i), -8202i, vec2<bool>(false, true), vec3<u32>(62032u, 13237u, 40354u)))), Struct_3(true, Struct_2(Struct_1(vec4<i32>(2147483647i, 5888i, -4536i, -1i), -1i, vec2<bool>(false, true), vec3<u32>(4294967295u, 65222u, 0u)), vec2<u32>(0u, 16294u), Struct_1(vec4<i32>(i32(-2147483648), 45139i, 0i, 51148i), i32(-2147483648), vec2<bool>(true, false), vec3<u32>(0u, 1u, 55073u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(-14741i, -1i, 0i, -19292i), 2147483647i, vec2<bool>(true, false), vec3<u32>(25253u, 1u, 4294967295u)), vec2<u32>(1u, 100840u), Struct_1(vec4<i32>(-7187i, 0i, 37699i, -18095i), 6161i, vec2<bool>(false, true), vec3<u32>(8817u, 39231u, 4294967295u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(-17590i, 0i, 1i, 32798i), i32(-2147483648), vec2<bool>(false, true), vec3<u32>(1u, 0u, 3677u)), vec2<u32>(5698u, 628u), Struct_1(vec4<i32>(-29429i, 36175i, -1i, 0i), i32(-2147483648), vec2<bool>(true, false), vec3<u32>(4294967295u, 0u, 1u)))), Struct_3(false, Struct_2(Struct_1(vec4<i32>(18475i, -18007i, -33275i, 2147483647i), -9677i, vec2<bool>(false, true), vec3<u32>(121765u, 49901u, 1u)), vec2<u32>(0u, 1u), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, 2147483647i), -69476i, vec2<bool>(true, false), vec3<u32>(1u, 32876u, 0u)))));

var<private> global2: bool = true;

var<private> global3: array<Struct_4, 4>;

var<private> global4: Struct_3 = Struct_3(true, Struct_2(Struct_1(vec4<i32>(2147483647i, 13282i, -1i, 0i), 2147483647i, vec2<bool>(false, true), vec3<u32>(29456u, 0u, 0u)), vec2<u32>(1u, 1u), Struct_1(vec4<i32>(0i, 0i, 1i, 70607i), i32(-2147483648), vec2<bool>(true, true), vec3<u32>(0u, 4294967295u, 11202u))));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(987f + _wgslsmith_f_op_f32(floor(-336f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(956f)))), _wgslsmith_f_op_f32(ceil(-416f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1133f, 180f)))))));
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(u_input.b, ~_wgslsmith_div_vec4_i32(~global4.b.c.a, u_input.b)), ~_wgslsmith_dot_vec2_i32(global4.b.a.a.yx, min(vec2<i32>(global4.b.a.a.x, arg_0) ^ global4.b.a.a.wy, vec2<i32>(40920i, u_input.a))), select(global4.b.a.c, arg_1, !(_wgslsmith_mult_u32(12488u, u_input.c.x) >= ~4294967295u)), ~global4.b.c.d);
    let var_2 = Struct_4(-max(_wgslsmith_mult_vec4_i32(vec4<i32>(-19557i, u_input.a, -56262i, 0i) << (vec4<u32>(69013u, 65326u, u_input.c.x, 39771u) % vec4<u32>(32u)), -var_1.a), _wgslsmith_mod_vec4_i32(var_1.a, -u_input.b)), -2147483647i, arg_1.x, var_1);
    var var_3 = global3[_wgslsmith_index_u32(firstLeadingBit(0u), 4u)];
    global2 = false;
    return vec3<bool>(!var_2.d.c.x, true & (-527f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)) + _wgslsmith_f_op_f32(2437f * var_0.x))), true);
}

fn func_4(arg_0: Struct_4) -> bool {
    global4 = Struct_3(!any(!(!vec4<bool>(global4.b.a.c.x, false, global4.b.a.c.x, global4.b.c.c.x))), global0[_wgslsmith_index_u32(abs(abs(~(~41826u))), 23u)]);
    let var_0 = max(select(select(vec4<u32>(~22623u, _wgslsmith_dot_vec3_u32(vec3<u32>(46263u, arg_0.d.d.x, 37985u), global4.b.a.d), _wgslsmith_div_u32(arg_0.d.d.x, 4294967295u), ~19565u), min(~vec4<u32>(0u, 1u, 1u, arg_0.d.d.x), vec4<u32>(u_input.c.x, 46720u, u_input.c.x, arg_0.d.d.x)), global4.a), ~select(vec4<u32>(arg_0.d.d.x, 1u, arg_0.d.d.x, u_input.c.x) | vec4<u32>(10873u, 1u, u_input.c.x, 0u), abs(vec4<u32>(u_input.c.x, arg_0.d.d.x, u_input.c.x, 75617u)), !arg_0.d.c.x), !vec4<bool>(global4.b.a.c.x, global4.b.a.a.x > -2147483647i, true, arg_0.d.c.x && arg_0.d.c.x)), ~vec4<u32>(~(~u_input.c.x), ~_wgslsmith_sub_u32(arg_0.d.d.x, u_input.c.x), select(arg_0.d.d.x, arg_0.d.d.x, any(arg_0.d.c)), firstLeadingBit(4294967295u)));
    let var_1 = global4.b;
    let var_2 = global1[_wgslsmith_index_u32(min(_wgslsmith_add_u32(~0u, u_input.c.x), 4294967295u), 27u)];
    var var_3 = -27332i;
    return !var_1.c.c.x;
}

fn func_2(arg_0: i32) -> vec3<u32> {
    global0 = array<Struct_2, 23>();
    global2 = func_4(Struct_4(firstTrailingBit(max(vec4<i32>(-12354i, 43382i, arg_0, -28994i) << (vec4<u32>(6775u, 4294967295u, u_input.c.x, global4.b.a.d.x) % vec4<u32>(32u)), vec4<i32>(-3888i, -33548i, u_input.a, u_input.b.x))), arg_0, any(func_3(arg_0, global4.b.c.c)), Struct_1(~_wgslsmith_sub_vec4_i32(vec4<i32>(global4.b.c.a.x, -2147483647i, 45250i, global4.b.c.a.x), vec4<i32>(15762i, -26131i, global4.b.c.b, arg_0)), -1i, vec2<bool>(true, !global4.a), global4.b.a.d)));
    global1 = array<Struct_3, 27>();
    global2 = all(select(global4.b.a.c, select(global4.b.c.c, func_3(global4.b.c.a.x & arg_0, select(vec2<bool>(global4.a, global4.b.a.c.x), global4.b.a.c, vec2<bool>(global4.a, global4.b.c.c.x))).zy, !(!vec2<bool>(false, global4.a))), !global4.b.c.c));
    var var_0 = global4.b.c;
    return _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(19596u, var_0.d.x, global4.b.a.d.x) >> (vec3<u32>(global4.b.c.d.x, 11234u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(1u, var_0.d.x, global4.b.a.d.x) | vec3<u32>(41553u, 35099u, u_input.c.x)) & _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, var_0.d.x, 38424u)), ~vec3<u32>(abs(global4.b.a.d.x), _wgslsmith_add_u32(u_input.c.x, u_input.c.x), 1u)), vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(var_0.d.x, 13864u, 1u)), _wgslsmith_clamp_vec3_u32(~var_0.d, vec3<u32>(32752u, 87101u, global4.b.a.d.x), countOneBits(vec3<u32>(16048u, 1u, var_0.d.x)))), abs(~(1u >> (0u % 32u))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 4294967295u | var_0.d.x), 13700u)));
}

fn func_1() -> vec2<i32> {
    var var_0 = global3[_wgslsmith_index_u32(u_input.c.x, 4u)];
    var var_1 = ~vec2<u32>(~(~1u), ~4294967295u);
    let var_2 = func_2(18487i) >> (vec3<u32>(abs(43506u), ~_wgslsmith_mod_u32(0u >> (var_0.d.d.x % 32u), 1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(max(vec3<u32>(var_0.d.d.x, 5353u, global4.b.a.d.x), var_0.d.d)), ~_wgslsmith_mult_vec3_u32(var_0.d.d, var_0.d.d))) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(185f, 603f, -634f, -597f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(617f, 647f, -804f, -1000f), vec4<f32>(-1262f, -889f, -489f, 1730f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(826f, 1000f, -785f, -541f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-507f, -410f, -496f, -847f))))))))));
    var var_4 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(70421u, u_input.c.x, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 23527u, u_input.c.x), vec3<u32>(4294967295u, var_1.x, 35941u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(33947u, var_0.d.d.x, u_input.c.x, global4.b.a.d.x) << (vec4<u32>(var_1.x, global4.b.c.d.x, 24410u, u_input.c.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(4294967295u, 19761u, global4.b.b.x, 4294967295u))) >> (vec4<u32>(firstLeadingBit(1405u), 3293u | var_1.x, ~1u, _wgslsmith_sub_u32(7289u, 0u)) % vec4<u32>(32u))), 4u)];
    return var_4.d.a.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1346u, u_input.c.x), 4u)];
    let var_1 = -1i;
    global0 = array<Struct_2, 23>();
    var var_2 = true;
    global3 = array<Struct_4, 4>();
    global3 = array<Struct_4, 4>();
    let var_3 = u_input.c.x;
    var var_4 = ~global4.b.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(vec4<u32>(0u, global4.b.a.d.x, 66972u, 20048u))) & vec4<u32>(~1u, ~740u, 16913u | _wgslsmith_sub_u32(var_4.x, 18037u), 81858u), func_1(), -587f, 4294967295u, vec4<i32>(_wgslsmith_div_i32(global4.b.c.a.x, u_input.b.x), ~1i, abs(u_input.b.x), global4.b.a.a.x));
}

