struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1>;

var<private> global1: array<Struct_2, 29>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> bool {
    var var_0 = all(vec2<bool>(false, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    global1 = array<Struct_2, 29>();
    var var_1 = Struct_1(true & all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true))), all(!vec3<bool>(true, true, any(vec3<bool>(false, false, true)))), ~reverseBits(vec3<u32>(~u_input.b.x, 16550u, 4294967295u)), abs(~max(~u_input.c, 1u)), -318f);
    var var_2 = Struct_2(~41435i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(4294967295u, 1u)])))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(1u, 1u)] * global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), global0[_wgslsmith_index_u32(1u, 1u)])))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.e, _wgslsmith_f_op_f32(f32(-1f) * -775f), var_1.e, -1525f))), Struct_1(!(!(!var_1.a)), var_1.b, abs(vec3<u32>(firstLeadingBit(u_input.b.x), 4294967295u, _wgslsmith_dot_vec3_u32(u_input.b, var_1.c))), 10805u, -1397f));
    var var_3 = Struct_1(true, false, var_2.d.c, var_2.d.c.x, -1000f);
    return all(select(vec4<bool>(!var_3.a, true, var_1.a, any(vec3<bool>(true, true, false))), !vec4<bool>(false, true, true, var_2.d.a), false)) | true;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    global1 = array<Struct_2, 29>();
    let var_0 = u_input.e;
    global0 = array<vec3<f32>, 1>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0.b.x)))))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + arg_0.c.x))), !(false & arg_0.d.a), arg_0.d.c << (vec3<u32>(min(4294967295u, arg_0.d.d), ~1u, 4294967295u) % vec3<u32>(32u)), arg_0.d.d, _wgslsmith_f_op_f32(max(-2352f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-385f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - -113f)))));
    let var_2 = countOneBits(vec4<i32>(u_input.d.x, -39809i, arg_0.a, u_input.a));
    return 43973u;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = vec3<f32>(1f, 1f, 1f);
    var var_1 = -u_input.a >> ((abs(~(~14540u)) ^ func_4(global1[_wgslsmith_index_u32(u_input.c >> (~u_input.c % 32u), 29u)], u_input.b.x, vec3<bool>(all(vec3<bool>(false, true, false)), func_3(arg_0.yzy, arg_0.x), all(vec2<bool>(false, true))))) % 32u);
    global1 = array<Struct_2, 29>();
    global1 = array<Struct_2, 29>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0[_wgslsmith_index_u32(~u_input.c, 1u)])))));
    return Struct_2(arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -939f), _wgslsmith_f_op_f32(f32(-1f) * -216f))))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0.x))))), Struct_1(true, !(1u > u_input.b.x), u_input.b, 33888u, _wgslsmith_f_op_f32(min(-289f, -655f))));
}

fn func_1(arg_0: vec2<bool>) -> vec4<u32> {
    var var_0 = Struct_1(arg_0.x, arg_0.x, ~u_input.b, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1079f, 2383f, false))));
    var var_1 = !(!(countOneBits(abs(-1i)) < ~reverseBits(u_input.e)));
    let var_2 = true;
    let var_3 = func_2(vec4<i32>(2147483647i, ~29038i, -1i, _wgslsmith_add_i32(~u_input.a, -2147483647i)) | ~vec4<i32>(u_input.a, u_input.a, -10711i, 2147483647i << (var_0.c.x % 32u)));
    var var_4 = func_2(~(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, 18335i, 4241i, u_input.e) | vec4<i32>(var_3.a, -6286i, u_input.a, 0i), -vec4<i32>(u_input.e, var_3.a, u_input.e, 1i)) ^ _wgslsmith_mult_vec4_i32(~vec4<i32>(1i, var_3.a, 15987i, -1i), vec4<i32>(2147483647i, u_input.d.x, u_input.a, 1i) | vec4<i32>(15575i, -2147483647i, u_input.a, var_3.a))));
    return vec4<u32>(~_wgslsmith_div_u32(1u, ~var_0.c.x), ~u_input.b.x, _wgslsmith_mult_u32(func_4(Struct_2(min(37908i, u_input.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1058f, var_0.e, var_0.e)), _wgslsmith_f_op_vec4_f32(ceil(var_4.c)), func_2(vec4<i32>(1i, -2157i, var_4.a, -11477i)).d), ~(~27476u), vec3<bool>(true, var_3.d.a, true)), _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, u_input.c), _wgslsmith_clamp_u32(~51640u, ~u_input.b.x, max(u_input.b.x, 91115u)))), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 1>();
    let var_0 = func_1(vec2<bool>(false, !(8773u < u_input.b.x)));
    global1 = array<Struct_2, 29>();
    global1 = array<Struct_2, 29>();
    var var_1 = vec4<f32>(-1040f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1119f, _wgslsmith_f_op_f32(abs(1274f)))) * func_2(~vec4<i32>(1i, u_input.a, -32868i, 2147483647i)).c.x))), _wgslsmith_f_op_f32(abs(-930f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_f_op_f32(trunc(805f)), 19546u <= u_input.b.x)))), _wgslsmith_div_f32(-1022f, _wgslsmith_div_f32(-380f, -1079f)))));
    global1 = array<Struct_2, 29>();
    let var_2 = func_2(abs(~vec4<i32>(abs(-2147483647i), -1i, countOneBits(u_input.d.x), _wgslsmith_mult_i32(u_input.d.x, -2147483647i)))).d;
    global1 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -220f), min(~u_input.e, 44345i), -select(_wgslsmith_mult_i32(abs(4121i), min(u_input.e, u_input.d.x)), u_input.d.x, true), 1u, var_0);
}

