struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> i32 {
    let var_0 = 60101u;
    let var_1 = max(abs(~max(abs(vec4<u32>(0u, arg_3.a.b, 1u, u_input.b.x)), abs(vec4<u32>(arg_0, 56722u, var_0, 4294967295u)))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 36336u, arg_0, 34230u), ~vec4<u32>(0u, arg_3.b.b, 64647u, 4294967295u)), select(vec4<u32>(4294967295u, var_0, 0u, 23610u), vec4<u32>(arg_3.b.b, 0u, u_input.b.x, arg_0), vec4<bool>(arg_3.a.c.x, true, true, arg_3.a.c.x)) << (abs(vec4<u32>(7255u, 51817u, arg_0, 46551u)) % vec4<u32>(32u))));
    let var_2 = select(vec2<bool>(arg_3.b.c.x, (arg_3.a.c.x == true) && (_wgslsmith_add_u32(var_1.x, 4294967295u) > var_0)), !arg_3.b.c.xz, arg_3.a.c.yy);
    var var_3 = select(firstLeadingBit(arg_3.b.a.zy), _wgslsmith_add_vec2_i32(select(-vec2<i32>(u_input.a, arg_3.a.a.x), vec2<i32>(arg_3.a.a.x, 1112i), select(arg_3.b.c.ww, vec2<bool>(arg_3.a.c.x, var_2.x), arg_3.b.c.zy)) << (~vec2<u32>(17353u, 66963u) % vec2<u32>(32u)), vec2<i32>((arg_3.b.a.x | arg_3.b.a.x) ^ ~u_input.a, -abs(-1i))), select(select(!var_2, var_2, vec2<bool>(true, false == var_2.x)), arg_3.b.c.ww, var_2));
    var var_4 = Struct_3(arg_3.b, Struct_1(vec3<i32>(arg_3.b.a.x, 18318i, -2147483647i), reverseBits(54147u >> (_wgslsmith_mult_u32(arg_0, var_1.x) % 32u)), !arg_3.b.c));
    return ~(-2147483647i);
}

fn func_2(arg_0: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_mult_vec3_i32(~vec3<i32>(abs(u_input.a), -u_input.a, func_3(u_input.b.x, -224f, arg_0, Struct_3(Struct_1(vec3<i32>(u_input.a, -17887i, 0i), u_input.c.x, vec4<bool>(false, true, false, true)), Struct_1(vec3<i32>(u_input.a, u_input.a, -1i), 1u, vec4<bool>(true, false, false, false))))), vec3<i32>(u_input.a | 0i, _wgslsmith_div_i32(max(u_input.a, 0i), i32(-1i) * -2147483647i), u_input.a)), abs(68836u), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, select(true, true, true)), vec4<bool>(true, true, any(vec2<bool>(true, true)), any(vec2<bool>(false, true))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false))), vec4<bool>(true, true, true, true)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(min(~u_input.a, ~(-2147483647i)), vec3<bool>(true, !(-1430f == _wgslsmith_f_op_f32(step(-558f, -1000f))), false), func_2(463f), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, ~u_input.c.x, u_input.c.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), ~(~vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 44831u))), max(3551u, max(max(u_input.c.x, u_input.c.x), min(u_input.c.x, 1u)))));
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-700f - -683f)) * 1636f) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1571f - -1029f), -2925f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_1().c.ww;
    var_1 = vec2<bool>(false, !var_1.x);
    let var_2 = all(!func_1().c.zyz) && (var_0.c.x | !var_1.x);
    var var_3 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.a.x, -69059i << (var_0.b % 32u)) ^ u_input.a, 42384i), 1i);
    var_1 = var_0.c.wz;
    let var_4 = var_0;
    var var_5 = var_0;
    var_3 = firstLeadingBit(_wgslsmith_div_vec2_i32(var_4.a.zx << (~u_input.b.xx % vec2<u32>(32u)), var_4.a.xx));
    let x = u_input.a;
    s_output = StorageBuffer(1227f, 45274u, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-121f, -591f)), 1f))), var_0.b);
}

