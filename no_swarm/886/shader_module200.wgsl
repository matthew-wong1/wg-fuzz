struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<i32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    return 22540i;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> f32 {
    var var_0 = !global0.a.a;
    let var_1 = Struct_4(Struct_1(global0.a.a), _wgslsmith_add_vec4_i32(vec4<i32>(-3856i, func_3(select(vec4<bool>(true, true, arg_1, false), vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(global0.a.a.x, true, arg_0, var_0.x))), global0.b.x, global0.b.x & (global1.x >> (49975u % 32u))), global0.b));
    global0 = Struct_4(var_1.a, global0.b);
    let var_2 = Struct_3(any(!(!vec3<bool>(true, arg_0, var_0.x))), Struct_1(!select(vec2<bool>(false, arg_1), select(vec2<bool>(false, var_0.x), var_1.a.a, global0.a.a.x), select(vec2<bool>(false, arg_1), global0.a.a, arg_0))), Struct_1(vec2<bool>(var_1.a.a.x && true, true)));
    let var_3 = global0.a.a;
    return -101f;
}

fn func_1() -> Struct_5 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(141f * 1835f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(true, true, vec4<f32>(-1082f, 510f, 107f, 738f))))), _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1377f + -1020f), _wgslsmith_f_op_f32(1157f + 366f))));
    global1 = vec3<i32>(1i, min(global0.b.x | _wgslsmith_div_i32(max(20867i, u_input.a), 0i), global1.x), -1i);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-266f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(866f)), var_0.x)), global0.b.x >= -1i)), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(865f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -321f))));
    var var_2 = global1.x;
    var var_3 = u_input.a;
    return Struct_5(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * var_1.x), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-391f - 882f))))), ~vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 6524u, 1u, 37146u), vec4<u32>(1u, 1u, 1u, 1u))), Struct_3(select(744f <= _wgslsmith_f_op_f32(sign(1116f)), true, true), global0.a, global0.a), vec2<f32>(1626f, _wgslsmith_f_op_f32(floor(var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~vec2<u32>(~_wgslsmith_clamp_u32(21124u, 1u, 89091u), ~(~24575u)));
    var var_1 = func_1();
    let var_2 = firstLeadingBit(-2147483647i);
    global1 = firstLeadingBit(-global0.b.xzy) | select(select(abs(vec3<i32>(1i, 39667i, u_input.a)), global0.b.wxy, false), (_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global0.b.x, 1i), global0.b.zyx) ^ vec3<i32>(var_2, var_2, u_input.a)) & select(abs(vec3<i32>(-1331i, u_input.a, global1.x)), ~vec3<i32>(12728i, -54448i, global0.b.x), var_1.c.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1563f + -1000f), _wgslsmith_f_op_f32(ceil(-904f))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), var_1.a.x, any(vec3<bool>(var_1.c.a, global0.a.a.x, var_1.c.b.a.x))))), var_1.d.x);
    var var_4 = Struct_3(true, Struct_1(!(!(!var_1.c.c.a))), func_1().c.c);
    let var_5 = global0.a.a;
    var var_6 = Struct_2(_wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1293f)))), vec4<f32>(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_1().d.x))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(var_1.a.x))), -1324f), func_1().c.b, var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(27831u, 45530u, var_0.x, var_1.b.x)), vec4<u32>(abs(var_0.x), ~47952u, ~var_1.b.x, var_1.b.x), vec4<u32>(var_1.b.x << (4294967295u % 32u), 8027u, var_1.b.x, _wgslsmith_div_u32(var_0.x, 1u))), vec4<u32>(var_1.b.x, _wgslsmith_div_u32(~var_1.b.x, ~0u), 59380u, var_0.x)));
}

