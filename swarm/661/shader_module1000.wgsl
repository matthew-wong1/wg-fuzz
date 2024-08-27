struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
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

var<private> global0: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<f32> {
    let var_0 = ~(u_input.c.zwy << (_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.d.b, global0.d.b, 34045u), ~vec3<u32>(4294967295u, u_input.d, global0.d.b) | ~vec3<u32>(0u, 5060u, u_input.d)) % vec3<u32>(32u)));
    var var_1 = global0.d;
    var var_2 = Struct_2(any(select(!vec2<bool>(var_1.a, global0.c), global0.b, !all(vec3<bool>(true, global0.a, false)))), global0.b, false, global0.d);
    let var_3 = u_input.c.ywy;
    var var_4 = global0.d;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-635f * 367f), -729f, -1000f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-796f, -105f, 180f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-942f, 491f, 2470f)))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> bool {
    let var_0 = Struct_2(true, !select(global0.b, select(vec2<bool>(global0.d.a, global0.c), select(arg_0.xy, vec2<bool>(false, global0.a), arg_0.xy), select(global0.b, arg_0.zy, true)), all(select(arg_0.xy, vec2<bool>(false, true), arg_0.x))), global0.c & (arg_0.x && true), Struct_1(arg_0.x, 1u >> (~_wgslsmith_add_u32(0u, 4294967295u) % 32u), true));
    global0 = Struct_2(true, global0.b, global0.d.c, global0.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3())));
    let var_2 = u_input.b;
    var var_3 = Struct_2(global0.c, select(vec2<bool>(true, false), vec2<bool>(global0.d.a, var_1.x != _wgslsmith_f_op_f32(sign(var_1.x))), !(!select(false, arg_0.x, global0.d.a))), select(!any(!arg_0), arg_0.x, !var_0.a), global0.d);
    return any(select(!vec3<bool>(true, true, !var_0.b.x), arg_0, arg_0));
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<u32>(~(~4294967295u), ~_wgslsmith_mod_u32(4294967295u, countOneBits(~4377u)), select(global0.d.b, global0.d.b, false));
    var var_1 = u_input.a;
    var var_2 = Struct_1(~4294967295u > ~var_0.x, _wgslsmith_mult_u32(global0.d.b, ~(~14003u)), !global0.d.a);
    let var_3 = global0.d;
    var_2 = Struct_1(func_2(vec3<bool>(!var_3.a, global0.a, true), _wgslsmith_add_u32(~69636u, ~(var_3.b >> (global0.d.b % 32u)))), var_2.b, all(!(!(!global0.b))));
    return Struct_2(true, !vec2<bool>(all(vec3<bool>(false, true, var_2.a)), global0.a), any(!(!vec3<bool>(global0.d.c, true, true))), global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~(~select(vec4<u32>(u_input.d, 0u, u_input.d, global0.d.b), ~vec4<u32>(1u, global0.d.b, 29640u, 1u), true)));
    global0 = func_1();
    var var_1 = global0.d;
    var var_2 = global0.d;
    let var_3 = Struct_2(true, select(select(vec2<bool>(var_2.c, true), global0.b, global0.b), global0.b, vec2<bool>(!global0.d.c, global0.c)), var_1.c, func_1().d);
    var var_4 = ~vec2<u32>(_wgslsmith_mult_u32(var_1.b >> (var_2.b % 32u), var_0.x >> (global0.d.b % 32u)), _wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.b, var_3.d.b), firstLeadingBit(var_2.b))) >> (vec2<u32>(var_1.b ^ 0u, global0.d.b) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(~u_input.c.wzz, ~(~u_input.c.wxx)));
}

