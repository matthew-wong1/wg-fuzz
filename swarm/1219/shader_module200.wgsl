struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(33387u, 6378u);

var<private> global1: bool;

var<private> global2: Struct_3 = Struct_3(Struct_2(vec4<f32>(531f, -586f, 607f, -637f)));

var<private> global3: f32;

var<private> global4: vec2<f32> = vec2<f32>(181f, 901f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> bool {
    return true;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -579f))) - _wgslsmith_f_op_f32(ceil(1f)))), _wgslsmith_f_op_f32(exp2(global2.a.a.x))));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-819f - var_0)))))) + -251f);
    let var_1 = Struct_1(vec3<bool>(true, true, false), arg_1);
    let var_2 = any(select(vec3<bool>(!arg_1.x, any(arg_1.zwx), var_1.a.x), var_1.b.xxz, any(vec3<bool>(arg_1.x, any(vec4<bool>(true, arg_1.x, arg_1.x, var_1.b.x)), arg_1.x))));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_0 * -162f), _wgslsmith_f_op_f32(-658f * 658f), global2.a.a.x, _wgslsmith_f_op_f32(max(global2.a.a.x, global2.a.a.x)))))));
    return _wgslsmith_mult_i32(67115i, ~1i);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_add_i32(u_input.a, func_3(u_input.b, vec4<bool>(true, true, true, true)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(283f, global4.x, global4.x, 606f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a.a) * vec4<f32>(global4.x, global2.a.a.x, -1045f, global2.a.a.x)), true)), _wgslsmith_f_op_vec4_f32(-global2.a.a), !all(vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x));
    var var_0 = Struct_1(vec3<bool>(!(-271f != _wgslsmith_f_op_f32(-global2.a.a.x)), false, all(vec2<bool>(true, true))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))));
    let var_1 = select(vec2<bool>(false && func_1(), var_0.a.x), select(vec2<bool>(all(select(vec2<bool>(true, var_0.b.x), var_0.b.zy, var_0.a.x)), true), var_0.a.xz, !var_0.b.wz), !select(!var_0.a.zy, select(vec2<bool>(true, true), vec2<bool>(true, true), global0.x > 97092u), !var_0.a.xy));
    var var_2 = func_2();
    let var_3 = false;
    let var_4 = ~(-vec3<i32>(u_input.a, (u_input.a & -3425i) << (~global0.x % 32u), ~u_input.c));
    let var_5 = var_1;
    let var_6 = var_0.b.xx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global0.x, ~(~u_input.d), ~abs(4294967295u)), countOneBits(firstLeadingBit(vec3<u32>(global0.x, global0.x, 19058u))));
}

