struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(0i, -3840i), vec2<i32>(2340i, -59395i), vec2<i32>(32827i, i32(-2147483648)), vec2<i32>(8832i, 0i), vec2<i32>(-13572i, -13428i));

var<private> global2: Struct_3 = Struct_3(vec4<i32>(17325i, 12171i, -38927i, -16553i), Struct_2(Struct_1(vec3<f32>(574f, -1881f, 307f), vec2<bool>(true, true)), vec3<i32>(-43134i, 32896i, -1513i), vec4<bool>(false, true, false, true)), Struct_1(vec3<f32>(-681f, 653f, 1664f), vec2<bool>(false, false)), true);

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_2 {
    let var_0 = global3.b.b;
    return global3.b;
}

fn func_3(arg_0: f32, arg_1: u32) -> Struct_1 {
    global3 = Struct_3(global2.a, func_1(), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(483f, _wgslsmith_div_f32(1000f, global0.x), _wgslsmith_f_op_f32(global0.x + arg_0))), vec2<bool>(any(vec4<bool>(false, global2.c.b.x, global2.b.a.b.x, false)), all(vec3<bool>(true, false, true)))), !((true & (arg_1 == 1u)) == false));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-arg_0))), 1891f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1940f), -610f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.b.a.a.x)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2360f, -1990f, 667f, global0.x) * vec4<f32>(global2.c.a.x, global2.b.a.a.x, global2.b.a.a.x, 1291f)))))));
    let var_0 = 31086u;
    var var_1 = !func_1().a.b.x;
    let var_2 = !vec3<bool>(any(global2.b.c.zxw), true, !(!global2.b.c.x | (global2.c.b.x & global3.b.a.b.x)));
    return Struct_1(vec3<f32>(arg_0, -1321f, global2.c.a.x), var_2.zz);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> i32 {
    let var_0 = func_1();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.c.a.x, -2992f, 1743f), vec3<f32>(arg_2.b.a.a.x, -640f, 554f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.a.x, 1000f, global0.x) - _wgslsmith_f_op_vec3_f32(-arg_1))), !vec2<bool>(false, global3.b.a.a.x > global2.c.a.x)), var_0.b, select(global3.b.c, vec4<bool>(true, true, true, !(!global3.c.b.x)), any(func_1().a.b) & true));
    let var_2 = ~firstLeadingBit(vec4<u32>(~arg_0, firstTrailingBit(arg_0), 49297u, ~firstLeadingBit(0u)));
    var var_3 = firstTrailingBit(func_1().b.x);
    var var_4 = func_1().a;
    return var_0.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1007f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1081f)))), 115f, _wgslsmith_f_op_f32(-global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3.c.a.x - 193f), _wgslsmith_f_op_f32(max(-675f, 491f)), arg_2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -726f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.a.a.x, arg_0.a.a.x, 508f, arg_2.a.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a.x, arg_1.a.a.x, 876f, arg_1.a.a.x) * vec4<f32>(arg_2.a.a.x, arg_0.a.a.x, global0.x, global3.c.a.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a.x, arg_1.a.a.x, -1593f, -1000f) * vec4<f32>(-1000f, 916f, arg_1.a.a.x, arg_1.a.a.x)), vec4<f32>(arg_0.a.a.x, 1064f, 1545f, 596f))))));
    var var_0 = vec3<i32>(-arg_0.b.x, func_4(1u, global0.wxx, Struct_3(~(global3.a & vec4<i32>(arg_1.b.x, 16305i, -2147483647i, -8377i)), arg_1, func_3(arg_0.a.a.x, 1u), select(any(arg_0.c), arg_1.a.a.x > global3.b.a.a.x, any(vec3<bool>(false, global3.c.b.x, false))))), 2147483647i);
    var var_1 = Struct_3(-_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~global2.a, ~global3.a), global3.a), arg_0, arg_1.a, true);
    let var_2 = abs(-21670i);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1759f, _wgslsmith_f_op_f32(-global3.b.a.a.x), _wgslsmith_f_op_f32(-541f + -3282f)));
    let var_0 = !(select(func_2(func_1(), global2.b, Struct_2(global2.b.a, vec3<i32>(global3.b.b.x, 1i, u_input.a), vec4<bool>(false, true, global2.c.b.x, false)), ~2147483647i), all(vec3<bool>(global2.d, global3.d, true)), global2.d) && global2.b.c.x);
    global1 = array<vec2<i32>, 5>();
    global2 = Struct_3(firstLeadingBit(abs(vec4<i32>(global3.b.b.x, u_input.a, 75i, 0i)) << (~vec4<u32>(0u, 0u, 4294967295u, 1u) % vec4<u32>(32u))) >> (abs(vec4<u32>(~1u, 1u, ~56682u, 1u << (0u % 32u))) % vec4<u32>(32u)), global2.b, func_1().a, false);
    var var_1 = func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(62819u, 133875u), vec2<u32>(4294967295u, 1u), global2.c.b), abs(~vec2<u32>(4294967295u, 1u))), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_div_u32(1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(~0u, 45632u), 1u), global2.b.a.a.yx, var_1.a);
}

