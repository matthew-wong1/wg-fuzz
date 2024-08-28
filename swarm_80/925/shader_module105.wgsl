struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 961f;

var<private> global1: array<Struct_3, 5>;

var<private> global2: vec2<u32>;

var<private> global3: array<vec4<bool>, 30>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: f32) -> bool {
    global1 = array<Struct_3, 5>();
    global0 = -187f;
    var var_0 = vec2<bool>(!(!select(!arg_1.x, true, !arg_1.x)), true);
    let var_1 = vec2<i32>(~u_input.a.x, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(2147483647i, u_input.a.x, 5522i)), -(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (~vec3<u32>(global2.x, u_input.c, u_input.e) % vec3<u32>(32u)))));
    return true;
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: u32) -> vec3<bool> {
    return select(!select(select(!vec3<bool>(true, arg_1, true), !vec3<bool>(true, false, arg_1), !vec3<bool>(true, arg_1, arg_1)), select(!vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, false), false), any(vec2<bool>(true, true))), arg_1), vec3<bool>(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, arg_0)) >= _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(53047i, -2147483647i, u_input.a.x, 2147483647i), vec4<i32>(arg_0, 0i, -1i, arg_0)), -u_input.a.x), true, all(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, false), true))), true);
}

fn func_1() -> Struct_2 {
    global2 = ~u_input.d.xz;
    var var_0 = select(vec3<bool>(true, true, func_2(vec2<f32>(-167f, _wgslsmith_f_op_f32(sign(742f))), select(select(vec4<bool>(false, false, true, false), global3[_wgslsmith_index_u32(u_input.e, 30u)], vec4<bool>(true, false, false, false)), !global3[_wgslsmith_index_u32(global2.x, 30u)], true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(1000f + -869f)))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !vec3<bool>(all(func_3(15991i, true, u_input.c)), all(vec2<bool>(true, false)) != true, false));
    let var_1 = vec2<f32>(-1018f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f, func_3(_wgslsmith_add_i32(u_input.a.x, 1i), all(vec3<bool>(true, false, var_0.x)), u_input.d.x).x))));
    global2 = ~vec2<u32>(u_input.d.x, 45659u);
    var var_2 = _wgslsmith_add_vec3_u32(~(~_wgslsmith_div_vec3_u32(u_input.d, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1929u, global2.x), u_input.d))), _wgslsmith_div_vec3_u32(u_input.d, u_input.d));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, 152f, var_1.x), vec4<f32>(318f, -1000f, var_1.x, 1390f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-652f, var_1.x, var_1.x, -1361f) - vec4<f32>(var_1.x, var_1.x, 1890f, var_1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -203f, var_1.x, var_1.x)), !any(global3[_wgslsmith_index_u32(u_input.c, 30u)]))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -714f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1006f), 907f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_div_f32(614f, var_1.x)), var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-720f, 715f) + _wgslsmith_f_op_f32(sign(-218f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(min(var_1.x, -521f))), _wgslsmith_f_op_f32(1666f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = countOneBits(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, arg_1.b.x), -arg_1.b.x, 9000i, 29284i));
    var var_1 = Struct_4(-187f, Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(sign(-526f)), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(arg_2.b.x + 774f)), arg_2.b, !(arg_1.a.x <= arg_2.a.x))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -620f), arg_1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2161f * -2806f), arg_2.a.x)))), any(select(vec2<bool>(arg_0, false), !vec2<bool>(arg_0, true), vec2<bool>(false, true))) & all(!(!global3[_wgslsmith_index_u32(45247u, 30u)])), min(64031i, -22322i), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-1340i, -6432i, -1i, var_0.x), vec4<i32>(2147483647i, arg_1.b.x, -23554i, 1i)), ~vec4<i32>(4328i, -70273i, 29111i, var_0.x)), arg_1.b.x));
    let var_2 = -vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), ~arg_1.b.x);
    let var_3 = ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(countOneBits(u_input.c), ~10383u, _wgslsmith_clamp_u32(4294967295u, 0u, 69121u), global2.x)), abs(vec4<u32>(4294967295u, ~u_input.d.x, ~0u, max(32679u, global2.x))));
    global2 = vec2<u32>(41340u, firstTrailingBit(firstTrailingBit(var_3.x)));
    return vec3<bool>(var_1.c, false, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 5>();
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(52637u, 77647u), u_input.d.zy), ~u_input.d.yy) | vec2<u32>(_wgslsmith_add_u32(76270u, 74087u), global2.x), vec2<u32>(select(1u, ~13866u, any(global3[_wgslsmith_index_u32(u_input.c, 30u)])), abs(abs(global2.x))), u_input.d.zx), _wgslsmith_dot_vec2_i32(u_input.a >> (vec2<u32>(4294967295u, ~u_input.b) % vec2<u32>(32u)), select(-(~u_input.a), -vec2<i32>(u_input.a.x, 0i), all(global3[_wgslsmith_index_u32(4294967295u, 30u)]))));
    let var_1 = !select(vec3<bool>(true, true, true), func_4(true, Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1891f, 1000f) * vec2<f32>(1220f, 564f)), ~u_input.a), func_1()), vec3<bool>(true, true, true));
    global1 = array<Struct_3, 5>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 248f, 179f, -677f) + vec4<f32>(-471f, -1000f, -1267f, -1185f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-864f + -1000f), _wgslsmith_f_op_f32(-855f + 429f), -1108f, 504f))));
    var var_3 = var_0;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-398f)))) + 1923f) + _wgslsmith_f_op_f32(select(1293f, var_2.b.x, false))));
    var var_5 = Struct_1(vec2<u32>(31204u, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.a.x, var_0.a.x), ~76339u)), -reverseBits(2147483647i & u_input.a.x) | u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~min(u_input.a.x, var_5.b)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1585f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))), 1f, 1524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))), 28239u, _wgslsmith_f_op_vec4_f32(min(var_2.b, var_2.a)), 6566u);
}

