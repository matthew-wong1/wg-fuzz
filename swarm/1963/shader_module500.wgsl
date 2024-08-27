struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: u32;

var<private> global2: u32 = 1u;

var<private> global3: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<i32>) -> vec2<u32> {
    let var_0 = arg_0.x;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1050f, -1092f, 144f) + vec3<f32>(-1457f, -1544f, -1000f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-422f, 907f, 223f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-191f, -1000f, 1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-644f, 323f, 1662f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-259f, 115f, 1480f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1117f, 258f, -1133f) * vec3<f32>(-1237f, -1000f, -275f))))), u_input.a);
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_1.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_1.a + var_1.b))))), var_1.b, 49728i);
    let var_3 = global3.e;
    var var_4 = var_2;
    return ~u_input.b.wz;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<u32>) -> i32 {
    global1 = ~firstLeadingBit(1112u);
    let var_0 = !arg_1.c & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2871f, _wgslsmith_f_op_f32(752f * 375f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-178f, _wgslsmith_f_op_f32(349f + 920f)))));
    var var_1 = arg_2.x;
    var_1 = _wgslsmith_add_u32(~13379u & abs(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, arg_1.a), 0u)), arg_3.x);
    let var_2 = ~(arg_1.e.a.zz >> (vec2<u32>(arg_3.x, global3.a) % vec2<u32>(32u)));
    return _wgslsmith_mult_i32(var_2.x, arg_1.b);
}

fn func_1() -> bool {
    let var_0 = -vec2<i32>(select(global3.b ^ ~2147483647i, 51243i & ~global3.b, all(select(vec2<bool>(true, true), vec2<bool>(global3.e.c, false), vec2<bool>(true, false)))), u_input.c);
    global2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(func_2(_wgslsmith_mod_vec2_i32(global3.e.a.zx, global3.e.a.xz)), u_input.b.yy), ~countOneBits(0u));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(498f, -1566f)), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(ceil(430f))))))), vec3<f32>(-220f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-401f * 290f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)))), select(func_3(select(_wgslsmith_add_vec3_u32(u_input.b.zyz, vec3<u32>(global3.a, global3.a, global3.a)), reverseBits(u_input.b.xxx), !vec3<bool>(true, global3.d, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4488u), u_input.b.xx) | 0u, 21u)], _wgslsmith_sub_vec3_u32(vec3<u32>(global3.a, 40542u, 94096u), vec3<u32>(71851u, u_input.b.x, 0u)) << (~vec3<u32>(global3.a, 1u, 3102u) % vec3<u32>(32u)), max(~u_input.b.xx, ~vec2<u32>(u_input.b.x, 22624u))), u_input.a, !(true & (1u > global3.a))));
    let var_2 = false;
    global2 = u_input.b.x;
    return any(vec3<bool>(true, any(!vec3<bool>(true, false, global3.e.c)) && all(!vec3<bool>(var_2, var_2, false)), var_2));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = arg_2;
    global0 = array<Struct_2, 21>();
    global2 = max(min(var_0.a, 37069u), ~11666u);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1029f, 751f, 329f) - vec3<f32>(2620f, 105f, -339f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(855f, -597f, -2151f))))) - vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1047f, 435f, 151f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-232f, 198f, 941f)), true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-333f, 1255f, -316f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(949f, -210f, 1739f) * vec3<f32>(-705f, -1743f, -541f))))), select(1i, _wgslsmith_div_i32(-1i | arg_2.b, reverseBits(-15109i)), false) & _wgslsmith_dot_vec4_i32(vec4<i32>(3369i, 1i, 92679i >> (u_input.b.x % 32u), _wgslsmith_sub_i32(-2147483647i, arg_1.x)), vec4<i32>(25653i << (arg_2.a % 32u), _wgslsmith_add_i32(-22776i, global3.e.a.x), ~(-1i), 1i)));
    global2 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, max(u_input.b, vec4<u32>(global3.a, 1u, 54943u, var_0.a)), _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(846u, global3.a, 1u, u_input.b.x))), reverseBits(u_input.b), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(49161u, u_input.b.x, 4294967295u, var_0.a), u_input.b, u_input.b), u_input.b, true & global3.d)), countOneBits(vec4<u32>(4294967295u, select(115960u, global3.a, true), var_0.a, arg_2.a)));
    return StorageBuffer(_wgslsmith_div_i32(firstLeadingBit(firstTrailingBit(-44034i)), _wgslsmith_add_i32(-4297i, -arg_1.x)), _wgslsmith_f_op_vec2_f32(var_1.b.xy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.b.yz, vec2<f32>(-623f, 1218f))))), select(firstLeadingBit(_wgslsmith_div_vec3_i32(~arg_2.e.a, vec3<i32>(u_input.d, global3.e.a.x, -2605i))), -arg_1 ^ reverseBits(min(vec3<i32>(-2147483647i, arg_1.x, var_0.e.a.x), vec3<i32>(var_1.c, arg_0.a.x, 2147483647i))), !(!select(vec3<bool>(false, true, var_0.d), vec3<bool>(var_0.d, false, false), vec3<bool>(false, false, true)))), 63570u, _wgslsmith_f_op_vec2_f32(var_1.b.yz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, var_1.a.x) + _wgslsmith_f_op_vec2_f32(-var_1.a.xx)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(u_input.b.x >> (_wgslsmith_add_u32((global3.a << (33658u % 32u)) & 37564u, global3.a) % 32u), u_input.b.x);
    let x = u_input.a;
    s_output = func_4(Struct_1(global3.e.a, !func_1(), false), firstLeadingBit(global3.e.a), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(var_0, global3.a)), 21u)]);
}

