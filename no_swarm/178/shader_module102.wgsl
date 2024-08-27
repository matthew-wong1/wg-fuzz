struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, true, false, false, false, true, false, true, false, true, false, true, false, true, true, false, true, true, true, false, true, true, true, false, false, false, false, false, false, true, false, false);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, true, false), true, vec3<f32>(545f, -437f, -676f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = Struct_3(Struct_1(vec3<bool>(false, !(false || global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), !(!global1.a.x)), global0[_wgslsmith_index_u32(0u, 32u)] & all(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-global1.c)));
    global1 = Struct_1(vec3<bool>(false | (true | var_0.a.a.x), _wgslsmith_f_op_f32(trunc(1165f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.c.x, var_0.a.c.x))), all(select(vec2<bool>(var_0.a.a.x, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<bool>(global1.b, global1.b), global1.a.yy)) | (_wgslsmith_f_op_f32(min(-1974f, -1000f)) < _wgslsmith_div_f32(var_0.a.c.x, 1086f))), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.c.x), global1.c.x, _wgslsmith_f_op_f32(var_0.a.c.x * 125f))), vec3<f32>(_wgslsmith_f_op_f32(round(global1.c.x)), var_0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.c.x, global1.c.x))))));
    global1 = var_0.a;
    let var_1 = abs(1i);
    global0 = array<bool, 32>();
    return _wgslsmith_f_op_f32(min(var_0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: bool) -> i32 {
    global1 = Struct_1(!vec3<bool>(true, !any(vec4<bool>(global1.a.x, arg_2, false, arg_2)), false), arg_2, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(global1.c)))));
    var var_0 = Struct_1(!(!global1.a), any(!select(!global1.a, vec3<bool>(arg_2, arg_2, false), true)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1297f))), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-global1.c.x)));
    let var_1 = Struct_2(vec4<u32>(0u, _wgslsmith_div_u32(1u, 289u), arg_1.x, ~arg_1.x));
    var var_2 = Struct_1(select(global1.a, var_0.a, all(vec2<bool>(false, all(global1.a)))), any(!var_0.a.xx), vec3<f32>(1087f, -296f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)))));
    var var_3 = Struct_1(var_2.a, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, max(_wgslsmith_clamp_u32(~92999u, 42249u << (u_input.b.x % 32u), 33852u), arg_1.x)), 32u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, _wgslsmith_f_op_f32(sign(var_0.c.x)), global1.c.x) - vec3<f32>(_wgslsmith_f_op_f32(func_3(vec3<u32>(var_1.a.x, u_input.c, var_1.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_2.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x) - -1267f))));
    return ~(-2147483647i);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = ~vec3<u32>(~0u & abs(_wgslsmith_dot_vec3_u32(vec3<u32>(11682u, 4294967295u, u_input.b.x), vec3<u32>(arg_1, 4294967295u, arg_1))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(19268u, u_input.c, u_input.c), vec3<u32>(28363u, 0u, arg_1), vec3<u32>(u_input.c, u_input.b.x, 37308u)), vec3<u32>(1u, u_input.c, arg_1)), _wgslsmith_clamp_u32(u_input.c, 1u, min(1u, ~arg_1)));
    let var_1 = -u_input.a.x;
    global1 = Struct_1(vec3<bool>(false, arg_2.x, global1.a.x), arg_2.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, global1.c.x, 1924f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1872f, 1000f, global1.c.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c * vec3<f32>(1465f, global1.c.x, global1.c.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, -544f, global1.c.x) - vec3<f32>(800f, global1.c.x, -1170f)) * _wgslsmith_f_op_vec3_f32(global1.c - vec3<f32>(-1371f, -1050f, global1.c.x)))), any(vec3<bool>(false == arg_2.x, global0[_wgslsmith_index_u32(firstTrailingBit(15056u), 32u)], arg_2.x || false)))));
    var var_2 = all(!global1.a.xz);
    var_0 = ~_wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, 1u, 37710u), vec3<u32>(1u, arg_1, u_input.c)), select(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1, u_input.c, 63032u), vec3<u32>(25347u, arg_1, arg_1)), vec3<u32>(firstTrailingBit(u_input.c), max(u_input.b.x, u_input.c), 5689u), vec3<bool>(true, true, !global0[_wgslsmith_index_u32(40856u, 32u)])));
    return Struct_2(vec4<u32>(~_wgslsmith_add_u32(47842u, var_0.x), abs(4294967295u), 43257u, firstLeadingBit(_wgslsmith_div_u32(72950u, arg_1))) >> (abs(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 4294967295u, arg_1, arg_1), vec4<u32>(17331u, var_0.x, arg_1, var_0.x)))) % vec4<u32>(32u)));
}

fn func_1() -> bool {
    let var_0 = func_4(u_input.a.x, u_input.c, vec3<bool>(func_2(u_input.a.x >> (u_input.b.x % 32u), vec3<u32>(u_input.c, u_input.b.x, 4294967295u) ^ vec3<u32>(4294967295u, 0u, u_input.c), true) == -1i, true, true || all(!global1.a)));
    let var_1 = u_input.a;
    var var_2 = Struct_3(Struct_1(!select(!global1.a, vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(var_0.a.x, 32u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 32u)], false)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(230f, -1000f, -1000f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(983f, -1482f, -1502f) - global1.c)))));
    var var_3 = Struct_2(var_0.a);
    let var_4 = var_3.a.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(select(!(!(!global1.a)), vec3<bool>(true, !all(global1.a), true), true), global0[_wgslsmith_index_u32(u_input.b.x, 32u)], _wgslsmith_f_op_vec3_f32(-global1.c));
    global1 = Struct_1(global1.a, !func_1(), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, global1.c.x, global1.c.x)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -1952f, global1.c.x)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

