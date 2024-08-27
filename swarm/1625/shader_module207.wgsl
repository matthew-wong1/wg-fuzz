struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: vec3<bool>;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: u32, arg_3: u32) -> vec2<f32> {
    let var_0 = !select(!(!(!vec4<bool>(global1.x, global1.x, false, global1.x))), select(global3[_wgslsmith_index_u32(arg_3, 16u)], global3[_wgslsmith_index_u32(abs(u_input.b.x) & (96590u >> (arg_2 % 32u)), 16u)], global1.x), false);
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0, vec3<i32>(-47035i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.d, u_input.d, -27455i, -79281i), vec4<i32>(0i, arg_0.x, 13764i, arg_0.x)), -vec4<i32>(2147483647i, -2147483647i, arg_0.x, u_input.d)), select(arg_0.x, ~u_input.d, all(global3[_wgslsmith_index_u32(u_input.b.x, 16u)]))), arg_0), -vec3<i32>(countOneBits(-1187i << (arg_2 % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.d, -2147483647i), vec4<i32>(u_input.d, 1i, u_input.d, -2147483647i)), 59835i));
    var var_2 = select(vec3<bool>(any(var_0), var_0.x, false), select(select(select(var_0.zzx, !vec3<bool>(false, global1.x, global1.x), true), !(!var_0.xzw), true), select(select(var_0.zxy, vec3<bool>(false, true, true), var_0.x), !(!var_0.yxx), arg_2 <= _wgslsmith_sub_u32(arg_2, u_input.a.x)), var_0.x), var_0.xyy);
    global1 = vec3<bool>(var_2.x, var_0.x, !(!select(!global1.x, u_input.d == 12919i, select(var_2.x, false, var_0.x))));
    let var_3 = ~(~0u);
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(arg_1, arg_1)), arg_1) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(arg_1, -1282f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1858f, arg_1) + vec2<f32>(1012f, arg_1)), global1.x))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-1413f, -1168f), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(683f, -871f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1107f, arg_1))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-713f, -403f), vec2<f32>(-1016f, arg_1), false)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_1)))))), vec2<f32>(-1489f, arg_1))));
}

fn func_2() -> vec4<i32> {
    global0 = array<Struct_3, 5>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(-(~(~vec3<i32>(u_input.d, 2147483647i, 28791i))), -434f, firstTrailingBit(u_input.a.x), ~u_input.e));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1625f, var_0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -224f))))))) * vec2<f32>(-1055f, var_0.x));
    var var_1 = Struct_3(-1i, Struct_1(abs(~u_input.c), any(vec4<bool>(false, true, true, all(global3[_wgslsmith_index_u32(20306u, 16u)]))), _wgslsmith_f_op_f32(var_0.x * var_0.x), u_input.a.xz), ~(~u_input.a), Struct_1(firstLeadingBit(firstTrailingBit(u_input.b.x)), false, -1303f, select(abs(countOneBits(vec2<u32>(u_input.b.x, 37007u))), u_input.b, !(!vec2<bool>(global1.x, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1027f))))));
    let var_2 = 1306f;
    return _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a | firstTrailingBit(u_input.d), 0i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, 10688i, 0i), vec4<i32>(1i, u_input.d, var_1.a, var_1.a)), ~(-8958i)), (abs(vec4<i32>(var_1.a, var_1.a, u_input.d, u_input.d)) >> (reverseBits(vec4<u32>(0u, 14914u, 52554u, 4294967295u)) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a, 1i, 58704i, var_1.a), -vec4<i32>(2147483647i, 2147483647i, u_input.d, u_input.d))), ~reverseBits(vec4<i32>(28676i, reverseBits(var_1.a), ~(-1i), var_1.a)));
}

fn func_1(arg_0: Struct_3) -> u32 {
    global1 = select(!(!select(!vec3<bool>(arg_0.b.b, arg_0.b.b, global1.x), select(vec3<bool>(global1.x, arg_0.b.b, false), vec3<bool>(global1.x, false, arg_0.b.b), arg_0.b.b), arg_0.b.b)), select(!(!vec3<bool>(false, global1.x, arg_0.b.b)), vec3<bool>(all(select(vec4<bool>(global1.x, arg_0.b.b, global1.x, global1.x), global3[_wgslsmith_index_u32(86683u, 16u)], true)), true, global1.x), vec3<bool>(!global1.x, arg_0.b.c != _wgslsmith_div_f32(arg_0.b.c, arg_0.b.c), false)), !vec3<bool>((u_input.b.x >> (arg_0.b.a % 32u)) <= abs(arg_0.d.d.x), !(!arg_0.d.b), arg_0.b.b != arg_0.d.b));
    let var_0 = Struct_3(-2147483647i, Struct_1(u_input.e, all(global1.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.d.c))))), reverseBits(vec2<u32>(~u_input.b.x, 4294967295u))), u_input.a, arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) + arg_0.d.c) - _wgslsmith_f_op_f32(select(-1919f, 741f, global1.x))));
    var var_1 = select(abs(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -u_input.d, -2147483647i, min(var_0.a, u_input.d)), countOneBits(-vec4<i32>(arg_0.a, var_0.a, -2147483647i, arg_0.a)))), _wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.d, _wgslsmith_mult_i32(-1i, 0i), var_0.a, ~arg_0.a), func_2()) >> (vec4<u32>(arg_0.b.d.x, u_input.c, 4294967295u, select(u_input.e & var_0.b.d.x, ~1u, true)) % vec4<u32>(32u)), false);
    global0 = array<Struct_3, 5>();
    global0 = array<Struct_3, 5>();
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, ~(~var_0.c)), countOneBits(u_input.a)), ~(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 16>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(199f, -318f, _wgslsmith_f_op_f32(sign(-1340f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(507f, -1052f, _wgslsmith_f_op_f32(step(-521f, 1272f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1685f), 923f, _wgslsmith_f_op_f32(sign(684f))) * vec3<f32>(-720f, -469f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = Struct_1(_wgslsmith_sub_u32(func_1(global0[_wgslsmith_index_u32(u_input.b.x, 5u)]) & (firstTrailingBit(4294967295u) | 42125u), (14301u << (max(23141u, u_input.a.x) % 32u)) ^ 47472u), any(global1.xz), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))), ~min(u_input.a.zx, reverseBits(u_input.a.xx)));
    global1 = select(select(!select(!vec3<bool>(false, global1.x, global1.x), select(vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(var_1.b, global1.x, var_1.b), vec3<bool>(var_1.b, var_1.b, false)), !vec3<bool>(true, global1.x, true)), vec3<bool>(true, any(!vec3<bool>(global1.x, global1.x, true)), var_1.b), var_1.b), select(vec3<bool>(true, true, true), !vec3<bool>(u_input.d >= 0i, !var_1.b, true), true), !(!select(select(vec3<bool>(var_1.b, false, true), vec3<bool>(var_1.b, true, global1.x), false), select(vec3<bool>(false, var_1.b, global1.x), vec3<bool>(var_1.b, true, global1.x), global1.x), vec3<bool>(true, global1.x, true))));
    var var_2 = var_1.d.x;
    var var_3 = vec2<bool>(true, true);
    var_2 = min(_wgslsmith_div_u32(1u | ~select(u_input.e, var_1.a, false), 53961u), var_1.a);
    var var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(0i & select(u_input.d, abs(_wgslsmith_mod_i32(-36331i, 2147483647i)), var_1.b), _wgslsmith_f_op_f32(round(-572f)), 1024f, 11482i);
}

