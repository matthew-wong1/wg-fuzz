struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: vec2<f32> = vec2<f32>(-912f, -613f);

var<private> global2: Struct_1;

var<private> global3: Struct_2 = Struct_2(true, Struct_1(46960i, vec2<u32>(13537u, 0u), false, vec3<i32>(23743i, 1i, -12819i), false), Struct_1(-25238i, vec2<u32>(53512u, 0u), true, vec3<i32>(-45970i, 1i, 25390i), false), vec3<bool>(false, false, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global0 = array<Struct_1, 28>();
    let var_0 = 639f;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(152f)), var_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) * _wgslsmith_f_op_f32(324f - -1349f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(112f, var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -935f) + 1000f))))));
    let var_1 = global3.b;
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(308f, -110f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))) * _wgslsmith_f_op_f32(global1.x * -944f))));
    return reverseBits(global3.b.b.x);
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    let var_0 = countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-43772i, _wgslsmith_add_i32(global3.b.a, arg_0.c.a), 9330i, _wgslsmith_mod_i32(0i, -2147483647i)), -(~vec4<i32>(32819i, 2147483647i, 14021i, 1i))) ^ vec4<i32>(_wgslsmith_mod_i32(select(-13131i, -49927i, true), 0i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i, arg_1, 1i), vec4<i32>(arg_0.c.a, 20907i, arg_0.c.a, 9910i)), vec4<i32>(arg_2.a, 41105i, -16330i, -1i)), _wgslsmith_add_i32(arg_1, arg_2.a), u_input.a.x));
    let var_1 = arg_0;
    var var_2 = vec4<u32>(~(~func_3(!vec2<bool>(global3.b.c, false))), u_input.c, global3.b.b.x, (~min(arg_0.c.b.x, var_1.c.b.x) | (var_1.b.b.x << (25332u % 32u))) | ~global2.b.x);
    var var_3 = Struct_1(arg_2.d.x, select(~(~abs(var_2.wx)), ~select(vec2<u32>(40863u, u_input.c) >> (vec2<u32>(arg_0.b.b.x, var_1.c.b.x) % vec2<u32>(32u)), vec2<u32>(global3.b.b.x, 4294967295u), vec2<bool>(global3.d.x, false)), global3.d.xx), var_1.a, firstTrailingBit(abs(max(-arg_0.c.d, vec3<i32>(-18995i, arg_2.a, 0i) >> (vec3<u32>(4294967295u, global3.c.b.x, 72166u) % vec3<u32>(32u))))), global3.c.e);
    global1 = _wgslsmith_f_op_vec2_f32(trunc(arg_3.xw));
    return -1038f;
}

fn func_1() -> Struct_2 {
    global2 = global3.c;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1699f, global1.x, 666f, -386f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 438f, global1.x)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-992f, -528f, -184f, global1.x)))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1514f, 1000f, 475f, 618f), vec4<f32>(global1.x, global1.x, -290f, global1.x)))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(false, global0[_wgslsmith_index_u32(24872u, 28u)], global3.b, global3.d), 1i, Struct_1(global3.b.d.x, vec2<u32>(1u, global2.b.x), false, global3.b.d, true), vec4<f32>(global1.x, global1.x, global1.x, -1000f))), global1.x, global1.x, _wgslsmith_f_op_f32(global1.x - -1000f))))));
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.zw))))));
    var var_1 = 1u;
    let var_2 = global2.e;
    return Struct_2(all(select(vec3<bool>(any(vec2<bool>(global2.e, true)), global2.c | global3.a, any(global3.d.zy)), select(vec3<bool>(global2.c, true, true), !vec3<bool>(false, global2.e, false), any(global3.d)), global3.d)), global3.c, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~(global2.b.x >> (27357u % 32u)), ~(~43742u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, global2.b.x), ~64371u, ~global3.b.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global3.c.b.x, global2.b.x), vec3<u32>(4294967295u, global3.c.b.x, 29395u), vec3<u32>(global3.b.b.x, 1u, 4294967295u)) | (vec3<u32>(u_input.c, global2.b.x, 77159u) << (vec3<u32>(1u, global3.c.b.x, u_input.c) % vec3<u32>(32u))))), 28u)], !global3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global2.c, false, global3.d.x, _wgslsmith_add_u32(1u, u_input.c) > ~47627u);
    var var_1 = global2.e;
    var var_2 = func_1();
    let var_3 = func_1().b;
    let var_4 = var_2.c.e;
    var var_5 = global1.x;
    let var_6 = select(~vec4<u32>(global3.b.b.x, _wgslsmith_dot_vec2_u32(var_3.b, ~var_3.b), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.x, global2.b.x), vec2<u32>(33660u, 20175u)), 4294967295u), vec4<u32>(func_1().b.b.x, 4294967295u, var_2.c.b.x, ~(~(~3505u))), select(select(vec4<bool>(true, !var_3.c, all(vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.b.c)), global2.c), !select(vec4<bool>(global3.a, true, var_0.x, global3.a), vec4<bool>(global2.c, false, true, false), vec4<bool>(true, false, true, false)), !(!vec4<bool>(false, false, false, global2.c))), select(!select(vec4<bool>(false, global3.b.c, global3.d.x, var_0.x), vec4<bool>(true, var_2.c.c, var_3.e, true), true), vec4<bool>(all(vec3<bool>(global3.a, false, global2.e)), global3.a, !global2.e, var_3.e), true), !vec4<bool>(func_1().b.e, true, global2.c, false)));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(firstTrailingBit(4294967295u), global3.c.b.x, ~var_3.b.x << (global2.b.x % 32u)), var_6.zww), vec2<f32>(global1.x, global1.x), 79671u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -369f) - -234f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.x)))), 4294967295u);
}

