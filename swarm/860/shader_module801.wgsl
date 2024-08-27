struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    return ~146952u;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> vec2<i32> {
    return u_input.b.yz;
}

fn func_2() -> f32 {
    let var_0 = countOneBits(~firstTrailingBit(~0u));
    let var_1 = Struct_1(vec4<u32>(var_0, reverseBits(reverseBits(abs(var_0))), reverseBits(0u), _wgslsmith_mult_u32(77338u, var_0)), min(_wgslsmith_mult_vec2_i32(u_input.b.zw, vec2<i32>(1i, u_input.e)) & abs(-vec2<i32>(-65256i, -31180i)), reverseBits(countOneBits(vec2<i32>(u_input.d, u_input.e)))), vec2<bool>(all(vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, false)))), any(vec4<bool>(false, true, true, false))), true || (4294967295u > var_0));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-606f, 1000f)) * -604f);
    var var_2 = Struct_1(_wgslsmith_clamp_vec4_u32(var_1.a, var_1.a, ~var_1.a) | var_1.a, func_4(var_1, reverseBits(func_3(u_input.b.wy)), 3431u) << (vec2<u32>(abs(select(72613u, var_0, true)), var_0) % vec2<u32>(32u)), select(vec2<bool>(!(!var_1.d), all(vec2<bool>(false, var_1.d))), var_1.c, 43173i == _wgslsmith_add_i32(var_1.b.x, ~var_1.b.x)), var_1.d);
    global0 = _wgslsmith_f_op_f32(round(-1090f));
    return -654f;
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) + 1052f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(-16382i, vec2<bool>(false, false)))))))) * _wgslsmith_f_op_f32(f32(-1f) * -498f));
    let var_0 = vec4<u32>(70603u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(47798u, 1u, ~func_3(vec2<i32>(u_input.b.x, 0i))), max(_wgslsmith_div_u32(0u, ~29221u), 54315u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, func_3(u_input.b.xz)), max(firstLeadingBit(vec2<u32>(17667u, 4294967295u)), ~(~vec2<u32>(1u, 9764u)))), ~60197u);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(f32(-1f) * -131f)), _wgslsmith_f_op_f32(-1442f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -136f))))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(461f + 1211f))))) - 702f), 131f);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(floor(1329f)), -545f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1400f))), _wgslsmith_f_op_f32(f32(-1f) * -989f)))) * vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.c, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) + _wgslsmith_f_op_f32(round(-197f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(373f, -842f) * _wgslsmith_f_op_f32(f32(-1f) * -1137f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2240f)))));
    var var_2 = -u_input.c ^ u_input.b.x;
    var var_3 = Struct_1(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 50916u, var_0.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(var_0, vec4<u32>(var_0.x, var_0.x, 55746u, 64210u)), vec4<u32>(var_0.x, 39294u, 1u, var_0.x) & var_0, vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x)))), -countOneBits(vec2<i32>(u_input.b.x >> (var_0.x % 32u), ~(-13049i))), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, false, true)) | true, false), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, any(vec4<bool>(false, false, true, false))), vec2<bool>(true, true))), !(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(22367i, u_input.b.x, u_input.d), vec3<i32>(u_input.a, 0i, -50691i)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -1i, -12089i), u_input.b.yyz)) > max(~u_input.d, u_input.c)));
    var_3 = Struct_1(abs(max(~(vec4<u32>(var_0.x, var_3.a.x, var_3.a.x, 24266u) & vec4<u32>(62188u, var_3.a.x, var_3.a.x, var_0.x)), var_3.a ^ ~vec4<u32>(var_3.a.x, 0u, 22988u, var_3.a.x))), abs(vec2<i32>(-_wgslsmith_div_i32(-65173i, var_3.b.x), -u_input.d >> (_wgslsmith_mod_u32(var_3.a.x, var_0.x) % 32u))), select(vec2<bool>(true, all(var_3.c)), select(vec2<bool>(any(vec3<bool>(var_3.d, var_3.d, true)), var_3.d & false), var_3.c, true), select(vec2<bool>(var_3.c.x || true, false), var_3.c, var_3.c.x)), var_3.c.x || false);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.xw << (var_0.yx % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(step(var_1.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), 511f) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(var_1.zz, var_1.zw, vec2<bool>(true, true)))))))), u_input.b.yyy, -2019f);
}

