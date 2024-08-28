struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: array<vec3<bool>, 6>;

var<private> global2: array<vec4<u32>, 25>;

var<private> global3: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = true;
    let var_1 = Struct_3(any(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 6u)]) & true);
    global1 = array<vec3<bool>, 6>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2230f, 1000f, -201f));
    let var_3 = Struct_2(vec2<bool>(any(!vec2<bool>(var_1.a, true)) != true, !var_1.a), Struct_1(true || !any(vec4<bool>(var_1.a, true, true, var_1.a)), global2[_wgslsmith_index_u32(u_input.b.x, 25u)], u_input.b.x), var_2.x);
    return ~97363u;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(!select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), min(u_input.b.x, u_input.b.x) >= u_input.b.x), Struct_1(true, vec4<u32>(func_3(), abs(reverseBits(4294967295u)), u_input.b.x, ~10634u), ~(~(~4294967295u))), _wgslsmith_f_op_f32(1000f - -1014f));
    global1 = array<vec3<bool>, 6>();
    global1 = array<vec3<bool>, 6>();
    var var_1 = true;
    global2 = array<vec4<u32>, 25>();
    return Struct_2(vec2<bool>(true || any(vec4<bool>(var_0.b.a, true, var_0.b.a, true)), any(select(!vec4<bool>(true, var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), any(vec2<bool>(false, var_0.a.x))))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f)));
}

fn func_1() -> Struct_2 {
    let var_0 = false;
    var var_1 = func_2();
    var var_2 = Struct_3(var_1.b.a | true);
    var var_3 = Struct_1((countOneBits(~4294967295u) <= (var_1.b.b.x >> (_wgslsmith_mult_u32(1u, var_1.b.c) % 32u))) && any(vec3<bool>(true, u_input.b.x > 37285u, var_2.a)), vec4<u32>(func_2().b.c, 0u, 1u, u_input.b.x), var_1.b.c);
    global3 = true;
    return Struct_2(!vec2<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(var_0, var_3.a))), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1003f, var_1.c)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    global1 = array<vec3<bool>, 6>();
    var var_0 = all(vec4<bool>(false, any(vec4<bool>(true & arg_0.a.x, false == arg_2, arg_2, arg_2)), func_1().b.a, false));
    let var_1 = ~(~_wgslsmith_add_u32(~(~25843u), u_input.b.x));
    var var_2 = arg_0.b;
    let var_3 = -26341i;
    return 1837u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 16>();
    let var_0 = Struct_1(true, ~vec4<u32>(u_input.b.x, func_4(func_1(), -721f, all(global1[_wgslsmith_index_u32(u_input.b.x, 6u)]), vec4<f32>(-1820f, 320f, 444f, -1487f)), u_input.b.x, u_input.b.x ^ ~4583u), ~_wgslsmith_div_u32(66565u, _wgslsmith_clamp_u32(~31400u, _wgslsmith_add_u32(29697u, u_input.b.x), ~u_input.b.x)));
    global0 = array<i32, 16>();
    let var_1 = Struct_3(true);
    global0 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(6439i, _wgslsmith_f_op_f32(1050f + _wgslsmith_f_op_f32(f32(-1f) * -400f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1550f, 466f, -1611f, -752f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(459f, -1627f, -1000f, 1118f)) - vec4<f32>(-234f, 326f, -1617f, 1437f)))))));
}

