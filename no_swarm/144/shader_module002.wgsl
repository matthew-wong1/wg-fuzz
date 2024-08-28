struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global2: Struct_3;

var<private> global3: array<u32, 13> = array<u32, 13>(35265u, 4294967295u, 1u, 41601u, 18456u, 15943u, 4294967295u, 1u, 4294967295u, 15047u, 9934u, 7711u, 1u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    global1 = array<vec3<bool>, 7>();
    let var_0 = global2.e.x;
    global2 = Struct_3(!(!vec4<bool>(any(global2.a.xxw), global0.c.x < 486f, global2.b.a.b.x, global2.b.a.a.x < 91705u)), Struct_2(Struct_1(select(countOneBits(global2.b.e.a), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(0u, 13u)]), vec2<u32>(47305u, 44631u)), all(vec3<bool>(true, global2.b.e.b.x, global2.a.x))), vec4<bool>(true, true, true, true), ~63309u, countOneBits(~u_input.b.x), vec3<i32>(_wgslsmith_clamp_i32(-11210i, global0.d.x, -43688i), global0.e.e.x, 0i)), _wgslsmith_add_u32(~global0.b, 60483u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.b.c.x, global2.e.x, global0.c.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1690f, global0.c.x, 2221f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(280f, 894f, -782f)), select(vec3<bool>(global2.b.a.b.x, false, global2.a.x), global2.b.e.b.xxw, global0.a.b.x)))), vec3<i32>(_wgslsmith_sub_i32(arg_0, -40801i), global2.b.d.x, 1i), Struct_1(firstTrailingBit(arg_1.wx), !global2.b.a.b, ~arg_1.x, ~arg_0, abs(u_input.b))), -_wgslsmith_div_i32(global2.c, firstLeadingBit(reverseBits(u_input.b.x))), -1668f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global2.b.c)), _wgslsmith_f_op_vec3_f32(trunc(global0.c))))));
    let var_1 = _wgslsmith_f_op_f32(round(346f));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1552f)))));
    return -1654f;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_4(Struct_3(arg_2.a.b, Struct_2(global0.e, _wgslsmith_mod_u32(17756u, _wgslsmith_add_u32(50571u, global2.b.a.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.x, arg_1, arg_2.c.x) * vec3<f32>(global2.e.x, arg_2.c.x, global2.e.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_0, arg_2.c.x))), select(u_input.b, vec3<i32>(u_input.b.x, 21284i, 0i) | global0.d, !global2.a.x), Struct_1(abs(vec2<u32>(0u, 4294967295u)), vec4<bool>(true, global2.b.a.b.x, arg_2.e.b.x, false), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, global2.b.a.c), vec3<u32>(37536u, 47838u, 4294967295u)), -2147483647i, arg_2.a.e)), _wgslsmith_sub_i32(u_input.b.x, -67770i), -197f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(173f)) + -1708f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d)), arg_0)));
    let var_1 = Struct_4(var_0.a);
    var var_2 = var_0.a.b;
    let var_3 = Struct_3(vec4<bool>(_wgslsmith_f_op_f32(var_0.a.b.c.x - _wgslsmith_f_op_f32(abs(-938f))) >= _wgslsmith_f_op_f32(-arg_1), true, false, var_1.a.a.x), var_0.a.b, global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-var_1.a.c, _wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global0.a.c, 13u)], var_0.a.b.b, var_1.a.b.a.a.x, 110531u), vec4<u32>(0u, var_2.b, var_1.a.b.e.a.x, arg_2.a.c)))) * -1085f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_1.a.b.c.x)), global0.c.x, _wgslsmith_f_op_f32(step(-1580f, 469f)))))));
    var_2 = var_0.a.b;
    return arg_2;
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-713f, global0.c.x)), global0.c.x)), _wgslsmith_div_f32(global2.b.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c.x) - -2596f)))), global2.b);
    global2 = arg_0;
    let var_0 = global0.e;
    var var_1 = ~4294967295u;
    global2 = arg_0;
    return Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(arg_0.b.a.c, 13u)], global2.b.e.c, 1u, 92217u) << (max(vec4<u32>(0u, 7918u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(56146u, 13u)], 13u)], 32192u), vec4<u32>(global3[_wgslsmith_index_u32(global0.b, 13u)], 1u, var_0.a.x, var_0.a.x)) % vec4<u32>(32u)), ~(~vec4<u32>(4294967295u, arg_0.b.a.c, arg_0.b.e.c, 4294967295u))), 0u), vec4<bool>(!global0.a.b.x, false, all(arg_0.b.a.b), global0.d.x == reverseBits(1i)), global2.b.a.c, (firstLeadingBit(_wgslsmith_mod_i32(-27843i, var_0.d)) & firstTrailingBit(arg_0.b.d.x)) & 18898i, _wgslsmith_div_vec3_i32(countOneBits(-vec3<i32>(global2.b.e.d, u_input.b.x, global0.d.x)), max(vec3<i32>(u_input.b.x, 2147483647i, global0.e.d), global2.b.d)) >> (abs(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(global0.e.a.x, global0.a.c, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(25029u, 0u, global3[_wgslsmith_index_u32(19147u, 13u)]), vec3<u32>(15174u, arg_0.b.b, global0.b), vec3<u32>(111711u, 4294967295u, 5660u)))) % vec3<u32>(32u)));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.xy));
    let var_1 = ~_wgslsmith_add_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, global0.a.c, global0.a.a.x), 13u)], ~global0.b), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global3[_wgslsmith_index_u32(u_input.a, 13u)]), global2.b.a.a, global0.e.a)) & global2.b.e.a;
    global3 = array<u32, 13>();
    global3 = array<u32, 13>();
    global2 = Struct_3(global2.a, Struct_2(func_4(Struct_3(global2.b.a.b, func_2(var_0.x, global0.c.x, Struct_2(Struct_1(vec2<u32>(u_input.a, var_1.x), vec4<bool>(true, global2.a.x, global2.a.x, global0.a.b.x), 4294967295u, -2147483647i, vec3<i32>(global0.e.e.x, u_input.b.x, global0.d.x)), 0u, global2.e, vec3<i32>(u_input.b.x, u_input.b.x, -36689i), Struct_1(vec2<u32>(var_1.x, 1u), vec4<bool>(true, true, global2.a.x, global2.b.a.b.x), global2.b.b, -1i, vec3<i32>(global0.a.d, global2.c, -30060i)))), u_input.b.x, _wgslsmith_div_f32(var_0.x, -1342f), global2.e)), global2.b.a.c, vec3<f32>(global2.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1112f, global0.c.x))), 607f), _wgslsmith_mult_vec3_i32(global2.b.a.e, u_input.b), func_4(Struct_3(global2.b.a.b, Struct_2(global0.a, global2.b.b, vec3<f32>(341f, global2.d, -1000f), vec3<i32>(global0.a.d, 32214i, -29868i), global0.e), ~global2.b.e.e.x, _wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -3863f, -292f)))))), _wgslsmith_dot_vec2_i32(~vec2<i32>(-global0.d.x, 0i), _wgslsmith_mult_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.d, 2147483647i), vec2<i32>(1i, -59702i)), (vec2<i32>(u_input.b.x, u_input.b.x) ^ u_input.b.xy) | global0.d.zy)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(func_2(_wgslsmith_div_f32(global0.c.x, global0.c.x), _wgslsmith_div_f32(global0.c.x, var_0.x), global2.b).c.x, _wgslsmith_f_op_f32(func_3(9389i, abs(vec4<u32>(1u, global3[_wgslsmith_index_u32(49912u, 13u)], 92007u, 0u))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.e) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global0.c)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), -1000f) < _wgslsmith_f_op_f32(sign(var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.b.wxx;
    let var_1 = global2.b.e;
    global1 = array<vec3<bool>, 7>();
    var var_2 = select(vec3<bool>(var_0.x, all(global2.a.zw), ~(22502u << (global3[_wgslsmith_index_u32(11446u, 13u)] % 32u)) < 0u), vec3<bool>(global2.b.a.b.x, select(global0.a.b.x, u_input.a < 96274u, true) == var_1.b.x, !(!var_1.b.x)), func_1());
    var var_3 = (global2.a.x || true) || func_4(Struct_3(vec4<bool>(var_2.x, true, global2.b.e.b.x || false, var_0.x | global0.e.b.x), global2.b, u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c.x))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-558f, global0.c.x, global0.c.x))))).b.x;
    var var_4 = global2.b.a;
    var var_5 = Struct_3(func_2(-132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1746f))), func_2(-761f, _wgslsmith_f_op_f32(f32(-1f) * -1594f), func_2(_wgslsmith_div_f32(global2.d, -173f), _wgslsmith_f_op_f32(exp2(global2.e.x)), func_2(-232f, 780f, Struct_2(global0.a, 94562u, vec3<f32>(global2.b.c.x, -515f, -622f), vec3<i32>(global2.c, var_4.d, var_4.e.x), Struct_1(global2.b.a.a, var_4.b, var_1.c, global2.b.e.e.x, vec3<i32>(0i, global0.d.x, 2147483647i))))))).a.b, Struct_2(global0.a, ~(~(~u_input.a)), _wgslsmith_f_op_vec3_f32(-global0.c), u_input.b, Struct_1(~vec2<u32>(var_1.a.x, global3[_wgslsmith_index_u32(u_input.a, 13u)]), global0.a.b, var_1.c, 23611i, var_4.e)), select(var_1.e.x >> (1u % 32u), _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.d, var_4.e.x), var_4.e.xx), var_4.d), true), global2.b.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(909f - global0.c.x) + global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(962f + global0.c.x)))));
    global1 = array<vec3<bool>, 7>();
    let var_6 = Struct_3(vec4<bool>(!func_2(global0.c.x, -644f, Struct_2(global2.b.e, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50509u, 13u)], 13u)], vec3<f32>(-1363f, 359f, var_5.b.c.x), vec3<i32>(global0.e.d, 42034i, 2147483647i), global2.b.e)).e.b.x && func_4(Struct_3(var_5.b.e.b, Struct_2(global0.a, 55009u, var_5.e, vec3<i32>(global2.c, var_5.c, -27907i), var_5.b.e), 2147483647i, -1641f, global0.c)).b.x, true, all(!(!vec2<bool>(true, var_4.b.x))), var_5.b.a.b.x), var_5.b, var_4.d, 139f, _wgslsmith_div_vec3_f32(global0.c, var_5.b.c));
    let x = u_input.a;
    s_output = StorageBuffer(3038u, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-724f, -1601f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.c.x)))), global0.c.x, _wgslsmith_f_op_f32(abs(var_6.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global2.e.x)), 532f, -1556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1357f + global0.c.x)))));
}

