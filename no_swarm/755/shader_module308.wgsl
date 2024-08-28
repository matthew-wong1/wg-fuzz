struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(-29418i, -30733i), vec2<i32>(1i, 5406i), vec2<i32>(2147483647i, -18399i));

var<private> global2: array<f32, 12> = array<f32, 12>(-900f, 1076f, 449f, 1284f, 1764f, 271f, 202f, 715f, 746f, -1341f, 243f, -371f);

var<private> global3: vec3<u32>;

var<private> global4: array<f32, 20>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> i32 {
    global0 = true;
    let var_0 = vec4<i32>(1i, ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(19416i, reverseBits(-18653i)), -43056i), 10938i << (_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 0u), vec2<u32>(1u, u_input.c.x), true) | ~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(~39742u, ~4294967295u)) % 32u), u_input.b.x);
    return firstLeadingBit(var_0.x);
}

fn func_2() -> Struct_4 {
    let var_0 = vec3<bool>(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(6348u, 1u), global3.yx), vec2<u32>(~u_input.c.x, u_input.c.x)) > (0u | u_input.c.x), _wgslsmith_add_i32(11329i, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(19876u, 3u)], global1[_wgslsmith_index_u32(global3.x, 3u)]) ^ (u_input.a | u_input.b.x)) == ~u_input.b.x, any(vec4<bool>(true, _wgslsmith_clamp_u32(u_input.c.x, global3.x, 4294967295u) > 1u, !(-712f < global2[_wgslsmith_index_u32(global3.x, 12u)]), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(27338u, 20u)], global2[_wgslsmith_index_u32(global3.x, 12u)]) < _wgslsmith_f_op_f32(floor(-529f)))));
    var var_1 = Struct_3(u_input.a);
    let var_2 = var_0.zz;
    var var_3 = ~(~(~_wgslsmith_add_vec3_u32(~u_input.c.wxz, vec3<u32>(8177u, 4294967295u, global3.x))));
    global2 = array<f32, 12>();
    return Struct_4(Struct_3(var_1.a));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_5 {
    var var_0 = select(vec4<bool>(false, _wgslsmith_dot_vec2_u32(arg_0.zx, vec2<u32>(20530u, u_input.c.x)) != u_input.c.x, false, true), vec4<bool>(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(global3.x, global3.x), 12u)] < 1067f, true, any(vec2<bool>(true, true)), true), !(!vec4<bool>(true, true, true, select(false, false, false))));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.b >> (~(~vec4<u32>(arg_0.x, arg_0.x, 9403u, global3.x)) % vec4<u32>(32u)), u_input.b), 0i);
    global3 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x & global3.x, arg_0.x, ~50383u), vec3<u32>(~global3.x, 4294967295u << (global3.x % 32u), ~global3.x)), vec3<u32>(min(arg_0.x, global3.x) | u_input.c.x, global3.x, arg_0.x)), 9297u, 29527u);
    return Struct_5(Struct_2(arg_2, vec2<u32>(u_input.c.x, ~98827u), true, true), func_2(), global3.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = select(!select(vec4<bool>(arg_1.a.c, arg_1.a.c, -297f > global4[_wgslsmith_index_u32(21438u, 20u)], false), !(!vec4<bool>(true, false, false, arg_1.a.d)), vec4<bool>(true, true, true, true)), select(vec4<bool>(arg_1.a.d, all(vec3<bool>(false, arg_1.a.d, arg_1.a.c)) || (28377u > global3.x), arg_1.a.d, !all(vec2<bool>(true, false))), select(select(!vec4<bool>(arg_1.a.c, arg_1.a.c, true, arg_1.a.d), select(vec4<bool>(arg_1.a.d, true, arg_1.a.d, arg_1.a.d), vec4<bool>(arg_1.a.d, arg_1.a.c, arg_1.a.d, arg_1.a.d), vec4<bool>(false, false, arg_1.a.c, true)), vec4<bool>(arg_1.a.d, false, arg_1.a.d, arg_1.a.d)), select(!vec4<bool>(false, arg_1.a.d, arg_1.a.c, true), !vec4<bool>(true, true, arg_1.a.c, true), vec4<bool>(true, arg_1.a.c, false, false)), arg_1.a.c), vec4<bool>(!(1i < arg_1.a.a.x), true, true, global2[_wgslsmith_index_u32(abs(u_input.c.x), 12u)] <= _wgslsmith_f_op_f32(f32(-1f) * -832f))), !select(vec4<bool>(!arg_1.a.d, 1252f >= global4[_wgslsmith_index_u32(u_input.c.x, 20u)], true, true), !(!vec4<bool>(true, arg_1.a.c, true, false)), vec4<bool>(true, true, arg_1.a.d, arg_1.a.d)));
    global2 = array<f32, 12>();
    let var_1 = arg_2;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.c.x, 20u)], global4[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(0u, 12u)]) - vec3<f32>(1599f, -169f, global4[_wgslsmith_index_u32(arg_1.a.b.x, 20u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1276f, global2[_wgslsmith_index_u32(arg_1.a.b.x, 12u)], global4[_wgslsmith_index_u32(arg_2.x, 20u)]))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(962f, -147f, 1752f))), !(-580f <= global2[_wgslsmith_index_u32(0u, 12u)]))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.c.x, 12u)])), -1495f, 159f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b.x, ~u_input.b.x, func_1(), _wgslsmith_div_i32(u_input.b.x, -16240i)), -u_input.b), func_3(countOneBits(u_input.c), func_2(), _wgslsmith_mult_vec3_i32(select(u_input.b.xwy, u_input.b.xxz, false), max(vec3<i32>(37903i, 0i, 28449i), vec3<i32>(26236i, u_input.b.x, 2147483647i))) >> (vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, u_input.c.x), u_input.c.x, ~u_input.c.x) % vec3<u32>(32u))), u_input.c, func_3(~(~u_input.c), Struct_4(Struct_3(~u_input.a)), ~reverseBits(u_input.b.zyz) << (u_input.c.ywy % vec3<u32>(32u))).b.a);
    global4 = array<f32, 20>();
    global3 = ~_wgslsmith_sub_vec3_u32(min(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c.xzy, u_input.c.ywy), ~u_input.c.wwx), ~vec3<u32>(u_input.c.x, 93201u, 1u) ^ ~u_input.c.xxy), _wgslsmith_mod_vec3_u32(abs(u_input.c.yww | u_input.c.xxz), ~vec3<u32>(u_input.c.x, 0u, 1u)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-507f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(global3.x, 20u)])), var_0.a.x)), var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3.x, 12u)] + _wgslsmith_div_f32(373f, global4[_wgslsmith_index_u32(83808u, 20u)])))));
    let var_2 = false;
    global4 = array<f32, 20>();
    let var_3 = func_3(abs(~max(_wgslsmith_sub_vec4_u32(u_input.c, u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 90965u, 4294967295u, u_input.c.x), vec4<u32>(0u, u_input.c.x, u_input.c.x, 21691u)))), func_3(_wgslsmith_mult_vec4_u32(select(vec4<u32>(43156u, 4294967295u, u_input.c.x, u_input.c.x), u_input.c, vec4<bool>(var_2, var_2, var_2, false)) >> (~vec4<u32>(u_input.c.x, 34055u, 33197u, 5601u) % vec4<u32>(32u)), abs(select(u_input.c, vec4<u32>(13470u, 13925u, 21104u, 4294967295u), vec4<bool>(var_2, var_2, true, var_2)))), Struct_4(Struct_3(2147483647i)), firstTrailingBit(firstTrailingBit(vec3<i32>(11782i, 0i, -2147483647i)))).b, vec3<i32>(reverseBits(0i), u_input.a, _wgslsmith_mod_i32(select(u_input.b.x, -u_input.a, var_2), u_input.a))).b.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zzy, global4[_wgslsmith_index_u32(~(~(~u_input.c.x)), 20u)], vec4<u32>(u_input.c.x, ~abs(4294967295u) & _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, global3.x), select(u_input.c.zz, vec2<u32>(u_input.c.x, 35839u), true)), global3.x, firstTrailingBit(select(u_input.c.x, 1u, true)) ^ ~firstTrailingBit(0u)), u_input.c.x >> (global3.x % 32u));
}

