struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32) -> i32 {
    return 1i;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    global1 = abs(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.c.zw, arg_0.b.yx), ~(-3065i)), -arg_0.b.x)) ^ u_input.e;
    global0 = arg_0.e.x;
    global1 = _wgslsmith_mult_i32(firstTrailingBit(u_input.e) << ((~select(1u, 4294967295u, false) & ~(~26880u)) % 32u), _wgslsmith_mult_i32(u_input.a.x, -35621i));
    global0 = arg_0.e.x;
    let var_0 = abs(countOneBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(26474u, 74193u), vec2<u32>(38776u, 17467u), vec2<bool>(true, arg_0.e.x)), vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 0u), ~vec2<u32>(0u, 1u)), vec2<u32>(1u, 1u))));
    return u_input.d.x;
}

fn func_1() -> StorageBuffer {
    global0 = !any(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)));
    global1 = ~(~(~(-33727i)));
    var var_0 = vec3<i32>(min(_wgslsmith_sub_i32(u_input.b | 19746i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.c.xxx)), abs(func_2(-711f))), func_3(Struct_1(1628f, u_input.c, vec4<f32>(1443f, 657f, 1192f, 269f), 1470f, vec2<bool>(false, false)), all(vec2<bool>(true, true))) >> (0u % 32u), u_input.a.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(~(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 69833u), vec3<u32>(1u, 76387u, 0u))), abs(0u)), vec3<u32>(min(countOneBits(28578u), select(55525u, 52519u, false)), 42362u, 1u)) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(808f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1241f * -1000f))))));
    global0 = any(select(vec4<bool>(any(vec3<bool>(false, true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), true, false), vec4<bool>(true, false, false, true), true));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(856f, -1000f, 1920f), _wgslsmith_div_vec3_f32(vec3<f32>(554f, -1000f, -1682f), vec3<f32>(-1652f, 765f, 1063f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let x = u_input.a;
    s_output = func_1();
}

