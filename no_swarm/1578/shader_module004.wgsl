struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<bool>(true, false, true, true), 0u), Struct_1(vec4<bool>(true, false, true, true), 1u), Struct_1(vec4<bool>(false, false, true, true), 54106u), Struct_1(vec4<bool>(true, false, false, false), 45464u), Struct_1(vec4<bool>(true, false, false, false), 4294967295u), Struct_1(vec4<bool>(true, false, true, false), 32554u), Struct_1(vec4<bool>(true, false, false, true), 115217u));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(~71899u, ~u_input.c, ~u_input.c, _wgslsmith_add_u32(8275u, 0u)), ~max(~vec4<u32>(11837u, 41184u, u_input.a, 39244u), min(vec4<u32>(arg_3.b, arg_3.b, u_input.c, 5831u), vec4<u32>(4294967295u, 0u, arg_3.b, u_input.c)))), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 2111u << (min(u_input.a, u_input.a) % 32u)), 1u, firstLeadingBit(_wgslsmith_add_u32(~0u, 0u)), 32413u));
    global0 = array<Struct_1, 7>();
    let var_1 = global0[_wgslsmith_index_u32(34872u, 7u)];
    let var_2 = vec2<u32>(firstTrailingBit(var_1.b), abs(countOneBits(~_wgslsmith_div_u32(1u, var_0.x))));
    var var_3 = u_input.b.x == _wgslsmith_dot_vec3_i32(select(countOneBits(u_input.b << (vec3<u32>(17456u, 8931u, 11348u) % vec3<u32>(32u))), -select(vec3<i32>(11484i, 30462i, 1i), u_input.b, false), any(vec3<bool>(false, arg_0, arg_3.a.x))), -u_input.b);
    return vec2<u32>(var_0.x, max(abs(var_2.x), 19745u));
}

fn func_2() -> vec2<u32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, abs(_wgslsmith_mod_u32(min(2291u, 1u), 26471u))), 7u)];
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_1 = min(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(abs(u_input.b.xy), _wgslsmith_mult_vec2_i32(u_input.b.yz, u_input.b.zy)), u_input.b.zx | _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-1i, 0i), vec2<i32>(1i, u_input.b.x))), u_input.b.zy), abs(~(-u_input.b.xz)));
    var var_2 = var_0.a.x;
    return _wgslsmith_mod_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(36836u, 1u), vec2<u32>(4294967295u, u_input.c))), select(select(firstLeadingBit(vec2<u32>(4294967295u, var_0.b)), func_3(var_0.a.x, true, 1i, Struct_1(vec4<bool>(false, false, true, var_0.a.x), u_input.c)), false && var_0.a.x), vec2<u32>(1u, 1u), true)) ^ vec2<u32>(var_0.b, 1u);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>) -> bool {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_0 = _wgslsmith_sub_vec2_u32(arg_1.yx, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.zz, func_2()), arg_0.xz));
    var var_1 = _wgslsmith_f_op_f32(abs(1000f));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1011f, _wgslsmith_f_op_f32(-2139f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-862f - 1355f))))));
    return 1u <= (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 73087u, 37810u, u_input.c), arg_0) | arg_1.x) & _wgslsmith_mod_u32(1u, ~var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(select(vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(true, true, true), true), !vec3<bool>(true, true, 1i > u_input.b.x), !select(all(vec3<bool>(false, false, false)), true, func_1(vec4<u32>(u_input.c, 0u, u_input.a, u_input.c), vec3<u32>(u_input.c, u_input.a, 11799u)))));
    let var_1 = 1i;
    var var_2 = Struct_1(select(!select(!vec4<bool>(var_0, var_0, var_0, true), select(vec4<bool>(true, true, var_0, true), vec4<bool>(false, var_0, true, false), var_0), func_1(vec4<u32>(0u, u_input.a, 0u, u_input.a), vec3<u32>(u_input.c, u_input.c, u_input.c))), !vec4<bool>(var_0, true, func_1(vec4<u32>(u_input.a, 19297u, 1u, 37869u), vec3<u32>(u_input.c, u_input.a, 46127u)), true), _wgslsmith_add_u32(~u_input.a, u_input.c) <= firstLeadingBit(4294967295u & u_input.c)), _wgslsmith_dot_vec2_u32(min(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(49565u, u_input.a), vec2<u32>(u_input.a, 55547u)), ~vec2<u32>(11384u, 4294967295u)), ~(~vec2<u32>(u_input.a, 1u))), min(vec2<u32>(u_input.a, 359u) >> (~vec2<u32>(u_input.c, 73833u) % vec2<u32>(32u)), vec2<u32>(func_2().x, 60154u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(522f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -108f))))));
    var var_4 = -1000f;
    var var_5 = Struct_1(select(var_2.a, select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0 & var_0, var_0, true), false), select(vec4<bool>(true, false, any(var_2.a.ywy), false), select(select(var_2.a, var_2.a, var_2.a.x), vec4<bool>(var_0, var_0, true, false), true), var_0)), firstLeadingBit(~5427u) << (countOneBits(var_2.b) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(-countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, u_input.b.x), u_input.b.xz))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-701f)), _wgslsmith_f_op_f32(round(-1814f)))));
}

