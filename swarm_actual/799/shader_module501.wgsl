struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 19>;

var<private> global2: Struct_3;

var<private> global3: array<i32, 14>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> vec4<u32> {
    var var_0 = Struct_1(select(~vec3<i32>(arg_1.x, global3[_wgslsmith_index_u32(53936u, 14u)], 24817i), vec3<i32>(-2147483647i, ~2805i, firstTrailingBit(-3147i)), true || all(vec4<bool>(true, true, true, false))) << (vec3<u32>(22889u << ((51752u << (u_input.a.x % 32u)) % 32u), 0u, abs(~54385u)) % vec3<u32>(32u)), vec2<bool>(!(_wgslsmith_mult_i32(-10211i, u_input.b.x) >= global3[_wgslsmith_index_u32(25797u >> (u_input.a.x % 32u), 14u)]), any(vec3<bool>(true, false, true))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-648f - -1348f) * 416f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1307f - -983f), -1000f)), _wgslsmith_f_op_f32(abs(1095f)), 1f), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1908f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(594f, _wgslsmith_f_op_f32(f32(-1f) * -2163f)))))));
    global0 = 1u;
    global3 = array<i32, 14>();
    let var_1 = Struct_1(vec3<i32>(firstTrailingBit(_wgslsmith_mult_i32(~(-26614i), _wgslsmith_mod_i32(arg_1.x, u_input.b.x))), var_0.a.x, firstLeadingBit(~(~1i))), var_0.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(var_0.c)), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -603f), _wgslsmith_f_op_f32(min(-597f, -1121f))), -899f))), all(select(select(vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.d), select(vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), vec4<bool>(var_0.d, var_0.b.x, true, var_0.d), vec4<bool>(true, true, var_0.b.x, var_0.d)), vec4<bool>(false, false, true, true)), !vec4<bool>(true, var_0.b.x, false, var_0.b.x), var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-956f, 676f)), -559f))));
    global1 = array<Struct_2, 19>();
    return ~(~(~(~abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 12980u)))));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = u_input.b.x;
    global0 = 1u;
    let var_1 = (vec4<u32>(~(~u_input.a.x), ~(u_input.a.x << (41313u % 32u)), u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x) << (abs(26720u) % 32u)) ^ _wgslsmith_div_vec4_u32(~(vec4<u32>(41627u, u_input.a.x, 1u, arg_0) ^ vec4<u32>(4294967295u, global2.a, arg_0, 390u)), ~vec4<u32>(global2.b, arg_0, arg_0, 0u) ^ func_3(34274u, u_input.b))) >> (~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global2.b, 1u) & vec4<u32>(arg_0, arg_0, arg_0, arg_0), _wgslsmith_mod_vec4_u32(vec4<u32>(53902u, 1u, 4294967295u, global2.a), vec4<u32>(u_input.a.x, u_input.a.x, 81728u, 5787u))), ~vec4<u32>(1574u, global2.a, u_input.a.x, 4294967295u) | vec4<u32>(arg_0, 13767u, arg_0, 47989u)) % vec4<u32>(32u));
    var var_2 = !select(vec3<bool>(true, true && (4294967295u != var_1.x), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 14u)] > _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), u_input.a.x < countOneBits(var_1.x), select(false, true, true)), false);
    var var_3 = Struct_3(4294967295u, arg_0);
    return abs(~45618u << (_wgslsmith_mod_u32(~84503u, _wgslsmith_dot_vec2_u32(var_1.xy | u_input.a, vec2<u32>(arg_0, arg_0))) % 32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_1 {
    global2 = Struct_3(global2.a, _wgslsmith_mod_u32(arg_0.x, u_input.a.x));
    var var_0 = ~23127i;
    var var_1 = Struct_3(arg_0.x, 43380u);
    global0 = u_input.a.x;
    var_1 = Struct_3(1u, global2.a);
    return Struct_1(((_wgslsmith_div_vec3_i32(vec3<i32>(-22394i, global3[_wgslsmith_index_u32(29323u, 14u)], 8717i), vec3<i32>(8364i, -1i, 15218i)) ^ countOneBits(vec3<i32>(u_input.b.x, global3[_wgslsmith_index_u32(global2.b, 14u)], 2147483647i))) | (-vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], 1i, global3[_wgslsmith_index_u32(0u, 14u)]) << (func_3(var_1.b, vec2<i32>(11059i, global3[_wgslsmith_index_u32(1u, 14u)])).xwx % vec3<u32>(32u)))) | _wgslsmith_div_vec3_i32(vec3<i32>(0i, -48656i, global3[_wgslsmith_index_u32(0u, 14u)]) << (~vec3<u32>(11849u, 8789u, 10383u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(-vec3<i32>(global3[_wgslsmith_index_u32(32568u, 14u)], u_input.b.x, 2147483647i), ~vec3<i32>(global3[_wgslsmith_index_u32(var_1.b, 14u)], -1i, 49610i))), !(!(!arg_1.yz)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -809f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-988f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f * -1278f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-347f * -733f))))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    global0 = 41236u;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(arg_1.c.x - 646f), _wgslsmith_f_op_f32(abs(arg_1.e)), _wgslsmith_div_f32(arg_1.e, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, arg_1.c.x, 2371f, arg_1.e))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.e, 684f, arg_1.c.x, arg_1.c.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2527f, arg_1.c.x, -852f, -554f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e, 1287f, -912f, 1048f) + vec4<f32>(1170f, -696f, -1208f, 851f))))));
    let var_1 = !(!select(vec2<bool>(arg_1.d, global2.b > u_input.a.x), select(select(arg_1.b, vec2<bool>(true, false), arg_1.b), func_4(vec4<u32>(arg_0, 4294967295u, 31530u, arg_0), vec3<bool>(arg_1.d, true, arg_1.d)).b, !arg_1.b), (543f >= var_0.x) & all(arg_1.b)));
    let var_2 = reverseBits(reverseBits(4294967295u));
    global0 = 4294967295u;
    return Struct_3(1u, _wgslsmith_sub_u32(~max(var_2, u_input.a.x), 0u));
}

fn func_1(arg_0: u32) -> vec4<i32> {
    var var_0 = Struct_3(reverseBits(~(u_input.a.x ^ ~global2.a)), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), abs(136u)));
    global0 = ~u_input.a.x;
    global0 = 0u;
    global2 = func_5(abs(0u), func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b ^ global2.b, ~u_input.a.x, 0u, func_2(10481u)), func_3(~var_0.a, ~vec2<i32>(global3[_wgslsmith_index_u32(global2.b, 14u)], u_input.b.x))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)), vec3<bool>(true, true, true), true | (u_input.b.x > 29180i))));
    var var_1 = Struct_2(Struct_1(~(~min(vec3<i32>(-26554i, global3[_wgslsmith_index_u32(32625u, 14u)], -2147483647i), vec3<i32>(1i, -22210i, u_input.b.x))), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, any(vec2<bool>(true, false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), false)), _wgslsmith_f_op_vec3_f32(trunc(func_4(min(vec4<u32>(u_input.a.x, var_0.b, 25643u, global2.a), vec4<u32>(4294967295u, 15316u, 1u, 0u)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)).c)), true, _wgslsmith_f_op_f32(-121f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-940f, 915f) * _wgslsmith_f_op_f32(-390f - -308f)))), -1000f, Struct_1(-vec3<i32>(-38461i, firstLeadingBit(u_input.b.x), u_input.b.x), func_4(~(~vec4<u32>(23825u, 4294967295u, 48133u, var_0.a)), vec3<bool>(true, all(vec2<bool>(true, false)), false)).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1479f, 1244f, 213f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(954f, 920f, 1135f), vec3<f32>(1443f, 499f, -1184f), vec3<bool>(true, true, false))))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -100f))) + -1000f)), !vec4<bool>(any(func_4(vec4<u32>(var_0.a, arg_0, arg_0, global2.b), vec3<bool>(false, true, false)).b), true, true, false));
    return vec4<i32>(~global3[_wgslsmith_index_u32(func_3(_wgslsmith_mult_u32(~var_0.a, global2.b), u_input.b).x, 14u)], -func_4(func_3(1u, u_input.b), var_1.d.wzz).a.x, firstLeadingBit(_wgslsmith_div_i32(0i, global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global2.b, global2.b), 14u)])), global3[_wgslsmith_index_u32(75187u, 14u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, 9685i, global3[_wgslsmith_index_u32(4159u, 14u)]) << (vec4<u32>(global2.a, 39652u, u_input.a.x, global2.a) % vec4<u32>(32u)), vec4<i32>(-15654i, 1i, global3[_wgslsmith_index_u32(3759u, 14u)], 18337i) << (vec4<u32>(0u, global2.a, 1u, global2.a) % vec4<u32>(32u))) | func_1(_wgslsmith_add_u32(0u, 1u)), -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 39845i), u_input.b), abs(0i), u_input.b.x, countOneBits(-2147483647i)));
    var_0 = select(_wgslsmith_sub_vec4_i32((vec4<i32>(6989i, u_input.b.x, 25102i, 12312i) << (vec4<u32>(u_input.a.x, u_input.a.x, 4789u, 119085u) % vec4<u32>(32u))) >> ((vec4<u32>(107890u, 4294967295u, 4294967295u, global2.a) >> (vec4<u32>(28018u, global2.b, u_input.a.x, global2.a) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, -19138i, u_input.b.x, -19213i), ~vec4<i32>(var_0.x, -1i, var_0.x, 1i))) >> (firstLeadingBit(vec4<u32>(abs(1u), func_3(u_input.a.x, u_input.b).x, func_2(global2.a), 4294967295u)) % vec4<u32>(32u)), (_wgslsmith_div_vec4_i32(vec4<i32>(-42746i, u_input.b.x, var_0.x, 0i), vec4<i32>(-21736i, global3[_wgslsmith_index_u32(u_input.a.x, 14u)], var_0.x, -16861i)) | vec4<i32>(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], global3[_wgslsmith_index_u32(u_input.a.x, 14u)]), 14099i, max(-2147483647i, -2147483647i), 1i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(4587u, u_input.a.x, 1u, u_input.a.x), max(vec4<u32>(0u, 28768u, 0u, 0u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u))) % vec4<u32>(32u)), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, false, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true)), func_4(vec4<u32>(global2.a, 35891u, 37623u, global2.b), vec3<bool>(false, true, false)).b.x || true), select(vec4<bool>(true, true, true, any(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true), false)));
    global2 = func_5(~max(~u_input.a.x, 111971u), func_4(~select(_wgslsmith_div_vec4_u32(vec4<u32>(18380u, 1u, global2.b, u_input.a.x), vec4<u32>(0u, 5532u, u_input.a.x, global2.a)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, global2.a, 27099u, 90369u), vec4<u32>(4294967295u, u_input.a.x, 20998u, 67228u)), vec4<bool>(true, true, true, true)), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, any(vec3<bool>(false, false, true)), true))));
    var var_1 = func_4(vec4<u32>(_wgslsmith_add_u32(global2.a, ~global2.a), ~0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global2.a, 63251u, u_input.a.x), vec3<u32>(global2.a, global2.a, 20907u)), global2.b) | func_3(global2.b, abs(vec2<i32>(u_input.b.x, u_input.b.x)) ^ var_0.wy), !vec3<bool>(!(0i < var_0.x), select(true, true, true), true));
    global3 = array<i32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a << (~_wgslsmith_div_vec2_u32(vec2<u32>(global2.b, 4294967295u), ~vec2<u32>(global2.a, 0u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-418f, -631f, var_1.e)), var_1.c.yy);
}

