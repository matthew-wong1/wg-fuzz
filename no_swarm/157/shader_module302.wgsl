struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> bool {
    global1 = false & select(true, any(select(!vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global0.x, false), vec3<bool>(true, true, global0.x)), !vec3<bool>(true, true, global0.x))), _wgslsmith_mult_u32(arg_0, select(41128u, 0u, global0.x)) < max(0u, _wgslsmith_clamp_u32(arg_0, 14616u, 41735u)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(508f, -575f)) * -207f))), _wgslsmith_f_op_f32(f32(-1f) * -380f)));
    let var_1 = Struct_1(-1i);
    global1 = true;
    var var_2 = ~u_input.b.www;
    return true;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = !(!vec3<bool>(false, global0.x, global0.x));
    global0 = !vec3<bool>(min(firstTrailingBit(4294967295u), 0u) >= ~(~3965u), all(vec4<bool>(global0.x, global0.x, true, select(false, true, false))), all(vec2<bool>(global0.x, func_3(25354u))));
    var var_1 = Struct_1(arg_0.a);
    var var_2 = Struct_1(firstLeadingBit(7696i));
    global1 = !any(vec3<bool>(var_0.x, true, !global0.x));
    return !(22132i != var_1.a);
}

fn func_1() -> StorageBuffer {
    global0 = select(!vec3<bool>(global0.x, !any(vec4<bool>(global0.x, true, false, global0.x)), all(vec4<bool>(false, true, true, true))), vec3<bool>(func_2(Struct_1(~0i)), any(!vec3<bool>(true, global0.x, true)), true), true);
    global0 = select(vec3<bool>((all(global0.yx) | true) | !global0.x, all(select(!vec4<bool>(global0.x, global0.x, false, false), select(vec4<bool>(false, true, false, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), false), vec4<bool>(false, global0.x, global0.x, true))), all(select(!vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), !vec3<bool>(global0.x, global0.x, true)))), !(!(!vec3<bool>(true, global0.x, global0.x))), false);
    return StorageBuffer(u_input.b << (~(~(~vec4<u32>(52430u, 58606u, 4294967295u, 20513u))) % vec4<u32>(32u)), countOneBits(vec4<i32>(32715i, ~1i & u_input.b.x, select(~1i, ~u_input.a, true), -(~u_input.a))), abs(firstLeadingBit(~min(vec2<u32>(1u, 75081u), vec2<u32>(4294967295u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

