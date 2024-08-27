struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1000f, true, vec2<u32>(58181u, 0u), 0u));

var<private> global1: array<Struct_2, 12>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    global1 = array<Struct_2, 12>();
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(~(-max(arg_1.x, 2147483647i)), arg_1.x, arg_1.x), -_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, 24168i), _wgslsmith_add_vec3_i32(abs(vec3<i32>(1269i, 0i, -2147483647i)), vec3<i32>(arg_1.x, arg_1.x, arg_1.x))));
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    global0 = Struct_2(arg_0);
    return 1000f;
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = any(select(vec2<bool>(global0.a.b, true), !(!(!vec2<bool>(false, global0.a.b))), false));
    let var_2 = Struct_1(arg_0.x, global0.a.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_add_u32(abs(global0.a.d), u_input.b << (57331u % 32u))), ~vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 0u), _wgslsmith_div_u32(0u, u_input.b)), _wgslsmith_add_vec2_u32(u_input.a, global0.a.c)), _wgslsmith_sub_u32(4294967295u, 26044u));
    let var_3 = global0.a;
    global0 = global1[_wgslsmith_index_u32(0u, 12u)];
    return Struct_1(_wgslsmith_f_op_f32(var_2.a - var_2.a), all(select(vec2<bool>(global0.a.b, var_0.x != -917f), select(vec2<bool>(true, var_3.b), select(vec2<bool>(var_3.b, false), vec2<bool>(false, var_1), var_2.b), vec2<bool>(true, true)), vec2<bool>(global0.a.b, all(vec2<bool>(var_1, var_1))))), _wgslsmith_mult_vec2_u32(var_2.c, var_3.c), ~0u);
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = global0.a.c.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(global0.a.a)), global0.a.b, _wgslsmith_mult_vec2_u32(~vec2<u32>(global0.a.c.x, _wgslsmith_mod_u32(4294967295u, arg_0.d)), abs(~vec2<u32>(u_input.a.x, 3683u) >> (~global0.a.c % vec2<u32>(32u)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(arg_0.d), 26461u, ~arg_0.d, u_input.b), ~(~vec4<u32>(4294967295u, u_input.a.x, 1u, arg_0.d))));
    var var_2 = firstTrailingBit(1u);
    var var_3 = global1[_wgslsmith_index_u32(min(arg_0.c.x, 4294967295u), 12u)];
    var_2 = ~((countOneBits(arg_0.d) << (var_1.d % 32u)) >> (var_1.c.x % 32u));
    return select(!(!(!select(vec3<bool>(global0.a.b, var_1.b, true), vec3<bool>(var_3.a.b, global0.a.b, true), global0.a.b))), vec3<bool>(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-991f, -949f, arg_0.a, -698f), vec4<f32>(var_3.a.a, global0.a.a, 2182f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.a))).b, true, true), 84787u <= max(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, arg_0.d), ~u_input.a.x));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> u32 {
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    var var_0 = func_4(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(317f, global0.a.a, arg_0, 1163f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a, 585f, 436f, arg_0)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, arg_0)) * _wgslsmith_f_op_f32(func_2(global0.a, vec2<i32>(-2147483647i, -38398i), global0.a)))))));
    var var_1 = _wgslsmith_div_vec2_u32(u_input.a, global0.a.c);
    var_1 = ~arg_1.a.c;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global0.a.b;
    let var_1 = ~_wgslsmith_sub_u32(func_1(_wgslsmith_f_op_f32(trunc(638f)), Struct_2(global0.a)) & ~global0.a.d, abs(_wgslsmith_mod_u32(0u, ~global0.a.c.x)));
    let var_2 = Struct_2(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(833f, -717f, 1155f, -1124f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(314f, global0.a.a, global0.a.a, global0.a.a)), vec4<bool>(true, false, var_0, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global0.a.a)), _wgslsmith_f_op_f32(global0.a.a - global0.a.a), any(vec4<bool>(true, global0.a.b, var_0, global0.a.b))))))));
    global1 = array<Struct_2, 12>();
    var var_3 = var_2.a;
    global1 = array<Struct_2, 12>();
    var var_4 = vec3<i32>(~select(select(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 22329i), vec3<i32>(7824i, -43058i, 1i)), 0i, any(vec3<bool>(true, false, var_2.a.b))), -1i, true), -2147483647i, ~(-(~(-15375i))));
    var var_5 = Struct_2(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_4.x);
}

