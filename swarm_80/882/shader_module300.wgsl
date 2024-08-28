struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), 0i), Struct_1(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), -1i), Struct_1(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), 43570i), Struct_1(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), -23153i), Struct_1(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), 2147483647i), Struct_1(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), -26051i), Struct_1(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), -3528i), Struct_1(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), 2147483647i), Struct_1(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), 2147483647i), Struct_1(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), -70931i), Struct_1(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), i32(-2147483648)), Struct_1(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), -43058i), Struct_1(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), 1162i), Struct_1(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), i32(-2147483648)), Struct_1(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), -33385i), Struct_1(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), i32(-2147483648)), Struct_1(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), i32(-2147483648)), Struct_1(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), 1i), Struct_1(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), -12205i), Struct_1(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), 1i), Struct_1(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), 2147483647i), Struct_1(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), 30244i), Struct_1(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), -1i), Struct_1(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), -1i), Struct_1(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), -1i), Struct_1(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), 2147483647i));

var<private> global1: vec4<f32>;

var<private> global2: vec2<i32> = vec2<i32>(-3526i, 54229i);

var<private> global3: array<Struct_1, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global3 = array<Struct_1, 31>();
    var var_0 = arg_3;
    global3 = array<Struct_1, 31>();
    var var_1 = var_0.d;
    let var_2 = ~_wgslsmith_mult_u32(0u, 1u | u_input.a);
    return var_0.a;
}

fn func_3() -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(303f, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(634f, global1.x, global1.x, global1.x)), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1352f, global1.x, global1.x, -455f))))));
    let var_0 = ~u_input.e;
    var var_1 = ~0u;
    var var_2 = 1u;
    var var_3 = global0[_wgslsmith_index_u32(0u, 26u)];
    return ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, ~(4294967295u << (u_input.a % 32u))), ~vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.d, u_input.d), 0u), firstTrailingBit(abs(vec2<u32>(1u, u_input.d))));
}

fn func_1() -> vec2<u32> {
    global0 = array<Struct_1, 26>();
    let var_0 = _wgslsmith_f_op_f32(-global1.x);
    return select(select(~vec2<u32>(~33032u, u_input.d), vec2<u32>(~abs(u_input.d), ~u_input.a ^ _wgslsmith_mult_u32(u_input.d, 1u)), !select(vec2<bool>(true, true), func_2(false, Struct_1(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), u_input.e), Struct_1(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), u_input.c), Struct_1(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), -1i)), true)), max(~vec2<u32>(u_input.a, u_input.d | u_input.a), ~min(func_3(), vec2<u32>(u_input.a, 17081u))), vec2<bool>((any(vec2<bool>(true, true)) | (var_0 != -692f)) || all(vec4<bool>(true, true, false, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1());
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -885f)))))));
    global0 = array<Struct_1, 26>();
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(global1.ywx));
    global3 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(334f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-410f * _wgslsmith_f_op_f32(-var_3.x)))), vec4<u32>(u_input.a, var_0.x, ~var_0.x, _wgslsmith_mod_u32(~select(u_input.a, 5224u, false), _wgslsmith_div_u32(var_0.x, u_input.d) | _wgslsmith_div_u32(u_input.d, 40089u))));
}

