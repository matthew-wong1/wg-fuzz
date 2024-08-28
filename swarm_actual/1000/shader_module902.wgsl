struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
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

var<private> global0: array<Struct_4, 29>;

var<private> global1: array<Struct_2, 8>;

var<private> global2: array<Struct_3, 3>;

var<private> global3: array<i32, 3>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = vec4<bool>(true, true, !all(vec2<bool>(true, true)), true);
    let var_1 = vec4<f32>(-340f, -1682f, -166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1247f)));
    global2 = array<Struct_3, 3>();
    let var_2 = _wgslsmith_sub_vec2_u32(u_input.b.yy, u_input.b.xw);
    let var_3 = global2[_wgslsmith_index_u32(~var_2.x, 3u)];
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(floor(var_1.x))))), _wgslsmith_f_op_f32(326f + _wgslsmith_div_f32(-287f, _wgslsmith_f_op_f32(round(var_1.x)))));
}

fn func_2() -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-312f, 309f)), _wgslsmith_f_op_f32(-166f + 101f), true)), -135f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-805f, 380f, -301f, 1996f))) - vec4<f32>(1f, 1f, 1f, 1f))))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(48459u, ~u_input.b.x), 8u)]);
    var var_1 = Struct_1(select(vec3<bool>(~u_input.b.x == _wgslsmith_dot_vec4_u32(vec4<u32>(51559u, 54116u, var_0.c.c, u_input.b.x), u_input.b), true, 1u != u_input.b.x), vec3<bool>(false, !(!var_0.c.a), true), select(select(!vec3<bool>(var_0.c.a, false, true), !vec3<bool>(false, false, var_0.c.a), !var_0.c.a), select(vec3<bool>(true, var_0.c.a, var_0.c.a), !vec3<bool>(var_0.c.a, var_0.c.a, false), select(false, var_0.c.a, true)), !select(vec3<bool>(true, var_0.c.a, false), vec3<bool>(true, true, true), var_0.c.a))), u_input.a.x, 37805u);
    var var_2 = 75364u;
    var var_3 = 39134i;
    let var_4 = var_1.c & firstLeadingBit(0u);
    return !var_0.c.a;
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = false;
    let var_1 = vec3<bool>(true, true, true);
    var_0 = true;
    global1 = array<Struct_2, 8>();
    global3 = array<i32, 3>();
    return !select(vec4<bool>(true, any(vec3<bool>(true, var_1.x, false)) && all(vec3<bool>(true, true, false)), u_input.b.x == ~u_input.b.x, false), vec4<bool>(!var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(true, func_2(), true, u_input.b.x <= u_input.b.x), select(!vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), !vec4<bool>(true, true, false, var_1.x)), !var_1.x));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = 1u >= abs(_wgslsmith_add_u32(1u, u_input.b.x));
    let var_1 = Struct_2(arg_1.x, vec3<f32>(1f, 1f, 1f), _wgslsmith_add_u32(~(~11110u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(57204u, u_input.b.x)), vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.wy) & (u_input.b.yx ^ u_input.b.wy))));
    global0 = array<Struct_4, 29>();
    return Struct_1(!(!select(select(vec3<bool>(arg_0, arg_0, arg_1.x), vec3<bool>(true, arg_1.x, true), arg_1), vec3<bool>(false, false, var_1.a), select(arg_1, vec3<bool>(true, arg_1.x, arg_0), vec3<bool>(var_1.a, true, var_1.a)))), firstTrailingBit(~(i32(-1i) * -21054i)), ~select(u_input.b.x, ~abs(52710u), func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 8>();
    var var_0 = func_4(select(any(!func_1(global3[_wgslsmith_index_u32(0u, 3u)])), func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-42974i, -1089i, u_input.a.x), vec3<i32>(-40970i, -1i, global3[_wgslsmith_index_u32(u_input.b.x, 3u)]) & vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x))).x, true), select(vec3<bool>(true, true, true), func_1(-(i32(-1i) * -2267i)).xxy, select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(true, true, false)), true, true))));
    var var_1 = _wgslsmith_clamp_vec4_i32(-u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -(~u_input.c), _wgslsmith_mult_vec4_i32(u_input.a, reverseBits(-vec4<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 3u)], 747i, -33842i, global3[_wgslsmith_index_u32(4294967295u, 3u)])))), u_input.a);
    global2 = array<Struct_3, 3>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-433f, 144f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(438f, -1279f)))));
    let var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-440f);
}

