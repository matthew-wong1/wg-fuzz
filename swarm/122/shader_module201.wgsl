struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<i32, 9> = array<i32, 9>(-26387i, 0i, -65648i, -30318i, 25338i, 2147483647i, 25044i, 1i, 0i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> f32 {
    global0 = array<Struct_1, 8>();
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 9u)];
    let var_1 = true;
    let var_2 = 8383i;
    global0 = array<Struct_1, 8>();
    return -918f;
}

fn func_2() -> vec3<u32> {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -878f) * -1000f), -14546i, global0[_wgslsmith_index_u32(~32739u, 8u)])) <= _wgslsmith_f_op_f32(f32(-1f) * -468f), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1246f - _wgslsmith_f_op_f32(f32(-1f) * -1854f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(687f)) + 1360f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1432f)) - _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(abs(-772f))))), true);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1521f, _wgslsmith_f_op_f32(sign(1000f))))), ~_wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], -2147483647i, -41244i), u_input.c.wwx), -u_input.c.x, _wgslsmith_div_i32(-2147483647i, -20264i)), -u_input.c), u_input.c.x, vec2<bool>(true, var_0.x), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.b.wx), vec2<u32>(4294967295u, u_input.b.x)), 8u)], Struct_1(0u), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(18972u, 1u), u_input.b.x), u_input.b.ww & vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(firstTrailingBit(~u_input.a)), _wgslsmith_div_i32(1i, u_input.c.x) ^ max(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(110566u, 9u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], 1i)))));
    global1 = array<i32, 9>();
    let var_2 = 0u ^ u_input.b.x;
    global0 = array<Struct_1, 8>();
    return vec3<u32>(~(~_wgslsmith_sub_u32(u_input.a, 25317u)), var_2, _wgslsmith_add_u32(~1u, _wgslsmith_add_u32(var_1.e.d.a, min(_wgslsmith_clamp_u32(81648u, 1u, var_1.e.d.a), 14723u))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    global1 = array<i32, 9>();
    global0 = array<Struct_1, 8>();
    var var_0 = global0[_wgslsmith_index_u32(~(~arg_1.x), 8u)];
    var var_1 = u_input.c.ww >> (vec2<u32>(1u, arg_1.x) % vec2<u32>(32u));
    var var_2 = (~u_input.b.xww >> (abs(func_2()) % vec3<u32>(32u))) | u_input.b.wyz;
    return func_2().x;
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1380f, -1612f))))))), u_input.c, 0i << (max(8789u >> (min(93222u, 1u) % 32u), min(~arg_1, 0u)) % 32u), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), Struct_2(Struct_1(~u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mult_u32(u_input.a, 0u), 44229u & _wgslsmith_div_u32(38632u, u_input.b.x)), 8u)], u_input.b.xx, Struct_1(u_input.b.x), ~(-firstTrailingBit(0i))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(abs(-1585f)), _wgslsmith_dot_vec2_i32(var_0.b.ww, u_input.c.wy), Struct_1(u_input.b.x))), _wgslsmith_f_op_f32(abs(var_0.a.x))) - _wgslsmith_f_op_vec2_f32(-var_0.a)), u_input.c, global1[_wgslsmith_index_u32(~(~u_input.a & var_0.e.a.a), 9u)], !select(var_0.d, vec2<bool>(true, select(var_0.d.x, var_0.d.x, true)), vec2<bool>(true, true)), Struct_2(var_0.e.b, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(35403u, 27051u), ~vec2<u32>(1u, 0u))), reverseBits(select(vec2<u32>(4294967295u, 1u) | vec2<u32>(u_input.b.x, 12027u), vec2<u32>(u_input.a, arg_1), var_0.d.x)), Struct_1(var_0.e.a.a), ~global1[_wgslsmith_index_u32(arg_1, 9u)]));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(913f, -327f) - vec2<f32>(287f, var_0.a.x)) - _wgslsmith_f_op_vec2_f32(var_0.a - _wgslsmith_f_op_vec2_f32(var_0.a - var_1.a))) + vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.x - -838f))), 198f)), -var_0.b, global1[_wgslsmith_index_u32(0u, 9u)], vec2<bool>(any(select(!vec3<bool>(false, var_1.d.x, var_0.d.x), vec3<bool>(true, var_0.d.x, var_1.d.x), !var_0.d.x)), !all(vec4<bool>(true, false, var_0.d.x, var_1.d.x))), var_0.e);
    var var_2 = Struct_2(Struct_1(u_input.b.x ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1, u_input.b.x, 28735u), u_input.b)), Struct_1(7689u), vec2<u32>(select(var_0.e.b.a, ~1u, !(var_0.b.x >= global1[_wgslsmith_index_u32(arg_1, 9u)])), ~var_0.e.c.x), var_0.e.d, countOneBits(2147483647i));
    var var_3 = ~min(u_input.b, select(vec4<u32>(u_input.a >> (12740u % 32u), 1u, ~0u, u_input.a >> (12439u % 32u)), u_input.b, select(vec4<bool>(var_0.d.x, true, true, var_1.d.x), !vec4<bool>(var_1.d.x, true, false, var_1.d.x), false)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1166f, -160f))) - vec2<f32>(arg_0, var_0.a.x)) * vec2<f32>(-1028f, -1217f)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1271f + var_0.a.x), _wgslsmith_f_op_f32(var_1.a.x + 876f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.a.x))))))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-35597i, 1i), i32(-1i) * -2147483647i, -u_input.c.x, min(-48088i, -13880i)), abs(_wgslsmith_mod_vec4_i32(var_0.b, vec4<i32>(u_input.c.x, -1i, global1[_wgslsmith_index_u32(var_0.e.d.a, 9u)], u_input.c.x)))) ^ var_1.b, -var_1.b.x, !(!var_0.d), var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.yyy;
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -492f)), 1u ^ ~func_1(593f, u_input.b));
    var var_2 = func_4(var_1.a.x, ~99488u);
    var var_3 = 0u;
    var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), 37762u);
    let var_4 = Struct_1(_wgslsmith_sub_u32(var_2.e.c.x, 6695u));
    let var_5 = vec2<i32>(0i, ~_wgslsmith_mult_i32(_wgslsmith_div_i32(firstLeadingBit(0i), min(var_2.b.x, 0i)), 29348i));
    var var_6 = abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(select(var_1.e.c.x, _wgslsmith_div_u32(var_2.e.b.a, var_1.e.c.x), false || var_2.d.x), _wgslsmith_mult_u32(1u, 4294967295u)), 53366u));
    let var_7 = Struct_2(Struct_1(60776u), func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1520f)))))), 73523u).e.b, _wgslsmith_sub_vec2_u32(vec2<u32>(~1u, abs(_wgslsmith_clamp_u32(0u, var_0.x, 0u))), ~(~(vec2<u32>(4054u, var_1.e.b.a) | vec2<u32>(9081u, var_2.e.b.a)))), Struct_1(0u), (i32(-1i) * -_wgslsmith_mult_i32(var_1.e.e, -1i)) << (var_0.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(1u, (~_wgslsmith_clamp_vec2_u32(u_input.b.xy, vec2<u32>(4294967295u, 60578u), vec2<u32>(1u, 58382u)) ^ ~min(var_2.e.c, vec2<u32>(var_2.e.a.a, 4294967295u))) & ~(vec2<u32>(40845u, 36974u) | var_2.e.c), u_input.a);
}

