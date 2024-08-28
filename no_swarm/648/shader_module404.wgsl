struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

var<private> global1: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global2: Struct_3 = Struct_3(4294967295u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-447f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1200f)))), _wgslsmith_f_op_f32(-1f))));
    let var_1 = all(vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), any(vec4<bool>(true, true, true, true)))), !any(vec3<bool>(false, false, true)), select(global2.a == 15460u, true, true)));
    let var_2 = Struct_1(all(vec4<bool>(true, false, var_1, var_1)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_div_f32(var_0, var_0), var_0));
    let var_4 = ~firstLeadingBit(~vec2<u32>(global2.a << (4294967295u % 32u), ~global2.a));
    return !((_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_4.x, 1u, var_4.x), _wgslsmith_sub_u32(global2.a, var_4.x)) << (~0u % 32u)) == 4294967295u);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-464f, -210f), vec2<f32>(-1532f, -213f))))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1199f, -1326f)) + -1014f)), -2227f));
    global1 = array<vec2<bool>, 3>();
    var var_1 = global0[_wgslsmith_index_u32(52460u, 30u)];
    var var_2 = var_1.b.a.zx;
    global2 = Struct_3(4294967295u);
    return !(false != (!all(vec4<bool>(var_1.a, true, var_1.a, var_1.a)) | any(select(vec4<bool>(true, var_1.b.d.a, var_1.b.d.a, false), vec4<bool>(var_1.a, true, true, false), true))));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<f32>) -> Struct_4 {
    global0 = array<Struct_4, 30>();
    var var_0 = vec4<bool>(func_2(), (func_2() | func_2()) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(147f))) < -1920f), true, u_input.a == 1i);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, 1u, arg_1.x) & _wgslsmith_add_vec3_u32(vec3<u32>(1u, 9445u, arg_1.x), vec3<u32>(43324u, 43267u, 17618u)), ~(vec3<u32>(1u, 4294967295u, 20799u) & vec3<u32>(global2.a, 1u, 1u))), 95072u), arg_1);
    let var_2 = Struct_3(~1u);
    global1 = array<vec2<bool>, 3>();
    return Struct_4(!(!func_3()), Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, u_input.a, -18705i), -vec3<i32>(u_input.a, u_input.a, -1i)) | vec3<i32>(_wgslsmith_clamp_i32(1i, u_input.a, u_input.a), u_input.a, _wgslsmith_add_i32(-2147483647i, u_input.a)), min(1u, _wgslsmith_add_u32(var_2.a, 109301u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(56640u, 10429u), _wgslsmith_div_vec2_u32(vec2<u32>(3242u, 1u), arg_1)) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) - arg_2)), Struct_1(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.x + -506f))) - 653f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -925f) + -1000f))), ~(firstLeadingBit(firstLeadingBit(vec2<u32>(global2.a, global2.a))) | abs(~vec2<u32>(4294967295u, global2.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-902f, 1643f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-167f, -328f)))) * vec2<f32>(-575f, 1484f))));
    global1 = array<vec2<bool>, 3>();
    global1 = array<vec2<bool>, 3>();
    var var_1 = ~u_input.a;
    let var_2 = 2147483647i;
    var_1 = -3643i;
    let var_3 = var_0.b.d;
    global2 = Struct_3(~(~(~(global2.a | global2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 18789i, 0i, var_2) >> (vec4<u32>(4294967295u, 38712u, var_0.b.b, global2.a) % vec4<u32>(32u)), select(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(u_input.a, 0i, -1i, u_input.a), var_0.a), _wgslsmith_add_vec4_i32(vec4<i32>(90715i, 1i, -1i, var_0.b.a.x), vec4<i32>(-1i, 2147483647i, 2147483647i, var_0.b.a.x)))), _wgslsmith_sub_vec3_u32(max((vec3<u32>(global2.a, 32506u, 4294967295u) << (vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u))) | vec3<u32>(global2.a, 1u, global2.a), ~(~vec3<u32>(var_0.b.b, 12329u, 71880u))), vec3<u32>(global2.a, global2.a, global2.a)));
}

