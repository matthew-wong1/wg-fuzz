struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, false, true, true, true, false, true, false, false, true, true, false, false, false, true, false, false, true, true, true, false);

var<private> global1: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false));

var<private> global2: array<vec4<bool>, 3>;

var<private> global3: f32 = -1237f;

var<private> global4: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<u32> {
    let var_0 = select(_wgslsmith_dot_vec3_u32(~max(u_input.d.zxz, vec3<u32>(41074u, 64218u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(2025u, u_input.e, u_input.e) | u_input.d.wzw, _wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, u_input.e), u_input.d.xxy))) & _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.d.x), _wgslsmith_div_vec3_u32(u_input.d.wxx, u_input.d.xxz)), _wgslsmith_mult_vec3_u32(u_input.d.zxy, ~u_input.d.wzy)), 1u << (_wgslsmith_dot_vec2_u32((vec2<u32>(60350u, u_input.e) ^ vec2<u32>(u_input.e, 4294967295u)) | (vec2<u32>(u_input.d.x, u_input.e) ^ vec2<u32>(20442u, u_input.d.x)), select(~vec2<u32>(0u, 4294967295u), ~u_input.d.xw, !global0[_wgslsmith_index_u32(4294967295u, 21u)])) % 32u), !(select(!global0[_wgslsmith_index_u32(0u, 21u)], false, global0[_wgslsmith_index_u32(countOneBits(0u), 21u)]) || true));
    var var_1 = u_input.a.x;
    let var_2 = !(!(firstLeadingBit(~1u) <= u_input.d.x));
    let var_3 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(max(-_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 2120i), vec2<i32>(u_input.c, 15350i)), vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, -2147483647i), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a))), u_input.b, -vec2<i32>(-1i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x))));
    let var_4 = ~countOneBits(vec3<u32>(var_0, 41528u, 36554u) | ~u_input.d.zyy) | min(select(u_input.d.zzw >> (u_input.d.xxz % vec3<u32>(32u)), select(vec3<u32>(25239u, var_0, 4294967295u), firstLeadingBit(vec3<u32>(1u, 0u, 1u)), all(vec3<bool>(global0[_wgslsmith_index_u32(4057u, 21u)], false, var_2))), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(582u, var_0), 21u)]), ~u_input.d.xwz);
    return ~(~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, var_0), var_4))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(all(select(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(39128u, 21u)], global0[_wgslsmith_index_u32(u_input.e, 21u)])), vec3<bool>(true, true, !global0[_wgslsmith_index_u32(10830u, 21u)]), select(global0[_wgslsmith_index_u32(0u, 21u)], false, true))), vec3<u32>(_wgslsmith_mult_u32(10729u << (u_input.d.x % 32u), _wgslsmith_dot_vec2_u32(u_input.d.ww, u_input.d.zz)) ^ firstTrailingBit(u_input.e), ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.d.x, 29153u), ~u_input.e, _wgslsmith_div_u32(57627u, 57537u)), _wgslsmith_sub_u32(~u_input.e, 72064u << (u_input.e % 32u))), Struct_1(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.e, 4294967295u), u_input.d, u_input.d), ~vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 23909u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.d.wyw, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, u_input.e), vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x))), _wgslsmith_mod_vec3_u32(func_3(), ~u_input.d.yyz), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.e, u_input.d.x), u_input.d.wxy)), _wgslsmith_f_op_f32(sign(-994f))), Struct_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.e, u_input.e, u_input.e, 1u), vec4<u32>(u_input.d.x ^ u_input.d.x, u_input.e >> (u_input.d.x % 32u), abs(u_input.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(38653u, u_input.e, 4294967295u), u_input.d.zzw))), vec3<u32>(~u_input.d.x | _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, u_input.d.x, 0u, 31602u)), ~4294967295u >> ((u_input.d.x >> (29030u % 32u)) % 32u), 0u), _wgslsmith_f_op_f32(-533f + 998f)), Struct_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(20378u, u_input.d.x, u_input.e, 34577u), min(u_input.d & vec4<u32>(u_input.d.x, u_input.e, u_input.d.x, u_input.d.x), u_input.d)), u_input.d.ywz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1333f, 1267f)))))));
    global2 = array<vec4<bool>, 3>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.e.c))));
    global0 = array<bool, 21>();
    var var_1 = u_input.b.x;
    return Struct_2(true, max(countOneBits(u_input.d.xww), vec3<u32>(u_input.d.x, ~1u, (55279u << (var_0.d.b.x % 32u)) ^ _wgslsmith_dot_vec2_u32(var_0.c.b.zy, vec2<u32>(u_input.d.x, u_input.e)))), var_0.c, var_0.e, Struct_1(u_input.d, ~(~var_0.d.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-293f * _wgslsmith_f_op_f32(var_0.d.c * -945f)) + var_0.e.c)));
}

fn func_1() -> u32 {
    global3 = -1260f;
    let var_0 = 70058u;
    global4 = array<vec4<bool>, 15>();
    let var_1 = u_input.d.xz;
    var var_2 = func_2();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(firstTrailingBit(5075u), _wgslsmith_div_u32(select(u_input.d.x, 32557u, global0[_wgslsmith_index_u32(u_input.e, 21u)]), u_input.d.x & 814u), 16725u, 5628u) >> (vec4<u32>(~53227u, func_1(), 52886u, _wgslsmith_div_u32(u_input.e, 1u)) % vec4<u32>(32u)), _wgslsmith_mult_vec3_u32(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, u_input.e, 48634u), vec3<u32>(66117u, 79153u, u_input.d.x))), u_input.d.yxz) >> (_wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, u_input.d.x, u_input.e)), u_input.d.wwy) % vec3<u32>(32u)), _wgslsmith_f_op_f32(424f - _wgslsmith_f_op_f32(-1444f - -177f)));
    var var_1 = vec2<u32>(1u, min(_wgslsmith_dot_vec3_u32(~abs(var_0.b), var_0.a.yyw), var_0.b.x >> (var_0.b.x % 32u)));
    var var_2 = func_2();
    global0 = array<bool, 21>();
    var var_3 = !(-837f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c + var_2.d.c)))) && (var_2.a || (u_input.e != func_1()));
    let var_4 = func_2().c;
    global1 = array<vec4<bool>, 21>();
    var var_5 = Struct_2(var_2.a, vec3<u32>(~(~_wgslsmith_dot_vec4_u32(var_2.e.a, var_4.a)), var_4.a.x, 44873u), Struct_1(var_0.a, var_2.e.b, var_4.c), var_0, var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c, var_4.c, 660f, var_5.d.c)), vec4<f32>(var_2.d.c, var_4.c, -290f, 1434f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.c, 607f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1148f)))), 18849u);
}

