struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: bool;

var<private> global2: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(2210f, -1505f), -8545i, 2147483647i), 0u, vec2<u32>(64943u, 97098u), vec4<f32>(-924f, 1531f, 1349f, 790f)), Struct_3(Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-1731f, 1510f), 0i, -25893i), 34762u, vec2<u32>(17861u, 44735u), vec4<f32>(188f, 2809f, -504f, -284f)), Struct_3(Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(426f, -598f), -41043i, 2147483647i), 0u, vec2<u32>(7187u, 0u), vec4<f32>(584f, -1232f, 1109f, -972f)), Struct_3(Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(-107f, 1326f), -6395i, 0i), 58974u, vec2<u32>(1401u, 53939u), vec4<f32>(-785f, 811f, -2747f, 940f)), Struct_3(Struct_1(vec4<bool>(false, false, true, true), vec2<f32>(1209f, -492f), -42936i, 6517i), 23370u, vec2<u32>(65154u, 4294967295u), vec4<f32>(-152f, 279f, -504f, -1152f)), Struct_3(Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(-805f, 819f), i32(-2147483648), 18385i), 97237u, vec2<u32>(4294967295u, 60855u), vec4<f32>(-1177f, 1573f, -327f, -1223f)), Struct_3(Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(700f, -270f), i32(-2147483648), 1i), 4294967295u, vec2<u32>(75988u, 0u), vec4<f32>(1108f, 236f, 429f, -2393f)), Struct_3(Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(875f, -340f), i32(-2147483648), -1i), 4294967295u, vec2<u32>(1u, 57619u), vec4<f32>(865f, -800f, 786f, -1324f)), Struct_3(Struct_1(vec4<bool>(true, false, false, false), vec2<f32>(811f, 908f), 0i, 0i), 81412u, vec2<u32>(0u, 75525u), vec4<f32>(371f, -728f, -962f, -136f)), Struct_3(Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(-1937f, 370f), i32(-2147483648), -55046i), 68204u, vec2<u32>(4294967295u, 47471u), vec4<f32>(1036f, -752f, -177f, -149f)), Struct_3(Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(-1484f, 584f), 1i, -1i), 4294967295u, vec2<u32>(4294967295u, 4294967295u), vec4<f32>(1166f, -359f, 578f, -1478f)), Struct_3(Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(-377f, -1000f), -34237i, -23017i), 0u, vec2<u32>(0u, 4294967295u), vec4<f32>(-1069f, 937f, -386f, 1099f)), Struct_3(Struct_1(vec4<bool>(true, false, false, false), vec2<f32>(-342f, 138f), -39487i, 0i), 10417u, vec2<u32>(41432u, 95580u), vec4<f32>(1117f, 267f, 688f, 1000f)), Struct_3(Struct_1(vec4<bool>(true, false, false, false), vec2<f32>(1545f, -285f), 0i, 2147483647i), 41962u, vec2<u32>(1u, 31576u), vec4<f32>(1000f, -792f, 1901f, 225f)), Struct_3(Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(378f, 235f), 0i, 1i), 4443u, vec2<u32>(4294967295u, 1u), vec4<f32>(-1364f, -643f, 322f, -602f)), Struct_3(Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(324f, 849f), 41200i, -27219i), 48366u, vec2<u32>(81837u, 0u), vec4<f32>(-884f, 709f, 958f, 249f)), Struct_3(Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(110f, -1265f), 24120i, 1482i), 4294967295u, vec2<u32>(4294967295u, 65629u), vec4<f32>(565f, -211f, -430f, -1029f)), Struct_3(Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(-1538f, 1385f), -5808i, 0i), 37198u, vec2<u32>(6946u, 1u), vec4<f32>(905f, 130f, -294f, -1011f)), Struct_3(Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(1000f, 1171f), 37956i, -4325i), 33747u, vec2<u32>(18897u, 57144u), vec4<f32>(-602f, 369f, 1000f, 779f)));

var<private> global3: i32 = 0i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_2(arg_0, _wgslsmith_mod_vec3_i32(abs(min(vec3<i32>(u_input.a.x, -2147483647i, 24839i), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1, arg_0.c, u_input.a.x), vec3<i32>(u_input.b, -24978i, -27127i)))), abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1, 2147483647i, arg_0.c), vec3<i32>(30093i, arg_0.c, u_input.b)))), arg_0, arg_0, arg_0.a);
    var var_1 = 324f < _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(f32(-1f) * -914f)));
    let var_2 = Struct_2(Struct_1(vec4<bool>(false, !all(var_0.a.a), -u_input.a.x > 2147483647i, _wgslsmith_f_op_f32(abs(2378f)) < arg_0.b.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.b.x, -353f) - vec2<f32>(var_0.c.b.x, -429f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(744f, var_0.d.b.x) + vec2<f32>(1000f, var_0.d.b.x)))), arg_1, ~select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d, -2147483647i, 42388i, u_input.b), vec4<i32>(24437i, arg_1, var_0.d.d, -1i)), ~arg_1, all(arg_0.a.xz))), -(firstTrailingBit(vec3<i32>(2147483647i, -14576i, 0i)) << (~(~vec3<u32>(5001u, 1u, 47253u)) % vec3<u32>(32u))), Struct_1(!vec4<bool>(all(var_0.a.a.wzw), arg_0.a.x || true, var_0.e.x, true), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-911f, var_0.a.b.x) + var_0.c.b), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1248f, arg_0.b.x))), !global0[_wgslsmith_index_u32(19041u, 2u)])))), arg_1, 0i), arg_0, vec4<bool>(var_0.d.a.x, !(-997f >= _wgslsmith_f_op_f32(ceil(arg_0.b.x))), var_0.a.a.x, false));
    global3 = i32(-1i) * -2147483647i;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.b.x, -714f, arg_0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))))) * vec4<f32>(-910f, var_2.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(1845f, var_2.c.b.x, true))) * _wgslsmith_f_op_f32(1446f * _wgslsmith_div_f32(-424f, 1378f))), 1425f));
    return !(!(!var_0.d.a));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> vec2<f32> {
    let var_0 = Struct_1(func_3(arg_2.a, _wgslsmith_mult_i32(-11869i, _wgslsmith_div_i32(-arg_2.a.c, _wgslsmith_sub_i32(arg_1, arg_2.a.d)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(arg_2.a.b)))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, arg_2.a.c), i32(-1i) * -16647i), _wgslsmith_div_i32(-(i32(-1i) * -34257i), ~11256i));
    let var_1 = var_0;
    var var_2 = var_0.c;
    var_2 = -var_0.c;
    global1 = var_0.a.x;
    return arg_2.a.b;
}

fn func_1(arg_0: Struct_3) -> vec4<u32> {
    global2 = array<Struct_3, 19>();
    global2 = array<Struct_3, 19>();
    var var_0 = Struct_1(vec4<bool>(!(!global0[_wgslsmith_index_u32(u_input.c, 2u)]), arg_0.a.a.x, all(select(!arg_0.a.a, !arg_0.a.a, !arg_0.a.a)), all(!vec2<bool>(arg_0.a.a.x, arg_0.a.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.b) + vec2<f32>(941f, arg_0.d.x)) + _wgslsmith_f_op_vec2_f32(-arg_0.d.zx)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(!arg_0.a.a.x, 2147483647i, arg_0)), arg_0.d.xy)), (8228i & _wgslsmith_add_i32(_wgslsmith_div_i32(3771i, 786i), arg_0.a.d ^ 0i)) & 4064i, u_input.b);
    let var_1 = vec2<u32>(~(~1u), ~4294967295u);
    var var_2 = global2[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 64044u), reverseBits(~vec3<u32>(arg_0.b, 21713u, 0u)))), 19u)];
    return ~vec4<u32>(1u, _wgslsmith_div_u32(~_wgslsmith_add_u32(3986u, 88177u), abs(_wgslsmith_add_u32(u_input.c, 24809u))), 4294967295u, ~countOneBits(var_2.b ^ var_1.x));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: bool) -> bool {
    let var_0 = vec2<bool>(arg_2, any(vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 2u)] && true, any(vec3<bool>(arg_2, true, global0[_wgslsmith_index_u32(arg_1, 2u)])), all(vec4<bool>(arg_0, arg_0, arg_0, false)), false)) | arg_0);
    global0 = array<bool, 2>();
    let var_1 = u_input.a;
    let var_2 = 0u;
    global2 = array<Struct_3, 19>();
    return !(!(!arg_2 | arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 16942i;
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-360f * -494f)))));
    var var_1 = all(select(vec4<bool>(any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 2u)], false, global0[_wgslsmith_index_u32(u_input.c, 2u)], false)), all(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 2u)], global0[_wgslsmith_index_u32(5089u, 2u)], true)), global0[_wgslsmith_index_u32(~(u_input.c << (u_input.c % 32u)), 2u)], any(select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), global0[_wgslsmith_index_u32(u_input.c, 2u)]))), !(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(12845u, 2u)], false, global0[_wgslsmith_index_u32(u_input.c, 2u)]))), select(vec4<bool>(global0[_wgslsmith_index_u32(~u_input.c, 2u)], 4294967295u <= u_input.c, true, true), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 2u)], true, global0[_wgslsmith_index_u32(u_input.c, 2u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(92444u, 2u)], global0[_wgslsmith_index_u32(u_input.c, 2u)], global0[_wgslsmith_index_u32(u_input.c, 2u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(12594u, 2u)], global0[_wgslsmith_index_u32(29132u, 2u)], global0[_wgslsmith_index_u32(11595u, 2u)], false), global0[_wgslsmith_index_u32(max(u_input.c, u_input.c), 2u)]))));
    var_1 = !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(reverseBits(min(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(u_input.c, u_input.c, 0u, u_input.c))), vec4<u32>(countOneBits(0u), _wgslsmith_sub_u32(90502u, u_input.c), _wgslsmith_sub_u32(0u, u_input.c), _wgslsmith_mult_u32(4294967295u, u_input.c))), 51403u), 2u)];
    let var_2 = vec4<i32>(-2147483647i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), ~u_input.a.x, -716i), -vec3<i32>(u_input.a.x, 1i, u_input.a.x)), ~(-5913i), u_input.b);
    global0 = array<bool, 2>();
    var_1 = func_4(true, u_input.c | _wgslsmith_dot_vec4_u32(~(~vec4<u32>(6890u, 47451u, u_input.c, u_input.c)), func_1(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, 72630u), 19u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(1u, u_input.c), 46178u), abs(vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(57287u, 12475u) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_u32(abs(~vec2<u32>(u_input.c, 4294967295u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, 10560u)), abs(vec2<u32>(u_input.c, 1u)), ~vec2<u32>(0u, 50567u)))), 2u)]);
    let x = u_input.a;
    s_output = StorageBuffer(max((_wgslsmith_div_i32(var_2.x, 0i) | var_2.x) ^ -(i32(-1i) * -1i), -97454i), min(var_2.yx, vec2<i32>(var_2.x & firstLeadingBit(var_2.x), max(-u_input.a.x, -25309i))), 32858i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(509f, -1251f)) - vec2<f32>(var_0, _wgslsmith_f_op_f32(ceil(var_0)))) - vec2<f32>(_wgslsmith_f_op_f32(sign(-100f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 1348f)))), ~u_input.c);
}

