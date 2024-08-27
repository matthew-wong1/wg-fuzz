struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<u32> {
    let var_0 = reverseBits(~_wgslsmith_mod_i32(countOneBits(_wgslsmith_add_i32(2147483647i, -2147483647i)), u_input.b));
    let var_1 = u_input.c << (vec4<u32>(0u, 1u, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(max(u_input.d.x, u_input.d.x), u_input.d.x, u_input.a.x, 4294967295u), ~vec4<u32>(1u, u_input.d.x, 1u, 0u) & countOneBits(vec4<u32>(u_input.d.x, u_input.d.x, 27688u, u_input.a.x)))) % vec4<u32>(32u));
    let var_2 = u_input.c.x & _wgslsmith_dot_vec3_i32(u_input.c.xwz, abs(_wgslsmith_mod_vec3_i32(u_input.c.wzw, ~vec3<i32>(1i, var_1.x, 2147483647i))));
    let var_3 = _wgslsmith_f_op_f32(-463f - global0.a.a);
    global0 = Struct_2(Struct_1(global0.a.a, false));
    return countOneBits(vec2<u32>(4294967295u, u_input.d.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>) -> bool {
    let var_0 = 48866i;
    var var_1 = 0i;
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(exp2(arg_1.x))), arg_0.x));
    let var_3 = max(_wgslsmith_mult_vec2_u32(select(vec2<u32>(15818u, 18175u), func_3(), !arg_0) >> (u_input.d % vec2<u32>(32u)), ~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 34097u), vec2<u32>(4294967295u, 4294967295u)))), vec2<u32>(u_input.a.x, 1u));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-global0.a.a)))), select(any(vec3<bool>(arg_0.x, arg_0.x, global0.a.b)), arg_0.x, var_2.a.b)));
    return ((select(4294967295u, _wgslsmith_div_u32(4294967295u, 24233u), true) & var_3.x) < 4294967295u) && true;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = ~(~(-(~(-arg_1.x))));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-2091f * -946f);
    var_1 = ~(~(vec2<u32>(_wgslsmith_add_u32(var_1.x, 1u), 38675u) >> (vec2<u32>(4294967295u, countOneBits(0u)) % vec2<u32>(32u))));
    var_0 = ~(-(abs(1i) & _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, arg_1.x, -1i)), firstTrailingBit(u_input.c.xyx))));
    return Struct_2(global0.a);
}

fn func_1(arg_0: vec2<u32>) -> vec2<u32> {
    let var_0 = vec2<bool>(any(!(!vec4<bool>(global0.a.b, global0.a.b, global0.a.b, global0.a.b))), global0.a.a >= _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.a * 1682f), _wgslsmith_f_op_f32(global0.a.a * 352f)), global0.a.a));
    global0 = func_4(all(var_0), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c.yx, vec2<i32>(-2147483647i, u_input.c.x)), u_input.c.x), vec2<i32>(_wgslsmith_mult_i32(18105i, 11559i), u_input.c.x)), -select(firstTrailingBit(vec2<i32>(-2147483647i, u_input.b)), select(vec2<i32>(-2147483647i, -2147483647i), u_input.c.wz, var_0.x), func_2(vec2<bool>(global0.a.b, var_0.x), vec4<f32>(-395f, 1245f, global0.a.a, 498f)))));
    var var_1 = func_2(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -800f), _wgslsmith_f_op_f32(global0.a.a + global0.a.a), _wgslsmith_f_op_f32(1398f * global0.a.a), global0.a.a))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, -169f, global0.a.a, global0.a.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-842f, -590f, global0.a.a, 501f) + vec4<f32>(681f, global0.a.a, 715f, global0.a.a)))))));
    var var_2 = global0.a.a >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(func_4(global0.a.b, u_input.c.wz).a.a)))));
    let var_3 = vec3<u32>(u_input.a.x, 0u, u_input.d.x) & ~select(vec3<u32>(209u ^ arg_0.x, 32764u, u_input.d.x), vec3<u32>(u_input.d.x, ~arg_0.x, _wgslsmith_clamp_u32(4294967295u, u_input.d.x, u_input.a.x)), false && global0.a.b);
    return var_3.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(~(~_wgslsmith_div_u32(0u, u_input.d.x)), 0u));
    var var_1 = 27469u;
    global0 = Struct_2(global0.a);
    var var_2 = u_input.c.x;
    let var_3 = false;
    var var_4 = vec3<bool>(true & var_3, !(!select(true, true, true)), true & (((25568i | u_input.c.x) >> (firstTrailingBit(25341u) % 32u)) == -16693i));
    var_2 = abs(1i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(min(u_input.d, u_input.a) << (vec2<u32>(85424u, var_0.x) % vec2<u32>(32u))) << (u_input.a % vec2<u32>(32u)), u_input.d >> (func_1(select(vec2<u32>(4294967295u, var_0.x), u_input.d, select(vec2<bool>(true, var_3), var_4.zz, var_4.zx))) % vec2<u32>(32u)));
}

