struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: vec3<bool>;

var<private> global3: array<vec2<f32>, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = arg_0;
    let var_0 = u_input.a;
    global0 = Struct_1(all(vec2<bool>(var_0 >= var_0, _wgslsmith_f_op_f32(sign(791f)) >= _wgslsmith_f_op_f32(1453f - -684f))), global2.x);
    var var_1 = arg_0;
    global0 = Struct_1(any(vec4<bool>(false, arg_0.b, any(vec2<bool>(global1.a, false)) || false, true)), false || any(vec3<bool>(all(vec3<bool>(false, true, false)), var_1.b, true)));
    return any(vec4<bool>(all(select(select(global2.yy, vec2<bool>(true, false), vec2<bool>(false, global0.b)), vec2<bool>(global2.x, global2.x), select(global2.xz, vec2<bool>(global2.x, global0.a), vec2<bool>(global2.x, false)))), true, any(!vec4<bool>(global2.x, var_1.b, arg_0.b, false)) || true, false));
}

fn func_2(arg_0: bool, arg_1: f32) -> vec3<bool> {
    global2 = vec3<bool>(arg_0, true, all(!vec2<bool>(func_3(Struct_1(true, true)), all(vec4<bool>(true, global0.a, false, true)))));
    global2 = select(!select(!vec3<bool>(global2.x, true, false), !(!vec3<bool>(arg_0, arg_0, arg_0)), arg_0), select(vec3<bool>(false, !all(vec4<bool>(false, global1.b, false, false)), !(!global2.x)), vec3<bool>(true, true, _wgslsmith_f_op_f32(-arg_1) >= -913f), false), ~u_input.b.x > u_input.c.x);
    let var_0 = Struct_1(!any(select(vec3<bool>(global2.x, false, true), vec3<bool>(arg_0, false, global0.a), vec3<bool>(global1.a, false, true))) | arg_0, !(!all(vec3<bool>(global1.b, true, false))) | any(select(!vec4<bool>(arg_0, global0.b, false, arg_0), select(vec4<bool>(true, true, false, global2.x), vec4<bool>(false, false, false, global2.x), true), true)));
    global0 = Struct_1(global0.a, global2.x);
    let var_1 = var_0;
    return !select(!(!select(vec3<bool>(global0.a, false, global1.b), vec3<bool>(false, var_0.b, global0.a), false)), select(!select(vec3<bool>(global2.x, true, true), vec3<bool>(global1.a, false, false), var_0.b), vec3<bool>(arg_1 >= arg_1, 0i > u_input.a, var_1.a), true), select(!select(vec3<bool>(var_0.b, false, global0.a), vec3<bool>(global2.x, var_0.b, true), true), !(!vec3<bool>(false, arg_0, var_1.b)), select(vec3<bool>(global2.x, var_1.b, false), !vec3<bool>(global1.a, false, var_1.a), select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(var_1.b, false, true), vec3<bool>(true, true, global0.a)))));
}

fn func_1() -> u32 {
    global0 = Struct_1(all(vec3<bool>(true, true, false)), any(!select(vec3<bool>(global2.x, true, true), func_2(false, 122f), true)));
    global2 = vec3<bool>(true, global0.a, false & all(select(vec3<bool>(global1.b, global2.x, global2.x), select(vec3<bool>(true, true, global1.a), vec3<bool>(global2.x, false, global1.a), vec3<bool>(global0.b, true, global2.x)), any(vec2<bool>(global2.x, false)))));
    var var_0 = false;
    var var_1 = i32(-1i) * -25742i;
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~min(~u_input.b.yx, ~vec2<u32>(u_input.b.x, u_input.c.x)));
    var var_1 = (u_input.b >> (firstLeadingBit(select(vec3<u32>(var_0.x, 36617u, 0u), u_input.b, !global0.a)) % vec3<u32>(32u))) | (vec3<u32>(func_1(), u_input.c.x, firstLeadingBit(var_0.x) >> (0u % 32u)) << (max(vec3<u32>(_wgslsmith_mult_u32(var_0.x, 49079u), var_0.x, var_0.x & var_0.x), ~vec3<u32>(u_input.b.x, 1u, 31503u)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_div_i32(-11376i, _wgslsmith_sub_i32(u_input.a, -7962i));
    var var_3 = 430f;
    var_1 = u_input.c.yzx;
    var var_4 = Struct_1(!global0.b, true || global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-555f * 1532f), -369f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-970f)) - -839f))), -1018f), _wgslsmith_div_vec2_i32(-min(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(1i, u_input.a)), ~vec2<i32>(-1i, -1i)), abs(abs(vec2<i32>(u_input.a, u_input.a)) | ~vec2<i32>(-10822i, -48684i))));
}

