struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-1000f, 475f, -860f), vec3<f32>(-1772f, -315f, -1477f), vec3<f32>(1564f, 1000f, -1107f));

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<i32> {
    return vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-abs(arg_0.c), u_input.e.x, 5726i), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(195i, 0i, -2147483647i), vec3<i32>(u_input.e.x, u_input.c, -2147483647i)) & vec3<i32>(-1i, 31229i, arg_0.c))), -1i);
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    return ~(u_input.c ^ -(i32(-1i) * -2147483647i));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(21419i);
    var var_1 = abs(~_wgslsmith_div_i32(func_2(arg_2, vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(u_input.a.x, 3u)]).x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.a, 52057i)), ~u_input.e.xz)));
    let var_2 = false;
    let var_3 = var_0.a;
    var var_4 = max(~u_input.d.xy, _wgslsmith_sub_vec2_u32(u_input.a.zz, ~(u_input.a.zx << (_wgslsmith_add_vec2_u32(vec2<u32>(21075u, 4294967295u), vec2<u32>(u_input.a.x, u_input.b)) % vec2<u32>(32u)))));
    return arg_2;
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    var var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(floor(-284f));
    return func_4(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.e.wz, func_2(Struct_2(1566f, global2[_wgslsmith_index_u32(8282u, 3u)], 26973i, global2[_wgslsmith_index_u32(19577u, 3u)]), vec4<bool>(true, false, true, true), Struct_1(23243u))), -vec2<i32>(0i, -1i)), vec2<i32>(u_input.e.x, ~(-349i))), Struct_2(-220f, Struct_1(1u), func_3(~_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(-2147483647i, u_input.c))), Struct_1(~(~u_input.d.x))), Struct_2(-1781f, Struct_1(~1u), 10873i, Struct_1(u_input.d.x)));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-682f * 300f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(308f))))) + -672f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_sub_u32(4294967295u, max(u_input.d.x, ~7493u)), Struct_1(1u), func_1())), -671f);
    let var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f * 1977f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) * _wgslsmith_f_op_f32(-func_1().a)), 650f, 178f), vec4<bool>(select(!any(vec4<bool>(false, false, true, false)), true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), false, !all(vec3<bool>(false, true, true))), Struct_3(u_input.e.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) - var_1.a.x) * _wgslsmith_f_op_f32(floor(480f))));
    var var_2 = var_1.b.x;
    let var_3 = var_1.a.xw;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.xy, _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.e.zw, u_input.e.xx), ~(-27639i), ~1i, 1i)), -select(u_input.e, vec4<i32>(var_1.c.a, 2289i, var_1.c.a, u_input.c), var_1.b)));
}

