struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: bool;

var<private> global2: array<vec4<u32>, 24>;

var<private> global3: u32 = 150313u;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<f32> {
    let var_0 = arg_0.b.x;
    global3 = reverseBits(_wgslsmith_dot_vec2_u32(arg_0.c.zw, vec2<u32>(abs(arg_0.c.x), _wgslsmith_add_u32(arg_0.c.x, 1u)))) >> (_wgslsmith_div_u32(abs(_wgslsmith_add_u32(arg_0.c.x, 1u)), ~countOneBits(arg_0.c.x)) % 32u);
    var var_1 = global0[_wgslsmith_index_u32(78790u, 32u)];
    global3 = _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(min(61482u, 0u), u_input.a.x), u_input.d.x) ^ ~(~u_input.c.x), 4294967295u);
    var var_2 = var_1.a.x;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1047f), 1000f, arg_0.e.x, _wgslsmith_f_op_f32(step(var_1.e.x, -2396f))));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1163f, 1108f, _wgslsmith_f_op_f32(trunc(arg_0.e.x)), _wgslsmith_f_op_f32(abs(1435f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, 110f, -441f, 1556f)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(select(arg_0.a, vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), false), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(132f, arg_0.d.x, arg_0.d.x))), ~global2[_wgslsmith_index_u32(75710u, 24u)], vec3<f32>(arg_0.d.x, -1754f, 1818f), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.e.x, arg_0.e.x, arg_0.e.x), vec3<f32>(arg_0.e.x, -196f, arg_0.e.x))), -2147483647i)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(min(-334f, arg_0.e.x)), arg_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1177f)), _wgslsmith_sub_vec4_u32(arg_0.c, vec4<u32>(16549u, 24021u, 4294967295u, arg_0.c.x)) ^ select(vec4<u32>(arg_0.c.x, u_input.c.x, u_input.a.x, arg_0.c.x), arg_0.c, arg_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, arg_0.d.x, 312f) - vec3<f32>(arg_0.d.x, arg_0.e.x, -2097f))), arg_0.d), -2147483647i)));
    let var_1 = global0[_wgslsmith_index_u32(~0u, 32u)];
    global2 = array<vec4<u32>, 24>();
    global2 = array<vec4<u32>, 24>();
    let var_2 = ~_wgslsmith_mod_vec2_u32(select(~vec2<u32>(11128u, 21129u), arg_0.c.xz, vec2<bool>(true, false)), max(~vec2<u32>(52658u, 4294967295u), vec2<u32>(4294967295u, u_input.a.x))) << (_wgslsmith_sub_vec2_u32(max(u_input.d, vec2<u32>(_wgslsmith_mult_u32(43693u, arg_0.c.x), 2851u)), u_input.a.wy) % vec2<u32>(32u));
    return 1637f;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: bool) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(39825u, 32u)];
    var var_1 = var_0.a.ywz;
    var var_2 = Struct_1(var_0.a, var_0.e, var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * var_0.e)), vec3<f32>(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(0u, 32u)], arg_1.x)), var_0.d.x, _wgslsmith_div_f32(var_0.d.x, 1000f))))), _wgslsmith_f_op_vec3_f32(-var_0.d));
    return !(!(-2040f > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(855f, var_0.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))), true, -15990i >= min(~(~(-19321i)), u_input.b), !((u_input.d.x <= u_input.a.x) || all(vec2<bool>(true, true))));
    var_0 = vec4<bool>(func_1(u_input.c, _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(15401i, 1i, u_input.b), vec3<i32>(7140i, u_input.b, -24966i)), abs(vec3<i32>(1i, u_input.b, u_input.b)), vec3<i32>(2147483647i, -23315i, -15926i) & vec3<i32>(u_input.b, u_input.b, 2001i)), vec4<i32>(u_input.b, u_input.b, _wgslsmith_add_i32(-30885i, 0i), 2147483647i | u_input.b), select(false, var_0.x, !var_0.x)) | true, u_input.b > _wgslsmith_div_i32(u_input.b, u_input.b), true, func_1(vec3<u32>(abs(u_input.d.x), 4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.yx, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.a.zx))), -reverseBits(vec3<i32>(u_input.b, -37736i, u_input.b)) | (abs(vec3<i32>(0i, u_input.b, -29350i)) ^ select(vec3<i32>(-8310i, u_input.b, u_input.b), vec3<i32>(-1i, -30162i, u_input.b), var_0.x)), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-11559i, u_input.b, u_input.b, u_input.b)), vec4<i32>(35347i, 34951i, u_input.b, 21794i) & vec4<i32>(u_input.b, u_input.b, 0i, 2147483647i)) | _wgslsmith_div_vec4_i32(vec4<i32>(10534i, u_input.b, -3429i, u_input.b), reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f)) >= _wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(var_0.x, true, false, var_0.x), vec3<f32>(907f, 622f, -1000f), vec4<u32>(u_input.d.x, u_input.d.x, 70772u, u_input.c.x), vec3<f32>(1000f, 881f, -193f), vec3<f32>(773f, 669f, -1846f)), _wgslsmith_add_i32(0i, -1i)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-327f - -815f), 585f)), vec2<f32>(1f, 1f))));
    var_0 = !select(!vec4<bool>(all(var_0.yx), var_0.x, var_0.x != var_0.x, var_0.x), vec4<bool>(true, true, func_1(~vec3<u32>(1u, u_input.d.x, 41854u), select(vec3<i32>(6401i, u_input.b, u_input.b), vec3<i32>(u_input.b, -2147483647i, 1i), var_0.yzz), vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), all(vec4<bool>(var_0.x, false, false, var_0.x))), true), -u_input.b != -abs(-2147483647i));
    var var_2 = select(vec4<bool>(var_0.x, all(select(select(var_0.wyz, var_0.zwx, var_0.zxz), var_0.wxx, var_0.xzx)), !var_0.x, _wgslsmith_f_op_f32(var_1.x + -1123f) != _wgslsmith_f_op_f32(-1240f - var_1.x)), vec4<bool>(func_1(countOneBits(~u_input.c), vec3<i32>(u_input.b, ~u_input.b, -2147483647i), ~vec4<i32>(u_input.b, u_input.b, u_input.b, -4922i) ^ select(vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec4<i32>(0i, u_input.b, u_input.b, u_input.b), vec4<bool>(var_0.x, false, var_0.x, false)), !var_0.x), true, var_0.x, var_0.x), vec4<bool>(!all(select(vec2<bool>(var_0.x, true), var_0.wy, vec2<bool>(true, var_0.x))), any(select(!vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, true, false, true))), !var_0.x, false));
    let var_3 = global2[_wgslsmith_index_u32(~1875u, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 2072f, var_1, u_input.b);
}

