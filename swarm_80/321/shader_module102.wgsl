struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(-809f), true, Struct_2(true, -8240i), vec3<bool>(false, true, true), vec4<f32>(-667f, -1097f, 403f, -391f));

var<private> global1: array<Struct_5, 10> = array<Struct_5, 10>(Struct_5(Struct_3(-588f), Struct_1(vec4<u32>(39688u, 1790u, 4294967295u, 28376u)), vec2<f32>(274f, -1795f), vec4<u32>(0u, 20959u, 10188u, 0u), vec2<u32>(1u, 49578u)), Struct_5(Struct_3(347f), Struct_1(vec4<u32>(1238u, 1582u, 709u, 5212u)), vec2<f32>(-1163f, -1000f), vec4<u32>(4294967295u, 13935u, 20176u, 11569u), vec2<u32>(112651u, 1u)), Struct_5(Struct_3(-268f), Struct_1(vec4<u32>(1609u, 64159u, 1u, 42955u)), vec2<f32>(-406f, -810f), vec4<u32>(28444u, 34738u, 4294967295u, 4294967295u), vec2<u32>(3948u, 21140u)), Struct_5(Struct_3(-273f), Struct_1(vec4<u32>(75408u, 81844u, 60566u, 144786u)), vec2<f32>(637f, 428f), vec4<u32>(3804u, 49119u, 61569u, 4294967295u), vec2<u32>(19144u, 3481u)), Struct_5(Struct_3(128f), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 71395u)), vec2<f32>(-347f, -871f), vec4<u32>(6811u, 19179u, 1u, 72818u), vec2<u32>(0u, 4294967295u)), Struct_5(Struct_3(-541f), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), vec2<f32>(1000f, -1000f), vec4<u32>(1u, 75908u, 1u, 15845u), vec2<u32>(77631u, 1u)), Struct_5(Struct_3(-985f), Struct_1(vec4<u32>(58680u, 28679u, 21091u, 67154u)), vec2<f32>(432f, 568f), vec4<u32>(1u, 14335u, 1u, 61231u), vec2<u32>(1u, 2997u)), Struct_5(Struct_3(279f), Struct_1(vec4<u32>(0u, 4294967295u, 35705u, 37316u)), vec2<f32>(1000f, -1430f), vec4<u32>(3891u, 4294967295u, 0u, 36061u), vec2<u32>(4294967295u, 81953u)), Struct_5(Struct_3(1000f), Struct_1(vec4<u32>(4294967295u, 8514u, 77022u, 0u)), vec2<f32>(910f, -1849f), vec4<u32>(22966u, 1530u, 39887u, 1u), vec2<u32>(1u, 4294967295u)), Struct_5(Struct_3(319f), Struct_1(vec4<u32>(44665u, 40926u, 15517u, 0u)), vec2<f32>(1316f, 115f), vec4<u32>(4613u, 17533u, 36057u, 57451u), vec2<u32>(4294967295u, 4294967295u)));

var<private> global2: vec2<i32> = vec2<i32>(2147483647i, 2147483647i);

var<private> global3: vec4<u32>;

var<private> global4: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(-698f), Struct_3(641f), Struct_3(-747f), Struct_3(785f), Struct_3(639f), Struct_3(-1144f), Struct_3(551f), Struct_3(276f), Struct_3(1000f), Struct_3(984f), Struct_3(2015f), Struct_3(-284f), Struct_3(-343f), Struct_3(-1662f), Struct_3(-1030f), Struct_3(1243f), Struct_3(770f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-994f))))));
    global3 = _wgslsmith_sub_vec4_u32(vec4<u32>(~global3.x, u_input.d, abs(u_input.d) << ((~13294u << (~global3.x % 32u)) % 32u), ~reverseBits(4294967295u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, global3.x, 42743u, global3.x), ~vec4<u32>(u_input.d, 16722u, 1u, global3.x)) ^ vec4<u32>(0u, ~firstTrailingBit(u_input.d), _wgslsmith_mult_u32(0u, 10377u << (global3.x % 32u)), ~0u));
    let var_1 = global0.d;
    var var_2 = global0.c;
    var var_3 = Struct_1(vec4<u32>(0u, 28021u, _wgslsmith_mod_u32(u_input.d << (~32899u % 32u), ~(~4294967295u)), ~countOneBits(_wgslsmith_mult_u32(u_input.d, global3.x))));
    return vec4<u32>(u_input.d, ~countOneBits(13018u) & u_input.d, ~min(26508u, ~global3.x), ~0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4) -> vec4<u32> {
    global3 = func_3();
    global4 = array<Struct_3, 17>();
    let var_0 = !vec3<bool>(false, any(!(!vec4<bool>(arg_1.d.x, arg_1.c.a, arg_1.b, false))), all(vec4<bool>(arg_1.d.x, any(vec3<bool>(arg_1.b, true, arg_1.c.a)), arg_1.c.a, all(arg_1.d))));
    var var_1 = global3.x;
    let var_2 = 1u;
    return vec4<u32>(global3.x, global3.x, 1u, ~(countOneBits(max(1u, 1u)) & global3.x));
}

fn func_1() -> Struct_2 {
    let var_0 = select(func_2(-_wgslsmith_mult_vec4_i32(~vec4<i32>(global0.c.b, u_input.c, 5829i, -1i), -vec4<i32>(-37627i, u_input.a, -12387i, global2.x)), Struct_4(global0.a, any(select(vec3<bool>(global0.b, global0.d.x, false), global0.d, global0.b)), Struct_2(global0.e.x != global0.a.a, -17753i), global0.d, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-134f, -392f, global0.a.a, global0.e.x))), _wgslsmith_f_op_vec4_f32(step(global0.e, global0.e)))))), ~(~(vec4<u32>(global3.x, global3.x, 4294967295u, global3.x) << (vec4<u32>(1675u, 76802u, global3.x, 0u) % vec4<u32>(32u))) << (~_wgslsmith_add_vec4_u32(vec4<u32>(57018u, u_input.d, u_input.d, u_input.d), vec4<u32>(global3.x, 6515u, 0u, 78915u)) % vec4<u32>(32u))), global0.c.a);
    global0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(global0.a.a + 1524f)), global0.d.x, Struct_2(any(global0.d.yx), -abs(global2.x)), !vec3<bool>(true, func_2(vec4<i32>(45718i, global2.x, -2147483647i, global0.c.b), Struct_4(Struct_3(global0.a.a), true, Struct_2(global0.c.a, global2.x), vec3<bool>(global0.c.a, global0.c.a, false), vec4<f32>(-774f, global0.a.a, global0.e.x, -684f))).x == firstTrailingBit(u_input.d), !(!global0.b)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.a, global0.e.x))), global0.a.a)), -712f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.e.x))), 1000f));
    let var_1 = vec4<bool>(any(!select(vec3<bool>(true, global0.d.x, global0.b), !global0.d, global0.d)), true, !any(!vec4<bool>(true, global0.b, true, true)) == any(vec3<bool>(true, global0.c.a, global0.d.x)), !all(select(global0.d, vec3<bool>(global0.c.a, global0.b, global0.c.a), vec3<bool>(global0.b, false, true))) & any(select(select(global0.d, vec3<bool>(global0.b, global0.d.x, true), global0.d), vec3<bool>(global0.b, false, false), true)));
    return Struct_2(!select(true && all(vec3<bool>(global0.c.a, global0.d.x, var_1.x)), global0.c.a | (global0.c.a | false), false), ~max(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global0.c.b, 0i, global2.x), vec4<i32>(global0.c.b, global2.x, -61303i, -2147483647i)) >> (_wgslsmith_mod_u32(54529u, u_input.d) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -44497i, -16100i, global0.c.b), min(vec4<i32>(global2.x, 2147483647i, global0.c.b, global2.x), vec4<i32>(global0.c.b, 76257i, u_input.b.x, 25961i)))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: f32) -> f32 {
    var var_0 = func_1();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(-813f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(ceil(-1290f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1473f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a - arg_1.e.x) * global0.a.a)))), _wgslsmith_f_op_f32(arg_1.a.a + arg_3));
    var var_2 = Struct_1(vec4<u32>(countOneBits(arg_0), 1u, u_input.d, ~countOneBits(43575u) << (_wgslsmith_div_u32(global3.x, global3.x << (64257u % 32u)) % 32u)));
    let var_3 = global3.x;
    global1 = array<Struct_5, 10>();
    return _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1669f, _wgslsmith_f_op_f32(533f * arg_1.a.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.e.x + arg_3)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global3 = ~vec4<u32>(1u, u_input.d, 0u, ~1u);
    var var_1 = _wgslsmith_f_op_f32(func_4(~(~u_input.d), Struct_4(global4[_wgslsmith_index_u32(~4294967295u, 17u)], true, func_1(), select(!global0.d, vec3<bool>(var_0 != global0.c.a, true, true), select(false, -2378f <= global0.e.x, global0.d.x)), global0.e), select(global0.d.xz, select(global0.d.xz, vec2<bool>(false, func_1().a), select(!vec2<bool>(false, global0.c.a), !global0.d.zy, true)), true), -170f));
    let var_2 = !vec4<bool>(false, var_0, any(global0.d.xx), any(!(!vec4<bool>(true, false, true, global0.b))));
    var var_3 = -max(1i, global0.c.b) & select(_wgslsmith_sub_i32(-55415i, ~2147483647i), global0.c.b, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(-(~countOneBits(vec2<i32>(global0.c.b, global2.x))) & u_input.b, ~_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 4294967295u, global3.x), vec4<u32>(11477u, 38206u, u_input.d, 36197u)), ~(~vec4<u32>(global3.x, global3.x, 4294967295u, 53964u))));
}

