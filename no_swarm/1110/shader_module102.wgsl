struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8>;

var<private> global1: Struct_5 = Struct_5(2214u, vec4<i32>(2147483647i, 1i, 11061i, i32(-2147483648)));

var<private> global2: array<vec2<u32>, 14>;

var<private> global3: array<Struct_2, 3>;

var<private> global4: vec2<f32> = vec2<f32>(131f, -142f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_3) -> u32 {
    let var_0 = arg_0.b;
    var var_1 = arg_2;
    var var_2 = min(u_input.b << (~(1u ^ arg_2.a) % 32u), 0i);
    let var_3 = _wgslsmith_f_op_f32(floor(arg_0.a));
    var var_4 = Struct_4(!arg_0.b, Struct_1(select(!vec2<bool>(arg_0.b, true), vec2<bool>(var_0, !arg_0.b), select(!vec2<bool>(true, arg_0.b), vec2<bool>(false, var_0), !var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x - global4.x) + -100f)), ~(~u_input.a), ~_wgslsmith_div_u32(~arg_2.a, firstLeadingBit(global1.a)), ~min(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a, 71120u, 8917u, global1.a), vec4<u32>(arg_2.a, 50583u, u_input.a.x, 31384u)), ~vec4<u32>(45567u, 0u, u_input.a.x, 46705u))));
    return abs(u_input.a.x);
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    global3 = array<Struct_2, 3>();
    var var_0 = Struct_5(~(~arg_0.b.e.x), ~max(vec4<i32>(global1.b.x, ~global1.b.x, u_input.e.x, ~82686i), vec4<i32>(_wgslsmith_add_i32(27120i, u_input.b), u_input.d, i32(-1i) * -12254i, u_input.b)));
    var var_1 = select(vec3<bool>(true, 1u >= (_wgslsmith_dot_vec3_u32(vec3<u32>(41582u, 21627u, 32975u), vec3<u32>(arg_0.b.e.x, 0u, 4294967295u)) << (u_input.a.x % 32u)), all(!vec3<bool>(arg_0.b.a.x, arg_0.a, arg_0.a))), select(!select(!vec3<bool>(true, true, arg_0.b.a.x), vec3<bool>(arg_0.a, false, false), true), vec3<bool>(-global1.b.x <= u_input.d, !arg_0.b.a.x, arg_0.a), all(vec3<bool>(u_input.a.x >= u_input.a.x, true, arg_0.b.b < -803f))), 53129i >= (_wgslsmith_add_i32(-21422i, 1i) | global1.b.x));
    global0 = array<Struct_4, 8>();
    var var_2 = _wgslsmith_div_i32(-1i << (var_0.a % 32u), max(var_0.b.x, -2147483647i ^ ~(~u_input.b)));
    return Struct_1(var_1.xy, 951f, vec2<u32>(var_0.a, ~(~countOneBits(arg_0.b.c.x))), func_3(global3[_wgslsmith_index_u32(9967u, 3u)], Struct_3(~vec2<i32>(2147483647i, var_0.b.x)), Struct_5(_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x), ~global1.b), Struct_3(u_input.e.yy)), min(reverseBits(vec4<u32>(1u, 40230u, 75305u, arg_0.b.c.x) & arg_0.b.e), ~countOneBits(max(vec4<u32>(4294967295u, 4294967295u, arg_0.b.e.x, 4294967295u), vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x)))));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.e;
    var var_1 = false;
    var var_2 = func_2(global0[_wgslsmith_index_u32(1u | _wgslsmith_sub_u32(~(~global1.a), _wgslsmith_mod_u32(min(u_input.a.x, 61936u), 63175u >> (global1.a % 32u))), 8u)]);
    var var_3 = var_2.e.yxw & vec3<u32>(~15387u, max(~global1.a & ~1u, ~(~1u)), 85913u);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1458f, 447f), vec2<f32>(104f, -1008f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, -166f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, -162f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(484f, var_2.b)), var_2.a))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global4.x, var_2.b), vec2<f32>(global4.x, -2725f))), vec2<f32>(_wgslsmith_f_op_f32(max(var_2.b, var_2.b)), -725f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-913f)), _wgslsmith_f_op_f32(abs(global4.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1525f * global4.x))));
    return func_2(global0[_wgslsmith_index_u32(1u, 8u)]);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_5 {
    global0 = array<Struct_4, 8>();
    var var_0 = ~(~func_1().e.x);
    var var_1 = firstTrailingBit(min(~arg_3.e.zxx, select(arg_3.e.yyy, arg_3.e.wzy, !(!vec3<bool>(true, arg_3.a.x, arg_3.a.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(129f + arg_3.b) * 523f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1333f, -1000f))), _wgslsmith_f_op_f32(global4.x - -1004f), 535f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, 1591f, -1000f, 2122f) + vec4<f32>(2161f, -179f, arg_3.b, global4.x)))), !vec4<bool>(false, true, 1127f > global4.x, true))));
    var_0 = 4294967295u;
    return Struct_5(reverseBits(0u), ~vec4<i32>(_wgslsmith_dot_vec4_i32(-global1.b, ~global1.b), ~(~9082i), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c, global1.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -267i, arg_0.x), global1.b.wzx)), _wgslsmith_clamp_i32(max(global1.b.x, global1.b.x), countOneBits(-2147483647i), _wgslsmith_div_i32(-18180i, global1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(vec2<i32>(~0i, -1i), vec2<u32>(~(~_wgslsmith_clamp_u32(1u, u_input.a.x, 0u)), max(u_input.a.x, _wgslsmith_add_u32(64216u, 1u >> (0u % 32u)))), false, func_1());
    var var_0 = global1.a;
    var_0 = func_3(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a, u_input.a.x, 1u), vec3<u32>(28459u, 4294967295u, global1.a), vec3<u32>(38553u, global1.a, 19143u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 44380u, 74719u), _wgslsmith_add_vec3_u32(vec3<u32>(global1.a, 4294967295u, global1.a), vec3<u32>(u_input.a.x, 63043u, u_input.a.x)))) | firstTrailingBit(global1.a), 3u)], Struct_3(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1.b.x, 1i), global1.b.yx), vec2<i32>(u_input.c, 55258i)) | global1.b.yy), Struct_5(func_2(global0[_wgslsmith_index_u32(~global1.a, 8u)]).e.x, ~func_4(_wgslsmith_div_vec2_i32(global1.b.wy, vec2<i32>(global1.b.x, 14184i)), global2[_wgslsmith_index_u32(select(66584u, global1.a, true), 14u)], true, func_1()).b), Struct_3(~countOneBits(global1.b.yz)));
    global4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + 2180f)), global4.x);
    let var_1 = global1.b.x;
    let var_2 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 84579u, u_input.a.x)), ~vec3<u32>(0u, 54698u, global1.a)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 78539u, 0u), vec3<u32>(global1.a, 31332u, global1.a)), max(_wgslsmith_sub_vec3_u32(vec3<u32>(1680u, 4294967295u, global1.a), vec3<u32>(global1.a, 0u, 1u)), vec3<u32>(46441u, 36635u, u_input.a.x)), all(func_1().a))), 8u)]).c.x;
    let var_3 = global3[_wgslsmith_index_u32(~1u, 3u)];
    var_0 = select(u_input.a.x, func_1().e.x << (func_3(global3[_wgslsmith_index_u32(4294967295u, 3u)], Struct_3(vec2<i32>(u_input.d, u_input.d)), Struct_5(~global1.a, abs(vec4<i32>(global1.b.x, 1i, global1.b.x, 2147483647i))), Struct_3(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.x, 2147483647i), u_input.e.yz))) % 32u), func_1().a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1080f, global4.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1720f, -262f))))), -1198f);
}

