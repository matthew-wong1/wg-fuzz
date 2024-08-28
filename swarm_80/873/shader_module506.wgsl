struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: Struct_2;

var<private> global2: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> u32 {
    global0 = !(!(!(!vec2<bool>(global0.x, true))));
    global2 = _wgslsmith_div_i32(-4939i, -4532i);
    return ~u_input.a.x;
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    let var_0 = u_input.a.x;
    var var_1 = !vec3<bool>(true && ((i32(-1i) * -3418i) > (-15819i | arg_0.c)), !global0.x, global0.x);
    var var_2 = arg_2;
    var_1 = select(select(!(!select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(global0.x, true, var_1.x), vec3<bool>(false, var_1.x, true))), vec3<bool>(var_2.a.x >= arg_0.b.a, var_1.x, true), select(select(vec3<bool>(false, var_1.x, false), select(vec3<bool>(true, var_1.x, global0.x), vec3<bool>(false, global0.x, var_1.x), vec3<bool>(false, var_1.x, true)), true), select(vec3<bool>(true, true, true), !vec3<bool>(var_1.x, global0.x, var_1.x), var_0 > 4294967295u), vec3<bool>(var_0 != 49730u, arg_2.a.x == global1.c, true))), select(select(!select(vec3<bool>(false, global0.x, true), vec3<bool>(false, true, var_1.x), vec3<bool>(global0.x, var_1.x, global0.x)), !select(vec3<bool>(true, false, global0.x), vec3<bool>(var_1.x, global0.x, false), true), global0.x), select(vec3<bool>(true, true, true), vec3<bool>(!global0.x, true, true), false), global0.x || false), !(!all(!vec3<bool>(var_1.x, var_1.x, global0.x))));
    let var_3 = vec4<u32>(55851u, 43690u, arg_0.b.c.x | arg_0.b.c.x, 38698u);
    return _wgslsmith_f_op_f32(-var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.d;
    var var_0 = ~select(global1.d, 1i, !global0.x) << ((_wgslsmith_sub_u32(min(4294967295u, func_1(Struct_2(global1.b, global1.b, global1.b.a.x, global1.d), 47118i, 2147483647i)), _wgslsmith_mult_u32(~u_input.a.x, 24796u << (u_input.a.x % 32u))) ^ 1294u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(global1.b, Struct_3(-1000f, vec4<i32>(global1.d, global1.d, global1.d, global1.d), vec4<u32>(u_input.a.x, 0u, 8341u, u_input.a.x)), global1.d), -30139i, Struct_1(global1.b.a), vec3<i32>(18756i, global1.d, 29252i))) * -541f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -867f)))), firstTrailingBit(countOneBits(1u ^ u_input.a.x)), u_input.a.x, ~(abs(vec3<i32>(-2147483647i, 2147483647i, -1i)) | vec3<i32>(-12975i & global1.d, i32(-1i) * -47991i, ~global1.d)));
}

