struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = 402f;

var<private> global2: array<Struct_1, 30>;

var<private> global3: array<Struct_1, 5>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    global3 = array<Struct_1, 5>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a.b.x + _wgslsmith_f_op_f32(round(568f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(2844f)))), 2588f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_2.a.d.x))))));
    var var_1 = Struct_1(~1u, arg_2.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -839f) - _wgslsmith_f_op_f32(floor(788f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.b.wzy))), !any(vec2<bool>(u_input.d > -2147483647i, all(vec3<bool>(global0.a.e, arg_2.a.e, false)))));
    global2 = array<Struct_1, 30>();
    let var_2 = _wgslsmith_add_vec3_i32(~(vec3<i32>(firstTrailingBit(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-30625i, 54122i, u_input.d, -14367i), vec4<i32>(u_input.d, -2147483647i, u_input.d, 11620i)), u_input.d ^ 32368i) | -(~vec3<i32>(u_input.d, u_input.d, u_input.d))), -reverseBits(~(-vec3<i32>(u_input.d, -2147483647i, u_input.d))));
    return vec3<bool>(any(!select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_1.e, false, arg_2.a.e), false)) || any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(arg_1.e, arg_2.a.e), arg_1.e), true)), !any(vec2<bool>(any(vec4<bool>(arg_0, global0.a.e, global0.a.e, false)), true)), all(select(vec3<bool>(any(vec4<bool>(false, true, arg_2.a.e, true)), true, arg_0), select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, false, var_1.e), var_1.e), select(vec3<bool>(false, global0.a.e, arg_2.a.e), vec3<bool>(true, true, false), false), vec3<bool>(arg_2.a.e, arg_2.a.e, arg_2.a.e)), true)));
}

fn func_2() -> Struct_1 {
    var var_0 = !vec2<bool>(any(func_3(4294967295u != u_input.a, Struct_1(global0.a.a, vec4<f32>(295f, global0.a.d.x, global0.a.c, global0.a.d.x), 1254f, global0.a.b.wyx, global0.a.e), Struct_2(global2[_wgslsmith_index_u32(u_input.a, 30u)]))), func_3(!(!global0.a.e), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~20016u, ~u_input.c.x), 5u)], Struct_2(global2[_wgslsmith_index_u32(~u_input.b.x, 30u)])).x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-780f)) + -210f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0.a.d.x, global0.a.d.x)), 127f)), -2365f))));
    let var_2 = (vec2<i32>(~0i, max(_wgslsmith_mult_i32(u_input.d, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, 2147483647i), vec4<i32>(2147483647i, u_input.d, 23003i, u_input.d)))) << (u_input.c.ww % vec2<u32>(32u))) << (vec2<u32>(global0.a.a, 4294967295u | (1u & (global0.a.a >> (global0.a.a % 32u)))) % vec2<u32>(32u));
    var var_3 = Struct_2(global3[_wgslsmith_index_u32(~abs(54523u), 5u)]);
    let var_4 = Struct_2(var_3.a);
    return var_4.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    var var_0 = u_input.d << (u_input.c.x % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-global0.a.b.xzy);
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 30u)]);
    var var_3 = ~u_input.c.x;
    var var_4 = global0.a;
    return Struct_2(arg_0);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> f32 {
    global0 = func_4(func_2(), global0.a.e);
    global1 = _wgslsmith_f_op_f32(max(198f, 1159f));
    let var_0 = ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 110520u, u_input.c.x, u_input.a) & ~vec4<u32>(1u, global0.a.a, u_input.a, 1u), ~u_input.c, ~vec4<u32>(1u, 0u, arg_0.a, 1u)) & vec4<u32>(0u, global0.a.a, 80166u, u_input.a));
    var var_1 = func_4(global2[_wgslsmith_index_u32(firstLeadingBit(~global0.a.a), 30u)], global0.a.e);
    global0 = func_4(Struct_1(34296u, vec4<f32>(-838f, func_4(func_2(), global0.a.e).a.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.c * arg_0.c))), _wgslsmith_f_op_f32(153f + global0.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(440f, arg_1) * 1177f) - arg_0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1065f, 378f, 1256f), vec3<f32>(global0.a.b.x, var_1.a.c, -1543f))))) * _wgslsmith_f_op_vec3_f32(round(var_1.a.b.zzz))), true), !all(vec3<bool>(true, true, true)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec2<u32>(~(~u_input.a), global0.a.a)) & vec2<u32>(u_input.b.x, global0.a.a);
    global0 = Struct_2(Struct_1(u_input.a, vec4<f32>(global0.a.d.x, _wgslsmith_f_op_f32(step(-417f, _wgslsmith_f_op_f32(180f - global0.a.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(var_0.x, 5u)], -1296f)), global0.a.b.x), _wgslsmith_f_op_f32(global0.a.d.x * global0.a.c)), global0.a.c, global0.a.b.xzx, any(!select(vec3<bool>(global0.a.e, true, false), vec3<bool>(global0.a.e, global0.a.e, false), global0.a.e))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global0.a.b.x, _wgslsmith_f_op_f32(-global0.a.b.x))), _wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_mult_u32(0u, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(665f, global0.a.c, 840f, -1541f) + global0.a.b), _wgslsmith_f_op_f32(global0.a.b.x - -275f), _wgslsmith_f_op_vec3_f32(sign(global0.a.d)), true), _wgslsmith_div_f32(global0.a.c, 1151f))), _wgslsmith_f_op_f32(exp2(global0.a.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(13365u, global0.a.a), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(561f, var_1.x, global0.a.d.x) - vec3<f32>(global0.a.d.x, global0.a.d.x, var_1.x)), vec3<f32>(global0.a.b.x, var_1.x, 861f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), 118f, _wgslsmith_f_op_f32(select(global0.a.b.x, global0.a.b.x, true))))));
}

