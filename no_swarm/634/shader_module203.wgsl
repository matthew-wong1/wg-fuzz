struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(1809f, -139f, 582f), vec3<f32>(-625f, 1000f, 1000f));

var<private> global2: array<vec4<f32>, 8>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.a, 1i, _wgslsmith_clamp_i32(-1i, arg_0.d.a.a.x, u_input.a), u_input.a), firstLeadingBit(vec4<i32>(2147483647i, u_input.a, arg_1.a.a.x, -32725i)) & ~vec4<i32>(arg_1.a.a.x, 0i, u_input.a, arg_0.d.a.a.x)), select(vec4<bool>(false, arg_0.e.x <= 1202f, arg_1.a.b.x & arg_0.d.a.b.x, true), select(!arg_0.d.a.b, vec4<bool>(arg_0.d.a.b.x, false, arg_1.a.b.x, false), select(vec4<bool>(true, arg_1.a.b.x, arg_0.a, false), arg_1.a.b, arg_1.a.b)), vec4<bool>(arg_1.a.b.x && arg_0.d.a.b.x, false || arg_0.a, !arg_0.b, u_input.a <= arg_0.c.x)), firstLeadingBit(vec2<u32>(0u, 1u)) << (vec2<u32>(u_input.b, ~u_input.d.x) % vec2<u32>(32u))));
    global2 = array<vec4<f32>, 8>();
    var var_1 = Struct_4(arg_0.d.a.c.x, arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), min(u_input.a, 0i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-564f, -1772f, 1224f, arg_0.e.x))));
    var var_2 = vec4<f32>(-1530f, _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(243f, var_1.e.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.e.x)) * 1665f));
    let var_3 = false;
    return firstLeadingBit(var_1.b.a.c.x);
}

fn func_2() -> Struct_3 {
    global0 = ~4294967295u;
    global1 = array<vec3<f32>, 2>();
    global1 = array<vec3<f32>, 2>();
    global1 = array<vec3<f32>, 2>();
    return Struct_3(46700u > func_3(Struct_3(59888i <= u_input.a, true, vec2<i32>(-13615i, u_input.a), Struct_2(Struct_1(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec4<bool>(false, true, true, false), u_input.d)), _wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(u_input.d.x, 8u)], global2[_wgslsmith_index_u32(58310u, 8u)])), Struct_2(Struct_1(vec4<i32>(1i, 53945i, 84930i, u_input.a), vec4<bool>(true, true, true, true), vec2<u32>(1u, 0u)))), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, false, true)))), vec2<i32>(~(-reverseBits(-12436i)), u_input.a), Struct_2(Struct_1(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-48877i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, -9724i, -24253i))), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.b, u_input.b), vec4<u32>(0u, 1u, 1u, 0u)), 4294967295u))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, 1u), 8u)]);
}

fn func_1() -> u32 {
    var var_0 = vec3<u32>(1u, ~(~(~u_input.c.x) >> (~_wgslsmith_div_u32(u_input.b, u_input.b) % 32u)), 25876u);
    let var_1 = func_2();
    var var_2 = var_1.d;
    return _wgslsmith_add_u32(~min(var_1.d.a.c.x, _wgslsmith_sub_u32(21123u, var_1.d.a.c.x | u_input.d.x)), u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(abs(~func_1()), Struct_2(func_2().d.a), vec3<f32>(-1221f, -665f, 610f), -u_input.a, global2[_wgslsmith_index_u32(u_input.d.x, 8u)]);
    var var_1 = -1i >= _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(~var_0.b.a.a.x, -19283i)), var_0.b.a.a.zy);
    var var_2 = ~vec2<i32>(abs(-7523i), var_0.b.a.a.x >> (1u % 32u));
    var_2 = var_0.b.a.a.wz;
    var var_3 = var_0.b;
    let var_4 = var_0.b;
    global0 = u_input.c.x;
    var_2 = func_2().c;
    var_1 = all(vec4<bool>(var_3.a.b.x, !(!var_4.a.b.x), (_wgslsmith_dot_vec4_u32(vec4<u32>(69612u, 0u, 0u, var_4.a.c.x), vec4<u32>(u_input.b, 103244u, 50193u, 0u)) & (var_4.a.c.x >> (91771u % 32u))) >= u_input.d.x, func_2().b));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_4.a.c.x, ~1u, ~31735u), _wgslsmith_f_op_vec4_f32(-var_0.e), _wgslsmith_sub_u32(~u_input.b, 51624u));
}

