struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<f32, 18>();
    var var_0 = Struct_1(reverseBits(vec3<u32>(1u, arg_0.a.x, 31650u)), -1398f);
    var var_1 = arg_0.b;
    let var_2 = u_input.b.x;
    let var_3 = Struct_5(countOneBits(vec3<i32>(-2147483647i, 2147483647i, min(2147483647i, abs(u_input.a)))));
    return any(!vec4<bool>(true, false & all(vec4<bool>(true, true, false, true)), all(vec4<bool>(false, true, true, false)), true));
}

fn func_2() -> i32 {
    global0 = array<f32, 18>();
    let var_0 = vec2<f32>(_wgslsmith_div_f32(-1971f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 18u)]) * 1994f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)] * global0[_wgslsmith_index_u32(u_input.b.x, 18u)]) + global0[_wgslsmith_index_u32(u_input.c.x & u_input.b.x, 18u)]), global0[_wgslsmith_index_u32(u_input.c.x, 18u)])) - 474f));
    global0 = array<f32, 18>();
    var var_1 = (!(_wgslsmith_f_op_f32(step(1063f, var_0.x)) == _wgslsmith_f_op_f32(min(729f, var_0.x))) == func_3(Struct_1(u_input.c.yyz, -138f))) != all(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec3<bool>(true, false, true)), true, all(vec4<bool>(true, false, true, true)), false), true));
    let var_2 = -firstTrailingBit(countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -18544i), vec2<i32>(u_input.a, -1i)), ~0i, -33827i, _wgslsmith_sub_i32(u_input.a, u_input.a))));
    return var_2.x;
}

fn func_1() -> vec2<i32> {
    var var_0 = u_input.a;
    var_0 = i32(-1i) * -2147483647i;
    var_0 = countOneBits(reverseBits(u_input.a));
    var_0 = _wgslsmith_mult_i32(func_2(), -2147483647i);
    let var_1 = Struct_4(Struct_3(Struct_1(max(u_input.c.xyy, vec3<u32>(u_input.c.x, 1u, u_input.c.x)) & _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 16289u), vec3<u32>(u_input.b.x, 4294967295u, u_input.c.x)), _wgslsmith_f_op_f32(2440f - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)] + -1232f)))), Struct_3(Struct_1(u_input.c.xyw, -361f)), 0u, _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c.x | 15242u, abs(0u)), _wgslsmith_div_u32(1u, ~u_input.b.x))), Struct_2(Struct_1(vec3<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 12171u, 4294967295u & u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(970f - global0[_wgslsmith_index_u32(u_input.c.x, 18u)]))), Struct_1(vec3<u32>(max(u_input.c.x, u_input.c.x), u_input.b.x, 20451u), 1890f)));
    return -abs(vec2<i32>(~0i, ~(-u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-1i) * -(~(-vec4<i32>(2147483647i, 0i, u_input.a, u_input.a)));
    var var_1 = u_input.c.xz;
    global0 = array<f32, 18>();
    let var_2 = Struct_5(var_0.wyz);
    let var_3 = ~(~38104u);
    var_1 = u_input.c.yy;
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 18u)]))), _wgslsmith_f_op_f32(abs(469f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1225f) + _wgslsmith_f_op_f32(sign(-1000f)))))), -83i);
}

