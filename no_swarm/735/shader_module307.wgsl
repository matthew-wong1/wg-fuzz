struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 26> = array<u32, 26>(4294967295u, 157u, 0u, 50372u, 4205u, 17692u, 42358u, 0u, 0u, 34225u, 4294967295u, 1u, 15478u, 82191u, 4294967295u, 0u, 15820u, 4294967295u, 5973u, 4294967295u, 0u, 1u, 0u, 0u, 7716u, 33959u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = all(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, true, false))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(false, true, true)), vec2<bool>(select(false, false, true), true), vec2<bool>(true, true)), vec2<bool>(true, select(all(vec2<bool>(true, true)), true, any(vec2<bool>(true, true))))));
    global0 = any(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, false, false, false)), !vec4<bool>(var_0, true, var_0, var_0), var_0)) | var_0;
    global1 = array<u32, 26>();
    global1 = array<u32, 26>();
    global1 = array<u32, 26>();
    return abs(~(-36962i));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -501f)));
    var var_1 = Struct_3(true);
    let var_2 = func_3();
    var var_3 = vec4<i32>(var_2, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_2, var_2, var_2), -vec3<i32>(var_2, var_2, 6382i)) ^ var_2, abs(abs(1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 15725i, var_2, var_2), vec4<i32>(var_2, var_2, var_2, 0i) & vec4<i32>(var_2, var_2, var_2, var_2)) ^ (var_2 << (global1[_wgslsmith_index_u32(abs(14966u), 26u)] % 32u))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 1i, 2147483647i, var_2), -_wgslsmith_add_vec4_i32(vec4<i32>(var_2, 2764i, 8609i, 0i), vec4<i32>(var_2, var_2, var_2, -7656i)));
    var var_4 = select(u_input.a.xz & vec2<u32>(0u, max(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)] >> (4294967295u % 32u))), vec2<u32>(firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 26u)]), ~(1u >> (1u % 32u))), true);
    return true;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(arg_1.b.x + -190f) <= _wgslsmith_f_op_f32(arg_1.d - 295f)) && true, !(u_input.a.x != abs(_wgslsmith_mult_u32(0u, 0u))), !(false & !all(vec2<bool>(false, false))));
    var_0 = vec3<bool>(var_0.x, true, all(!vec3<bool>(func_2(), var_0.x, arg_1.a.x > -2147483647i)));
    var var_1 = Struct_1(countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(arg_1.a, vec3<i32>(-1i, arg_1.c, arg_1.c)) & vec3<i32>(arg_1.c, arg_1.a.x, 0i), vec3<i32>(1i, -2147483647i, max(-1i, arg_1.c)), ~vec3<i32>(arg_1.c, 2147483647i, arg_1.a.x) ^ arg_1.a)), arg_1.b, ~firstTrailingBit(abs(arg_1.a.x)), _wgslsmith_f_op_f32(max(1522f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * -547f)) - -2562f))));
    var_1 = Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1726f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-201f, -811f))), _wgslsmith_f_op_vec2_f32(-var_1.b))), var_1.c << (global1[_wgslsmith_index_u32(37440u, 26u)] % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_1.b.x)))), 992f))));
    let var_2 = Struct_1(~(_wgslsmith_clamp_vec3_i32(arg_1.a << (u_input.a % vec3<u32>(32u)), vec3<i32>(8922i, arg_1.a.x, var_1.a.x), abs(var_1.a)) >> (_wgslsmith_sub_vec3_u32(~u_input.a, vec3<u32>(60003u, global1[_wgslsmith_index_u32(u_input.a.x, 26u)], global1[_wgslsmith_index_u32(19257u, 26u)])) % vec3<u32>(32u))), vec2<f32>(-894f, arg_1.b.x), 21179i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - -1000f)));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 26>();
    let var_0 = Struct_5(Struct_1(vec3<i32>(21831i, ~0i, _wgslsmith_clamp_i32(func_1(302f, Struct_1(vec3<i32>(-2147483647i, -21960i, 18717i), vec2<f32>(433f, -420f), 0i, 1464f)), abs(44687i), _wgslsmith_clamp_i32(-1i, 0i, 5359i))), vec2<f32>(1572f, _wgslsmith_div_f32(1701f, -1000f)), ~(~abs(-1i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -191f)))))), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(abs(vec3<i32>(0i, 30059i, 0i)), -vec3<i32>(-21875i, -17973i, 2147483647i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-19938i << (u_input.a.x % 32u), 0i), ~countOneBits(-vec2<i32>(-10978i, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b.x, ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 26u)]), u_input.a.zx & u_input.a.yy), vec2<u32>(_wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_div_u32(14832u, global1[_wgslsmith_index_u32(u_input.a.x, 26u)]))), 26u)], var_0.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.x, var_0.a.d, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.a.b.x, var_0.a.d))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(503f, var_0.a.d, var_0.a.d))))), -(reverseBits(-vec4<i32>(var_0.a.c, -2147483647i, var_0.b.x, var_0.a.c)) & select(~vec4<i32>(var_0.a.a.x, 34079i, -2147483647i, var_0.b.x), ~vec4<i32>(var_0.a.c, 1i, var_0.c, var_0.b.x), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)))));
}

