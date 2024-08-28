struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: array<Struct_1, 18>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> vec3<u32> {
    global0 = vec3<bool>(all(!(!select(global0.yx, global0.zy, global0.zy))), true, global0.x);
    return vec3<u32>(u_input.b.x, global1.a, countOneBits(97027u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = -u_input.c;
    let var_1 = any(!(!select(select(vec4<bool>(global1.b, true, global0.x, false), vec4<bool>(global0.x, false, false, true), vec4<bool>(global0.x, false, true, global0.x)), select(vec4<bool>(true, false, true, global0.x), vec4<bool>(global0.x, global1.b, global0.x, false), false), select(vec4<bool>(false, true, global1.b, true), vec4<bool>(global1.b, false, global1.b, false), vec4<bool>(global1.b, true, true, global0.x)))));
    let var_2 = true;
    var var_3 = countOneBits(vec2<i32>(firstLeadingBit(abs(u_input.a)), -2147483647i) << (arg_0.yz % vec2<u32>(32u)));
    var_0 = max(vec4<i32>(-2147483647i, var_3.x, firstTrailingBit(_wgslsmith_clamp_i32(var_0.x, 22067i, -var_3.x)), abs(0i)), abs(vec4<i32>(-2147483647i, _wgslsmith_div_i32(arg_1.x, ~var_0.x), var_3.x, _wgslsmith_sub_i32(var_3.x, var_3.x) ^ ~(-38937i))));
    return Struct_1(_wgslsmith_clamp_u32(reverseBits(arg_0.x), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.x, global1.a), 30451u), ~38534u), select(any(select(select(global0.yy, vec2<bool>(false, global0.x), true), vec2<bool>(global0.x, var_2), false)), (global1.a >> ((25933u | arg_0.x) % 32u)) < _wgslsmith_div_u32(18143u, 29338u), !global1.b));
}

fn func_1() -> StorageBuffer {
    global1 = func_3(func_2(), u_input.c);
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -245f) * _wgslsmith_div_f32(-1000f, 902f))), -320f, -873f, -558f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(200f, -1681f, -1507f, -1481f), vec4<f32>(1552f, 1229f, -214f, -1000f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-239f, -1346f, 2251f, 1421f), vec4<f32>(525f, 1000f, -1088f, 1845f), vec4<bool>(global0.x, global1.b, false, true))))))));
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, ~_wgslsmith_div_i32(min(u_input.a, u_input.c.x), 27182i)), max(vec2<i32>(-u_input.a, u_input.a << (global1.a % 32u)) | _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, u_input.a), countOneBits(u_input.c.ww)), u_input.c.xx << (u_input.b % vec2<u32>(32u))));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -509f)), 1i, _wgslsmith_mult_vec4_i32(u_input.c, u_input.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-873f * 1057f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.x, 991f, false)), _wgslsmith_f_op_f32(var_0.x - 378f))))))), vec3<u32>(~u_input.b.x, abs(20600u), 6009u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.c.x;
    let x = u_input.a;
    s_output = func_1();
}

