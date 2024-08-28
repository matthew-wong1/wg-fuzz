struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec3<u32>, 14>;

var<private> global2: array<i32, 28>;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, true), 18284u, 0i, 4294967295u, false);

var<private> global4: array<vec2<i32>, 17>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> bool {
    let var_0 = global0.a.a;
    let var_1 = Struct_1(global3.a, global3.b, abs(_wgslsmith_sub_i32(global0.a.c.x, _wgslsmith_sub_i32(-1i, 0i)) & -14496i), 0u, 1i > (global3.c & 1i));
    global3 = Struct_1(select(select(select(!vec2<bool>(true, global3.a.x), global3.a, false), global3.a, true), select(select(global3.a, vec2<bool>(true, global3.e), select(vec2<bool>(false, true), vec2<bool>(var_1.e, var_1.a.x), var_1.e)), !(!var_1.a), global3.a), vec2<bool>(_wgslsmith_f_op_f32(-823f * -1477f) > global0.a.a, global3.b <= global3.d)), max(4294967295u, ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, global3.d)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b, 54532u), vec2<u32>(4294967295u, var_1.d)))), select(global0.a.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(global2[_wgslsmith_index_u32(global3.b, 28u)], -3376i, 0i, -23933i)), vec4<i32>(5546i, -27684i, -16106i, global3.c)), -(global0.a.c ^ vec4<i32>(2147483647i, u_input.a.x, -2147483647i, 1i))), (firstLeadingBit(3973u) ^ global3.b) > 75238u), 557u, !var_1.e);
    var var_2 = false;
    var var_3 = Struct_4(~reverseBits(select(global4[_wgslsmith_index_u32(global3.d, 17u)], vec2<i32>(-45672i, var_1.c), var_1.a) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(global0.a.a * global0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.b) + global0.a.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1054f, _wgslsmith_f_op_f32(-global0.a.a))) * _wgslsmith_f_op_f32(global0.a.b - global0.a.a)), _wgslsmith_f_op_f32(-global0.a.a)), select(select(select(!vec4<bool>(global3.a.x, var_1.e, false, var_1.e), vec4<bool>(var_1.e, false, global3.e, false), !vec4<bool>(var_1.a.x, false, var_1.e, var_1.a.x)), vec4<bool>(true, global3.e, any(vec4<bool>(true, global3.a.x, false, false)), true), !vec4<bool>(global3.e, false, var_1.e, false)), !select(vec4<bool>(global3.a.x, true, var_1.e, false), !vec4<bool>(var_1.e, false, global3.e, true), !vec4<bool>(global3.e, global3.e, false, global3.a.x)), select(vec4<bool>(true, var_1.a.x, var_1.a.x, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, var_1.e, var_1.a.x, false), global3.e), global3.a.x)), u_input.a.x, var_1);
    return true;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_5, arg_3: Struct_3) -> f32 {
    let var_0 = arg_1;
    global4 = array<vec2<i32>, 17>();
    global4 = array<vec2<i32>, 17>();
    let var_1 = Struct_4(-(max(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.a.c.x, 0i), global4[_wgslsmith_index_u32(0u, 17u)]), reverseBits(arg_2.a.c.yz)) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(global3.b, global3.b), vec2<u32>(52305u, 19656u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1418f, 613f, 1170f, global0.a.b), vec4<f32>(139f, -1686f, arg_2.a.a, arg_3.b))))), vec4<bool>(func_3(), false, all(select(vec2<bool>(true, true), !global3.a, any(vec2<bool>(true, var_0)))), !(var_0 | arg_1)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i | ~global2[_wgslsmith_index_u32(global3.d, 28u)], 2147483647i, 61055i), vec3<i32>(-16789i, -arg_2.a.c.x, -1058i)), Struct_1(global3.a, 8024u, min(~min(global3.c, arg_2.a.c.x), -18131i), ~1u, arg_1));
    global3 = var_1.e;
    return var_1.b.x;
}

fn func_4(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = firstLeadingBit(select(abs(~1u) & global3.d, _wgslsmith_div_u32(44522u, ~0u), any(vec4<bool>(global3.e && arg_0, false, true, arg_1))));
    return Struct_1(!vec2<bool>(false, arg_0), ~93215u, _wgslsmith_sub_i32(-20227i, global0.a.c.x), var_0, var_0 <= ~(~var_0));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(global0.a.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b.x))));
    global2 = array<i32, 28>();
    let var_1 = func_3();
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_1.b)));
    let var_3 = true;
    return global0.a;
}

fn func_1(arg_0: vec3<u32>) -> Struct_5 {
    let var_0 = ~min(4294967295u, _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(global3.b, global3.b), vec2<u32>(arg_0.x, 25905u)), vec2<u32>(27856u, arg_0.x)));
    let var_1 = vec2<i32>(global0.a.c.x, 12243i);
    global1 = array<vec3<u32>, 14>();
    var var_2 = true;
    var var_3 = global0.a.c.ww;
    return Struct_5(func_5(func_4(_wgslsmith_f_op_f32(-global0.a.b) < _wgslsmith_f_op_f32(func_2(global0.a.b, global3.e, Struct_5(global0.a), global0.a)), any(vec4<bool>(true, false, global3.e, true))), Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_mod_u32(15267u, 1u), global3.c, ~global3.b, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.b, global0.a.a, 604f))), Struct_1(global3.a, ~14761u, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global3.c, var_3.x), u_input.a.xww), 1u, global3.e), select(vec4<u32>(3425u, global3.d, 1u, var_0), vec4<u32>(4294967295u, arg_0.x, global3.d, arg_0.x), -969f == global0.a.a))));
}

fn func_6(arg_0: Struct_5, arg_1: vec2<f32>) -> Struct_5 {
    global2 = array<i32, 28>();
    let var_0 = Struct_4(vec2<i32>(-2147483647i, _wgslsmith_add_i32(1i, arg_0.a.c.x << (func_4(false, false).b % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, global0.a.b, arg_1.x, arg_1.x))))), select(vec4<bool>(all(select(vec2<bool>(global3.a.x, true), vec2<bool>(global3.a.x, false), vec2<bool>(true, true))), func_4(true, any(vec4<bool>(global3.a.x, false, false, global3.e))).e, true, !global3.e | (arg_1.x <= -1361f)), vec4<bool>(!any(vec4<bool>(global3.e, global3.e, global3.a.x, global3.a.x)), false, global3.a.x, global3.e | (global0.a.b <= arg_1.x)), !vec4<bool>(true, false, true, global3.a.x)), ~1i, func_4(true, !all(select(vec3<bool>(true, global3.e, false), vec3<bool>(global3.e, true, global3.a.x), global3.a.x))));
    let var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    global3 = Struct_1(vec2<bool>(var_0.e.e, var_0.c.x), ~(~(110785u ^ global3.b)) >> (0u % 32u), func_5(func_4(false, true), Struct_2(Struct_1(global3.a, _wgslsmith_dot_vec2_u32(vec2<u32>(53690u, 0u), vec2<u32>(4294967295u, 1u)), global2[_wgslsmith_index_u32(~global3.b, 28u)], global3.b ^ var_0.e.b, true), var_0.b.xyy, Struct_1(func_4(true, var_0.c.x).a, global3.b, -27729i, 4294967295u, false), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 85959u, global3.b, 0u), vec4<u32>(global3.b, 4294967295u, 25377u, global3.d), vec4<u32>(var_0.e.b, global3.d, global3.d, var_0.e.b))))).c.x, var_0.e.d, true);
    global3 = func_4(!global3.e, false);
    return Struct_5(func_1((~global1[_wgslsmith_index_u32(13299u, 14u)] | vec3<u32>(83916u, var_0.e.d, 9283u)) | vec3<u32>(firstTrailingBit(2325u), countOneBits(var_0.e.d), 1u | var_0.e.d)).a);
}

fn func_7(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_2) -> bool {
    let var_0 = Struct_1(select(vec2<bool>(global3.a.x, global3.a.x), vec2<bool>(!(arg_3.c.a.x && true), arg_3.c.e), !func_4(true, -1147f < global0.a.a).a), 4294967295u, _wgslsmith_div_i32(arg_3.a.c, ~(-2147483647i)), global3.d, true);
    global1 = array<vec3<u32>, 14>();
    let var_1 = select(vec4<u32>(reverseBits(var_0.b), arg_3.d.x >> (reverseBits(var_0.b) % 32u), ~arg_3.a.d, ~(_wgslsmith_sub_u32(arg_3.d.x, arg_3.c.b) ^ var_0.b)), arg_3.d, !(!select(select(vec4<bool>(true, var_0.a.x, true, var_0.a.x), vec4<bool>(true, true, arg_3.c.a.x, var_0.e), vec4<bool>(global3.e, false, false, false)), vec4<bool>(false, global3.a.x, true, arg_3.a.a.x), true)));
    let var_2 = Struct_2(var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.b.x, arg_1.x, global0.a.a))))) * arg_3.b), arg_3.c, vec4<u32>(_wgslsmith_sub_u32(16449u, ~(~arg_3.c.d)), 1u, (var_0.b ^ arg_3.c.b) >> (62493u % 32u), 9336u ^ ~_wgslsmith_mod_u32(arg_3.a.d, 4294967295u)));
    var var_3 = var_0.c;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(2181u), ~global3.b) >> (~(~global3.d) % 32u), global3.d, countOneBits(~0u));
    var var_1 = select(!vec4<bool>(global3.e, true, global3.e, true), vec4<bool>(global3.a.x, func_7(func_6(func_1(vec3<u32>(4294967295u, var_0.x, 56812u)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.a.b, 712f), vec2<f32>(global0.a.a, 485f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-949f, 136f, global0.a.b)), global0.a.c, Struct_2(Struct_1(global3.a, 1943u, -1i, 4294967295u, false), vec3<f32>(-1000f, -994f, global0.a.b), Struct_1(global3.a, 0u, -51094i, 0u, true), ~vec4<u32>(25325u, 4294967295u, 1u, var_0.x))), func_3(), true), true);
    var var_2 = 9013i;
    var var_3 = Struct_2(Struct_1(select(var_1.ww, vec2<bool>(true, any(vec3<bool>(var_1.x, var_1.x, false))), select(global3.a, func_4(false, true).a, var_1.x)), global3.d, _wgslsmith_dot_vec4_i32(global0.a.c, u_input.a << (abs(vec4<u32>(1u, 18494u, 10785u, 3408u)) % vec4<u32>(32u))), _wgslsmith_div_u32(~abs(0u), abs(var_0.x)), ((0u << (var_0.x % 32u)) | ~var_0.x) > firstLeadingBit(29948u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, _wgslsmith_f_op_f32(global0.a.a + global0.a.b), _wgslsmith_f_op_f32(-global0.a.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.b, 1000f, -728f))))), func_4(func_3(), var_1.x), ~(~firstTrailingBit(vec4<u32>(4294967295u, 25286u, 0u, global3.b))));
    let var_4 = u_input.a.yw;
    global2 = array<i32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(firstTrailingBit(4294967295u), var_3.c.b), global3.d << (var_3.c.b % 32u)), 9403u, ~_wgslsmith_add_u32(abs(3885u), ~9735u)));
}

