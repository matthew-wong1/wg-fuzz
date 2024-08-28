struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(54326u, 15266u, 0u, 1u);

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<bool, 29> = array<bool, 29>(false, false, true, false, true, false, false, false, false, true, true, true, false, false, false, false, true, false, false, false, false, false, false, false, false, true, true, true, true);

var<private> global3: i32;

var<private> global4: array<i32, 24> = array<i32, 24>(0i, 1i, i32(-2147483648), 0i, 0i, i32(-2147483648), i32(-2147483648), -12667i, 0i, 2147483647i, 0i, -67456i, -1i, 3901i, -1i, -2840i, 2147483647i, -75807i, 51059i, i32(-2147483648), 1i, 10781i, 38132i, 28842i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_3(arg_0.b, !select(select(!vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a.x, 29u)], arg_0.c, true, arg_0.c), !vec4<bool>(true, global2[_wgslsmith_index_u32(7261u, 29u)], true, true), arg_0.b.x > 974f), select(vec4<bool>(arg_0.c, false, false, global2[_wgslsmith_index_u32(global0.x, 29u)]), vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(global0.x, 29u)]), true), vec4<bool>(select(true, global2[_wgslsmith_index_u32(4294967295u, 29u)], true), any(vec4<bool>(false, arg_0.c, true, false)), 624f <= arg_0.b.x, false)), -firstLeadingBit(abs(vec2<i32>(u_input.c, u_input.c))), u_input.d << (30889u % 32u), _wgslsmith_f_op_f32(sign(arg_0.b.x)));
    var var_1 = global1[_wgslsmith_index_u32(30949u, 5u)];
    var var_2 = arg_0;
    let var_3 = var_1.a.xz;
    global1 = array<Struct_1, 5>();
    return false;
}

fn func_2(arg_0: vec4<u32>) -> vec2<f32> {
    global1 = array<Struct_1, 5>();
    var var_0 = global1[_wgslsmith_index_u32(~(~(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 0u, arg_0.x), 30987u) & u_input.b.x)), 5u)];
    var_0 = global1[_wgslsmith_index_u32(~var_0.a.x, 5u)];
    let var_1 = vec2<bool>(func_3(global1[_wgslsmith_index_u32(global0.x >> (_wgslsmith_clamp_u32(var_0.a.x, 31990u, _wgslsmith_mult_u32(1u, arg_0.x)) % 32u), 5u)]), !var_0.c);
    global4 = array<i32, 24>();
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(var_0.b))))));
}

fn func_1(arg_0: vec4<u32>) -> StorageBuffer {
    var var_0 = global0.zz;
    var_0 = global0.yz;
    let var_1 = global1[_wgslsmith_index_u32(abs(u_input.b.x), 5u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, 1000f, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, -283f, var_1.b.x)))))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(func_2(arg_0)), !(!(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 29u)], false, true), vec4<bool>(true, var_1.c, false, var_1.c), vec4<bool>(false, var_1.c, false, var_1.c)))), _wgslsmith_sub_vec2_i32(firstLeadingBit(~(~vec2<i32>(1785i, global4[_wgslsmith_index_u32(arg_0.x, 24u)]))), ~select(firstLeadingBit(vec2<i32>(global4[_wgslsmith_index_u32(0u, 24u)], 2147483647i)), vec2<i32>(-34861i, global4[_wgslsmith_index_u32(0u, 24u)]) << (vec2<u32>(u_input.e.x, var_1.a.x) % vec2<u32>(32u)), !vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 29u)], var_1.c))), -590i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(f32(-1f) * -166f)))), _wgslsmith_f_op_vec2_f32(func_2(firstLeadingBit(arg_0))).x));
    return StorageBuffer(var_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(605f, 148f, -2340f), var_2.zxx))))) * vec3<f32>(var_2.x, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(abs(367f))), var_3.e)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(24622i, var_3.c.x, var_3.d), -21712i, global4[_wgslsmith_index_u32(var_1.a.x | 1u, 24u)], var_3.c.x), vec4<i32>(_wgslsmith_mod_i32(u_input.c, var_3.d), var_3.c.x, -1i >> (var_1.a.x % 32u), global4[_wgslsmith_index_u32(4294967295u, 24u)])) << (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_1.a << (vec4<u32>(arg_0.x, 2940u, u_input.e.x, u_input.b.x) % vec4<u32>(32u)), ~var_1.a), min(~var_1.a, var_1.a)) % vec4<u32>(32u)), global4[_wgslsmith_index_u32(abs((var_1.a.x & firstTrailingBit(0u)) ^ _wgslsmith_mult_u32(countOneBits(var_1.a.x), 7522u)), 24u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 24>();
    var var_0 = ~_wgslsmith_mod_vec2_u32(~global0.zy, abs(global0.xx));
    global4 = array<i32, 24>();
    global4 = array<i32, 24>();
    global4 = array<i32, 24>();
    let x = u_input.a;
    s_output = func_1(vec4<u32>(global0.x, 4294967295u, 25016u, global0.x));
}

