struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(true, 1085f);

var<private> global2: Struct_1;

var<private> global3: vec3<f32>;

var<private> global4: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>) -> vec3<u32> {
    var var_0 = Struct_1(!(!(!any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(ceil(global1.b)));
    var var_1 = select(vec4<bool>(global1.a, global0.a, global1.a, ~u_input.a.x != -1i), !select(!select(vec4<bool>(global2.a, false, global2.a, global1.a), vec4<bool>(true, global0.a, var_0.a, false), vec4<bool>(true, global2.a, false, var_0.a)), vec4<bool>(global2.a || global1.a, any(vec2<bool>(global2.a, false)), !global0.a, !var_0.a), select(vec4<bool>(global0.a, global0.a, global0.a, global1.a), !vec4<bool>(global1.a, true, false, global2.a), any(vec3<bool>(false, true, global1.a)))), select(!select(!vec4<bool>(false, true, global0.a, global1.a), select(vec4<bool>(false, true, false, false), vec4<bool>(global1.a, false, var_0.a, global1.a), vec4<bool>(var_0.a, global0.a, global2.a, true)), !vec4<bool>(true, false, global2.a, var_0.a)), !select(!vec4<bool>(var_0.a, false, global0.a, global1.a), select(vec4<bool>(false, global1.a, global0.a, global0.a), vec4<bool>(global2.a, global2.a, global0.a, var_0.a), vec4<bool>(global1.a, false, true, false)), any(vec3<bool>(var_0.a, global1.a, true))), !select(var_0.a, all(vec2<bool>(false, true)), !var_0.a)));
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.b, global1.b)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(-global3.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1619f - 1000f))));
    var var_3 = Struct_1((-24472i != u_input.d) | global0.a, -1392f);
    global2 = Struct_1(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(2222f, _wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-681f, 670f, false)) - var_0.b), true & !global0.a)) + global3.x));
    return vec3<u32>(abs(~0u), ~abs(~u_input.c.x), global4.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - arg_2.b) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1487f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)))));
    global4 = u_input.c.xz;
    var var_1 = _wgslsmith_mod_vec3_u32(arg_0, _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(arg_0.x, global4.x, ~arg_0.x << (global4.x % 32u))));
    let var_2 = arg_1;
    var var_3 = ~u_input.b.x;
    return _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1530f, _wgslsmith_f_op_f32(-global2.b))))) * 1709f));
}

fn func_2() -> f32 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(~select(reverseBits(vec3<u32>(u_input.c.x, 21839u, 48408u)), min(vec3<u32>(0u, u_input.c.x, u_input.c.x), u_input.c), select(vec3<bool>(global1.a, true, true), vec3<bool>(false, true, true), vec3<bool>(global0.a, global0.a, global1.a))), u_input.c);
    let var_1 = firstLeadingBit(~_wgslsmith_div_i32(-u_input.b.x, 49083i) | ~u_input.a.x);
    let var_2 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b)) + _wgslsmith_f_op_f32(-global3.x)))) * _wgslsmith_f_op_f32(func_4(~func_3(vec3<i32>(2147483647i, -2147483647i, 52894i)), Struct_1(true, global3.x), Struct_1(global0.a, global1.b), Struct_1(global1.a, _wgslsmith_f_op_f32(global0.b + 955f))))));
    let var_3 = -1i;
    global2 = Struct_1(!global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b))) * _wgslsmith_f_op_f32(-global1.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1484f * -229f), _wgslsmith_f_op_f32(-228f * 198f)))));
}

fn func_1(arg_0: vec3<u32>) -> vec4<bool> {
    var var_0 = abs(u_input.c.xx);
    var_0 = reverseBits(firstLeadingBit(abs(~(~vec2<u32>(28110u, arg_0.x)))));
    var var_1 = vec2<f32>(-172f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(global0.b * global3.x)), _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.x)))));
    let var_2 = all(vec4<bool>(true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(global0.a, true, true), vec3<bool>(global2.a, false, global2.a), true), select(vec3<bool>(false, false, global2.a), vec3<bool>(false, false, true), global1.a))), global2.a, global1.a));
    var var_3 = ~vec3<u32>(_wgslsmith_sub_u32(arg_0.x, var_0.x), global4.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global4.x), vec2<u32>(arg_0.x, u_input.c.x)), arg_0.x) ^ vec3<u32>(u_input.c.x, 37341u, reverseBits(var_0.x));
    return vec4<bool>(var_2, !global1.a, var_2, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1534f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -181f)));
    var var_0 = select(select(func_1(u_input.c), !vec4<bool>(-752f != global1.b, true, !global0.a, true), global1.a | func_1(u_input.c).x), vec4<bool>(func_1(select(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(global4.x, 42541u, 48882u) & vec3<u32>(global4.x, global4.x, 1u), global1.a)).x, false, true, global0.a), select(select(vec4<bool>(all(vec3<bool>(true, global2.a, true)), select(false, global1.a, false), !global0.a, !global2.a), select(vec4<bool>(true, false, global2.a, true), vec4<bool>(true, global2.a, false, global1.a), vec4<bool>(false, global0.a, false, global2.a)), any(select(vec2<bool>(true, global1.a), vec2<bool>(global0.a, true), global0.a))), vec4<bool>(u_input.b.x > 56429i, true && (-1325f >= global1.b), true, global1.a && global2.a), !vec4<bool>(1u > global4.x, true, select(false, false, global0.a), true)));
    var var_1 = Struct_1(global0.a, global1.b);
    let var_2 = Struct_1(true, _wgslsmith_f_op_f32(-global1.b));
    var var_3 = ~_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, _wgslsmith_div_u32(global4.x, 42677u))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(vec4<u32>(0u, 0u, global4.x, 1u) ^ vec4<u32>(4294967295u, 0u, u_input.c.x, global4.x)), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, global4.x, global4.x, 32851u), vec4<u32>(1u, global4.x, 1u, 2207u)) | ~vec4<u32>(0u, u_input.c.x, 129381u, u_input.c.x))));
}

