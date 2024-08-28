struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<vec2<f32>, 14>;

var<private> global3: u32 = 0u;

var<private> global4: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<bool> {
    return arg_0.ywy;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: bool) -> bool {
    var var_0 = Struct_1(select(firstTrailingBit(~u_input.b.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, arg_1.a, arg_0, 32987u), vec4<u32>(4294967295u, arg_1.a, 1u, 25356u)) % 32u)), arg_2.x, true));
    var var_1 = arg_1.d;
    var var_2 = arg_1.d;
    var var_3 = ~vec3<u32>(arg_0, _wgslsmith_sub_u32(u_input.e, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(8154u, arg_0)), vec2<u32>(arg_0, 0u))), ~_wgslsmith_mult_u32(arg_0, 1u));
    let var_4 = func_3(vec4<bool>(false | arg_3, true, !(arg_1.a >= arg_0) | any(vec2<bool>(true, true)), arg_1.b));
    return true;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: u32, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-545f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + 174f)) - _wgslsmith_f_op_f32(floor(-1315f))));
    global0 = !select(any(vec2<bool>(true, true)) && func_2(max(u_input.c, arg_2), Struct_2(20373u, false, arg_1.x, global1[_wgslsmith_index_u32(arg_2, 28u)], vec3<i32>(arg_1.x, arg_1.x, u_input.a)), firstLeadingBit(u_input.b), all(vec2<bool>(true, false))), true, !func_3(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))).x);
    var var_1 = all(vec4<bool>(false, true, func_2(arg_2, Struct_2(arg_2, true, 0i, global1[_wgslsmith_index_u32(5766u, 28u)], u_input.b.yxz), u_input.b, true) && all(vec3<bool>(true, false, false)), !all(vec2<bool>(true, false)))) == any(select(vec4<bool>(true, arg_1.x < arg_1.x, true, true), vec4<bool>(true, true, true, true), true));
    var_1 = true;
    var var_2 = abs(4294967295u);
    return !func_3(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))).xz;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 14>();
    var var_0 = ~u_input.a;
    let var_1 = !func_1(1768f, u_input.b.zzw, ~26413u, vec2<u32>(54085u, u_input.d & ~u_input.c));
    var_0 = 3798i;
    global1 = array<Struct_1, 28>();
    var var_2 = Struct_1(_wgslsmith_add_i32(2147483647i, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.e, u_input.b, min(vec4<i32>(var_2.a, abs(16665i), -1i, ~_wgslsmith_add_i32(var_2.a, 2147483647i)), u_input.b), u_input.e);
}

