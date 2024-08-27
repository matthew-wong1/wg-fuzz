struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(14376u, 39172u), vec2<u32>(28936u, 51193u), vec2<u32>(7119u, 18173u), vec2<u32>(28289u, 1u), vec2<u32>(1u, 26069u), vec2<u32>(1u, 20708u), vec2<u32>(8378u, 1u), vec2<u32>(1u, 1u), vec2<u32>(25845u, 19418u), vec2<u32>(0u, 1121u), vec2<u32>(2314u, 0u), vec2<u32>(1u, 42987u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(2755u, 63502u), vec2<u32>(44087u, 4294967295u), vec2<u32>(10785u, 31146u), vec2<u32>(0u, 25261u), vec2<u32>(15303u, 1u), vec2<u32>(27602u, 138u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 22568u), vec2<u32>(1877u, 4294967295u), vec2<u32>(1u, 74066u), vec2<u32>(58994u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(0u, 9179u), vec2<u32>(10785u, 4294967295u), vec2<u32>(4294967295u, 4294967295u));

var<private> global1: Struct_3 = Struct_3(2378f);

var<private> global2: Struct_4;

var<private> global3: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    return global3.c;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec4<f32>) -> vec4<i32> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_dot_vec3_u32(((u_input.b | ~vec3<u32>(4294967295u, u_input.b.x, 5438u)) ^ ~(u_input.b & u_input.b)) | vec3<u32>(~16484u, _wgslsmith_mod_u32(~1u, ~0u), 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x | ~select(u_input.b.x, u_input.b.x, true), ~(~u_input.b.x)));
    var var_2 = select(vec2<i32>(reverseBits(~(i32(-1i) * -1i)), global2.a.c.a), -vec2<i32>(0i, global3.d ^ global2.c), select(vec2<bool>(-var_0.a == _wgslsmith_dot_vec2_i32(global3.b.xy, global2.a.b.zx), arg_0), select(vec2<bool>(false, !arg_0), !(!vec2<bool>(global2.d, arg_0)), select(vec2<bool>(global2.d, global2.d), !vec2<bool>(false, arg_0), all(vec4<bool>(arg_0, global2.d, arg_0, arg_0)))), true));
    var var_3 = global3.b.wy;
    var_2 = -(~(vec2<i32>(-1i) * -vec2<i32>(var_2.x, 16778i))) >> (vec2<u32>(_wgslsmith_mult_u32(countOneBits(u_input.b.x), ~firstTrailingBit(36793u)), abs(1u)) % vec2<u32>(32u));
    return global3.b;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> i32 {
    let var_0 = true;
    global0 = array<vec2<u32>, 32>();
    global2 = Struct_4(arg_0, abs(~_wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(-27175i, -2147483647i, u_input.a, arg_0.b.x))) & _wgslsmith_sub_i32(abs(i32(-1i) * -1413i), global2.b), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 2147483647i), vec3<i32>(59304i, 1i, -21907i))), u_input.c.xzw << (abs(vec3<u32>(43292u, 0u, 0u)) % vec3<u32>(32u))), 6095i, 1325i & global3.b.x), true);
    let var_1 = func_2();
    var var_2 = firstTrailingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -11341i, -29476i, 11102i ^ global3.c.a, 34306i), func_3(var_0, Struct_3(global2.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global3.a, 1225f, global3.a)))));
    return ~(countOneBits(u_input.a) << (~_wgslsmith_add_u32(64470u, 0u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_clamp_i32(~firstLeadingBit(u_input.c.x >> (3792u % 32u)), func_1(global2.a, global2.c), reverseBits(u_input.c.x ^ _wgslsmith_sub_i32(2147483647i, 1i))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, 1932f) + _wgslsmith_f_op_f32(floor(global3.a)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_1);
    var var_3 = Struct_1(-14424i);
    global0 = array<vec2<u32>, 32>();
    var_0 = func_2();
    global1 = Struct_3(_wgslsmith_f_op_f32(535f - -244f));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

