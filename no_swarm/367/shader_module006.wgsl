struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
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

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-493f, -484f, -743f, 1405f), vec4<f32>(206f, -657f, 1120f, -2558f), vec4<f32>(-513f, -1561f, -856f, -1559f), vec4<f32>(-1376f, -923f, 683f, 1543f), vec4<f32>(1061f, -481f, 249f, 340f), vec4<f32>(454f, 667f, 810f, 3338f), vec4<f32>(-690f, -1541f, 905f, -657f), vec4<f32>(-875f, -1000f, -1069f, -1918f));

var<private> global2: Struct_3 = Struct_3(vec3<bool>(true, true, true), vec4<u32>(37912u, 4294967295u, 1u, 0u), Struct_1(0u, vec3<bool>(true, false, true)), Struct_2(1u), Struct_2(40937u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    global0 = array<vec4<bool>, 29>();
    var var_0 = min(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(~1i, 2147483647i), ~(firstTrailingBit(-2147483647i) ^ _wgslsmith_clamp_i32(24736i, -27038i, 34963i)), _wgslsmith_sub_i32(-2147483647i & _wgslsmith_clamp_i32(58337i, -2147483647i, -2147483647i), countOneBits(-42957i))));
    var var_1 = select(_wgslsmith_div_u32(u_input.b, ~4294967295u), ~(~4294967295u), all(vec4<bool>(select(true, true, 1u <= u_input.a.x), !(global2.c.b.x != false), select(false || global2.a.x, true, global2.a.x && false), global2.c.b.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f)))));
    var var_3 = var_2.x;
    return !select(global2.a, global2.a, !global2.a.x);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool) -> Struct_3 {
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    global2 = Struct_3(func_3(), ~global2.b, global2.c, global2.d, global2.d);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -835f))))));
    let var_1 = firstTrailingBit(~vec3<i32>(1i, 1i, 1i));
    return Struct_3(!(!(!(!global2.a))), min(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_0, arg_0), 69660u, 0u, u_input.c.x), ~(~global2.b)), vec4<u32>(arg_0, u_input.b, ~1u, 0u)), Struct_1(~global2.d.a, global2.a), global2.d, global2.e);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool) -> vec2<u32> {
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    var var_0 = func_2(~0u, 7358u, true);
    return ~(~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.c, ~vec2<u32>(4294967295u, 50330u)), vec2<u32>(abs(global2.d.a), ~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 29>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-881f)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -751f);
    var var_2 = ~vec2<u32>(u_input.c.x, 70813u) ^ _wgslsmith_clamp_vec2_u32(u_input.a, countOneBits(global2.b.ww), (~u_input.a ^ u_input.a) << (_wgslsmith_mult_vec2_u32(func_1(Struct_3(global2.a, global2.b, global2.c, Struct_2(u_input.b), Struct_2(4294967295u)), vec4<i32>(-16423i, -23833i, 16395i, -734i), global2.a.x), vec2<u32>(global2.d.a, u_input.c.x)) % vec2<u32>(32u)));
    global2 = func_2(select(_wgslsmith_add_u32(~(~var_2.x), 0u), 11688u, true), func_2(u_input.b, u_input.a.x, func_3().x).b.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

