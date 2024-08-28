struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26>;

var<private> global1: Struct_3 = Struct_3(Struct_1(true, vec4<i32>(44933i, -22621i, 8534i, -12514i)));

var<private> global2: vec3<bool>;

var<private> global3: Struct_2 = Struct_2(vec4<u32>(39884u, 8387u, 0u, 19720u), -548f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    let var_0 = global3.b;
    let var_1 = Struct_2(max(~(vec4<u32>(arg_1, 91537u, u_input.b, 0u) & vec4<u32>(arg_1, global3.a.x, 4294967295u, global3.a.x)), vec4<u32>(global3.a.x, 16916u, _wgslsmith_div_u32(1u, min(41147u, u_input.b)), 4294967295u & ~global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(605f, global3.b))))));
    var var_2 = select(global2.zy, !(!(!vec2<bool>(global1.a.a, true))), vec2<bool>(!global1.a.a, any(!select(vec2<bool>(false, global2.x), vec2<bool>(global1.a.a, global1.a.a), global1.a.a))));
    let var_3 = reverseBits(firstLeadingBit(arg_0)) | u_input.a;
    var var_4 = u_input.d;
    return ~_wgslsmith_mult_u32(arg_1, ~global3.a.x | var_1.a.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>) -> f32 {
    global2 = !vec3<bool>(global2.x, false, select(all(vec2<bool>(true, true)), !global2.x, true) | all(!vec4<bool>(global2.x, true, global1.a.a, global2.x)));
    var var_0 = ~global1.a.b.xyz;
    var_0 = min(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, u_input.c) << (func_3(var_0.x, u_input.b) % 32u), abs(u_input.a)), ~_wgslsmith_mult_i32(i32(-1i) * -65521i, firstTrailingBit(var_0.x)), min(0i, var_0.x << (1u % 32u)) << (40166u % 32u)), ~vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(~global0[_wgslsmith_index_u32(u_input.b, 26u)], global1.a.b.wz << (global3.a.wy % vec2<u32>(32u))), _wgslsmith_mult_i32(max(-1i, global1.a.b.x), 37555i)));
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, abs(0u) >> (~arg_1.x % 32u)), _wgslsmith_div_u32(1u, u_input.b ^ ~1u), arg_1.x, _wgslsmith_mult_u32(1u, min(50342u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, arg_1.x, u_input.b), global3.a)))), global3.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.b)) + _wgslsmith_f_op_f32(2833f * arg_0.x)) * 762f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-906f)) + -377f)), vec4<i32>(~36525i, ~_wgslsmith_div_i32(1i, max(2147483647i, u_input.c)), -6031i, min(u_input.d, i32(-1i) * -15975i)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global3.b, 643f))))))));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = ~(~(~(~_wgslsmith_div_u32(global3.a.x, global3.a.x))));
    global2 = !vec3<bool>(global1.a.a, false, !select(all(global2.xy), global2.x, global1.a.a | false));
    var var_1 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b, global3.b)))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-247f, 295f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-306f, global3.b))), vec2<f32>(1969f, global3.b), !global2.x))))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b), global3.a.yw)));
    let var_2 = vec4<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global3.a.x, global3.a.x, global3.a.x, 755u), _wgslsmith_div_vec4_u32(global3.a, ~global3.a)), vec4<u32>(4294967295u, 4294967295u ^ u_input.b, ~1u, 1u) | select(vec4<u32>(52933u, u_input.b, 1008u, global3.a.x), abs(vec4<u32>(u_input.b, u_input.b, global3.a.x, 0u)), true)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(global3.a.yyy, vec3<u32>(u_input.b, global3.a.x, global3.a.x)), max(61110u, 1u), countOneBits(global3.a.x), u_input.b) << (abs(vec4<u32>(u_input.b, u_input.b, 126250u, global3.a.x) ^ vec4<u32>(4294967295u, 0u, 1u, u_input.b)) % vec4<u32>(32u)), ~global3.a), 29255u);
    global0 = array<vec2<i32>, 26>();
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~countOneBits(global3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1257f)));
    let var_1 = Struct_2(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(62144u, 0u, 4294967295u, 1u) << (global3.a % vec4<u32>(32u))), global3.a), _wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(func_1(true))));
    var var_2 = Struct_3(Struct_1(!any(select(vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(global2.x, false, false, global2.x), false)), ~global1.a.b));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.b, global3.b))))) - global3.b);
    var var_4 = true;
    global1 = Struct_3(Struct_1(true, -firstTrailingBit(vec4<i32>(global1.a.b.x, -41429i, var_2.a.b.x, global1.a.b.x))));
    let var_5 = -350f;
    let var_6 = _wgslsmith_dot_vec2_u32(global3.a.zz, var_0.a.ww);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i ^ var_2.a.b.x, ~var_2.a.b.x, 27033i), vec3<i32>(u_input.a, ~u_input.d, u_input.c ^ u_input.d), countOneBits(vec3<i32>(-1i, global1.a.b.x, 2147483647i))) >> (~firstLeadingBit(~vec3<u32>(var_0.a.x, var_1.a.x, var_0.a.x)) % vec3<u32>(32u)), global1.a.b.x, vec4<i32>(46675i, u_input.c, u_input.a, var_2.a.b.x), firstLeadingBit(var_1.a));
}

