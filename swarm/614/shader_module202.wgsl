struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false), vec4<u32>(34323u, 38524u, 0u, 16734u), vec4<bool>(true, true, true, true));

var<private> global1: Struct_3;

var<private> global2: u32 = 0u;

var<private> global3: array<i32, 27>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec2<i32> {
    return arg_0.d.xz;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> bool {
    global0 = Struct_1(vec2<bool>(false && all(select(vec2<bool>(global0.c.x, false), global0.a, global0.a.x)), true), _wgslsmith_add_vec4_u32(select(vec4<u32>(countOneBits(u_input.a), global0.b.x, _wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a), ~abs(vec4<u32>(0u, 4662u, global0.b.x, u_input.a)), !(!vec4<bool>(false, false, false, global0.c.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(global1.a.b, vec4<u32>(global1.a.b.x, 29018u, 4294967295u, u_input.a)), _wgslsmith_mult_vec4_u32(global1.a.b, global1.a.b)), global1.a.b ^ global1.a.b, vec4<u32>(1u, 5755u, 1u, global1.b >> (u_input.a % 32u)))), !vec4<bool>(true, global0.a.x, false, true));
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1842f) - 227f), _wgslsmith_f_op_f32(487f * 1068f), 1172f), vec3<f32>(_wgslsmith_f_op_f32(-1f), 240f, 1858f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(arg_0, -700f, arg_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))))))));
    var var_1 = Struct_3(Struct_1(!arg_1.a, ~(~(~global1.a.b)), !vec4<bool>(false, global1.a.a.x, arg_1.a.x, true)), ~((4294967295u >> (global0.b.x % 32u)) | ~22307u) << (_wgslsmith_mod_u32(79895u, _wgslsmith_mult_u32(abs(1u), 1u)) % 32u));
    var_1 = Struct_3(Struct_1(vec2<bool>(true, arg_1.a.x), global1.a.b, global1.a.c), ~u_input.a);
    var var_2 = select(global0.c.zyz, select(vec3<bool>(all(arg_1.a), false, true), !global1.a.c.zyz, global1.a.c.ywy), true);
    return true;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> bool {
    var var_0 = func_4(-1467f, Struct_2(global1.a.a, _wgslsmith_mult_u32(4294967295u, global1.a.b.x) >= (arg_1.x & 39999u), false, vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(115639u, 27u)], -10094i, global3[_wgslsmith_index_u32(20055u, 27u)]), vec3<i32>(global3[_wgslsmith_index_u32(370u, 27u)], global3[_wgslsmith_index_u32(87633u, 27u)], global3[_wgslsmith_index_u32(global0.b.x, 27u)])), vec3<i32>(global3[_wgslsmith_index_u32(50432u, 27u)], 0i, 0i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(global3[_wgslsmith_index_u32(22751u, 27u)], global3[_wgslsmith_index_u32(31491u, 27u)]), ~vec2<i32>(-1i, global3[_wgslsmith_index_u32(arg_1.x, 27u)])), ~13985i, global3[_wgslsmith_index_u32(abs(~global1.b), 27u)]), reverseBits(_wgslsmith_mod_vec2_i32(~vec2<i32>(25738i, 28255i), func_3(Struct_2(global0.c.zx, global0.a.x, arg_0, vec4<i32>(10124i, 47249i, global3[_wgslsmith_index_u32(arg_1.x, 27u)], -11621i), vec2<i32>(global3[_wgslsmith_index_u32(arg_1.x, 27u)], 48712i)), global0.b.x)))));
    let var_1 = !(!select(select(select(global0.a, global1.a.c.xz, arg_0), vec2<bool>(false, true), select(global1.a.c.yw, global0.a, vec2<bool>(true, false))), global1.a.a, true));
    global2 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(abs(vec4<u32>(global0.b.x, global1.b, 32430u, global0.b.x))), vec4<u32>(~13793u, 22405u, u_input.a, 1u)), ~(~global0.b)), _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(global1.a.b, global1.a.b), global1.a.b));
    let var_2 = Struct_1(select(vec2<bool>(false, any(var_1)), !vec2<bool>(var_1.x, global1.a.c.x), !var_1.x), _wgslsmith_add_vec4_u32(~global0.b, vec4<u32>(min(~1u, ~global1.a.b.x), ~arg_1.x, countOneBits(1u), abs(countOneBits(arg_1.x)))), vec4<bool>(global0.c.x, (u_input.a < ~1u) | var_1.x, false, global1.a.a.x));
    var var_3 = vec4<i32>(firstTrailingBit(global3[_wgslsmith_index_u32(32592u, 27u)]), _wgslsmith_div_i32(2147483647i, ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, u_input.a), vec2<u32>(global0.b.x, global0.b.x)), 27u)] & global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global1.a.b.zxw, vec3<u32>(26860u, 1u, 1u)), ~var_2.b.yzy), 27u)]), _wgslsmith_sub_i32(countOneBits(1i), firstTrailingBit(global3[_wgslsmith_index_u32(1u, 27u)])), abs(firstTrailingBit(countOneBits(global3[_wgslsmith_index_u32(global1.a.b.x, 27u)]))));
    return any(global1.a.c);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1441f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) + _wgslsmith_f_op_f32(-2425f * _wgslsmith_f_op_f32(-1000f - -428f))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-272f)), _wgslsmith_f_op_f32(abs(-444f))))) + _wgslsmith_div_f32(-1405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(299f + -122f) - _wgslsmith_f_op_f32(-1195f + -853f)))), _wgslsmith_f_op_f32(-265f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1719f)))));
    var var_2 = min(firstLeadingBit(global3[_wgslsmith_index_u32(abs(4294967295u) | select(global1.b, u_input.a, true), 27u)]), arg_0.d.x);
    let var_3 = arg_2;
    var var_4 = arg_0;
    return Struct_3(global1.a, u_input.a);
}

fn func_1(arg_0: vec2<f32>) -> vec2<f32> {
    var var_0 = Struct_1(select(global1.a.c.wx, global0.a, global0.c.x), ~vec4<u32>(0u, ~(~global0.b.x), max(global0.b.x, ~u_input.a), ~min(global0.b.x, 40024u)), !global1.a.c);
    let var_1 = func_5(Struct_2(!select(vec2<bool>(global1.a.a.x, true), select(global1.a.c.xz, global1.a.c.ww, global1.a.a), true), func_2(arg_0.x <= _wgslsmith_f_op_f32(arg_0.x + arg_0.x), vec2<u32>(_wgslsmith_add_u32(1u, global0.b.x), 1u)), true, ~_wgslsmith_mult_vec4_i32(~vec4<i32>(global3[_wgslsmith_index_u32(17274u, 27u)], global3[_wgslsmith_index_u32(var_0.b.x, 27u)], -1i, -2147483647i), abs(vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.a, 27u)], global3[_wgslsmith_index_u32(var_0.b.x, 27u)], 0i))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(-7020i, global3[_wgslsmith_index_u32(u_input.a, 27u)]), vec2<i32>(30045i, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(global0.b.x, 27u)], global3[_wgslsmith_index_u32(59487u, 27u)])), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(global3[_wgslsmith_index_u32(global0.b.x, 27u)], global3[_wgslsmith_index_u32(0u, 27u)])), max(vec2<i32>(global3[_wgslsmith_index_u32(global1.a.b.x, 27u)], 0i), vec2<i32>(-1i, 32250i))))), true, Struct_3(Struct_1(var_0.c.ww, vec4<u32>(0u >> (global0.b.x % 32u), u_input.a, global0.b.x, 64570u), global0.c), _wgslsmith_div_u32(~(u_input.a ^ var_0.b.x), 4294967295u)));
    let var_2 = ~global0.b.x;
    var var_3 = var_1;
    var var_4 = true;
    return vec2<f32>(arg_0.x, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(28200u);
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1246f, 1000f))) * vec2<f32>(-650f, 915f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1665f))))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(419f, -872f)))))))));
    global1 = Struct_3(func_5(Struct_2(select(global0.c.xx, select(vec2<bool>(global1.a.c.x, global1.a.c.x), vec2<bool>(global0.c.x, global0.a.x), vec2<bool>(true, global1.a.a.x)), vec2<bool>(true, false)), global0.a.x, all(global0.c), vec4<i32>(global3[_wgslsmith_index_u32(54558u, 27u)], -72078i, global3[_wgslsmith_index_u32(global1.a.b.x, 27u)], -18053i) << (firstLeadingBit(vec4<u32>(global1.b, 0u, 51165u, global0.b.x)) % vec4<u32>(32u)), ~_wgslsmith_div_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(47256u, 27u)], 2147483647i), vec2<i32>(0i, 0i))), true, func_5(Struct_2(vec2<bool>(false, global1.a.a.x), func_5(Struct_2(global1.a.c.zz, false, false, vec4<i32>(6859i, global3[_wgslsmith_index_u32(u_input.a, 27u)], global3[_wgslsmith_index_u32(global0.b.x, 27u)], global3[_wgslsmith_index_u32(1u, 27u)]), vec2<i32>(5249i, 34274i)), global0.a.x, Struct_3(Struct_1(global0.a, vec4<u32>(var_0, 29867u, global1.a.b.x, global0.b.x), vec4<bool>(global1.a.c.x, global0.c.x, true, global1.a.c.x)), global1.b)).a.c.x, all(vec2<bool>(global1.a.c.x, false)), vec4<i32>(global3[_wgslsmith_index_u32(global0.b.x, 27u)], -41252i, 0i, global3[_wgslsmith_index_u32(50765u, 27u)]) << (vec4<u32>(u_input.a, u_input.a, var_0, u_input.a) % vec4<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(30190i, -42069i))), global1.a.a.x, Struct_3(func_5(Struct_2(vec2<bool>(global0.a.x, global0.a.x), false, global1.a.a.x, vec4<i32>(-2147483647i, 0i, global3[_wgslsmith_index_u32(61831u, 27u)], -2147483647i), vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(66672u, 27u)])), global0.a.x, Struct_3(Struct_1(global1.a.a, vec4<u32>(global1.a.b.x, 1u, u_input.a, 8707u), global0.c), 4294967295u)).a, ~18166u))).a, reverseBits(_wgslsmith_add_u32(~global1.b, ~global1.a.b.x) << (~(var_0 << (18714u % 32u)) % 32u)));
    var var_2 = select(vec3<bool>(true, false, true), func_5(Struct_2(func_5(Struct_2(global1.a.c.xx, global0.c.x, false, vec4<i32>(global3[_wgslsmith_index_u32(1u, 27u)], -1i, 0i, 0i), vec2<i32>(-8977i, global3[_wgslsmith_index_u32(global1.a.b.x, 27u)])), !global1.a.a.x, Struct_3(global1.a, global0.b.x)).a.c.zz, -2147483647i == abs(global3[_wgslsmith_index_u32(21539u, 27u)]), !global0.a.x | (true | global1.a.a.x), vec4<i32>(-2147483647i >> (0u % 32u), ~global3[_wgslsmith_index_u32(global0.b.x, 27u)], firstTrailingBit(42245i), _wgslsmith_add_i32(1i, -48778i)), _wgslsmith_add_vec2_i32(vec2<i32>(-25102i, -41122i), ~vec2<i32>(global3[_wgslsmith_index_u32(19363u, 27u)], 0i))), global0.a.x, Struct_3(func_5(Struct_2(global1.a.c.zx, false, global1.a.a.x, vec4<i32>(global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(u_input.a, 27u)], 32942i, global3[_wgslsmith_index_u32(u_input.a, 27u)]), vec2<i32>(12620i, -8853i)), !global0.a.x, Struct_3(Struct_1(vec2<bool>(false, false), global1.a.b, vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false)), 1u)).a, 0u)).a.c.xyy, !vec3<bool>(func_2(false, abs(global1.a.b.yx)), global1.a.c.x, true));
    global2 = 76811u;
    let var_3 = true & var_2.x;
    var var_4 = Struct_2(!select(!vec2<bool>(false, global0.c.x), vec2<bool>(global0.c.x, true), !vec2<bool>(true, var_2.x)), ~(~_wgslsmith_sub_u32(var_0, 0u)) < 1u, !(true || ((var_2.x & var_3) || false)), vec4<i32>(_wgslsmith_mod_i32(-_wgslsmith_add_i32(global3[_wgslsmith_index_u32(0u, 27u)], -48139i), ~52609i), -_wgslsmith_clamp_i32(-1i, global3[_wgslsmith_index_u32(24895u, 27u)] << (12712u % 32u), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0.b.wyy, global1.a.b.zww), 27u)]), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0, 5694u) | ~firstLeadingBit(1u), 27u)], -_wgslsmith_sub_i32(-10836i, -global3[_wgslsmith_index_u32(var_0, 27u)])), vec2<i32>(2147483647i, -firstTrailingBit(-11123i) ^ -23668i));
    var_2 = global0.c.wwz;
    global3 = array<i32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(13479i, ~2317i, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_5(Struct_2(vec2<bool>(global0.c.x, false), global1.a.a.x, global0.c.x, vec4<i32>(var_4.e.x, 32292i, global3[_wgslsmith_index_u32(global0.b.x, 27u)], global3[_wgslsmith_index_u32(global1.b, 27u)]), var_4.e), false, Struct_3(Struct_1(var_2.zy, global1.a.b, vec4<bool>(var_2.x, global0.c.x, true, var_4.c)), 16718u)).a.b.x, max(18956u, var_0)), 27u)]), vec3<i32>(17799i, _wgslsmith_div_i32(_wgslsmith_mod_i32(var_4.e.x, -2147483647i), var_4.e.x), global3[_wgslsmith_index_u32(~u_input.a | global1.b, 27u)])), -(~(global3[_wgslsmith_index_u32(var_0, 27u)] >> (109519u % 32u)) << (firstTrailingBit(global0.b.x) % 32u)));
}

