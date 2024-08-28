struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_2,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: Struct_3,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1266f;

var<private> global1: Struct_5;

var<private> global2: array<i32, 10>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> bool {
    global2 = array<i32, 10>();
    global2 = array<i32, 10>();
    global2 = array<i32, 10>();
    var var_0 = max(global1.d.a, vec4<i32>(countOneBits(global2[_wgslsmith_index_u32(~(13036u & u_input.d.x), 10u)]), -2696i, global2[_wgslsmith_index_u32(~1u, 10u)], u_input.c.x));
    var var_1 = reverseBits(global1.d.a.x);
    return !(272f <= global1.e.x);
}

fn func_2(arg_0: Struct_3) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x))));
    let var_1 = -(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, global1.d.a.x, -33696i, 38802i), vec4<i32>(global1.d.a.x, global1.d.a.x, 37955i, -3759i)) & -(~arg_0.a)) ^ (vec4<i32>(~u_input.c.x << ((u_input.d.x ^ 4294967295u) % 32u), arg_0.a.x, u_input.a.x, _wgslsmith_div_i32(i32(-1i) * -9099i, _wgslsmith_dot_vec3_i32(arg_0.a.xyw, u_input.c.ywy))) | firstTrailingBit(vec4<i32>(36761i, -30036i, ~(-2147483647i), -2147483647i)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.e.x, 1235f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.e.x))))), -792f, 1000f);
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global1.e.x))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(global1.e.x * _wgslsmith_f_op_f32(-global1.e.x))), 1000f));
    return Struct_5(~abs(75943u), vec4<u32>(~global1.d.d.x, 1u, global1.d.b, 28729u), !(!global1.d.e.x), global1.d, vec3<f32>(global1.e.x, var_3, _wgslsmith_f_op_f32(f32(-1f) * -711f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-2325f, select(select(global1.d.e.xx, select(select(global1.d.e.zy, global1.d.e.zz, false), select(vec2<bool>(false, true), vec2<bool>(global1.d.e.x, false), global1.d.e.yy), global1.c), all(vec2<bool>(true, true))), !(!(!vec2<bool>(false, global1.d.e.x))), global1.d.e.xy), false);
    let var_1 = all(!vec4<bool>(!all(vec3<bool>(true, global1.d.e.x, var_0.c)), _wgslsmith_add_u32(u_input.d.x, 4294967295u) <= ~u_input.d.x, var_0.b.x, !func_1()));
    global1 = func_2(global1.d);
    global1 = func_2(global1.d);
    var var_2 = global1.d;
    let x = u_input.a;
    s_output = StorageBuffer(global1.e.x);
}

