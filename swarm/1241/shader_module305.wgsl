struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(-353f, vec3<u32>(9255u, 10544u, 1245u), Struct_1(-75816i, true, vec2<bool>(true, true), vec2<bool>(true, false), vec4<f32>(113f, 987f, -321f, 1403f))), Struct_2(-971f, vec3<u32>(52879u, 49470u, 22958u), Struct_1(1577i, true, vec2<bool>(true, false), vec2<bool>(true, true), vec4<f32>(681f, -1082f, -1114f, -852f))), Struct_2(1961f, vec3<u32>(0u, 4294967295u, 119583u), Struct_1(21676i, true, vec2<bool>(true, false), vec2<bool>(true, false), vec4<f32>(-170f, 454f, -1063f, -2188f))), Struct_2(1606f, vec3<u32>(112655u, 67297u, 0u), Struct_1(6251i, false, vec2<bool>(false, true), vec2<bool>(false, false), vec4<f32>(-961f, -122f, 794f, -1176f))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_1(2147483647i, !global1.d.c.b, global1.d.c.c, global1.c.c, _wgslsmith_div_vec4_f32(vec4<f32>(1031f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1646f + global1.d.a)), -181f, _wgslsmith_div_f32(592f, _wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c.e) * vec4<f32>(-113f, _wgslsmith_f_op_f32(arg_0.c.e.x + global1.d.c.e.x), -745f, arg_0.a))));
    var var_1 = arg_0;
    var var_2 = false;
    var_2 = true;
    var var_3 = 611f;
    return _wgslsmith_f_op_f32(select(-412f, _wgslsmith_f_op_f32(round(3076f)), true));
}

fn func_2() -> f32 {
    var var_0 = Struct_3(49917u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1722f - _wgslsmith_f_op_f32(global1.c.e.x - -1081f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -382f), _wgslsmith_f_op_f32(778f + 423f)), true)) + global1.b), Struct_1(-7270i, select(!(80i >= global1.c.a), any(!vec3<bool>(global1.d.c.b, global1.c.d.x, false)), all(select(vec4<bool>(global1.d.c.b, global1.d.c.d.x, false, false), vec4<bool>(true, global1.c.b, global1.d.c.d.x, global1.c.d.x), vec4<bool>(true, false, global1.c.b, global1.c.b)))), global1.c.c, !global1.d.c.d, global1.c.e), Struct_2(_wgslsmith_f_op_f32(func_3(global1.d)), global1.d.b, Struct_1(max(1i, -global1.d.c.a), false, !global1.c.c, global1.c.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-676f, -1000f, global1.d.c.e.x, -874f)))))));
    global1 = Struct_3(~1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c.e.x)) * var_0.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a * -121f)))), Struct_1(var_0.d.c.a ^ var_0.d.c.a, !(!var_0.d.c.c.x || true), var_0.c.c, !vec2<bool>(global1.c.c.x && false, any(global1.d.c.d)), vec4<f32>(-325f, _wgslsmith_f_op_f32(1161f * var_0.b), -803f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.e.x) * _wgslsmith_f_op_f32(sign(312f))))), var_0.d);
    let var_1 = _wgslsmith_f_op_f32(-var_0.b);
    var_0 = Struct_3(4294967295u, global1.b, Struct_1(1i, var_0.d.c.d.x, vec2<bool>(true, global1.c.c.x), var_0.d.c.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-888f, global1.d.c.e.x, 1205f, -1000f) * vec4<f32>(var_1, 2672f, var_1, global1.d.a))) - global1.c.e)), Struct_2(_wgslsmith_div_f32(global1.d.c.e.x, global1.c.e.x), _wgslsmith_clamp_vec3_u32(min(_wgslsmith_add_vec3_u32(vec3<u32>(global1.d.b.x, 21018u, var_0.a), vec3<u32>(var_0.a, u_input.a.x, var_0.d.b.x)), u_input.a.ywy), var_0.d.b, vec3<u32>(36021u, var_0.d.b.x, 1u)), var_0.c));
    var var_2 = global1.d;
    return _wgslsmith_f_op_f32(global1.c.e.x * var_2.c.e.x);
}

fn func_1() -> Struct_3 {
    let var_0 = !(!vec3<bool>(all(vec3<bool>(global1.d.c.b, global1.d.c.c.x, global1.c.d.x)), global1.d.b.x <= 1u, global1.c.c.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))) * global1.b));
    let var_2 = ~(-vec4<i32>(1i, _wgslsmith_mult_i32(global1.c.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-2147483647i, global1.d.c.a))), 2147483647i, global1.d.c.a));
    let var_3 = 43534i;
    global0 = countOneBits(~global1.d.b.x);
    return Struct_3(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1))))), global1.d.c, global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(global1.d.c.a != -2147483647i);
    global1 = func_1();
    let var_1 = Struct_3(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-103f + _wgslsmith_f_op_f32(f32(-1f) * -336f)) * global1.b) + _wgslsmith_f_op_f32(trunc(global1.d.c.e.x))), func_1().c, func_1().d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 96985u, var_1.a), vec3<u32>(62976u, 4294967295u, 4294967295u)), 0u, select(reverseBits(_wgslsmith_mult_u32(1u, u_input.a.x)), _wgslsmith_sub_u32(u_input.b, 0u) & ~global1.d.b.x, true)), 1u, -2147483647i, vec4<i32>(global1.d.c.a, var_1.c.a, var_1.d.c.a, 0i));
}

