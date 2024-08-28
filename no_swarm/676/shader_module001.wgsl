struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: bool = false;

var<private> global2: array<u32, 18>;

var<private> global3: Struct_3;

var<private> global4: f32 = 300f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32) -> f32 {
    let var_0 = min(vec3<u32>(4294967295u, 79216u, u_input.a.x) ^ select(global3.e.d.wzz, max(vec3<u32>(38493u, arg_0.c.a, 4294967295u), global3.e.d.wxx), false), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c.a, u_input.a.x, 31163u), select(select(vec3<u32>(global3.c.a, 0u, 4294967295u) << (arg_0.d.xwy % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4516u, u_input.a.x, u_input.b.x), arg_0.d.ywy, vec3<u32>(21707u, 0u, global2[_wgslsmith_index_u32(1u, 18u)])), vec3<bool>(true, false, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(global3.c.a, 11177u, global2[_wgslsmith_index_u32(11503u, 18u)]), arg_0.d.wxz), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)))));
    let var_1 = 25041i;
    let var_2 = global0[_wgslsmith_index_u32(1u, 18u)];
    var var_3 = global3.c;
    global4 = _wgslsmith_div_f32(global3.a, global3.a);
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> vec2<u32> {
    var var_0 = arg_2;
    global2 = array<u32, 18>();
    global3 = global0[_wgslsmith_index_u32(arg_1.a, 18u)];
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), vec2<i32>(15617i, arg_0.e.b.x), arg_0.e.a, -37360i, Struct_2(Struct_1(32855u), ~firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global3.b.x, global3.d, global3.e.b.x, arg_3.x), vec4<i32>(arg_3.x, 0i, 3650i, -6384i))), arg_1, ~vec4<u32>(59433u, ~arg_1.a, 0u, 0u)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(global3.a - var_1.a))), 154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)));
    return global3.e.d.xz;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec2<u32>) -> vec3<u32> {
    let var_0 = global0[_wgslsmith_index_u32(arg_1, 18u)];
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) - var_0.a), 198f));
    var var_2 = var_0.a;
    var var_3 = all(select(select(vec2<bool>(all(vec3<bool>(arg_0, false, arg_0)), any(vec4<bool>(arg_0, true, false, arg_0))), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(any(vec3<bool>(true, true, false)), any(vec2<bool>(arg_0, arg_0))), select(!vec2<bool>(false, arg_0), vec2<bool>(false, false), true), vec2<bool>(false || arg_0, arg_0)), any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), !vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0)))));
    return ~_wgslsmith_div_vec3_u32(vec3<u32>(1u | ~arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(54424u, arg_1, 39312u, 1u), u_input.b << (u_input.b % vec4<u32>(32u))), _wgslsmith_mod_u32(func_4(Struct_3(-564f, vec2<i32>(global3.e.b.x, var_0.b.x), var_0.c, global3.b.x, global3.e), Struct_1(57995u), 354f, vec3<i32>(global3.d, -37717i, 0i)).x, 20646u)), u_input.b.xxx);
}

fn func_2() -> i32 {
    let var_0 = max(~func_5(false, 1u, func_4(global0[_wgslsmith_index_u32(~33453u, 18u)], global3.c, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(u_input.a.x), global3.e.b, Struct_1(global3.e.d.x), u_input.b), vec2<i32>(27086i, global3.d), -1056f)), select(vec3<i32>(29140i, global3.b.x, 79273i), vec3<i32>(-59024i, -2147483647i, 1i), false))), max(firstTrailingBit(firstTrailingBit(vec3<u32>(0u, 1u, global2[_wgslsmith_index_u32(4294967295u, 18u)]))) >> (max(~vec3<u32>(u_input.b.x, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global3.e.a.a), _wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], u_input.a.x, 4294967295u), u_input.b.wyw)) % vec3<u32>(32u)), global3.e.d.xxw));
    let var_1 = global3.a;
    var var_2 = -819f;
    let var_3 = global3.e;
    var var_4 = Struct_1(min(~1u, 4294967295u));
    return 1i;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_mult_i32(-_wgslsmith_add_i32(_wgslsmith_div_i32(global3.b.x, global3.e.b.x), _wgslsmith_sub_i32(func_2(), 1i)), ~global3.b.x);
    let var_1 = !(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)));
    let var_2 = any(vec4<bool>(any(vec2<bool>(true, var_1.x)), global3.e.a.a >= 1u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_f_op_f32(global3.a - global3.a), !var_1.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.a, global3.a, false)) * _wgslsmith_f_op_f32(sign(global3.a))), var_1.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-489f, -333f, -597f)) * vec3<f32>(global3.a, -1731f, global3.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1138f, global3.a, 399f) * vec3<f32>(807f, 653f, global3.a))))));
    let var_4 = Struct_2(Struct_1(1u), vec4<i32>(0i, 0i, _wgslsmith_sub_i32(i32(-1i) * -13699i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.d, global3.e.b.x, 23537i), global3.e.b.yyx)), global3.b.x) | _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i << (global2[_wgslsmith_index_u32(global3.e.d.x, 18u)] % 32u), global3.d << (24857u % 32u), firstTrailingBit(-2147483647i), -1i), abs(vec4<i32>(global3.d, global3.b.x, 2147483647i, global3.d))), global3.e.a, vec4<u32>(_wgslsmith_sub_u32(~1u, global3.c.a), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~u_input.b.x, 18u)], func_4(global0[_wgslsmith_index_u32(69488u, 18u)], Struct_1(32779u), -389f, vec3<i32>(1i, global3.d, -5312i)).x) >> (1u % 32u), u_input.b.x, 19069u));
    return ~select(global3.e.b.x, -19746i, !var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(select((global3.e.b.x >> (21990u % 32u)) | max(10961i, global3.d), func_1(), !(global3.a != 1066f)));
    global2 = array<u32, 18>();
    global3 = global0[_wgslsmith_index_u32(3618u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~(~global3.e.c.a), u_input.a.x), 1i, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + -1581f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(global2[_wgslsmith_index_u32(460u, 18u)], 1u, 22611u)), ~u_input.b.wyz) << (u_input.b.yyz % vec3<u32>(32u)));
}

