struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 20> = array<Struct_5, 20>(Struct_5(Struct_3(vec4<u32>(4540u, 0u, 1u, 0u))), Struct_5(Struct_3(vec4<u32>(4294967295u, 1u, 14792u, 15618u))), Struct_5(Struct_3(vec4<u32>(54750u, 121500u, 6486u, 10714u))), Struct_5(Struct_3(vec4<u32>(19745u, 121491u, 36868u, 1u))), Struct_5(Struct_3(vec4<u32>(14996u, 42919u, 0u, 0u))), Struct_5(Struct_3(vec4<u32>(0u, 4294967295u, 4294967295u, 5727u))), Struct_5(Struct_3(vec4<u32>(30324u, 1u, 0u, 4294967295u))), Struct_5(Struct_3(vec4<u32>(65936u, 4294967295u, 0u, 0u))), Struct_5(Struct_3(vec4<u32>(31860u, 0u, 1u, 20024u))), Struct_5(Struct_3(vec4<u32>(79163u, 48128u, 15916u, 83787u))), Struct_5(Struct_3(vec4<u32>(78711u, 92851u, 50082u, 26512u))), Struct_5(Struct_3(vec4<u32>(0u, 1u, 565u, 60518u))), Struct_5(Struct_3(vec4<u32>(36687u, 14030u, 1u, 1u))), Struct_5(Struct_3(vec4<u32>(22329u, 1u, 97627u, 12966u))), Struct_5(Struct_3(vec4<u32>(13467u, 15914u, 17778u, 0u))), Struct_5(Struct_3(vec4<u32>(83251u, 3546u, 4294967295u, 69564u))), Struct_5(Struct_3(vec4<u32>(7997u, 4294967295u, 59650u, 4294967295u))), Struct_5(Struct_3(vec4<u32>(1u, 71003u, 27630u, 1u))), Struct_5(Struct_3(vec4<u32>(0u, 0u, 86260u, 1u))), Struct_5(Struct_3(vec4<u32>(0u, 4125u, 72709u, 0u))));

var<private> global1: array<u32, 12>;

var<private> global2: bool;

var<private> global3: array<Struct_2, 1>;

var<private> global4: array<bool, 29>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = ~vec4<i32>(u_input.c.x, ~u_input.c.x, -2147483647i, abs(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.zzy, vec3<i32>(u_input.c.x, 43416i, -2008i)), min(vec3<i32>(36086i, u_input.c.x, 3990i), vec3<i32>(62953i, 45594i, u_input.c.x)))));
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)] << (14911u % 32u), u_input.b.x, ~1u), countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13000u, 12u)], 12u)]), 12u)])), max(u_input.a.xw, _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(101641u, 12u)]), u_input.b))), 12u)], vec2<bool>(true, global4[_wgslsmith_index_u32(~u_input.a.x, 29u)]), vec2<bool>(!any(!vec4<bool>(true, global4[_wgslsmith_index_u32(40852u, 29u)], false, global4[_wgslsmith_index_u32(u_input.a.x, 29u)])), any(vec4<bool>(false, global4[_wgslsmith_index_u32(~13063u, 29u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 29u)], all(vec4<bool>(global4[_wgslsmith_index_u32(0u, 29u)], global4[_wgslsmith_index_u32(1u, 29u)], global4[_wgslsmith_index_u32(u_input.b.x, 29u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 29u)]))))), !select(vec3<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], 29u)] | global4[_wgslsmith_index_u32(13613u, 29u)], !global4[_wgslsmith_index_u32(0u, 29u)], true), !select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 29u)], true, false), vec3<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)], true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], true, global4[_wgslsmith_index_u32(41329u, 29u)])), !global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)] >> (4294967295u % 32u), 29u)]), ~firstLeadingBit(u_input.a.wwy));
    var var_2 = global0[_wgslsmith_index_u32(~(~(4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(23330u, u_input.b.x, 4294967295u, 4294967295u), u_input.a))), 20u)];
    global4 = array<bool, 29>();
    var var_3 = select(var_1.d, var_1.d, var_1.c.x);
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>) -> f32 {
    var var_0 = vec3<i32>(reverseBits(firstTrailingBit(arg_1.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, u_input.c.x, _wgslsmith_div_i32(-31128i, arg_1.x) | 20792i), vec3<i32>(_wgslsmith_add_i32(abs(1i), abs(-1i)), 1i, 33946i)), -u_input.c.x);
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(firstTrailingBit(~60271u), 12u)], select(!vec2<bool>(func_3(), true), !arg_0, true), select(arg_0, arg_0, select(arg_0.x, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 12u)], u_input.b.x) < countOneBits(global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), true)), !vec3<bool>(_wgslsmith_f_op_f32(-1000f - 343f) >= _wgslsmith_f_op_f32(select(-825f, -1000f, global4[_wgslsmith_index_u32(u_input.a.x, 29u)])), arg_0.x, any(vec4<bool>(global4[_wgslsmith_index_u32(14158u, 29u)], true, arg_0.x, arg_0.x))), vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 61583u), vec2<u32>(u_input.b.x, 1u))) & u_input.b.x, 12u)], _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wxz, vec3<u32>(u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)])), 0u, _wgslsmith_dot_vec3_u32(u_input.a.www, vec3<u32>(u_input.b.x, 95484u, 4294967295u))), vec3<u32>(4294967295u, u_input.a.x, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(54353u, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)]))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(25392u, global1[_wgslsmith_index_u32(0u, 12u)], 1u), vec3<u32>(0u, u_input.b.x, 3324u))));
    global3 = array<Struct_2, 1>();
    global3 = array<Struct_2, 1>();
    let var_2 = !vec3<bool>(true, !(!global4[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 29u)]), false);
    return _wgslsmith_f_op_f32(f32(-1f) * -381f);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: vec3<u32>) -> f32 {
    let var_0 = -1335f;
    global2 = arg_0.e.c.x;
    var var_1 = min(1u, ~4294967295u);
    let var_2 = -2147483647i;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0.c.b, _wgslsmith_sub_vec4_i32(vec4<i32>(29923i, arg_0.a, 36001i, var_2), u_input.c))) + 1684f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.c))), -349f != _wgslsmith_f_op_f32(arg_0.d + -187f))))), -147f);
    return 1542f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 29>();
    global3 = array<Struct_2, 1>();
    var var_0 = u_input.c.x;
    var_0 = ~_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x ^ u_input.c.x), u_input.c.zyw);
    global4 = array<bool, 29>();
    global1 = array<u32, 12>();
    global3 = array<Struct_2, 1>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(738f, 1320f)));
    let var_2 = 554f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(u_input.c.x, vec2<u32>(global1[_wgslsmith_index_u32(6357u, 12u)], 87506u), Struct_1(1u, vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.b.x, 29u)]), vec2<bool>(true, true), vec3<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], 12u)], 12u)], 29u)], false, global4[_wgslsmith_index_u32(14460u, 29u)]), u_input.a.zxz), var_1.x, Struct_1(u_input.a.x, vec2<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 29u)], global4[_wgslsmith_index_u32(0u, 29u)]), vec2<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<bool>(true, true, false), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28677u, 12u)], 12u)], global1[_wgslsmith_index_u32(10521u, 12u)], u_input.b.x))), Struct_4(var_2, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], var_2, Struct_1(7006u, vec2<bool>(global4[_wgslsmith_index_u32(22494u, 29u)], false), vec2<bool>(false, false), vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 29u)], false), u_input.a.wzy)), ~u_input.a.wwz, u_input.a.xzz)), var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), 484f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1185f, var_2, 385f) * vec3<f32>(-221f, var_2, var_1.x)) + vec3<f32>(var_1.x, var_2, -313f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(u_input.c.x, u_input.b, Struct_1(u_input.b.x, vec2<bool>(false, false), vec2<bool>(global4[_wgslsmith_index_u32(14656u, 29u)], global4[_wgslsmith_index_u32(17287u, 29u)]), vec3<bool>(true, true, global4[_wgslsmith_index_u32(u_input.b.x, 29u)]), u_input.a.wyz), 1000f, Struct_1(568u, vec2<bool>(false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39241u, 12u)], 12u)], 12u)], 12u)], 12u)], 29u)]), vec2<bool>(global4[_wgslsmith_index_u32(0u, 29u)], global4[_wgslsmith_index_u32(0u, 29u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(1u, 29u)], false), vec3<u32>(global1[_wgslsmith_index_u32(57105u, 12u)], u_input.a.x, 24203u))), Struct_4(-1124f, 4294967295u, var_2, Struct_1(0u, vec2<bool>(true, false), vec2<bool>(true, false), vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec3<u32>(global1[_wgslsmith_index_u32(46349u, 12u)], 33380u, 4294967295u))), vec3<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), u_input.a.wyy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(550f + var_2) - var_2))), _wgslsmith_mod_u32(_wgslsmith_add_u32(71729u, _wgslsmith_sub_u32(u_input.b.x, 4294967295u)) & global1[_wgslsmith_index_u32(~4294967295u, 12u)], ~u_input.a.x));
}

