struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(false, true, true, false), false, vec4<u32>(4294967295u, 0u, 1u, 16795u));

var<private> global2: array<Struct_2, 27>;

var<private> global3: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<i32> {
    global1 = Struct_2(select(global1.a, vec4<bool>(!global1.b != true, -1i <= _wgslsmith_sub_i32(u_input.a, u_input.a), any(vec3<bool>(false, global1.a.x, true)), !(u_input.a == u_input.a)), global1.b), global1.a.x, (abs(vec4<u32>(global1.c.x, global1.c.x, 17083u, global1.c.x)) >> (global1.c % vec4<u32>(32u))) ^ countOneBits(global1.c));
    let var_0 = select(-vec3<i32>(countOneBits(-28940i), u_input.a, _wgslsmith_div_i32(u_input.a, 0i)) >> (vec3<u32>(global1.c.x, ~firstTrailingBit(34118u), ~_wgslsmith_sub_u32(global1.c.x, global1.c.x)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(~u_input.a, 12126i), min(u_input.a, _wgslsmith_div_i32(u_input.a, 1i) | 2147483647i), -(~u_input.a)), any(!select(global1.a.xz, global1.a.wy, global1.a.xy)) || global1.a.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(804f, -395f, 1215f, 113f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, global3.x, global3.x, 1576f), vec4<f32>(global3.x, global3.x, global3.x, global3.x)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(390f, -1000f, 457f, global3.x))))))));
    let var_2 = select(select(vec4<bool>(true, true, any(global1.a) & global1.a.x, true), select(vec4<bool>(0u < global1.c.x, global1.a.x, global1.b, global1.c.x <= global1.c.x), !(!vec4<bool>(global1.b, true, false, global1.a.x)), global1.a), global1.a), !(!(!vec4<bool>(global1.a.x, false, false, true))), countOneBits(~62331u << (~global1.c.x % 32u)) <= reverseBits(global1.c.x));
    let var_3 = 54417u;
    return -max(var_0.yy, abs(firstTrailingBit(var_0.xz))) >> (global1.c.wy % vec2<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    let var_0 = Struct_1(func_3());
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-305f, 458f, 441f), vec3<f32>(global3.x, global3.x, global3.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(global3.x)), _wgslsmith_div_f32(global3.x, 260f), _wgslsmith_f_op_f32(global3.x * global3.x))) * vec3<f32>(global3.x, _wgslsmith_f_op_f32(max(-591f, global3.x)), -1355f)));
    var var_2 = _wgslsmith_add_vec4_i32((_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a, var_0.a.x, 21887i) & vec4<i32>(-28827i, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, 0i, 4266i, -1i)) & vec4<i32>(var_0.a.x, 1i, -32201i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), var_0.a))) | -vec4<i32>(u_input.a, min(-25182i, -2147483647i), countOneBits(var_0.a.x), ~var_0.a.x), vec4<i32>(u_input.a, countOneBits(var_0.a.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), var_0.a)), _wgslsmith_clamp_i32(max(~u_input.a, -2147483647i ^ u_input.a), 10162i, _wgslsmith_mult_i32(abs(-53199i), ~34477i))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1 * var_1), vec3<f32>(_wgslsmith_f_op_f32(-563f - _wgslsmith_f_op_f32(ceil(var_1.x))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x)))), !select(select(select(global1.a.zyz, global1.a.zwx, global1.a.wwx), !vec3<bool>(arg_0, false, true), global1.a.zwy), global1.a.zww, arg_1)));
    return 59354i;
}

fn func_4(arg_0: u32, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(global1.c.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, ~_wgslsmith_dot_vec4_u32(global1.c, vec4<u32>(1u, 1u, arg_0, 1u))), _wgslsmith_div_u32(arg_0, arg_0) | global1.c.x));
    let var_1 = global1.b;
    let var_2 = -1i;
    let var_3 = true;
    var var_4 = select(~vec2<u32>(abs(arg_0) << (abs(17993u) % 32u), ~(~global1.c.x)), global1.c.zz, !global1.a.xy);
    return Struct_1(vec2<i32>(var_2, _wgslsmith_add_i32(~u_input.a, ~var_2)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1017f);
    global1 = Struct_2(arg_0.d.a, global1.a.x, firstLeadingBit(vec4<u32>(select(arg_0.d.c.x, global1.c.x, global1.a.x) >> ((1u ^ arg_1.d.c.x) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.d.c.x, arg_0.d.c.x, arg_1.d.c.x, arg_1.d.c.x), global1.c), firstLeadingBit(~4294967295u), 64834u)));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1651f))), 284f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 - var_0), 1522f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(abs(global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))));
    var var_1 = vec2<bool>(arg_0.d.a.x && (~u_input.a > _wgslsmith_dot_vec3_i32(min(vec3<i32>(arg_1.e.a.x, 2147483647i, arg_1.e.a.x), arg_0.b.yzw), countOneBits(arg_1.b.xyw))), arg_0.d.a.x);
    global3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(trunc(-378f)), -377f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(986f, var_0, -1685f), vec3<f32>(-616f, -118f, var_0))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 531f, -1349f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-375f, var_0, -1125f) + vec3<f32>(global3.x, -1246f, -1299f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 2128f, global3.x)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(798f, 576f, global3.x), vec3<f32>(global3.x, var_0, 1246f))))))));
    return arg_1;
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = func_5(Struct_3(func_4(firstTrailingBit(_wgslsmith_dot_vec3_u32(global1.c.wyx, vec3<u32>(global1.c.x, global1.c.x, 47739u))), min(func_2(global1.a.x, false, vec3<u32>(global1.c.x, 1u, arg_0), 16136u), countOneBits(42628i))), vec4<i32>(u_input.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 1i, -7412i), vec4<i32>(u_input.a, u_input.a, u_input.a, -84739i)), ~(-u_input.a), -29340i), ~max(abs(vec3<i32>(-24360i, -10450i, -16719i)), firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a))), Struct_2(vec4<bool>(!global1.b, all(global1.a), true, true), true, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(57645u, arg_0, 1u), vec3<u32>(global1.c.x, global1.c.x, 23791u)), global1.c.x, 3444u, ~41511u)), func_4(0u, -1i << (arg_0 % 32u))), Struct_3(func_4(select(~global1.c.x, 1u, true), u_input.a), ~_wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, u_input.a, 1i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), -(~vec3<i32>(u_input.a, u_input.a, u_input.a)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-34789i, u_input.a, -2147483647i) >> (global1.c.xyy % vec3<u32>(32u)), vec3<i32>(-37212i, 40308i, u_input.a)), Struct_2(global1.a, any(vec4<bool>(true, false, false, true)), ~global1.c ^ (vec4<u32>(arg_0, 53299u, 45311u, arg_0) | global1.c)), func_4(arg_0, _wgslsmith_mult_i32(func_2(true, false, global1.c.xzz, global1.c.x), 26281i))), func_4(1u, -41937i).a.x);
    return _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -(1i ^ (var_0.b.x | 9194i))), vec2<i32>(~1i, 450i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c.zx;
    global1 = Struct_2(select(global1.a, global1.a, any(select(global1.a.zxy, global1.a.xww, false))), !global1.b | global1.a.x, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global1.c.x, var_0.x, var_0.x), ~global1.c.x), ~(~4294967295u)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(8353u, 28235u, var_0.x, 11410u), global1.c)), 59194u, 58465u));
    let var_1 = func_1(28559u);
    var var_2 = func_5(func_5(func_5(Struct_3(func_4(0u, u_input.a), ~vec4<i32>(var_1, u_input.a, u_input.a, var_1), vec3<i32>(u_input.a, 38219i, -55702i) >> (global1.c.yzz % vec3<u32>(32u)), func_5(Struct_3(Struct_1(vec2<i32>(u_input.a, -2147483647i)), vec4<i32>(u_input.a, var_1, var_1, 7606i), vec3<i32>(4885i, -29500i, var_1), Struct_2(vec4<bool>(global1.a.x, global1.b, global1.b, false), true, global1.c), Struct_1(vec2<i32>(44502i, var_1))), Struct_3(Struct_1(vec2<i32>(-20892i, 0i)), vec4<i32>(21808i, var_1, u_input.a, 42792i), vec3<i32>(37659i, -1i, -1i), global2[_wgslsmith_index_u32(global1.c.x, 27u)], Struct_1(vec2<i32>(var_1, var_1))), u_input.a).d, Struct_1(vec2<i32>(1i, -2147483647i))), Struct_3(func_4(global1.c.x, var_1), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(-5453i, -21178i, u_input.a, -1i)), -vec3<i32>(-1i, u_input.a, 0i), func_5(Struct_3(Struct_1(vec2<i32>(u_input.a, u_input.a)), vec4<i32>(var_1, var_1, u_input.a, var_1), vec3<i32>(1i, u_input.a, u_input.a), Struct_2(global1.a, global1.b, vec4<u32>(73391u, var_0.x, global1.c.x, var_0.x)), Struct_1(vec2<i32>(58736i, var_1))), Struct_3(Struct_1(vec2<i32>(36772i, 0i)), vec4<i32>(var_1, var_1, 10629i, -2147483647i), vec3<i32>(1i, var_1, -78380i), global2[_wgslsmith_index_u32(var_0.x, 27u)], Struct_1(vec2<i32>(u_input.a, 4208i))), 1i).d, func_5(Struct_3(Struct_1(vec2<i32>(-19711i, -2147483647i)), vec4<i32>(u_input.a, 0i, var_1, -1i), vec3<i32>(2147483647i, u_input.a, u_input.a), global2[_wgslsmith_index_u32(4294967295u, 27u)], Struct_1(vec2<i32>(1i, u_input.a))), Struct_3(Struct_1(vec2<i32>(1i, var_1)), vec4<i32>(10634i, var_1, 1i, var_1), vec3<i32>(-49292i, 2147483647i, -33943i), Struct_2(global1.a, global1.a.x, vec4<u32>(global1.c.x, var_0.x, 10167u, 133847u)), Struct_1(vec2<i32>(u_input.a, 2147483647i))), var_1).e), ~countOneBits(u_input.a)), Struct_3(Struct_1(vec2<i32>(var_1, u_input.a) & vec2<i32>(12159i, -24473i)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-25858i, 0i, u_input.a, var_1)), ~vec4<i32>(u_input.a, -29930i, u_input.a, u_input.a)), vec3<i32>(u_input.a >> (var_0.x % 32u), -var_1, abs(-2147483647i)), global2[_wgslsmith_index_u32(global1.c.x, 27u)], func_4(~global1.c.x, 1i)), ~countOneBits(~u_input.a)), Struct_3(Struct_1(vec2<i32>(21761i, -var_1)), _wgslsmith_add_vec4_i32(-min(vec4<i32>(var_1, 28001i, 0i, -2147483647i), vec4<i32>(var_1, var_1, -9155i, var_1)), -select(vec4<i32>(1i, -65053i, u_input.a, var_1), vec4<i32>(var_1, u_input.a, u_input.a, u_input.a), true)), ~vec3<i32>(~(-68392i), -32000i, var_1), func_5(Struct_3(Struct_1(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1, var_1, var_1, var_1), vec4<i32>(0i, -2147483647i, 0i, var_1)), _wgslsmith_add_vec3_i32(vec3<i32>(11193i, u_input.a, var_1), vec3<i32>(0i, u_input.a, 21191i)), Struct_2(global1.a, true, vec4<u32>(var_0.x, global1.c.x, global1.c.x, 0u)), Struct_1(vec2<i32>(u_input.a, 36655i))), Struct_3(Struct_1(vec2<i32>(var_1, var_1)), select(vec4<i32>(var_1, -36575i, u_input.a, 23307i), vec4<i32>(2147483647i, 21540i, u_input.a, -1i), vec4<bool>(true, global1.a.x, true, global1.a.x)), reverseBits(vec3<i32>(2147483647i, 2147483647i, -38682i)), global2[_wgslsmith_index_u32(var_0.x, 27u)], Struct_1(vec2<i32>(var_1, -19536i))), var_1).d, func_4(~(~2655u), -2147483647i)), 0i & ((func_3().x | abs(var_1)) & 1i)).e;
    var_2 = Struct_1(var_2.a);
    let var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), _wgslsmith_div_f32(-1498f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x - global3.x), _wgslsmith_f_op_f32(-global3.x))) + 980f)), firstTrailingBit(vec3<i32>(1i, _wgslsmith_div_i32(-35639i, -1i & u_input.a), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_2.a.x, var_2.a.x, 6684i, 1i)), ~vec4<i32>(var_2.a.x, 11141i, u_input.a, var_1)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(global3.x)))))));
}

