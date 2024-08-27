struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(1284f, vec4<bool>(false, false, true, false)), Struct_1(-472f, vec4<bool>(false, false, true, false)), Struct_1(-621f, vec4<bool>(false, true, false, false)), Struct_1(1702f, vec4<bool>(false, false, true, true)), Struct_1(-1000f, vec4<bool>(true, false, true, true)), Struct_1(-908f, vec4<bool>(true, true, false, false)), Struct_1(-2669f, vec4<bool>(false, false, false, true)), Struct_1(141f, vec4<bool>(true, false, false, false)), Struct_1(3469f, vec4<bool>(false, false, false, true)), Struct_1(-258f, vec4<bool>(false, true, true, false)), Struct_1(1000f, vec4<bool>(true, false, false, false)), Struct_1(-670f, vec4<bool>(false, true, false, true)), Struct_1(312f, vec4<bool>(true, true, true, false)), Struct_1(423f, vec4<bool>(true, false, true, true)), Struct_1(-371f, vec4<bool>(false, false, true, false)), Struct_1(-1000f, vec4<bool>(false, false, true, false)), Struct_1(740f, vec4<bool>(false, true, true, true)), Struct_1(503f, vec4<bool>(true, false, false, true)), Struct_1(-1000f, vec4<bool>(true, false, false, true)), Struct_1(-1299f, vec4<bool>(true, false, false, false)), Struct_1(1204f, vec4<bool>(true, true, true, false)));

var<private> global2: vec2<f32> = vec2<f32>(-964f, 1000f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0, global2.x, global2.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2498f - 1233f), _wgslsmith_f_op_f32(-arg_0), global2.x, arg_0))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-815f * arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f) - -1459f))), _wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(-global2.x))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, global2.x, arg_0, global2.x), vec4<f32>(arg_0, -1000f, arg_0, 559f)) - vec4<f32>(-1128f, var_0.x, var_0.x, global2.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global2.x, 638f, 952f)) + vec4<f32>(global2.x, -1909f, 866f, -259f)), vec4<f32>(809f, var_0.x, _wgslsmith_f_op_f32(select(arg_0, arg_0, global0.x)), _wgslsmith_f_op_f32(-var_0.x)), global0.x))));
    global1 = array<Struct_1, 21>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(435f, var_0.x, global0.x)), select(vec4<bool>(all(vec2<bool>(false, global0.x)), true, global0.x, true), !select(!vec4<bool>(global0.x, global0.x, true, false), !vec4<bool>(global0.x, true, true, global0.x), select(vec4<bool>(global0.x, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(global0.x, false, global0.x, global0.x))), false));
    var var_3 = vec2<i32>(reverseBits(_wgslsmith_mult_i32(-1i, -2147483647i)), u_input.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(422f * arg_0));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), -131f), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(-264f)))), 606f));
    let var_0 = vec4<u32>(4294967295u, _wgslsmith_add_u32(firstLeadingBit(18264u), 7266u), firstLeadingBit(1u), _wgslsmith_add_u32(1u, ~(~min(32182u, 4294967295u))));
    let var_1 = 1f;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-804f - 2524f))), _wgslsmith_f_op_f32(284f + global2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-407f, -773f)), -1183f)), _wgslsmith_f_op_f32(-189f - _wgslsmith_f_op_f32(-global2.x)))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.zw - vec2<f32>(-257f, -507f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-746f, var_1) * _wgslsmith_f_op_vec2_f32(-var_2.yx))));
    return global1[_wgslsmith_index_u32(var_0.x, 21u)];
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: vec3<bool>) -> i32 {
    let var_0 = func_2(arg_3.x);
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 373f) * vec2<f32>(_wgslsmith_div_f32(-142f, -589f), global2.x)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))))))));
    var var_1 = func_2(!all(var_0.b) || any(vec4<bool>(var_0.b.x || global0.x, any(vec4<bool>(false, arg_3.x, global0.x, arg_1.x)), any(var_0.b), all(arg_1)))).b.wy;
    let var_2 = arg_3.x;
    global1 = array<Struct_1, 21>();
    return ~0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.a.x, 4260i, countOneBits(abs(20166i))) >> (vec3<u32>(164401u, _wgslsmith_div_u32(~select(0u, 49186u, false), _wgslsmith_mod_u32(1u, ~6415u)), _wgslsmith_dot_vec4_u32(vec4<u32>(max(0u, 4229u), ~46601u, 0u, ~4294967295u), ~min(vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 31282u, 1u)))) % vec3<u32>(32u));
    var var_1 = !select(vec4<bool>(false, _wgslsmith_dot_vec4_i32(vec4<i32>(-1826i, u_input.a.x, 1i, 0i), vec4<i32>(39529i, u_input.b, u_input.b, -1i)) <= func_1(0u, vec3<bool>(false, false, global0.x), vec3<u32>(5786u, 4294967295u, 0u), vec3<bool>(false, global0.x, global0.x)), true, false), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, global0.x, global0.x, global0.x), global0.x), select(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(global0.x, false, true, global0.x)), vec4<bool>(false, global0.x, true, false), true), vec4<bool>(true, true, true, global0.x && false)), vec4<bool>(global0.x, global0.x, ~u_input.a.x < var_0.x, global0.x));
    var_1 = !select(vec4<bool>(false, true, true, false), func_2(true).b, global0.x);
    global0 = select(vec2<bool>(global0.x, -1313f <= _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(global2.x * -543f), select(true, true, false)))), vec2<bool>(var_1.x | (1i > var_0.x), global0.x), select(select(var_1.zx, var_1.xx, global0.x), !var_1.zy, global2.x < global2.x));
    let var_2 = countOneBits(abs(vec2<u32>(1u, 1u)));
    let var_3 = global1[_wgslsmith_index_u32(~abs(_wgslsmith_mult_u32(min(~4294967295u, min(var_2.x, 55763u)), 1256u)), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -34784i, ~(max(~var_2.x, ~var_2.x) >> ((68929u << (_wgslsmith_div_u32(var_2.x, var_2.x) % 32u)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * global2.x)), _wgslsmith_mult_u32(var_2.x, 36736u) | firstTrailingBit(abs(~2222u)), _wgslsmith_clamp_u32(40522u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u ^ var_2.x, _wgslsmith_div_u32(var_2.x, 57405u), _wgslsmith_div_u32(63223u, 109107u)), vec3<u32>(var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), var_2), countOneBits(var_2.x))), _wgslsmith_div_u32(~min(var_2.x, var_2.x), ~1u)));
}

