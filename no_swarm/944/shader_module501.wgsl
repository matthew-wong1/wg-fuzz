struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17>;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, 38747i, -63463i);

var<private> global2: vec4<u32> = vec4<u32>(33540u, 1u, 0u, 7259u);

var<private> global3: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> bool {
    var var_0 = global3.b.a;
    global2 = vec4<u32>(_wgslsmith_clamp_u32(global2.x, ~(~abs(0u)), u_input.b.x), 0u, 4294967295u, _wgslsmith_div_u32(14962u, 73648u));
    global0 = array<vec2<bool>, 17>();
    let var_1 = ~3189u;
    global0 = array<vec2<bool>, 17>();
    return any(vec4<bool>(global3.b.b, true, false, arg_2));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    return Struct_1(vec2<i32>(36304i, global1.x), func_2(Struct_2(global3.b, abs(vec4<i32>(global3.a.a.c, -1i, global1.x, -1i)) << (vec4<u32>(32902u, 0u, arg_0, 49681u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2043f)) - -138f)), any(select(!vec2<bool>(global3.b.b, arg_1.a.b), select(vec2<bool>(false, arg_1.a.b), vec2<bool>(arg_1.a.b, false), true), all(vec4<bool>(global3.b.b, false, true, arg_1.a.b))))), arg_1.a.c);
}

fn func_3() -> vec2<f32> {
    global0 = array<vec2<bool>, 17>();
    global0 = array<vec2<bool>, 17>();
    global3 = Struct_3(global3.a, Struct_1(-_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global3.a.b.x, u_input.c.x), vec2<i32>(-1i, -1i)), -vec2<i32>(0i, global3.a.a.a.x)), func_2(Struct_2(global3.a.a, vec4<i32>(-16642i, global3.b.a.x, -59083i, -34171i)), 894f, global3.a.a.b), global1.x ^ 2147483647i));
    var var_0 = vec4<f32>(-375f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1081f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-938f, _wgslsmith_f_op_f32(f32(-1f) * -494f)))))), _wgslsmith_f_op_f32(f32(-1f) * -343f), -673f);
    global1 = vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(global1.x, ~_wgslsmith_div_i32(global1.x, 1000i), -25535i)), -21829i, _wgslsmith_mult_i32(func_1(max(21442u, ~global2.x), global3.a, _wgslsmith_f_op_f32(select(1582f, _wgslsmith_f_op_f32(-var_0.x), any(global0[_wgslsmith_index_u32(40039u, 17u)])))).a.x, 1i));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-710f, var_0.x)), var_0.yy)), var_0.zz) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1608f, var_0.x))), -1561f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec2<i32>(_wgslsmith_dot_vec2_i32(-global3.a.a.a, global3.b.a), 23098i), false, _wgslsmith_add_i32(~(-4795i), global1.x));
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c, 2147483647i), vec2<i32>(min(u_input.c.x << (u_input.b.x % 32u), global1.x << (global2.x % 32u)) | 34555i, firstLeadingBit(_wgslsmith_dot_vec2_i32(global1.xz, vec2<i32>(2147483647i, -1i) | vec2<i32>(global1.x, -2147483647i)))));
    let var_2 = countOneBits(-2147483647i >> (global2.x % 32u));
    let var_3 = 969f;
    let var_4 = 4968i;
    let var_5 = func_1(37199u, global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(round(-114f)), u_input.a < global3.b.a.x)) - -924f)));
    let var_6 = var_0.b;
    let var_7 = global3.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~u_input.b.yx)), _wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_clamp_u32(~4294967295u, 2999u, global2.x), var_3, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3 - -1743f), -1926f, !all(!vec3<bool>(false, var_5.b, false)))));
}

