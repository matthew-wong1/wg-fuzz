struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-323f, _wgslsmith_f_op_f32(1197f + -1568f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(392f, -746f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-482f, -608f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-589f, _wgslsmith_f_op_f32(f32(-1f) * -593f)))))));
    let var_1 = select(vec3<bool>(all(arg_0), all(!vec2<bool>(false, arg_0.x)), false), select(!select(vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(arg_0.x, true, false), vec3<bool>(true, false, arg_0.x), vec3<bool>(false, true, false)), all(arg_0)), select(vec3<bool>(false, all(arg_0), all(vec2<bool>(false, false))), vec3<bool>(arg_0.x, arg_0.x && arg_0.x, false), true), false), arg_0.x != !(!all(arg_0)));
    global0 = array<Struct_1, 12>();
    var var_2 = vec4<i32>(-37831i, arg_1.x, u_input.c, arg_1.x);
    var var_3 = _wgslsmith_mult_vec4_u32(~vec4<u32>(~1u, u_input.b, ~abs(1u), ~u_input.b ^ countOneBits(u_input.b)), ~vec4<u32>(4294967295u, max(~u_input.b, ~0u), u_input.a.x, u_input.a.x));
    return countOneBits(_wgslsmith_mod_vec3_u32(var_3.zwx, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 15845u, var_3.x), min(vec3<u32>(0u, var_3.x, 1u), var_3.xyy)) ^ vec3<u32>(firstTrailingBit(20797u), var_3.x << (61132u % 32u), 5169u)));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    let var_0 = Struct_1((~arg_2.a >> (arg_2.a % vec3<u32>(32u))) ^ ~arg_2.a);
    let var_1 = Struct_1(func_3(vec2<bool>(arg_0, true), arg_3.xx));
    var var_2 = any(vec4<bool>(!any(vec4<bool>(true, true, false, arg_0)), !arg_0, any(vec4<bool>(all(vec4<bool>(arg_0, true, arg_0, arg_0)), any(vec3<bool>(arg_0, arg_0, arg_0)), arg_0, arg_3.x < 1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -147f))) > _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(512f + -647f))));
    global0 = array<Struct_1, 12>();
    let var_3 = ~(-18805i);
    return 1333f;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = arg_3;
    let var_1 = Struct_1(~arg_2.a);
    var_0 = u_input.d.x < select(_wgslsmith_mult_i32(u_input.c, u_input.d.x), _wgslsmith_sub_i32(select(34687i, _wgslsmith_sub_i32(u_input.d.x, -16071i), !arg_0), -1i), true);
    var_0 = min(-countOneBits(~u_input.c), ~(-11033i)) >= select(u_input.d.x, -17882i, abs(_wgslsmith_mult_i32(-31892i, u_input.d.x)) > -u_input.c);
    global0 = array<Struct_1, 12>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-214f, _wgslsmith_f_op_f32(-arg_1))));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> StorageBuffer {
    global0 = array<Struct_1, 12>();
    let var_0 = _wgslsmith_f_op_f32(func_4(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1u != (u_input.a.x << (57762u % 32u)), u_input.b, global0[_wgslsmith_index_u32(u_input.b, 12u)], -vec4<i32>(u_input.d.x, arg_1, 17718i, 0i) & abs(vec4<i32>(-17206i, arg_1, u_input.d.x, u_input.d.x)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x * -309f)))))), global0[_wgslsmith_index_u32(abs(~(4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.a.x, 0u, u_input.b, 64724u)))), 12u)], true));
    global0 = array<Struct_1, 12>();
    let var_1 = Struct_1(min(select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, 34890u) ^ vec3<u32>(u_input.b, 24610u, u_input.a.x), ~vec3<u32>(13514u, 51131u, 20421u)), vec3<u32>(1u, _wgslsmith_add_u32(29412u, u_input.b), _wgslsmith_sub_u32(u_input.b, 22199u)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))), vec3<u32>(u_input.b, firstTrailingBit(0u), func_3(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), u_input.d.zw & u_input.d.yz).x)));
    return StorageBuffer(u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-230f, -1701f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1645f - 371f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1070f + -1122f)))))), ~35021i);
}

