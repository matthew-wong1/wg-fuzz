struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<bool>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

var<private> global1: bool = false;

var<private> global2: vec3<u32> = vec3<u32>(457u, 45273u, 1u);

var<private> global3: array<vec4<i32>, 11>;

var<private> global4: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(false, vec4<i32>(2190i, i32(-2147483648), -21843i, -17527i)), Struct_4(false, vec4<i32>(31854i, 11813i, 0i, 2147483647i)), Struct_4(true, vec4<i32>(0i, 278i, -28184i, -32983i)), Struct_4(true, vec4<i32>(31212i, 2147483647i, 2147483647i, -1095i)), Struct_4(true, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -1i)), Struct_4(false, vec4<i32>(1i, 2147483647i, 1i, 66690i)), Struct_4(false, vec4<i32>(6392i, -4995i, 4130i, 4635i)), Struct_4(false, vec4<i32>(-4589i, 1i, -1i, 38509i)), Struct_4(false, vec4<i32>(i32(-2147483648), -53228i, 35705i, 53303i)), Struct_4(true, vec4<i32>(-59082i, 8001i, 1i, 2147483647i)), Struct_4(true, vec4<i32>(15093i, 21321i, -3039i, -1i)), Struct_4(false, vec4<i32>(-11254i, 0i, -1i, 78971i)), Struct_4(true, vec4<i32>(0i, -39874i, -35922i, -19310i)), Struct_4(true, vec4<i32>(1i, 0i, 1i, 1i)), Struct_4(true, vec4<i32>(2368i, 1i, 2147483647i, 1i)), Struct_4(true, vec4<i32>(1i, -64036i, -1i, i32(-2147483648))), Struct_4(true, vec4<i32>(-1i, -1i, i32(-2147483648), i32(-2147483648))), Struct_4(false, vec4<i32>(-3387i, -20303i, 1i, -5137i)), Struct_4(true, vec4<i32>(1i, 28899i, i32(-2147483648), -1i)), Struct_4(false, vec4<i32>(23077i, i32(-2147483648), -36807i, -67899i)), Struct_4(false, vec4<i32>(0i, -504i, 0i, -12518i)), Struct_4(false, vec4<i32>(i32(-2147483648), 45400i, -43531i, -1i)), Struct_4(true, vec4<i32>(i32(-2147483648), -14461i, -40571i, 2147483647i)), Struct_4(false, vec4<i32>(25852i, 0i, 1i, -19258i)), Struct_4(false, vec4<i32>(27551i, 1i, -66099i, -30765i)), Struct_4(false, vec4<i32>(23072i, 1i, -23851i, -1986i)), Struct_4(true, vec4<i32>(41799i, -1i, -58926i, 1i)), Struct_4(false, vec4<i32>(i32(-2147483648), -27526i, 0i, 0i)), Struct_4(false, vec4<i32>(-35371i, 0i, 2147483647i, -39737i)), Struct_4(true, vec4<i32>(-1i, 47743i, -5153i, 14138i)), Struct_4(false, vec4<i32>(0i, 1i, 0i, 21379i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec3<bool> {
    let var_0 = ~(~select(_wgslsmith_sub_vec3_u32(select(vec3<u32>(46157u, global2.x, 45025u), vec3<u32>(global2.x, global2.x, 1u), vec3<bool>(true, true, false)), ~vec3<u32>(global2.x, 4294967295u, global2.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(27141u, 0u, global2.x), vec3<u32>(global2.x, 0u, 80683u), ~vec3<u32>(global2.x, 0u, 47382u)), select(true, true, any(vec4<bool>(true, true, true, false)))));
    let var_1 = vec3<bool>(false, true, true);
    let var_2 = ~_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a << (var_0.x % 32u), _wgslsmith_mod_i32(u_input.a, 2147483647i)), (~vec2<i32>(-25475i, -1i) | _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, u_input.a))) ^ -vec2<i32>(u_input.a, u_input.a));
    var var_3 = !select(var_1.xz, !select(var_1.zx, vec2<bool>(var_1.x, false), var_1.xy), var_1.x);
    global3 = array<vec4<i32>, 11>();
    return !var_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_2 {
    return Struct_2(arg_0);
}

fn func_1(arg_0: Struct_3) -> vec3<u32> {
    global3 = array<vec4<i32>, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(arg_0.b)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-162f - global0[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_f_op_f32(round(-1137f)), 1756f, -721f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0.b)))))));
    let var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(global2.yy, vec2<u32>(global2.x, global2.x)), 0u, ~global2.x ^ _wgslsmith_div_u32(7793u, global2.x)), abs(vec3<u32>(global2.x, 51890u, 11189u) >> (vec3<u32>(4294967295u, 0u, global2.x) % vec3<u32>(32u))) ^ ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(global2.x, global2.x, 1489u))), vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global2.x, global2.x, global2.x, 49917u)), ~vec4<u32>(7971u, 73223u, 0u, global2.x)), 32727u, select(1u, global2.x, true)) << (~vec3<u32>(1u, 12759u, global2.x) % vec3<u32>(32u)));
    let var_2 = select(vec4<u32>(1u, 31822u, 0u, firstLeadingBit(firstTrailingBit(firstTrailingBit(0u)))), vec4<u32>(global2.x, _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(firstTrailingBit(5496u), global2.x)), var_1.x, var_1.x), !(any(vec4<bool>(false, false, false, false)) || false));
    var var_3 = func_3(Struct_1(firstTrailingBit(_wgslsmith_sub_vec4_i32(global3[_wgslsmith_index_u32(20854u, 11u)], -vec4<i32>(u_input.a, u_input.a, -1i, 2147483647i))), u_input.a, !func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.x, var_1.x), 10u)]) + var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_0.b.wzy)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], var_0.x, arg_0.a.x) + vec3<f32>(1591f, arg_0.b.x, global0[_wgslsmith_index_u32(1u, 10u)]))))), arg_0.a, vec3<f32>(1f, -368f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - 1117f)))), _wgslsmith_f_op_vec2_f32(-arg_0.b.xy));
    return _wgslsmith_add_vec3_u32(~(~reverseBits(vec3<u32>(global2.x, var_1.x, 10604u))), var_1) & ~abs(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<u32>(global2.x, _wgslsmith_mod_u32(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(15435u, global2.x, global2.x), 72520u), global2.x), global2.x);
    global1 = true;
    global2 = _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u >> (global2.x % 32u), 4294967295u, _wgslsmith_mult_u32(global2.x, 66433u)) >> (~_wgslsmith_add_vec3_u32(~vec3<u32>(global2.x, 1u, global2.x), ~vec3<u32>(global2.x, global2.x, 9048u)) % vec3<u32>(32u)), ~func_1(Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(328f, 1350f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(20220u, 10u)], global0[_wgslsmith_index_u32(global2.x, 10u)], -1215f, global0[_wgslsmith_index_u32(global2.x, 10u)])))));
    global1 = !select(false, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.x, 4294967295u | global2.x), 10u)] == _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(countOneBits(global2.x), 10u)]), false);
    var var_0 = Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, (-1i & u_input.a) & u_input.a, u_input.a ^ u_input.a), _wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(~u_input.a, u_input.a & -1i)), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1204f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-204f, global0[_wgslsmith_index_u32(global2.x, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 10u)], 102f, global0[_wgslsmith_index_u32(44202u, 10u)]))))))));
    var var_1 = 1i;
    var var_2 = u_input.a ^ var_0.a.b;
    var_1 = var_0.a.b;
    global0 = array<f32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(var_0.a.a.zxz, var_0.a.a.zxy), abs(min(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, global2.x), vec3<u32>(global2.x, global2.x, 6948u))), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(1u, 1u, 75030u), global2.x))));
}

