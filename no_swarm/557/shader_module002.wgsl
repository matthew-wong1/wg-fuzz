struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<f32> {
    var var_0 = Struct_1(firstLeadingBit(arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - -165f)), _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(floor(arg_0.b))), all(vec3<bool>(true, true, true))))), ~0i, 0u);
    var var_1 = Struct_1(vec2<u32>(~1u, u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(-var_0.b))), abs(_wgslsmith_div_i32(-38751i, 39279i & _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, 0i), u_input.a))), arg_2.d);
    var var_2 = u_input.b.x;
    var var_3 = !(!vec3<bool>(false, false | (arg_3.x >= arg_0.b), true));
    let var_4 = Struct_1(~(~vec2<u32>(1u, ~var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -414f), arg_2.c, arg_2.d << (4294967295u % 32u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1359f, _wgslsmith_f_op_f32(trunc(442f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(434f, 1576f), 558f)), -1000f) * vec2<f32>(arg_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1567f)), -809f))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<bool>(true, false, !(_wgslsmith_f_op_f32(f32(-1f) * -658f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(526f)))));
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_1 = 1u;
    let var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -154f), -739f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-403f, -1509f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-384f, -438f), vec2<f32>(1097f, 1000f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2103f, -919f) - vec2<f32>(1056f, -1181f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(u_input.b.zz, -255f, 2147483647i, 29260u), Struct_1(u_input.b.xx, -1078f, u_input.d, u_input.b.x), Struct_1(vec2<u32>(1u, 0u), 162f, 180i, u_input.b.x), vec4<f32>(-1784f, -1490f, 1491f, 257f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1246f, 159f) - vec2<f32>(-110f, -1220f)))))));
    return Struct_1(countOneBits(firstLeadingBit(abs(vec2<u32>(4294967295u, 30137u)))), _wgslsmith_f_op_f32(round(-1745f)), 14030i, ~u_input.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: f32) -> i32 {
    var var_0 = u_input.b.xx;
    var var_1 = func_2();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    return ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(2248u, u_input.b, 254f, select(vec4<i32>(u_input.d, u_input.a.x << (u_input.b.x % 32u), u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_i32(-vec4<i32>(271i, u_input.a.x, 2147483647i, u_input.d), ~vec4<i32>(u_input.a.x, u_input.d, u_input.d, -2147483647i)), true) | vec4<i32>(~countOneBits(-2147483647i), func_1(global0[_wgslsmith_index_u32(10966u, 18u)], 1u, 27725i, -1089f) | (1i ^ u_input.a.x), _wgslsmith_div_i32(u_input.d >> (u_input.b.x % 32u), u_input.a.x), ~2147483647i));
}

