struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: array<vec4<u32>, 10>;

var<private> global2: Struct_1 = Struct_1(5017u, 49911u, vec4<bool>(true, false, true, false), vec2<bool>(true, true), 11010u);

var<private> global3: bool;

var<private> global4: array<vec3<u32>, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec4<u32> {
    var var_0 = ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(886i, 18218i, 2147483647i), vec3<i32>(-24421i, 0i, 1i)) ^ vec3<i32>(select(-1i, -2147483647i, global2.c.x), -1i, _wgslsmith_add_i32(-22910i, 0i))) | ~vec3<i32>(1i, 1i, 1i);
    return _wgslsmith_sub_vec4_u32((global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(53451u, global2.e), 10u)] | ~(~vec4<u32>(u_input.a.x, global2.e, u_input.a.x, u_input.a.x))) >> (global1[_wgslsmith_index_u32(1u, 10u)] % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(min(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global2.a, 3174u, 0u), vec4<u32>(45864u, arg_0, 46011u, global2.e))), select(reverseBits(global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec4<u32>(arg_0, 26209u, u_input.a.x, arg_0), select(vec4<bool>(true, global2.c.x, false, false), global2.c, vec4<bool>(true, global2.d.x, global2.d.x, global2.d.x)))), _wgslsmith_mod_vec4_u32(~global1[_wgslsmith_index_u32(arg_0, 10u)], vec4<u32>(1u, ~global2.a, ~arg_0, firstLeadingBit(6722u)))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = true;
    let var_1 = arg_1;
    var var_2 = max(~_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(14926u, 10u)], vec4<u32>(4294967295u, firstLeadingBit(1u), ~4294967295u, firstLeadingBit(4294967295u)), func_3(global2.e)), global1[_wgslsmith_index_u32(4294967295u, 10u)]);
    var var_3 = -vec2<i32>(_wgslsmith_div_i32(-_wgslsmith_mult_i32(15765i, -44798i), ~(-1i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(14752i, -19015i, -39696i, 0i), vec4<i32>(1i, -1i, 0i, 1i))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(min(vec3<i32>(6299i, 28918i, 1i), vec3<i32>(0i, 9620i, -6984i)), vec3<i32>(1i, 1i, 1i)), ~vec3<i32>(1i, -13778i, 2147483647i)));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(210f - -2097f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -265f) * -950f)), _wgslsmith_f_op_f32(f32(-1f) * -1183f), -1000f) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1059f, 1416f), -170f, false))), _wgslsmith_div_f32(-1347f, -1271f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-787f, 233f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-448f + 282f)))))));
    return var_4.x;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec3<bool>) -> vec4<f32> {
    global4 = array<vec3<u32>, 26>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1348f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(~global2.b, Struct_1(u_input.a.x, u_input.a.x, global2.c, arg_3.xy, 63718u))), _wgslsmith_div_f32(1972f, _wgslsmith_f_op_f32(trunc(-1106f)))))));
    var var_1 = ~(~(~_wgslsmith_div_u32(func_3(0u).x, u_input.a.x)));
    let var_2 = vec2<u32>(~global2.b, global2.a);
    var var_3 = ~(~countOneBits(global2.b) ^ 4294967295u);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2068f - -453f)))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-644f + _wgslsmith_f_op_f32(arg_0 + arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, arg_0, global2.c.x)))), _wgslsmith_f_op_f32(-1f))), 154f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(430f, 358f), _wgslsmith_div_f32(-597f, 1764f), -1128f, 1000f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1043f, -926f, -1616f, -1367f), vec4<f32>(-1217f, 257f, 1000f, 1325f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1382f, -139f, 240f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(214f, 1259f, 645f, 719f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(-3869f, 494f, vec4<bool>(global2.d.x, true, true, global2.d.x), vec3<bool>(global2.c.x, global2.c.x, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 340f, -180f, -417f) - vec4<f32>(-744f, -690f, 1119f, 812f)))))));
    let var_1 = Struct_1((_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(global2.a, 10u)], global1[_wgslsmith_index_u32(0u, 10u)]) << (~u_input.a.x % 32u)) << (~0u % 32u), ~1u, select(vec4<bool>(all(global2.c.wy), _wgslsmith_f_op_f32(f32(-1f) * -949f) < _wgslsmith_f_op_f32(var_0.x - -1036f), !(global2.d.x & global2.d.x), global2.d.x), select(vec4<bool>(global2.d.x, true, global2.c.x, !global2.c.x), select(global2.c, select(vec4<bool>(false, global2.d.x, true, global2.d.x), vec4<bool>(false, global2.d.x, true, global2.d.x), global2.d.x), global2.c), global2.d.x), !(!any(vec4<bool>(false, global2.c.x, false, global2.d.x)))), vec2<bool>(!global2.d.x, any(select(global2.c.xz, vec2<bool>(true, false), global2.d.x)) & !(var_0.x < var_0.x)), ~global2.b);
    let var_2 = !vec4<bool>(global2.c.x, !(-38834i <= _wgslsmith_dot_vec2_i32(vec2<i32>(-12115i, -1i), vec2<i32>(48845i, 37031i))), true, false);
    let var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, firstLeadingBit(abs(var_1.e) | global2.a), 50533u), global4[_wgslsmith_index_u32(4294967295u, 26u)]);
    global2 = global0[_wgslsmith_index_u32(40357u << (_wgslsmith_div_u32(min(80450u, 4294967295u), var_1.e) % 32u), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(174f);
}

