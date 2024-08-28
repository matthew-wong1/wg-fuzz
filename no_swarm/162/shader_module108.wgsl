struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 17>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = i32(-1i) * -48633i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))) <= 999f;
    global0 = array<Struct_4, 17>();
    let var_2 = -15852i;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -496f) - 624f);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x + arg_1.x)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(454f, -1000f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-473f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f))))));
    let var_1 = global0[_wgslsmith_index_u32(~arg_0, 17u)];
    let var_2 = var_1.b;
    global0 = array<Struct_4, 17>();
    let var_3 = global0[_wgslsmith_index_u32(u_input.d, 17u)];
    return ~0i;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<bool>, arg_3: f32) -> Struct_2 {
    var var_0 = ~64766i;
    var_0 = u_input.a;
    global0 = array<Struct_4, 17>();
    var var_1 = vec2<i32>(~(~_wgslsmith_mod_i32(-u_input.e, func_3(13960u))), _wgslsmith_dot_vec4_i32(~vec4<i32>(min(u_input.a, 54929i), u_input.a, ~10230i, u_input.a), ~(~vec4<i32>(-2147483647i, u_input.e, 21774i, -45597i))));
    var var_2 = Struct_2(Struct_1(u_input.e >> (u_input.c % 32u), 91895u), Struct_1(24751i, 39110u), abs(~(~70332u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b, _wgslsmith_div_u32(u_input.d, 76442u)), ~firstLeadingBit(vec2<u32>(21804u, u_input.b))), false, _wgslsmith_mod_i32(abs(-var_1.x), 1i));
    return Struct_2(var_2.b, var_2.a, (~4294967295u >> (0u % 32u)) << (0u % 32u), true, _wgslsmith_clamp_i32(abs(-1i), -28440i, -var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false != select(false, true, 0u >= _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.c), abs(vec2<u32>(u_input.d, u_input.d))));
    var var_1 = func_2(u_input.d < abs(u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-669f)) + _wgslsmith_f_op_f32(-2221f + _wgslsmith_f_op_f32(func_1(vec4<f32>(-196f, -1216f, 1000f, -1136f), vec4<f32>(1278f, -326f, 1079f, 811f), vec3<i32>(u_input.e, 0i, u_input.a), vec2<u32>(u_input.d, u_input.c))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-322f, _wgslsmith_f_op_f32(f32(-1f) * -786f)), _wgslsmith_f_op_f32(sign(298f))))), vec4<bool>(true, var_0, false, var_0 | !(var_0 & var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -407f))));
    var var_2 = any(vec4<bool>(u_input.a >= u_input.a, true, (_wgslsmith_sub_i32(-30115i, -18166i) >> (~4294967295u % 32u)) <= func_3(_wgslsmith_add_u32(1u, 60456u)), var_1.d));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-322f * 772f), -1826f), -677f, _wgslsmith_f_op_f32(round(122f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(964f, 571f, -256f, 104f) + vec4<f32>(712f, -201f, 434f, 1323f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-237f, 630f, -1134f, -396f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1151f, -458f, 170f, -514f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-118f, -1785f, -305f, 615f), vec4<f32>(-490f, -128f, -392f, 155f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1515f, -121f, -1546f, -246f))))));
    var var_4 = select(vec3<bool>(select(true, !var_0, _wgslsmith_f_op_f32(select(-503f, 890f, true)) >= var_3.x), var_0, select(var_1.d, !var_0, var_1.d)), select(vec3<bool>(true, all(vec3<bool>(var_1.d, var_0, true)), var_1.d), select(!vec3<bool>(var_0, var_1.d, var_1.d), !select(vec3<bool>(var_1.d, true, false), vec3<bool>(true, false, var_1.d), vec3<bool>(var_1.d, true, false)), false), !any(!vec4<bool>(var_1.d, true, false, false))), var_0);
    var var_5 = select(select(vec3<bool>(true, var_1.d && var_0, var_4.x), !vec3<bool>(false, var_4.x, any(vec3<bool>(var_4.x, var_1.d, var_1.d))), all(select(var_4.xz, vec2<bool>(false, var_1.d), var_1.d)) | var_4.x), !(!select(vec3<bool>(true, false, true), select(vec3<bool>(var_4.x, var_0, var_4.x), vec3<bool>(true, true, true), var_0), !vec3<bool>(var_0, var_4.x, var_4.x))), false);
    var_4 = vec3<bool>(any(vec4<bool>(true, var_5.x, select(var_4.x, true, var_1.d) & false, any(select(vec4<bool>(var_0, var_0, var_0, var_5.x), vec4<bool>(var_0, var_1.d, var_5.x, var_1.d), vec4<bool>(var_1.d, var_0, var_0, false))))), var_1.d, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zwy, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_3.x)), -137f) + -498f), -1184f, vec4<u32>(~var_1.a.b << (var_1.a.b % 32u), min(var_1.a.b, countOneBits(4294967295u)), var_1.a.b, ~var_1.b.b) << (select((vec4<u32>(0u, 4294967295u, 43665u, 65148u) >> (vec4<u32>(var_1.c, var_1.b.b, 25817u, u_input.b) % vec4<u32>(32u))) & vec4<u32>(34911u, 1u, u_input.b, var_1.b.b), select(vec4<u32>(u_input.b, 0u, u_input.b, var_1.b.b) << (vec4<u32>(u_input.c, u_input.b, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.b, 26570u, var_1.a.b, u_input.d), vec4<u32>(68014u, 4294967295u, u_input.c, var_1.b.b), vec4<u32>(4294967295u, var_1.c, 7726u, 44908u)), u_input.b <= 42784u), all(!vec3<bool>(var_1.d, var_0, var_5.x))) % vec4<u32>(32u)));
}

