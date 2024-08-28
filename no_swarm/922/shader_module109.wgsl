struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(true, true), 48447u);

var<private> global1: vec2<u32> = vec2<u32>(10475u, 5371u);

var<private> global2: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(-1i, 2147483647i, -48933i, i32(-2147483648)), vec4<i32>(-36856i, -16601i, 14882i, 39202i), vec4<i32>(2147483647i, 19678i, -9991i, 31963i), vec4<i32>(1i, 48878i, 67641i, -54229i), vec4<i32>(39153i, -19976i, -34471i, -45484i), vec4<i32>(i32(-2147483648), 0i, -32323i, 1i), vec4<i32>(1i, 394i, -45405i, 49281i), vec4<i32>(0i, -1i, -20657i, 1i), vec4<i32>(0i, -1i, 0i, -1i), vec4<i32>(11960i, 1i, -25810i, -34145i), vec4<i32>(1i, -1i, 0i, 0i), vec4<i32>(-58389i, 10383i, 7100i, 2147483647i), vec4<i32>(0i, -1564i, -28111i, 77395i), vec4<i32>(-31139i, 2147483647i, 2147483647i, 1i), vec4<i32>(0i, 1i, 43068i, 0i));

var<private> global3: vec4<bool>;

var<private> global4: array<vec3<f32>, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> vec4<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(265f * arg_0)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(global0.b, global0.b), vec2<u32>(global0.b, 4294967295u)), reverseBits(vec2<u32>(16878u, 69821u))), _wgslsmith_add_u32(1u, _wgslsmith_add_u32(global1.x, 4294967295u)), global1.x, global0.b), Struct_3(vec2<bool>(global3.x, !(false || global0.a.x)), firstTrailingBit(31379u)));
    global3 = select(select(select(!vec4<bool>(global0.a.x, var_0.c.a.x, false, global3.x), vec4<bool>(true, !global3.x, true, true), select(select(vec4<bool>(false, false, false, global3.x), vec4<bool>(var_0.c.a.x, true, false, false), global0.a.x), !vec4<bool>(global0.a.x, global0.a.x, var_0.c.a.x, false), vec4<bool>(var_0.c.a.x, false, false, var_0.c.a.x))), !select(select(vec4<bool>(global0.a.x, var_0.c.a.x, var_0.c.a.x, false), vec4<bool>(true, var_0.c.a.x, var_0.c.a.x, global3.x), vec4<bool>(global0.a.x, false, global0.a.x, true)), vec4<bool>(false, global3.x, true, global0.a.x), !vec4<bool>(global0.a.x, var_0.c.a.x, global0.a.x, false)), vec4<bool>(true, global0.a.x, false, !any(global3.zyz))), vec4<bool>(select(all(global3.yzz), false, global3.x && all(vec4<bool>(global0.a.x, false, var_0.c.a.x, global3.x))), true, true, global0.a.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~var_0.b, select(var_0.b, vec4<u32>(global0.b, 75223u, u_input.b, 92133u), vec4<bool>(var_0.c.a.x, true, false, true))), global0.b) < ~(~(~113177u)));
    var var_1 = _wgslsmith_f_op_f32(var_0.a + 1209f);
    var var_2 = Struct_3(vec2<bool>(all(!vec4<bool>(global0.a.x, var_0.c.a.x, false, false)), any(vec3<bool>(!global3.x, global3.x, true & global3.x))), 9198u);
    let var_3 = -698f;
    return !vec4<bool>(select(var_2.a.x, true, false), true | select(select(global0.a.x, var_2.a.x, global0.a.x), !var_2.a.x, all(global3.xzx)), !all(!vec4<bool>(true, false, false, global3.x)), true);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_4 {
    global4 = array<vec3<f32>, 5>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(161f, _wgslsmith_f_op_f32(ceil(-2154f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1067f)) + _wgslsmith_f_op_f32(select(106f, 2149f, global3.x)))))));
    let var_1 = func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-246f - 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -977f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1026f, 1000f, 439f, -721f) + vec4<f32>(235f, -1804f, 494f, 1455f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-866f, -2297f, -839f, 335f)))))));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 188f))), _wgslsmith_f_op_f32(min(-1194f, _wgslsmith_f_op_f32(ceil(1000f))))))));
    var var_2 = all(vec3<bool>(global3.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, -11798i), u_input.c) == (-arg_1 | (u_input.c >> (0u % 32u))), global3.x));
    return Struct_4(_wgslsmith_f_op_f32(trunc(-446f)), vec4<u32>(_wgslsmith_add_u32(84346u << (global1.x % 32u), ~u_input.a), abs(_wgslsmith_mult_u32(4294967295u, global1.x)), min(~0u, ~0u), global0.b) | countOneBits(arg_0), Struct_3(var_1.xx, 4294967295u));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global0.b, countOneBits(57886u), ~4294967295u), vec4<u32>(global1.x, abs(u_input.b), 60381u, 1u)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 35106i, ~u_input.c), vec3<i32>(abs(u_input.c), _wgslsmith_mult_i32(2147483647i, u_input.c), u_input.c)));
    let var_1 = firstLeadingBit(-(vec3<i32>(-1i, -14653i, u_input.c) ^ countOneBits(vec3<i32>(u_input.c, 2147483647i, u_input.c))) << (vec3<u32>(var_0.b.x, 1u, _wgslsmith_mult_u32(~1u, global1.x)) % vec3<u32>(32u)));
    return Struct_3(func_2(vec4<u32>(4294967295u, 14654u, _wgslsmith_mod_u32(u_input.a, global0.b), 55079u), u_input.c).c.a, ~(~reverseBits(5913u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = -u_input.c;
    let var_1 = func_2(vec4<u32>(func_2(firstTrailingBit(vec4<u32>(0u, arg_0.b, 0u, 1u)), _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(global0.b, 15u)], vec4<i32>(25136i, 10104i, u_input.c, u_input.c))).c.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 4294967295u, global0.b, 58898u), vec4<u32>(arg_2.b, u_input.a, global1.x, u_input.b)), ~43763u ^ global0.b, arg_2.b) & func_2(firstTrailingBit(~vec4<u32>(21456u, arg_2.b, global0.b, arg_1.x)), -2147483647i).b, u_input.c).c;
    var var_2 = var_1;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(631f)), 1463f, -1681f, _wgslsmith_f_op_f32(426f + -191f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2381f, -1706f, -1569f, 463f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(arg_0.b, 5u)])), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.b, 4294967295u), ~arg_2.b, 1u), 5u)])));
    let var_4 = var_2.a.x & !arg_0.a.x;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-select(vec4<i32>(u_input.c, u_input.c, 2147483647i, 2147483647i), vec4<i32>(u_input.c, -1i, -1i, u_input.c), !global3.x)) | ~(global2[_wgslsmith_index_u32(u_input.a, 15u)] | ~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c));
    let var_1 = vec2<i32>(var_0.x, ~u_input.c);
    global0 = Struct_3(func_4(func_1(), abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.b, 52999u), vec2<u32>(15730u, u_input.a))), func_2(abs(vec4<u32>(4294967295u, global0.b, global0.b, 49803u)), var_1.x).c), abs(global0.b));
    global4 = array<vec3<f32>, 5>();
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 4294967295u), abs(~(~abs(vec4<u32>(8739u, global1.x, global0.b, 0u)))));
    global3 = func_3(_wgslsmith_f_op_f32(func_2(abs(var_2), _wgslsmith_clamp_i32(13109i, var_1.x, u_input.c) & u_input.c).a - -1000f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(502f, -1186f, -1000f, -1554f) * vec4<f32>(-819f, -2005f, 923f, -780f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(822f, -689f, -1109f, -1000f), vec4<f32>(-515f, -1116f, -1000f, 1000f)))) * vec4<f32>(795f, -1318f, -1849f, -192f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1931f, -142f)), vec2<f32>(390f, -842f), func_1().a)) * vec2<f32>(1f, -1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-396f - 1000f), _wgslsmith_f_op_f32(select(1329f, -1231f, false))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1449f, 1227f)))))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(29998u, _wgslsmith_div_u32(u_input.b, 66101u), _wgslsmith_add_u32(89283u, global1.x)), _wgslsmith_sub_u32(func_1().b, 1u), u_input.b, _wgslsmith_clamp_u32(~u_input.b, u_input.b, 7971u >> (var_2.x % 32u))), vec4<u32>(var_2.x, (global1.x >> (global0.b % 32u)) << (abs(26747u) % 32u), firstLeadingBit(1u), max(58365u, 1u) | (u_input.a & u_input.b)), ~(~(~var_2))));
}

