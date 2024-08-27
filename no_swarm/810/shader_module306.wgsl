struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10>;

var<private> global1: array<u32, 23>;

var<private> global2: vec3<f32> = vec3<f32>(-807f, -636f, -1000f);

var<private> global3: vec2<f32> = vec2<f32>(609f, -1389f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec4<u32> {
    return ~reverseBits(select(~(~u_input.a), abs(u_input.a), true));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: u32, arg_3: bool) -> f32 {
    var var_0 = vec3<bool>(true, any(!select(!vec2<bool>(arg_3, true), vec2<bool>(arg_3, true), arg_3)), all(vec2<bool>(arg_3, any(select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(arg_3, false, true), arg_3)))));
    var var_1 = arg_1.zz ^ ~_wgslsmith_div_vec2_u32(firstTrailingBit(arg_1.xy) ^ arg_1.xz, ~u_input.c);
    let var_2 = Struct_3(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(func_3(arg_0, global3.x, 2147483647i, Struct_1(1u, global3.x, 71309u, vec3<i32>(34027i, u_input.b.x, u_input.d.x))), ~vec4<u32>(4294967295u, arg_2, 17622u, arg_1.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(1653u, 1182u, arg_1.x, 0u), vec4<u32>(0u, arg_2, 46494u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5285u, 23u)], 23u)])), u_input.a), _wgslsmith_dot_vec3_u32(~u_input.a.zzw, u_input.a.wxw), max(arg_2, 28790u), arg_1.x)));
    var var_3 = 1i ^ u_input.b.x;
    let var_4 = !any(!vec4<bool>(var_0.x | arg_3, true, var_0.x, any(vec3<bool>(false, false, true))));
    return arg_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec3<f32> {
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(896f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(672f, 788f)), _wgslsmith_f_op_f32(select(global2.x, 1668f, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), global3.x) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-225f))), _wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(max(-1500f, _wgslsmith_f_op_f32(step(-1142f, _wgslsmith_f_op_f32(trunc(global2.x))))))));
    global2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(128f, _wgslsmith_f_op_f32(1000f + 1450f)))), global2.x, _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-576f - -227f) + global3.x))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1486f, -157f, arg_0.b)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(699f, 880f, -495f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f + 764f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec3<f32>(-1163f, global2.x, arg_0.b), u_input.a.yzy, arg_0.a, true)), _wgslsmith_f_op_f32(global2.x * arg_0.b))), _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(728f, global2.x, global2.x))) - vec3<f32>(207f, 237f, -1589f))), vec3<bool>(true, true, true)));
    let var_1 = Struct_1(~(_wgslsmith_clamp_u32(arg_1.a.x, ~u_input.a.x, 0u) & ~global1[_wgslsmith_index_u32(select(1u, global1[_wgslsmith_index_u32(u_input.c.x, 23u)], true), 23u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.b)), 1840f, all(vec2<bool>(false, true)))) * _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_div_u32(max(~29354u ^ global1[_wgslsmith_index_u32(arg_1.a.x, 23u)], global1[_wgslsmith_index_u32(abs(0u), 23u)] & (arg_1.a.x | 4294967295u)), global1[_wgslsmith_index_u32(4294967295u, 23u)]), -(~vec3<i32>(select(-9436i, arg_0.d.x, true), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.d.x, 1496i, u_input.b.x), u_input.d), 1i)));
    var var_2 = global0[_wgslsmith_index_u32(15648u, 10u)];
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1388f, -146f, 1402f) - vec3<f32>(global3.x, global2.x, -1200f)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-187f)) - 1935f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2266f, 692f)) * -155f), -136f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_1(global1[_wgslsmith_index_u32(61257u, 23u)], -2426f, u_input.e, vec3<i32>(2147483647i, u_input.b.x, -8661i)), Struct_2(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.e, 23u)], 4294967295u), u_input.d.x)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, -418f) - vec3<f32>(-476f, -1000f, -474f)), vec3<f32>(-1673f, global2.x, global2.x))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * global2.x))), _wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, global3.x))))));
    let var_1 = vec2<i32>(~(~(-_wgslsmith_mult_i32(u_input.d.x, u_input.d.x))), 2147483647i);
    var_0 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-369f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(940f)), -1274f)));
    global0 = array<vec3<i32>, 10>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(429f, var_0.x, global3.x, -1533f), vec4<f32>(1369f, -764f, -556f, global3.x)))) + vec4<f32>(global3.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -110f), _wgslsmith_f_op_f32(-global3.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-786f - -1103f), global2.x, _wgslsmith_f_op_f32(global2.x * -768f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 679f, -703f, var_0.x) * vec4<f32>(var_0.x, -734f, var_0.x, global3.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 1268f, 1126f, var_0.x) - vec4<f32>(global2.x, global2.x, var_0.x, 2035f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.x, 1000f, -593f, -1063f), vec4<f32>(233f, global3.x, 501f, var_0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1102f) + _wgslsmith_f_op_f32(-266f * global2.x)), 1427f, _wgslsmith_f_op_f32(step(121f, 259f)), _wgslsmith_f_op_f32(abs(var_2.x))), vec4<f32>(902f, global2.x, var_0.x, 735f)), -(-(~global0[_wgslsmith_index_u32(1u, 10u)]) & vec3<i32>(u_input.b.x, firstLeadingBit(var_1.x), u_input.d.x)), global2.x, vec3<u32>(30112u, ~select(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(59385u, 23u)], global1[_wgslsmith_index_u32(49452u, 23u)]), 77797u, true), ~32418u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_3(vec3<f32>(-258f, var_2.x, 1000f), var_0.x, -18008i, Struct_1(global1[_wgslsmith_index_u32(u_input.e, 23u)], var_0.x, u_input.e, vec3<i32>(u_input.d.x, 25540i, 0i))).wz, _wgslsmith_sub_vec2_u32(vec2<u32>(44617u, 0u), u_input.c)) | u_input.e, 23u)] >> (func_3(var_2.wwx, -1000f, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, -12911i)), ~var_1), Struct_1(~global1[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_f_op_f32(func_2(var_2.xwx, u_input.a.wyw, 1u, false)), _wgslsmith_div_u32(0u, 11889u), _wgslsmith_sub_vec3_i32(vec3<i32>(9934i, var_1.x, 1i), u_input.d.zwx))).x % 32u));
}

