struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: Struct_4;

var<private> global2: vec4<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_3(~vec2<u32>(_wgslsmith_mod_u32(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, arg_1), vec3<u32>(47461u, 4294967295u, 52396u))), ~(~u_input.b)), 11302u, _wgslsmith_f_op_f32(floor(-459f)) >= _wgslsmith_f_op_f32(f32(-1f) * -403f));
    return Struct_3(var_0.a, firstLeadingBit(var_0.a.x), global1.a.a);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(countOneBits(2078u >> (~(~1u) % 32u)), 30u)];
    global1 = Struct_4(global1.a);
    var var_1 = vec2<i32>(71681i, i32(-1i) * -2147483647i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-511f, _wgslsmith_div_f32(552f, 618f))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1046f)))))));
    var_0 = Struct_2(1i);
    return ~countOneBits(~(~(46768u | u_input.b)));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = ~(vec2<u32>(6786u, func_3(func_2(vec2<i32>(u_input.d.x, -15745i), u_input.c, Struct_2(23446i), vec3<i32>(u_input.d.x, global1.a.b, u_input.d.x)), vec4<u32>(u_input.c, 4294967295u, 1u, 6868u))) | _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(1u, u_input.c)), vec2<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_clamp_u32(u_input.b, u_input.c, u_input.c)), countOneBits(vec2<u32>(u_input.b, 0u))));
    var var_1 = func_2(max(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.a.b, abs(u_input.a.x)), vec2<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a.x), 0i & u_input.a.x)), reverseBits(u_input.d)), var_0.x, Struct_2(global1.a.b), u_input.a.zzz).b;
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    var var_2 = false;
    return 26260u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    let var_1 = vec2<f32>(-440f, 1125f);
    var var_2 = global1.a;
    var var_3 = Struct_3(vec2<u32>(u_input.b, firstLeadingBit(u_input.c)) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.c, _wgslsmith_clamp_u32(u_input.b, u_input.b, 0u)), vec2<u32>(firstTrailingBit(1u), u_input.c), ~(~vec2<u32>(17853u, 39248u))), func_1(true), !all(vec4<bool>(global1.a.a, true, false, var_0.a)) && (true | !func_2(vec2<i32>(var_2.b, var_0.b), u_input.c, Struct_2(global1.a.b), vec3<i32>(-20504i, -26130i, 49608i)).c));
    let var_4 = false;
    let var_5 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-2280f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, 351f, false)), _wgslsmith_f_op_f32(sign(1667f)), _wgslsmith_f_op_f32(f32(-1f) * -211f), _wgslsmith_f_op_f32(select(892f, var_1.x, global2.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_5, -563f) * vec4<f32>(var_5, -884f, -443f, -755f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5, var_1.x, var_5, var_1.x) - vec4<f32>(-268f, var_5, var_1.x, 1000f)), var_3.c & true)))), ~max(var_3.b, 9816u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(679f - var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(549f, var_5)) * -1295f))));
}

