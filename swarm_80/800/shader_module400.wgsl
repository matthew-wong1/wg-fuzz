struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_4,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global2: array<i32, 18>;

var<private> global3: u32 = 0u;

var<private> global4: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(true, Struct_1(vec2<bool>(true, true)), vec3<f32>(1066f, 497f, -2059f)), Struct_2(true, Struct_1(vec2<bool>(true, false)), vec3<f32>(-299f, -2073f, 3454f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> f32 {
    return 1f;
}

fn func_3() -> bool {
    return !global1.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.c);
    global4 = array<Struct_2, 2>();
    let var_1 = -u_input.d.xz;
    var var_2 = Struct_5(-2147483647i, arg_0, arg_1, Struct_4(((u_input.b.x | u_input.b.x) | 18330u) <= u_input.b.x), _wgslsmith_div_vec4_f32(arg_0, arg_0));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(808f, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(arg_0.x - var_2.c.c.x))) - var_2.b.yww));
    return StorageBuffer(-_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-2147483647i, -19107i, u_input.c), vec3<i32>(var_1.x, 44499i, u_input.a), func_3()), u_input.d, u_input.d), vec4<i32>(var_2.a, -1i, arg_2, 1i) & (_wgslsmith_add_vec4_i32(~vec4<i32>(arg_2, var_1.x, var_2.a, 2147483647i), firstTrailingBit(vec4<i32>(u_input.d.x, global2[_wgslsmith_index_u32(0u, 18u)], 27645i, 1i))) << (_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(4294967295u, u_input.b.x, 47197u, 1u)), reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u))) % vec4<u32>(32u))), -1759f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(611f - -100f), _wgslsmith_f_op_f32(f32(-1f) * -1265f))) + 1199f))));
    let var_1 = Struct_3(global1.x, Struct_1(global1.zy), _wgslsmith_add_i32(-2147483647i, 7541i));
    global3 = _wgslsmith_mult_u32(u_input.b.x, u_input.b.x);
    var var_2 = ~(-abs(abs(min(vec4<i32>(global2[_wgslsmith_index_u32(1u, 18u)], -1i, u_input.d.x, u_input.a), vec4<i32>(-40332i, 52895i, global2[_wgslsmith_index_u32(0u, 18u)], -19692i)))));
    global4 = array<Struct_2, 2>();
    let var_3 = -980f;
    global0 = !vec2<bool>(var_1.b.a.x, 1u <= u_input.b.x);
    let x = u_input.a;
    s_output = func_2(vec4<f32>(_wgslsmith_f_op_f32(var_3 - var_0), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(247f * var_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0))))), var_0), global4[_wgslsmith_index_u32(u_input.b.x, 2u)], 1i);
}

