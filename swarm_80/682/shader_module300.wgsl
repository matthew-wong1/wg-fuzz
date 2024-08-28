struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(551f, 1137f, 598f, 392f));

var<private> global1: array<i32, 23>;

var<private> global2: array<bool, 29> = array<bool, 29>(true, true, false, true, false, false, true, false, true, false, true, true, true, false, true, true, true, false, false, true, false, false, true, false, false, true, true, false, false);

var<private> global3: u32;

var<private> global4: i32 = 53496i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> bool {
    var var_0 = any(!vec4<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(60242u, 29u)], false, global2[_wgslsmith_index_u32(0u, 29u)], false)), !arg_2.a.d.x, arg_2.a.d.x, arg_0)) & any(select(!vec4<bool>(arg_2.a.d.x, false, true, global2[_wgslsmith_index_u32(arg_2.a.a.x, 29u)]), vec4<bool>(global2[_wgslsmith_index_u32(arg_2.a.a.x, 29u)] && arg_2.a.d.x, 518f == arg_2.a.c, false, select(true, false, arg_0)), !arg_0));
    return all(vec4<bool>(false, arg_2.a.d.x, global2[_wgslsmith_index_u32(12313u, 29u)], (!global2[_wgslsmith_index_u32(86083u, 29u)] != (arg_0 || global2[_wgslsmith_index_u32(4294967295u, 29u)])) & true));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 36377u, 0u)) | vec3<u32>(_wgslsmith_div_u32(1u, 22929u), countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(46150u, 0u))), ~vec3<u32>(~28842u, ~1u, 0u)), abs(~(~4294967295u)));
    let var_1 = u_input.a.x;
    let var_2 = !select(vec2<bool>(any(vec2<bool>(false, global2[_wgslsmith_index_u32(var_0, 29u)])), global2[_wgslsmith_index_u32(firstLeadingBit(var_0), 29u)]), select(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(var_0, 29u)], false), vec2<bool>(global2[_wgslsmith_index_u32(44037u, 29u)], true), global2[_wgslsmith_index_u32(4294967295u, 29u)]), vec2<bool>(global2[_wgslsmith_index_u32(var_0, 29u)], global2[_wgslsmith_index_u32(31259u, 29u)])), vec2<bool>(global2[_wgslsmith_index_u32(abs(var_0), 29u)], false), global2[_wgslsmith_index_u32(~firstLeadingBit(20736u), 29u)]), func_1(firstTrailingBit(4294967295u) < ~var_0, arg_0.xyx, Struct_2(Struct_1(vec2<u32>(var_0, var_0), global0[_wgslsmith_index_u32(var_0, 1u)], arg_0.x, vec3<bool>(global2[_wgslsmith_index_u32(var_0, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(var_0, 29u)])))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global2 = array<bool, 29>();
    return ~(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0) >> (abs(vec2<u32>(24796u, 4294967295u)) % vec2<u32>(32u)), ~min(vec2<u32>(var_0, var_0), vec2<u32>(4294967295u, var_0))) & 56736u);
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = ~vec3<i32>(83908i, 3025i, u_input.d.x);
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.a.x, arg_1.c.a.x, arg_1.c.a.x, 1u) ^ vec4<u32>(4294967295u, 24752u, arg_1.c.a.x, arg_1.c.a.x), ~vec4<u32>(arg_1.c.a.x, 1u, 0u, arg_1.c.a.x)) | ~(~func_3(global0[_wgslsmith_index_u32(0u, 1u)])), _wgslsmith_sub_u32(_wgslsmith_sub_u32(min(arg_1.c.a.x, 19503u), 0u) >> (~(~110154u) % 32u), arg_1.c.a.x), ~arg_1.c.a.x);
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1279f, var_2.d, arg_1.e) * var_2.c.b.zwy))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c.b.wwy) * _wgslsmith_f_op_vec3_f32(-arg_1.c.b.yzz))), _wgslsmith_div_vec3_f32(vec3<f32>(-807f, _wgslsmith_f_op_f32(step(var_2.e, arg_0)), _wgslsmith_f_op_f32(arg_1.e - -1222f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c.b.yzw))))));
    let var_4 = _wgslsmith_clamp_vec2_u32(vec2<u32>(69u, func_3(arg_1.c.b)) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 6894u), ~(~vec2<u32>(58912u, 4294967295u)), ~vec2<u32>(72901u, 7431u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(var_2.c.a), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, var_2.c.a.x))), vec2<u32>(_wgslsmith_sub_u32(20321u, var_2.c.a.x), 43743u)), ~vec2<u32>(1u, arg_1.c.a.x) | ~vec2<u32>(var_2.c.a.x, arg_1.c.a.x)), vec2<u32>(arg_1.c.a.x, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_1.c.b))))));
    return Struct_3(all(select(select(select(vec4<bool>(false, var_2.c.d.x, false, var_2.a), vec4<bool>(arg_1.c.d.x, true, arg_1.b.x, true), vec4<bool>(false, var_2.c.d.x, global2[_wgslsmith_index_u32(var_4.x, 29u)], false)), select(vec4<bool>(false, global2[_wgslsmith_index_u32(arg_1.c.a.x, 29u)], false, false), vec4<bool>(var_2.c.d.x, false, global2[_wgslsmith_index_u32(var_1, 29u)], var_2.b.x), vec4<bool>(true, var_2.b.x, var_2.b.x, global2[_wgslsmith_index_u32(var_2.c.a.x, 29u)])), vec4<bool>(false, true, false, false)), !select(vec4<bool>(arg_1.b.x, true, var_2.c.d.x, true), vec4<bool>(true, var_2.a, arg_1.c.d.x, false), global2[_wgslsmith_index_u32(var_2.c.a.x, 29u)]), any(vec3<bool>(false, true, true)) && false)), vec2<bool>(false, func_1(arg_1.c.a.x >= 255u, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(3128f, 236f, var_2.d))))), Struct_2(Struct_1(arg_1.c.a, global0[_wgslsmith_index_u32(var_4.x, 1u)], 103f, arg_1.c.d)))), arg_1.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.e + _wgslsmith_div_f32(1437f, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.c.b.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -2033f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(_wgslsmith_f_op_f32(trunc(-159f)), Struct_3(global2[_wgslsmith_index_u32(17234u, 29u)], !vec2<bool>(false || global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(76916u, 17395u, 48517u), 29u)]), Struct_1(vec2<u32>(1u, 1u), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(abs(44420u), 1u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 286f) * _wgslsmith_f_op_f32(ceil(-464f))), !(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 29u)], true, global2[_wgslsmith_index_u32(50235u, 29u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(158f)) - 1f) + -411f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-483f * 828f), 958f, func_1(global2[_wgslsmith_index_u32(30065u, 29u)], vec3<f32>(-1521f, -968f, 827f), Struct_2(Struct_1(vec2<u32>(1u, 11354u), vec4<f32>(-648f, 1119f, -629f, -1000f), 2151f, vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 29u)], false, false))))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.xy);
}

