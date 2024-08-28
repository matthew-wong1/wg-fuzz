struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(-14320i, -1i, 2147483647i), vec2<i32>(-33644i, -1771i), -195f));

var<private> global2: vec3<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> bool {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(1u, 3u)]);
    let var_1 = !vec3<bool>(global2.x, global2.x, !global2.x);
    var var_2 = vec2<i32>(2147483647i, global1.a.b.x);
    var var_3 = global0[_wgslsmith_index_u32(u_input.e.x, 3u)];
    var_0 = Struct_2(var_0.a);
    return !(!any(vec3<bool>(false, true, false)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> bool {
    global0 = array<Struct_1, 3>();
    global2 = vec3<bool>(global2.x, global2.x, all(vec4<bool>(true, global2.x, global2.x, global1.a.a.x > _wgslsmith_dot_vec2_i32(vec2<i32>(27779i, 30070i), arg_0.a.xy))));
    global2 = !vec3<bool>(_wgslsmith_div_i32(arg_0.a.x, 1i) > _wgslsmith_clamp_i32(1i, global1.a.a.x, arg_0.b.x), true, global2.x);
    let var_0 = Struct_1(global1.a.a & global1.a.a, abs(vec2<i32>(-42207i, _wgslsmith_mult_i32(arg_0.b.x, -1i) & 99169i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2237f - _wgslsmith_f_op_f32(abs(276f)))))));
    let var_1 = vec3<bool>(false, countOneBits(_wgslsmith_div_i32(-13316i, arg_0.b.x)) <= abs(i32(-1i) * -var_0.a.x), true);
    return false;
}

fn func_1(arg_0: bool, arg_1: f32) -> u32 {
    global2 = vec3<bool>(any(vec3<bool>(func_2(), !arg_0 || func_3(global1.a, 127f, 0i), true & !global2.x)), true, any(select(!vec2<bool>(false, global2.x), global2.xx, global2.xz)));
    var var_0 = -2663f;
    return u_input.e.x;
}

fn func_4(arg_0: u32) -> Struct_2 {
    global1 = Struct_2(global0[_wgslsmith_index_u32(arg_0, 3u)]);
    let var_0 = _wgslsmith_f_op_f32(step(global1.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f), -583f)));
    global0 = array<Struct_1, 3>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.c, _wgslsmith_f_op_f32(max(var_0, var_0)), -1708f) + vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-387f * 935f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -330f))));
    return Struct_2(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(u_input.d.x < -17363i, true);
    var var_1 = func_4(func_1(global2.x, _wgslsmith_f_op_f32(abs(183f))));
    global1 = func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 33260u), firstLeadingBit(u_input.a.wxw)), u_input.c, abs(~u_input.e.x), 7619u), firstTrailingBit(~(~u_input.a))));
    global2 = !(!select(!vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(false, global2.x, var_0.x), false || !global2.x));
    var_1 = func_4(~u_input.c);
    let var_2 = _wgslsmith_f_op_f32(step(var_1.a.c, -1257f));
    let x = u_input.a;
    s_output = StorageBuffer(-589f, u_input.a);
}

