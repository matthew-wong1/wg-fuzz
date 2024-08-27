struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<f32> {
    global0 = any(select(vec3<bool>(false, false, false), select(vec3<bool>(true, 4294967295u == u_input.a, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), select(false, true, true)));
    let var_0 = _wgslsmith_dot_vec4_i32(~(-(~vec4<i32>(-2147483647i, 79341i, -1i, 2147483647i))), vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i) << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 46363u)) % vec2<u32>(32u)), reverseBits(vec2<i32>(16798i, 2147483647i))), 1i, ~0i));
    global0 = select(true || all(vec4<bool>(true, true, true, true)), min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0, 58723i, 1i), ~vec4<i32>(var_0, var_0, var_0, -1i)), ~(-40736i)) >= var_0, true | select(true, any(vec2<bool>(true, true)), true));
    var var_1 = min(vec3<i32>(_wgslsmith_sub_i32(var_0, -2147483647i), ~var_0, -var_0), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(var_0, var_0, var_0)), 1i, var_0 ^ var_0), var_0, _wgslsmith_add_i32(~(-2147483647i), _wgslsmith_mult_i32(_wgslsmith_add_i32(var_0, var_0), 1i))));
    let var_2 = vec3<bool>(true, true, !any(vec2<bool>(true, false)) | true);
    return vec4<f32>(-554f, -1593f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(583f, _wgslsmith_div_f32(-2199f, -925f))) + _wgslsmith_f_op_f32(ceil(2256f))), -1140f);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<f32>) -> u32 {
    let var_0 = arg_2.x;
    global0 = true;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(floor(arg_3.x)), vec4<i32>(2147483647i, -1i, _wgslsmith_clamp_i32(1i, ~_wgslsmith_div_i32(1i, -24235i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i, 2147483647i))), 2147483647i), _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.x, u_input.a, ~u_input.a), _wgslsmith_clamp_u32(48086u, _wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, 78555u, u_input.a, arg_1.a.x), vec4<u32>(0u, 48526u, arg_0.x, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_0.x, 0u, u_input.a), vec4<u32>(32966u, arg_1.a.x, u_input.a, arg_0.x))))), arg_1, _wgslsmith_f_op_vec3_f32(select(arg_3.zzy, _wgslsmith_f_op_vec3_f32(select(arg_3.zxx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.wwx - arg_3.wzx) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.x, arg_3.x, arg_3.x), vec3<f32>(423f, 144f, -282f))), false)), false)));
    global0 = false;
    let var_2 = all(!arg_2);
    return countOneBits(_wgslsmith_dot_vec4_u32(reverseBits(firstTrailingBit(~vec4<u32>(24790u, 4294967295u, arg_1.a.x, 54971u))), _wgslsmith_div_vec4_u32(~vec4<u32>(83912u, arg_1.a.x, arg_1.a.x, 0u), vec4<u32>(28457u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 182u, 43522u), vec3<u32>(u_input.a, 9118u, 32946u)), ~var_1.d.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, var_1.d.a.x, var_1.d.a.x), vec4<u32>(var_1.d.a.x, var_1.c, var_1.d.a.x, 87323u))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> vec4<bool> {
    global0 = !(!(u_input.a != ~u_input.a) && (any(vec2<bool>(true, false)) | all(vec3<bool>(true, true, true))));
    var var_0 = arg_1;
    global0 = (true || !any(vec2<bool>(true, false))) | !all(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)));
    let var_1 = vec4<u32>(u_input.a, u_input.a, min(u_input.a, func_4(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(32891u, 50542u)), Struct_1(vec2<u32>(4294967295u, u_input.a), vec3<bool>(false, true, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), false), _wgslsmith_f_op_vec4_f32(func_3()))) >> (53758u % 32u), ~43184u);
    var var_2 = (vec4<u32>(abs(u_input.a), 59010u, max(u_input.a >> (u_input.a % 32u), var_1.x), 0u) | ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, var_1.x), vec4<u32>(1u, var_1.x, var_1.x, 4294967295u)))) ^ firstLeadingBit(~vec4<u32>(~u_input.a, _wgslsmith_mod_u32(u_input.a, 1u), 14350u, ~var_1.x));
    return vec4<bool>(true, true == any(vec2<bool>(true, true)), false, !(all(vec2<bool>(true, false)) == false));
}

fn func_1() -> vec3<u32> {
    global0 = !all(select(select(vec4<bool>(true, true, true, true), func_2(vec3<f32>(404f, -149f, -1734f), -487f), true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))));
    let var_0 = Struct_2(true, -(~(~(~0i))));
    let var_1 = Struct_1(vec2<u32>(u_input.a, u_input.a), func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3()).yyw)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1227f), 1671f))))).yyx);
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(~var_1.a, vec2<u32>(4294967295u, 48366u)) | ~firstTrailingBit(u_input.a), ~(var_1.a.x << (countOneBits(var_1.a.x) % 32u)), ~(~4294967295u), ~4294967295u), _wgslsmith_div_vec4_u32(select(~(vec4<u32>(u_input.a, 1u, 33046u, 5007u) | vec4<u32>(44252u, 48130u, 18629u, var_1.a.x)), vec4<u32>(~15422u, ~u_input.a, ~6047u, u_input.a), !var_1.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(14725u, u_input.a, _wgslsmith_dot_vec2_u32(var_1.a, vec2<u32>(u_input.a, var_1.a.x)), u_input.a), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 0u, u_input.a, var_1.a.x)), abs(vec4<u32>(u_input.a, 27551u, 60895u, var_1.a.x))))));
    var var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(-_wgslsmith_add_i32(var_0.b, 12095i), var_0.b, -1939i, _wgslsmith_dot_vec3_i32(select(-vec3<i32>(1i, 2147483647i, var_0.b), -vec3<i32>(var_0.b, var_0.b, var_0.b), !var_1.b), max(vec3<i32>(var_0.b, var_0.b, 1i) ^ vec3<i32>(var_0.b, -1i, var_0.b), ~vec3<i32>(var_0.b, -214i, 16089i)))), reverseBits(firstLeadingBit(~max(vec4<i32>(16693i, 0i, -1i, -13214i), vec4<i32>(var_0.b, var_0.b, var_0.b, var_0.b)))));
    return vec3<u32>(~var_1.a.x, _wgslsmith_div_u32(~0u >> (_wgslsmith_mod_u32(var_2.x, 0u) % 32u), 22880u), ~(~u_input.a & _wgslsmith_clamp_u32(4294967295u, 4294967295u, var_1.a.x))) >> (vec3<u32>(abs(var_2.x), ~var_1.a.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a, var_1.a.x, ~92712u), 35827u)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~firstTrailingBit(~vec2<u32>(u_input.a, u_input.a)) ^ reverseBits(~select(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 51736u), vec2<bool>(false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), -1233f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1223f - 172f)))));
    var var_1 = ~reverseBits(~(~select(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(var_0.a.x, 58531u, 4294967295u), var_0.b)));
    var_1 = reverseBits(~_wgslsmith_add_vec3_u32(func_1(), ~vec3<u32>(39002u, u_input.a, 4294967295u)));
    global0 = var_0.b.x;
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~1u, ~4294967295u, u_input.a >> (u_input.a % 32u), ~0u) << (select(vec4<u32>(~u_input.a, _wgslsmith_sub_u32(var_0.a.x, 23377u), ~var_1.x, ~u_input.a), firstLeadingBit(vec4<u32>(var_0.a.x, 1u, 4294967295u, u_input.a)), _wgslsmith_f_op_f32(select(-895f, 1000f, true)) > _wgslsmith_f_op_f32(abs(-423f))) % vec4<u32>(32u)));
}

