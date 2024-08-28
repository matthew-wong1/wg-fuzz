struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_3 {
    global0 = Struct_3(-2147483647i, Struct_1(~1u, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-146f)), _wgslsmith_f_op_f32(f32(-1f) * -1065f), global0.b.e.x), global0.b.b), countOneBits(~(~vec4<u32>(46947u, 4294967295u, u_input.a, u_input.e))), -((u_input.c.x >> (0u % 32u)) >> (~4294967295u % 32u)), global0.b.e));
    global0 = Struct_3(1i, global0.b);
    var var_0 = Struct_2(global0.b.c.wy);
    let var_1 = _wgslsmith_f_op_f32(global0.b.e.x - _wgslsmith_f_op_f32(min(-476f, global0.b.e.x)));
    var var_2 = -u_input.c.zz;
    return Struct_3(~(-23110i), global0.b);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_add_i32(min(arg_1.a << (_wgslsmith_div_u32(0u, arg_0) % 32u), u_input.c.x), 1i), global0.b);
    var var_0 = firstLeadingBit(-abs(u_input.b.x));
    var var_1 = func_2().b;
    var_0 = 0i;
    var var_2 = arg_1.b.b.x;
    return func_2();
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec3<f32>) -> Struct_3 {
    global0 = func_2();
    global0 = func_3(75418u, Struct_3(-17371i, global0.b), any(vec4<bool>(select(true, any(vec2<bool>(false, false)), true), false, true, true)));
    global0 = func_3(1u, func_2(), 1u != arg_1.x);
    let var_0 = ~countOneBits(select((global0.b.c.yy >> (global0.b.c.xz % vec2<u32>(32u))) | ~arg_1, arg_1, all(vec2<bool>(false, false))));
    var var_1 = global0.a;
    return Struct_3(-arg_0.x >> (0u % 32u), func_3(u_input.e, func_2(), false).b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_add_i32(10717i, 29977i), global0.b);
    global0 = func_1(-vec3<i32>(-48547i, -22513i, global0.b.d), global0.b.c.xx & ~vec2<u32>(~global0.b.c.x, 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(global0.b.b, global0.b.b, false)), _wgslsmith_f_op_vec3_f32(-global0.b.b), vec3<bool>(true, false, true)))) + global0.b.b));
    var var_0 = func_1(~(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -10505i, -2147483647i), u_input.c.www), ~11140i, -global0.b.d)), ~vec2<u32>(global0.b.c.x, _wgslsmith_sub_u32(4294967295u, reverseBits(4294967295u))), func_2().b.b);
    var var_1 = vec3<bool>(select(!(var_0.b.e.x != 232f) & true, true, all(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)))), true, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1000f, global0.b.b.x, -108f), vec4<f32>(global0.b.b.x, -763f, global0.b.b.x, -628f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.e.x, global0.b.b.x, 715f, global0.b.e.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b.x, -1000f, 1384f, -3140f) + vec4<f32>(global0.b.b.x, -590f, var_0.b.b.x, var_0.b.e.x)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b.x * -589f) * -579f), func_1(vec3<i32>(global0.b.d, global0.a, u_input.c.x) << (func_1(vec3<i32>(1i, var_0.b.d, -17251i), vec2<u32>(u_input.a, 30130u), vec3<f32>(global0.b.b.x, -147f, 500f)).b.c.zzx % vec3<u32>(32u)), var_0.b.c.zy, func_1(u_input.c.xwz, var_0.b.c.wy >> (global0.b.c.zz % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-global0.b.b)).b.b).b.b.x, -1310f), vec4<u32>(~func_1(u_input.c.yww, vec2<u32>(global0.b.a, global0.b.a), vec3<f32>(-175f, -1296f, global0.b.b.x)).b.a, abs(15296u), 70882u, ~var_0.b.a) & ~vec4<u32>(countOneBits(0u), 0u, _wgslsmith_mod_u32(global0.b.a, var_0.b.c.x), _wgslsmith_sub_u32(4294967295u, 0u)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.b.x * _wgslsmith_f_op_f32(trunc(global0.b.b.x))), _wgslsmith_f_op_f32(-func_3(global0.b.a, Struct_3(global0.b.d, var_0.b), var_1.x).b.e.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1135f, var_0.b.e.x)), var_0.b.b.zz) * vec2<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(-var_0.b.b.x)))), global0.b.c.yzx);
}

