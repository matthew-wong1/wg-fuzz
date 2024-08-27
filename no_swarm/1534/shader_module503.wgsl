struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(Struct_2(vec4<bool>(false, false, false, false), true, vec2<u32>(4294967295u, 44991u), Struct_1(15844i, 4294967295u, vec2<u32>(4294967295u, 38346u)), vec2<bool>(true, true)), Struct_1(0i, 0u, vec2<u32>(1u, 77390u)), vec3<bool>(false, false, true), Struct_1(4551i, 4294967295u, vec2<u32>(22160u, 0u))), Struct_4(Struct_2(vec4<bool>(false, true, false, true), true, vec2<u32>(8509u, 0u), Struct_1(28289i, 4294967295u, vec2<u32>(60239u, 0u)), vec2<bool>(true, true)), Struct_1(1i, 22113u, vec2<u32>(7136u, 0u)), vec3<bool>(true, true, true), Struct_1(24715i, 81450u, vec2<u32>(6068u, 12047u))), Struct_4(Struct_2(vec4<bool>(true, false, false, false), true, vec2<u32>(1u, 101223u), Struct_1(-1i, 4294967295u, vec2<u32>(1u, 4294967295u)), vec2<bool>(false, false)), Struct_1(-14933i, 0u, vec2<u32>(54398u, 1u)), vec3<bool>(false, true, false), Struct_1(2541i, 4294967295u, vec2<u32>(0u, 4294967295u))), Struct_4(Struct_2(vec4<bool>(false, false, true, false), true, vec2<u32>(0u, 4294967295u), Struct_1(0i, 1u, vec2<u32>(18299u, 4294967295u)), vec2<bool>(true, true)), Struct_1(-1i, 0u, vec2<u32>(45597u, 1943u)), vec3<bool>(true, true, true), Struct_1(-26264i, 4294967295u, vec2<u32>(21419u, 1u))), Struct_4(Struct_2(vec4<bool>(true, true, false, true), true, vec2<u32>(1u, 4294967295u), Struct_1(31320i, 71504u, vec2<u32>(1u, 0u)), vec2<bool>(false, false)), Struct_1(-13220i, 34240u, vec2<u32>(101790u, 31726u)), vec3<bool>(false, true, false), Struct_1(-35031i, 10923u, vec2<u32>(4294967295u, 42373u))), Struct_4(Struct_2(vec4<bool>(false, false, false, false), false, vec2<u32>(1u, 20532u), Struct_1(0i, 1u, vec2<u32>(67700u, 0u)), vec2<bool>(true, true)), Struct_1(i32(-2147483648), 37557u, vec2<u32>(1u, 0u)), vec3<bool>(true, true, true), Struct_1(-16415i, 31960u, vec2<u32>(1u, 22328u))), Struct_4(Struct_2(vec4<bool>(true, true, false, true), true, vec2<u32>(4294967295u, 4294967295u), Struct_1(40105i, 1u, vec2<u32>(13354u, 0u)), vec2<bool>(false, true)), Struct_1(-4502i, 50443u, vec2<u32>(129150u, 1u)), vec3<bool>(false, true, true), Struct_1(2147483647i, 1u, vec2<u32>(150942u, 0u))), Struct_4(Struct_2(vec4<bool>(true, false, false, false), false, vec2<u32>(1u, 10819u), Struct_1(2147483647i, 35383u, vec2<u32>(0u, 7800u)), vec2<bool>(false, true)), Struct_1(4232i, 19253u, vec2<u32>(7342u, 1u)), vec3<bool>(true, true, false), Struct_1(-46582i, 30566u, vec2<u32>(72373u, 33844u))), Struct_4(Struct_2(vec4<bool>(false, true, false, true), true, vec2<u32>(4294967295u, 88481u), Struct_1(21545i, 1u, vec2<u32>(33967u, 0u)), vec2<bool>(false, true)), Struct_1(1818i, 87364u, vec2<u32>(23431u, 9206u)), vec3<bool>(true, false, true), Struct_1(1i, 1u, vec2<u32>(4980u, 23937u))), Struct_4(Struct_2(vec4<bool>(false, false, true, true), false, vec2<u32>(1u, 9396u), Struct_1(i32(-2147483648), 1u, vec2<u32>(22181u, 1u)), vec2<bool>(false, false)), Struct_1(0i, 1u, vec2<u32>(1u, 1u)), vec3<bool>(false, true, false), Struct_1(1i, 57496u, vec2<u32>(4294967295u, 1u))), Struct_4(Struct_2(vec4<bool>(false, false, false, true), false, vec2<u32>(26842u, 26319u), Struct_1(37106i, 89791u, vec2<u32>(18463u, 13940u)), vec2<bool>(true, true)), Struct_1(12023i, 44118u, vec2<u32>(4294967295u, 4294967295u)), vec3<bool>(false, false, false), Struct_1(-4133i, 29794u, vec2<u32>(3091u, 35090u))), Struct_4(Struct_2(vec4<bool>(false, false, false, true), false, vec2<u32>(4294967295u, 1u), Struct_1(18650i, 0u, vec2<u32>(1u, 0u)), vec2<bool>(true, true)), Struct_1(2147483647i, 34457u, vec2<u32>(1u, 130804u)), vec3<bool>(false, true, true), Struct_1(-1i, 0u, vec2<u32>(4294967295u, 25971u))));

var<private> global2: vec3<u32>;

var<private> global3: Struct_4 = Struct_4(Struct_2(vec4<bool>(false, true, false, false), true, vec2<u32>(1u, 0u), Struct_1(47429i, 1u, vec2<u32>(1u, 4294967295u)), vec2<bool>(false, false)), Struct_1(2147483647i, 213u, vec2<u32>(47915u, 0u)), vec3<bool>(true, true, true), Struct_1(-8666i, 45196u, vec2<u32>(10189u, 2245u)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = 1276f;
    global0 = vec2<bool>(true, global0.x);
    global2 = ~vec3<u32>(~arg_1, _wgslsmith_mod_u32(34068u, max(global3.b.b, global2.x)), ~(global3.d.c.x << (global2.x % 32u))) >> (~vec3<u32>(~global3.d.b, global3.a.d.c.x, arg_1) % vec3<u32>(32u));
    global3 = global1[_wgslsmith_index_u32(1u, 12u)];
    global2 = ~max(~(reverseBits(vec3<u32>(global3.a.d.b, 54661u, 1u)) >> ((vec3<u32>(26804u, global2.x, global3.a.d.c.x) >> (vec3<u32>(38573u, global3.b.b, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))), reverseBits(vec3<u32>(global3.a.d.c.x, global3.a.c.x, global3.d.c.x)));
    return global3.a;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: bool) -> i32 {
    global1 = array<Struct_4, 12>();
    let var_0 = Struct_3(vec3<i32>(1i, u_input.a, reverseBits(-2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(-1171f, -1459f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1052f)))), 1000f, -1197f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1653f, -485f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -752f)))));
    global1 = array<Struct_4, 12>();
    var var_1 = select(global3.c, arg_1.a.xxx, !(global3.a.d.a <= var_0.a.x));
    var var_2 = ~46712u;
    return -1i;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: vec2<i32>) -> u32 {
    var var_0 = Struct_1(-405i ^ reverseBits(func_3(countOneBits(global3.b.b), arg_2, max(vec4<u32>(arg_2.c.x, 4294967295u, 78220u, 0u), vec4<u32>(arg_0, arg_0, arg_0, global3.a.d.c.x)), global0.x)), 1u, func_1(Struct_3(~(vec3<i32>(1i, 0i, -85587i) >> (vec3<u32>(global2.x, arg_0, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-580f, 422f, 1168f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(705f, 1037f, 1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(398f, 205f), _wgslsmith_div_f32(-175f, -244f)))), 17567u, vec2<i32>(-(~arg_2.d.a), ~_wgslsmith_sub_i32(1i, arg_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1161f, 244f, -1000f, 1000f), vec4<f32>(-339f, 575f, 1254f, -628f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1604f, -307f, 1061f, 1310f) - vec4<f32>(1267f, 1282f, -536f, 120f)), true)))).c);
    global3 = Struct_4(Struct_2(vec4<bool>(any(vec3<bool>(true, global3.a.e.x, global3.a.a.x)), true, select(all(arg_2.a.zwy), global3.b.a < var_0.a, true), true), firstTrailingBit(27729i) >= countOneBits(_wgslsmith_add_i32(0i, u_input.a)), ~arg_2.c, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -14247i), arg_3) >> (max(var_0.b, arg_2.d.c.x) % 32u), min(27881u, _wgslsmith_dot_vec3_u32(vec3<u32>(25078u, global3.a.c.x, arg_2.c.x), vec3<u32>(global2.x, arg_0, 76548u))), min(arg_2.c, var_0.c)), vec2<bool>(!any(vec4<bool>(true, false, true, true)), !global3.a.e.x)), Struct_1(_wgslsmith_mod_i32(u_input.a, -1i), global3.d.b, firstLeadingBit(vec2<u32>(~19063u, ~4294967295u))), vec3<bool>(false, all(select(arg_2.a.xxx, vec3<bool>(false, global0.x, global3.a.a.x), arg_2.e.x)) & false, false), func_1(Struct_3(select(_wgslsmith_div_vec3_i32(vec3<i32>(4150i, global3.a.d.a, -2147483647i), vec3<i32>(-26382i, -2147483647i, u_input.a)), countOneBits(vec3<i32>(arg_2.d.a, 24140i, u_input.a)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1130f, 540f, 788f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1621f) + -288f)), global2.x, vec2<i32>(abs(global3.d.a), i32(-1i) * -6989i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, 943f, -1523f, 799f)))) - vec4<f32>(_wgslsmith_f_op_f32(sign(647f)), -599f, -764f, _wgslsmith_div_f32(-475f, -1166f)))).d);
    var var_1 = ~_wgslsmith_add_u32(select(~(45823u | arg_2.c.x), global2.x, select(arg_1, arg_1, false) != arg_2.e.x), arg_0);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1203f)) + -310f), _wgslsmith_f_op_f32(select(577f, -1752f, true))));
    var_0 = Struct_1(max(u_input.a ^ 40017i, -1i), 0u, ~(select(~var_0.c, _wgslsmith_div_vec2_u32(vec2<u32>(global3.a.c.x, arg_0), vec2<u32>(16171u, 3273u)), !arg_1) | (arg_2.c << (max(global2.xx, vec2<u32>(87332u, 4294967295u)) % vec2<u32>(32u)))));
    return _wgslsmith_dot_vec2_u32(min(_wgslsmith_mult_vec2_u32(global2.yx, ~vec2<u32>(1u, arg_2.d.c.x)), vec2<u32>(~arg_0, 32189u)) << (global3.d.c % vec2<u32>(32u)), ~(global2.yy >> (vec2<u32>(~arg_2.d.b, countOneBits(0u)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-668f, 532f), vec2<f32>(757f, -383f), false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1859f) + vec2<f32>(-301f, 934f)))))));
    let var_1 = global2.x;
    let var_2 = Struct_3(vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, global3.d.a), ~_wgslsmith_sub_vec4_i32(vec4<i32>(17012i, -19873i, global3.b.a, -25150i), vec4<i32>(global3.a.d.a, -15639i, u_input.a, -1i))), 1i, firstLeadingBit(global3.d.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 1022f, var_0.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 1182f, -827f))), false & global0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-506f, var_0.x, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1419f, var_0.x, -1000f) + vec3<f32>(-1375f, 1019f, var_0.x))))), _wgslsmith_f_op_f32(-var_0.x));
    var var_3 = global0.x;
    let var_4 = func_2(_wgslsmith_clamp_u32(global2.x, global2.x, global2.x), (global0.x && true) && false, func_1(var_2, global3.d.b, select(countOneBits(vec2<i32>(0i, -1i)), var_2.a.yz, !global3.c.xz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-901f, var_2.b.x, 653f, var_2.b.x) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_2.c, var_0.x, 878f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-374f, -761f, -1455f, 1261f)))), ~(vec2<i32>(-1i) * -(vec2<i32>(u_input.a, u_input.a) >> (global2.xx % vec2<u32>(32u)))));
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(var_2.b.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.c, -2122f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1304f, var_2.c), vec2<f32>(606f, var_0.x))))))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(25269u, global3.a.c.x, global3.a.c.x, 4294967295u) & vec4<u32>(global3.a.c.x, 0u, global2.x, var_4), _wgslsmith_add_vec4_u32(vec4<u32>(39420u, var_4, var_4, global2.x), vec4<u32>(global2.x, 22434u, global3.b.c.x, var_4))), 1u, ~var_4), vec3<u32>(_wgslsmith_sub_u32(global2.x & 1u, global2.x & 820u), global2.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_4, global2.x), vec2<u32>(global3.b.b, global3.d.b)))), _wgslsmith_add_vec4_i32(select(~vec4<i32>(global3.b.a, -2147483647i, var_2.a.x, -1i), vec4<i32>(-1i) * -vec4<i32>(global3.d.a, var_5.a.x, u_input.a, 0i), !vec4<bool>(global3.a.e.x, global3.c.x, false, false)), ~(-vec4<i32>(-6641i, var_5.a.x, 0i, var_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.b.x)), vec4<i32>(select(countOneBits(_wgslsmith_mod_i32(var_2.a.x, var_2.a.x)), -firstLeadingBit(u_input.a), global0.x), min(global3.d.a, 9679i), min(-var_2.a.x ^ (global3.b.a << (global3.a.d.b % 32u)), global3.b.a), var_5.a.x));
}

