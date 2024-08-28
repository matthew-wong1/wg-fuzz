struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 37480u;

var<private> global1: f32;

var<private> global2: Struct_4 = Struct_4(Struct_2(vec2<i32>(-13117i, i32(-2147483648)), Struct_1(vec3<f32>(-1000f, -3227f, -1070f), -26773i, false, 15315i)), Struct_2(vec2<i32>(36869i, 7196i), Struct_1(vec3<f32>(1408f, -569f, -867f), -10913i, false, 56596i)), vec4<bool>(false, true, true, true), true, -10453i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> vec4<bool> {
    let var_0 = global2.a.a;
    global2 = Struct_4(global2.b, global2.a, global2.c, true, i32(-1i) * -_wgslsmith_clamp_i32(arg_0.x, -global2.a.b.d, u_input.b.x));
    var var_1 = Struct_1(global2.a.b.a, _wgslsmith_sub_i32(var_0.x, min(~(-12758i), var_0.x)), true, firstLeadingBit(u_input.b.x));
    var var_2 = select(!select(select(select(global2.c.zy, global2.c.wx, vec2<bool>(false, global2.c.x)), vec2<bool>(global2.c.x, var_1.c), vec2<bool>(true, true)), global2.c.zy, global2.c.ww), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-604f * global2.b.b.a.x) - -151f) > _wgslsmith_f_op_f32(sign(global2.a.b.a.x)), true), !var_1.c);
    let var_3 = u_input.b;
    return vec4<bool>(any(global2.c.wy) && false, any(!vec2<bool>(var_1.c, true || arg_1)), (~_wgslsmith_sub_u32(u_input.a, 1u) | _wgslsmith_sub_u32(~14869u, ~4294967295u)) <= 16078u, true);
}

fn func_2() -> Struct_3 {
    var var_0 = -839f;
    let var_1 = Struct_4(Struct_2(u_input.b, global2.b.b), Struct_2(u_input.b, global2.a.b), !(!func_3(~vec4<i32>(global2.b.b.b, -68432i, 0i, 23484i), global2.c.x || global2.b.b.c)), global2.c.x, -14594i);
    global0 = 38087u;
    var var_2 = var_1;
    return Struct_3(global2.b, var_1.a, _wgslsmith_f_op_vec3_f32(exp2(var_2.a.b.a)), reverseBits(1i), _wgslsmith_f_op_f32(global2.b.b.a.x - var_1.b.b.a.x));
}

fn func_1() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global2.a.b.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-751f, 489f, global2.a.b.a.x)))))), 0i, true, 0i);
    let var_1 = any(global2.c.wxz);
    global1 = _wgslsmith_f_op_f32(-var_0.a.x);
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b.a.x * var_0.a.x)))), var_0.a.x));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~select(vec4<i32>(1i, 8961i, 34997i, -1i), vec4<i32>(2515i, u_input.b.x, var_2.a.b.b, u_input.b.x), true) | vec4<i32>(func_2().a.b.d, -9907i, var_0.d, global2.b.a.x), vec4<i32>(abs(_wgslsmith_div_i32(2147483647i, u_input.b.x)), -2147483647i, _wgslsmith_div_i32(-34204i << (0u % 32u), ~(-5956i)), var_2.d)), vec4<i32>(firstLeadingBit(1i), firstTrailingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global2.e, 0i, var_0.d), vec4<i32>(-1290i, u_input.b.x, global2.b.b.d, var_0.d))), _wgslsmith_div_i32(global2.b.a.x | u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i, -1i, -11089i), ~0i, _wgslsmith_mult_i32(var_0.d, -51672i))), -max(var_0.d, abs(2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -624f;
    let var_0 = ~_wgslsmith_add_u32(~u_input.a, u_input.a) < ~16625u;
    let var_1 = func_1();
    var var_2 = true;
    var var_3 = -func_1();
    var var_4 = ~global2.a.a;
    var_4 = vec2<i32>(var_4.x | u_input.b.x, abs(~(-2147483647i)));
    let var_5 = global2.a.b.a;
    var var_6 = firstLeadingBit(vec4<u32>(~(~u_input.a), firstTrailingBit(u_input.a & 30121u), _wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(70072u, u_input.a)), 1u) << (select(firstLeadingBit(vec4<u32>(0u, 22887u, 31693u, 96025u)), ~vec4<u32>(52672u, u_input.a, 3859u, u_input.a), vec4<bool>(global2.b.b.c, global2.d, true, all(global2.c.zz))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(-(~(-vec3<i32>(var_4.x, global2.e, 10969i))), countOneBits(vec3<i32>(func_1(), abs(var_1), -1i))));
}

