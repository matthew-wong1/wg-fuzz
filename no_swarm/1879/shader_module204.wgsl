struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(355f, 1028f, 172f), false);

var<private> global1: Struct_3;

var<private> global2: Struct_4 = Struct_4(vec4<u32>(4294967295u, 64506u, 0u, 1u), vec3<bool>(true, false, true), -1546f);

var<private> global3: Struct_3 = Struct_3(vec3<bool>(false, true, true), vec2<bool>(true, true));

var<private> global4: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-628f, _wgslsmith_f_op_f32(abs(global2.c)), 1761f) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1495f, global2.c, 199f) + vec3<f32>(global0.a.x, global0.a.x, global2.c))))))));
    var var_1 = _wgslsmith_f_op_f32(global2.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-385f, -243f)), var_0.x)), !(!global2.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -427f)), _wgslsmith_f_op_f32(f32(-1f) * -230f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global2.c)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-340f, global0.a.x) - _wgslsmith_f_op_f32(-1993f * var_0.x)))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(-1000f, global2.c), global2.c, -434f))));
    let var_3 = false;
    var var_4 = abs(~firstTrailingBit(vec2<u32>(26688u, global2.a.x) ^ ~vec2<u32>(4294967295u, 1u)));
    return !(!(-1i >= (-5291i & arg_0))) || (any(vec2<bool>(true, global3.b.x)) && global1.b.x);
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<i32>(~u_input.b.x, ~(i32(-1i) * -u_input.a.x), ~(u_input.b.x | ~_wgslsmith_div_i32(u_input.c, 2147483647i)));
    var var_1 = Struct_2(global0.a, (global0.b || global1.a.x) & true);
    var var_2 = abs(~(~u_input.e));
    var_1 = Struct_2(global0.a, !(u_input.c > var_0.x));
    var_0 = u_input.a;
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -223f) - global2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), u_input.e, ~(~(~vec3<i32>(u_input.a.x, -16851i, var_0.x))), any(vec4<bool>(global1.a.x, 75133i == u_input.c, !global1.a.x, select(true, global1.b.x, true))) || !func_3(var_0.x, vec4<u32>(global2.a.x, u_input.d, var_2.x, 1u), true));
}

fn func_1() -> f32 {
    var var_0 = func_2();
    let var_1 = ~(~vec4<u32>(1u, _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(22336u, var_0.c.x), var_0.c)), _wgslsmith_dot_vec3_u32(reverseBits(global2.a.yxz), ~global2.a.ywy), abs(u_input.e.x)));
    global3 = Struct_3(global3.a, !vec2<bool>(func_3(var_0.d.x, reverseBits(global2.a), select(global3.a.x, false, global2.b.x)), any(vec4<bool>(global1.a.x, false, true, true))));
    var var_2 = func_2();
    var var_3 = var_0.d.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global3.a, vec2<bool>(all(!(!vec2<bool>(global0.b, global0.b))), global0.b));
    let var_1 = i32(-1i) * -25901i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), global0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(global0.a, global0.a)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(global0.a.x, global0.a.x, 1000f)), _wgslsmith_f_op_vec3_f32(-global0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 708f, -1000f) + vec3<f32>(-1042f, 1000f, global0.a.x))))));
}

