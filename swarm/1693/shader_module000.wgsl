struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<f32>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    return (any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)) && true) || true;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1051f)))))));
    var var_1 = vec2<bool>((~(~47193u) ^ u_input.b.x) > countOneBits(1u), func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, arg_2.a, 644f), arg_0.zwz)), _wgslsmith_f_op_vec3_f32(select(arg_0.xxw, vec3<f32>(-830f, arg_0.x, arg_2.a), true))), Struct_1(_wgslsmith_f_op_f32(-arg_2.a))) == ((true == (117f >= arg_0.x)) | true));
    var var_2 = firstLeadingBit(u_input.a.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(799f)));
    var var_4 = any(select(!select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), var_1.x), select(select(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), !vec4<bool>(true, var_1.x, false, true), select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), true)), select(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(false, true, var_1.x, true)), vec4<bool>(false, var_1.x, true, false), select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false))), any(vec2<bool>(false, var_1.x))), var_1.x));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    global1 = array<vec4<f32>, 8>();
    var var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-785f, _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a))))));
    let var_1 = Struct_1(638f);
    let var_2 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, abs(0i), 1i, -44501i), u_input.a, ~_wgslsmith_sub_vec4_i32(u_input.a, u_input.a)), vec4<i32>(0i, ~countOneBits(u_input.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(u_input.a.yw), vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.yy), select(-2147483647i, 2147483647i, !arg_2.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-13920i, u_input.a.x, i32(-1i) * -1i, ~2147483647i) | _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), u_input.a), reverseBits(vec4<i32>(18503i & u_input.a.x, u_input.a.x, abs(u_input.a.x), u_input.a.x))));
    global0 = _wgslsmith_f_op_f32(-1463f + 287f);
    return _wgslsmith_div_f32(-127f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-159f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + -140f) * 274f)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(1000f, arg_1.a, _wgslsmith_div_f32(757f, _wgslsmith_f_op_f32(func_4(func_2(global1[_wgslsmith_index_u32(~4294967295u, 8u)], arg_1.a, Struct_1(arg_1.a)), Struct_1(_wgslsmith_f_op_f32(-arg_1.a)), vec2<bool>(true, true)))));
    global0 = var_0.x;
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = u_input.a;
    var var_3 = !all(vec4<bool>(1i < min(var_2.x, -1i), var_1.x, var_1.x || var_1.x, var_1.x && false));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(0i, Struct_1(-287f));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-705f * _wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(func_1(~15829i, func_2(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], -600f, Struct_1(var_0.a))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-575f - var_0.a)), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, -1655f)), func_1(u_input.a.x, Struct_1(-584f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a * 2580f), _wgslsmith_f_op_f32(ceil(1928f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.a)))));
    let var_2 = false;
    var var_3 = select(!vec2<bool>(true, var_2), vec2<bool>(var_2, false), !(!vec2<bool>(select(false, var_2, true), -2147483647i <= u_input.a.x)));
    var var_4 = ~u_input.b.x;
    var var_5 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-220f, func_1(-30737i, Struct_1(1315f)).a, _wgslsmith_f_op_f32(-834f + var_1.a), _wgslsmith_f_op_f32(1440f - var_0.a)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1079f, var_0.a, var_1.a, -189f), vec4<f32>(353f, var_1.a, var_1.a, var_1.a)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_sub_i32(u_input.a.x, -1i), var_1), var_1, vec2<bool>(var_3.x, true))))), Struct_1(_wgslsmith_f_op_f32(-1000f - 210f)));
    let var_6 = Struct_1(_wgslsmith_f_op_f32(-1011f * -1206f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.b.x, 25324u, 67743u, 3171u)), ~(abs(vec4<u32>(u_input.b.x, 4294967295u, 23660u, u_input.b.x)) | countOneBits(vec4<u32>(1u, 1u, 1u, u_input.b.x)))), _wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.yx), _wgslsmith_mod_vec2_u32(~abs(u_input.b.xy), ~_wgslsmith_mult_vec2_u32(~u_input.b.yz, ~vec2<u32>(u_input.b.x, u_input.b.x))), ~(-(~u_input.a.xxz)) << (abs(vec3<u32>(~u_input.b.x, 0u, select(50729u, u_input.b.x, true))) % vec3<u32>(32u)), u_input.b.yz);
}

