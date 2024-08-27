struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-250f, vec3<bool>(false, false, false), Struct_2(1u, vec3<bool>(true, true, false)));

var<private> global1: array<Struct_3, 31>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_3, 31>();
    global1 = array<Struct_3, 31>();
    let var_0 = Struct_1(!(!global0.c.b.x), arg_0.b, vec4<bool>(global0.b.x, any(vec2<bool>(true, true)), any(select(!arg_0.c.ywy, arg_0.c.wxy, arg_0.c.x)), true));
    var var_1 = var_0;
    var var_2 = 2147483647i;
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a)))));
}

fn func_1() -> StorageBuffer {
    let var_0 = ~_wgslsmith_sub_u32(~59664u, _wgslsmith_mod_u32(~u_input.c.x, u_input.b.x) | abs(u_input.c.x));
    let var_1 = func_2(Struct_1(true, 1u, vec4<bool>(global0.c.b.x, true, true, true)));
    global1 = array<Struct_3, 31>();
    let var_2 = Struct_1(var_1.a, func_2(Struct_1(var_1.c.x, _wgslsmith_div_u32(~1u, _wgslsmith_clamp_u32(0u, 1u, var_1.b)), vec4<bool>(!global0.c.b.x, var_0 >= global0.c.a, u_input.c.x == var_1.b, true))).b, var_1.c);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1574f);
    return StorageBuffer(vec4<f32>(global0.a, global0.a, var_3, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(203f, func_2(var_2), global0.c)), _wgslsmith_f_op_f32(global0.a - -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(~(~1u), 31u)];
    var var_0 = Struct_3(global0.a, global0.c.b, global0.c);
    let x = u_input.a;
    s_output = func_1();
}

