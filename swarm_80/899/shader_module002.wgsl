struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_3,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: f32;

var<private> global2: Struct_4;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = arg_0.b.a.a;
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    var var_1 = _wgslsmith_f_op_f32(113f * arg_0.d.b);
    let var_2 = firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(firstTrailingBit(~58444u), 1u), arg_0.a.x));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.b), _wgslsmith_f_op_f32(abs(1149f))));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(-(i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(1121f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-868f * global2.c.b.a.b))) * global2.b.x)), true, _wgslsmith_f_op_f32(ceil(-283f)));
    return u_input.b.xxz;
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global2 = Struct_4(u_input.b.yzx, _wgslsmith_f_op_vec3_f32(-global2.b), global2.c, vec2<u32>(firstLeadingBit(~global2.d.x), ~(~0u)));
    global2 = Struct_4(func_3(), global2.b, global2.c, u_input.b.wy);
    let var_0 = global2.c.d.c;
    global0 = array<Struct_2, 10>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1134f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1075f + global2.c.d.b), 421f))), 223f) + _wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_clamp_vec4_u32(~u_input.b, ~vec4<u32>(global2.a.x, 4294967295u, global2.c.a.x, 18109u), vec4<u32>(u_input.b.x, 72365u, global2.d.x, 1u)), Struct_2(global2.c.b.a), Struct_1(_wgslsmith_mult_i32(-17330i, -1i), -973f, all(vec4<bool>(false, false, false, global2.c.c.c)), _wgslsmith_f_op_f32(floor(global2.b.x))), Struct_1(-u_input.a, 1559f, global2.b.x < global2.c.c.d, global2.c.d.d)))));
    return 1016f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 10>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(global2.c)))))) - _wgslsmith_f_op_f32(func_2((~vec4<i32>(global2.c.d.a, global2.c.d.a, 10861i, -1i) ^ ~vec4<i32>(u_input.a, -11247i, -2147483647i, -57391i)) >> (((global2.c.a ^ u_input.b) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, global2.d.x), global2.c.a)) % vec4<u32>(32u)))));
    var var_0 = vec2<u32>(countOneBits(~47048u), _wgslsmith_sub_u32(~(_wgslsmith_dot_vec2_u32(global2.c.a.yy, global2.a.xz) ^ _wgslsmith_mult_u32(u_input.b.x, global2.c.a.x)), u_input.b.x));
    let var_1 = Struct_2(Struct_1(~(~(u_input.a ^ u_input.a)), global2.b.x, _wgslsmith_mult_u32(0u << (var_0.x % 32u), _wgslsmith_div_u32(global2.c.a.x, 67510u)) == u_input.b.x, _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(global2.c.c.d, _wgslsmith_f_op_f32(func_1(Struct_3(vec4<u32>(var_0.x, global2.d.x, global2.d.x, 1u), Struct_2(global2.c.b.a), Struct_1(global2.c.d.a, global2.b.x, true, global2.b.x), Struct_1(u_input.a, global2.c.b.a.d, global2.c.c.c, -1333f))))))));
    let var_2 = 29568i;
    var var_3 = -vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -58033i) >> (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u)), vec2<i32>(0i, 1i)), 16026i);
    let var_4 = any(vec2<bool>(all(!(!vec2<bool>(global2.c.b.a.c, global2.c.d.c))), true));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(firstTrailingBit(-58453i), var_1.a.a) | select(vec2<i32>(var_2, var_2), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.a, var_2), vec2<i32>(0i, var_1.a.a)), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.d.b * global2.b.x) - -1000f)));
}

