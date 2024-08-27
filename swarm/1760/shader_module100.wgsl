struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28>;

var<private> global1: array<bool, 30>;

var<private> global2: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(881f, -1632f), vec2<f32>(1625f, 433f), vec2<f32>(1162f, -559f), vec2<f32>(2189f, 544f), vec2<f32>(883f, 859f), vec2<f32>(418f, 439f), vec2<f32>(-492f, 312f), vec2<f32>(2256f, 218f), vec2<f32>(3368f, 323f), vec2<f32>(368f, 583f), vec2<f32>(-2087f, -655f), vec2<f32>(418f, 657f), vec2<f32>(354f, -514f), vec2<f32>(311f, 1237f), vec2<f32>(1793f, -184f), vec2<f32>(-661f, 171f), vec2<f32>(1336f, 164f), vec2<f32>(-606f, 483f), vec2<f32>(-552f, 591f), vec2<f32>(1000f, -347f), vec2<f32>(285f, -1238f), vec2<f32>(1007f, 1501f), vec2<f32>(-854f, -1220f), vec2<f32>(431f, -660f), vec2<f32>(-994f, -2026f));

var<private> global3: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(45986u, 22132u, 0u, 5730u), vec4<u32>(0u, 14728u, 9537u, 4294967295u), vec4<u32>(53573u, 1u, 4294967295u, 90622u), vec4<u32>(1u, 4294967295u, 11564u, 0u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 0u, 17462u), vec4<u32>(96760u, 28081u, 0u, 1u), vec4<u32>(32802u, 0u, 4294967295u, 73524u), vec4<u32>(4294967295u, 1u, 9136u, 45714u), vec4<u32>(1u, 6661u, 39490u, 4294967295u), vec4<u32>(0u, 23276u, 27089u, 33585u), vec4<u32>(1u, 51803u, 45717u, 0u), vec4<u32>(1u, 4294967295u, 30851u, 1u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<f32> {
    global2 = array<vec2<f32>, 25>();
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(1u, 28u)], reverseBits(_wgslsmith_sub_vec3_u32(select(vec3<u32>(arg_1, 6924u, 23549u), vec3<u32>(0u, arg_1, 50995u), false) << (vec3<u32>(1u, 15614u, u_input.c) % vec3<u32>(32u)), ~vec3<u32>(15184u, arg_1, arg_1))), true, select(max(_wgslsmith_mult_vec3_i32(u_input.b.yyz, vec3<i32>(3111i, u_input.d.x, u_input.a.x)) & vec3<i32>(u_input.b.x, u_input.a.x, u_input.e), u_input.b.xyx), u_input.a.zyx ^ (vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, u_input.b.x, 3364i)), all(select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(u_input.c, 30u)], global1[_wgslsmith_index_u32(23762u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(49562u, 30u)], global1[_wgslsmith_index_u32(21111u, 30u)], true, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, global1[_wgslsmith_index_u32(54268u, 30u)], true, true)))), -935f);
    let var_1 = var_0.b.x ^ (~var_0.b.x >> (var_0.b.x % 32u));
    global2 = array<vec2<f32>, 25>();
    var_0 = Struct_1(global0[_wgslsmith_index_u32(0u, 28u)], vec3<u32>(_wgslsmith_dot_vec4_u32(~global3[_wgslsmith_index_u32(arg_1, 13u)], vec4<u32>(arg_1, arg_1, 11644u, u_input.c)) ^ _wgslsmith_sub_u32(var_1 | var_1, 1u), 4294967295u, u_input.c), var_0.c, ~(vec3<i32>(-1i, -2147483647i, -1i) & u_input.b.wwy) & ~u_input.b.xwy, -1663f);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -980f) - 1000f), -652f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1256f * _wgslsmith_f_op_f32(round(1210f))) + var_0.a.x), arg_0));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 340f, arg_2.b, arg_2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1440f, -1373f, -1002f, arg_0.x))), vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(select(arg_2.b, arg_0.x, false)), 4294967295u)) + vec4<f32>(arg_2.b, 366f, _wgslsmith_div_f32(867f, arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))));
    global1 = array<bool, 30>();
    let var_1 = vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 30u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c ^ 23961u, ~1u, 0u) | _wgslsmith_div_vec4_u32(global3[_wgslsmith_index_u32(38401u, 13u)], _wgslsmith_add_vec4_u32(global3[_wgslsmith_index_u32(u_input.c, 13u)], global3[_wgslsmith_index_u32(0u, 13u)])), ~vec4<u32>(u_input.c, ~u_input.c, u_input.c >> (1u % 32u), _wgslsmith_sub_u32(1u, u_input.c))), 30u)], _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-356f, 343f)), -369f), global1[_wgslsmith_index_u32(reverseBits(~u_input.c), 30u)])) > 359f);
    global1 = array<bool, 30>();
    var var_2 = !(!(!(!vec2<bool>(arg_1.x, true))));
    return vec3<u32>(firstLeadingBit(reverseBits(1u)), u_input.c, ~79141u);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_4 {
    global2 = array<vec2<f32>, 25>();
    global1 = array<bool, 30>();
    let var_0 = (countOneBits(_wgslsmith_mult_vec4_u32(global3[_wgslsmith_index_u32(53735u, 13u)], vec4<u32>(45915u, arg_1.b.x, 1u, 1u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b.x, u_input.c, arg_2, 32427u), vec4<u32>(arg_2, arg_2, 38056u, 1u)) % vec4<u32>(32u))) & countOneBits(vec4<u32>(~u_input.c, _wgslsmith_mod_u32(u_input.c, 23330u), 31667u, _wgslsmith_mult_u32(u_input.c, arg_1.b.x)))) | ((global3[_wgslsmith_index_u32(countOneBits(~81788u), 13u)] >> (~(~global3[_wgslsmith_index_u32(arg_1.b.x, 13u)]) % vec4<u32>(32u))) >> (vec4<u32>(arg_1.b.x, ~1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2, arg_1.b.x), vec2<u32>(arg_2, 46218u)), arg_1.b.yy), arg_2) % vec4<u32>(32u)));
    var var_1 = Struct_3(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, ~(~var_0.x)), 28u)], vec3<u32>(~(~var_0.x), 70591u, 1u), arg_1.c, u_input.b.yxw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(abs(-475f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e * -1145f)))));
    let var_2 = Struct_2(min(arg_1.d.x, min(17711i, 73254i)), -1807f);
    return Struct_4(!(-692f > _wgslsmith_f_op_f32(-var_2.b)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = 0u;
    global3 = array<vec4<u32>, 13>();
    global3 = array<vec4<u32>, 13>();
    global3 = array<vec4<u32>, 13>();
    let var_1 = func_4(907f, Struct_1(global2[_wgslsmith_index_u32(24629u, 25u)], abs(func_2(vec4<f32>(338f, -150f, 1249f, 1076f), vec4<bool>(global1[_wgslsmith_index_u32(0u, 30u)], true, global1[_wgslsmith_index_u32(u_input.c, 30u)], global1[_wgslsmith_index_u32(12864u, 30u)]), Struct_2(-43841i, 1204f))) ^ (~vec3<u32>(u_input.c, 4294967295u, u_input.c) ^ (vec3<u32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(93877u, 4294967295u, u_input.c) % vec3<u32>(32u)))), true, ~(~vec3<i32>(u_input.b.x, arg_0.x, u_input.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-333f * 310f) + _wgslsmith_f_op_f32(abs(1318f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1547f, 1174f))))))), ~(~(~firstTrailingBit(4294967295u))));
    return Struct_2(64561i << (1u % 32u), _wgslsmith_f_op_f32(round(-927f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(global3[_wgslsmith_index_u32(u_input.c, 13u)], ~(~(~global3[_wgslsmith_index_u32(u_input.c, 13u)])) & (~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, 56276u, u_input.c), global3[_wgslsmith_index_u32(0u, 13u)]) ^ _wgslsmith_mult_vec4_u32(~global3[_wgslsmith_index_u32(11729u, 13u)], _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), global3[_wgslsmith_index_u32(u_input.c, 13u)]))));
    var var_1 = func_1(-vec4<i32>(u_input.e, -2147483647i, 38223i, ~1i ^ ~u_input.d.x));
    let var_2 = Struct_3(Struct_1(global0[_wgslsmith_index_u32(~(~(~36595u)), 28u)], _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.x, 0u), var_0.xxw, vec3<u32>(~10928u, ~u_input.c, max(var_0.x, u_input.c))), all(select(vec3<bool>(false, true, false), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(1075u, 30u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_0.x, 30u)]))) != (_wgslsmith_f_op_f32(-var_1.b) <= _wgslsmith_f_op_f32(-186f * var_1.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a << (36481u % 32u), var_1.a, -5933i), u_input.a.yxy ^ (vec3<i32>(-35313i, u_input.d.x, u_input.e) << (var_0.yyw % vec3<u32>(32u)))), 650f));
    global2 = array<vec2<f32>, 25>();
    let var_3 = 1i;
    var var_4 = select(vec2<bool>(true, all(!vec4<bool>(var_2.a.c, var_2.a.c, true, true))), vec2<bool>(true, true), false);
    var var_5 = var_2;
    var var_6 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.a.x, 123f) - global2[_wgslsmith_index_u32(38114u, 25u)]) + _wgslsmith_f_op_vec2_f32(-var_2.a.a)), vec2<f32>(var_2.a.a.x, _wgslsmith_f_op_f32(642f * -2228f))))), min(var_0.zxz, firstTrailingBit(abs(firstLeadingBit(vec3<u32>(u_input.c, 72550u, 4179u))))), true, var_2.a.d, _wgslsmith_f_op_f32(sign(-306f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(var_0.x) >> (~(~14141u) % 32u)), abs(~(~(~1u))), var_5.a.b.x);
}

