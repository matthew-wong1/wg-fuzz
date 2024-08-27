struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-15781i, 55515i), vec2<i32>(2147483647i, 1i), vec2<i32>(6202i, 0i), vec2<i32>(-72441i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-8423i, 4682i), vec2<i32>(-50580i, -43257i), vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, 1i));

var<private> global1: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_div_i32(-9442i, global1.a << (18667u % 32u)), global1.b);
    var var_1 = Struct_1(-global1.a ^ max(-16086i >> (_wgslsmith_mult_u32(u_input.c.x, 21434u) % 32u), ~global1.a | (u_input.a >> (1u % 32u))), vec2<bool>(any(!(!vec3<bool>(false, var_0.b.x, global1.b.x))), any(global1.b)));
    var_1 = Struct_1(~(~(-(~global1.a))), var_0.b);
    var var_2 = false;
    var var_3 = Struct_1(abs(var_1.a), !vec2<bool>(all(!vec3<bool>(global1.b.x, var_1.b.x, false)), u_input.c.x > 1u));
    return var_3.a;
}

fn func_1() -> Struct_1 {
    var var_0 = ~(vec3<i32>(~1i, min(i32(-1i) * -11545i, 34913i >> (1u % 32u)), func_2(vec2<f32>(-2313f, 1238f)) | 0i) >> (~(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 96245u, 1u))) % vec3<u32>(32u)));
    let var_1 = Struct_1(global1.a, !(!global1.b));
    global0 = array<vec2<i32>, 10>();
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-400f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -543f)))))) - 1000f);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.a, global1.b);
    global0 = array<vec2<i32>, 10>();
    var var_1 = func_1();
    var_1 = func_1();
    global0 = array<vec2<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

