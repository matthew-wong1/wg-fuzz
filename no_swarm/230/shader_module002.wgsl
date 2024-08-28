struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_4) -> vec3<u32> {
    var var_0 = arg_3;
    global0 = array<bool, 25>();
    var var_1 = select(select(arg_2.zy, arg_2.xz, 4294967295u > arg_3.a), select(vec2<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 75517u), arg_1.b.zz), 25u)]), !select(select(vec2<bool>(arg_2.x, false), arg_2.xz, global0[_wgslsmith_index_u32(arg_1.b.x, 25u)]), select(arg_2.yz, vec2<bool>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]), global0[_wgslsmith_index_u32(var_0.a, 25u)]), !vec2<bool>(global0[_wgslsmith_index_u32(5007u, 25u)], global0[_wgslsmith_index_u32(var_0.a, 25u)])), select(vec2<bool>(any(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 25u)])), global0[_wgslsmith_index_u32(arg_3.a, 25u)] | true), arg_2.zx, vec2<bool>(arg_1.a.x > 31531i, true))), select(!vec2<bool>(arg_1.a.x >= arg_1.a.x, false), vec2<bool>(true, true), !arg_2.xz));
    let var_2 = 2147483647i;
    return ~vec3<u32>(_wgslsmith_clamp_u32(arg_0.a, u_input.a, countOneBits(2348u)), _wgslsmith_dot_vec2_u32(arg_1.b.yz, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(74963u, u_input.a, 3160u, arg_0.a), vec4<u32>(arg_3.a, 4294967295u, arg_1.c, u_input.a)), _wgslsmith_clamp_u32(34753u, arg_0.a, 0u))), 12898u);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(~vec2<i32>(-(~(-1i)), 1i), ~vec3<u32>(reverseBits(u_input.a), ~20484u, 58428u) >> (func_3(Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 1u))), Struct_1(vec2<i32>(-1i, 25098i), ~vec3<u32>(3030u, u_input.a, 48089u), ~0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1956f, 766f, -1195f))), select(vec3<bool>(true, global0[_wgslsmith_index_u32(86182u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(21121u, 25u)], global0[_wgslsmith_index_u32(17880u, 25u)]), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(33038u, 25u)])), Struct_4(u_input.a)) % vec3<u32>(32u)), _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 1u, 10388u))), reverseBits(vec4<u32>(u_input.a, 33779u, 74110u, 8444u) & vec4<u32>(4294967295u, 66445u, u_input.a, u_input.a))) & _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 3711u) ^ vec3<u32>(4294967295u, u_input.a, 4294967295u), ~(~vec3<u32>(u_input.a, u_input.a, 47652u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(435f, 1881f), _wgslsmith_f_op_f32(1067f - -1413f), -335f))));
    var var_1 = Struct_3(~(u_input.a << (var_0.c % 32u)) >> (3444u % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(var_0.d - _wgslsmith_f_op_vec3_f32(-var_0.d));
    let var_3 = Struct_3(4294967295u);
    var var_4 = var_3;
    return u_input.a << (reverseBits(~(~(~var_0.b.x))) % 32u);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = arg_2.x;
    var var_1 = 1i;
    let var_2 = vec3<u32>(~_wgslsmith_sub_u32(24098u, arg_0), u_input.a, func_2() & 0u);
    let var_3 = arg_2.x;
    var_1 = abs(select(max(1i, ~(-2147483647i)), 1i, _wgslsmith_dot_vec2_u32(var_2.xx, var_2.zy | vec2<u32>(60851u, var_2.x)) > 39438u));
    return Struct_3(arg_0 & _wgslsmith_sub_u32(1u, ~(arg_0 | var_2.x)));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_4 {
    let var_0 = Struct_4(firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 1u, arg_0.a, u_input.a), vec4<u32>(u_input.a, arg_0.a, 0u, 102148u)) & u_input.a));
    global0 = array<bool, 25>();
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(max(-2147483647i, 0i), ~(abs(40791i) >> (arg_0.a % 32u)), 0i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, (-75619i >> (arg_0.a % 32u)) ^ _wgslsmith_div_i32(-1i, -2147483647i), abs(-1227i) | select(2147483647i, -2147483647i, global0[_wgslsmith_index_u32(arg_0.a, 25u)])), vec3<i32>(-1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-36226i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 31130i), vec2<i32>(-41973i, 37684i))), _wgslsmith_add_i32(abs(6126i), _wgslsmith_sub_i32(-24876i, 0i)))));
    global0 = array<bool, 25>();
    var var_2 = Struct_2(-var_1 ^ -(~vec3<i32>(var_1.x, 38054i, 787i)), Struct_1(var_1.xx, _wgslsmith_add_vec3_u32(~countOneBits(vec3<u32>(45363u, 42821u, 0u)), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(var_0.a, 78313u, u_input.a), vec3<u32>(0u, var_0.a, u_input.a)), select(vec3<u32>(22478u, u_input.a, 1u), vec3<u32>(55103u, var_0.a, 7172u), vec3<bool>(false, arg_1, global0[_wgslsmith_index_u32(13801u, 25u)])), all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 25u)], false)))), 50800u | ~_wgslsmith_clamp_u32(arg_0.a, 4294967295u, 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-572f, -662f, -1002f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-955f, -271f, -445f), vec3<f32>(-1780f, 1000f, -1294f)))))), vec4<bool>(0u >= _wgslsmith_div_u32(~var_0.a, firstTrailingBit(u_input.a)), any(vec4<bool>(arg_1 | true, !global0[_wgslsmith_index_u32(59329u, 25u)], !arg_1, select(arg_1, global0[_wgslsmith_index_u32(var_0.a, 25u)], true))), -var_1.x < var_1.x, true));
    return Struct_4(var_0.a);
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> Struct_3 {
    var var_0 = reverseBits(1u) >> (abs(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(4294967295u, arg_0.a), ~_wgslsmith_div_u32(68925u, arg_0.a))) % 32u);
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    return func_1(_wgslsmith_clamp_u32(u_input.a, ~(~arg_0.a), 58558u), arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-927f, -910f, -777f, -1745f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(695f, -724f, 1011f, -882f), vec4<f32>(610f, -1815f, -1000f, 860f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1258f), _wgslsmith_f_op_f32(trunc(-1596f)), 2221f, -450f))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4) -> i32 {
    var var_0 = arg_0.a.x;
    let var_1 = arg_0.a.x;
    global0 = array<bool, 25>();
    var_0 = 8008i;
    var var_2 = ~(~select(vec2<i32>(-1i, arg_0.a.x), reverseBits(_wgslsmith_add_vec2_i32(arg_0.a, arg_0.a)), !global0[_wgslsmith_index_u32(1u, 25u)]));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_6(Struct_1(firstLeadingBit(vec2<i32>(1i, -2147483647i)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a) & vec3<u32>(u_input.a, u_input.a, u_input.a), abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(u_input.a, u_input.a, u_input.a)), ~31317u << (u_input.a % 32u), vec3<f32>(_wgslsmith_f_op_f32(226f + -1000f), _wgslsmith_f_op_f32(-216f * -540f), _wgslsmith_f_op_f32(f32(-1f) * -972f))), func_5(func_4(func_1(u_input.a, 72053u, vec4<f32>(2172f, 1000f, -1000f, 238f)), true), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), min(vec2<i32>(-42623i, -23520i), vec2<i32>(0i, 0i)))), func_4(func_5(Struct_4(39655u), max(-20069i, -20753i)), all(vec2<bool>(false, true))));
    global0 = array<bool, 25>();
    let var_1 = func_1(max(u_input.a, u_input.a), 0u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-581f * -600f) + _wgslsmith_f_op_f32(113f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1040f - -959f)), -2835f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1103f + 404f) - _wgslsmith_f_op_f32(trunc(1212f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(145f, -1081f, 431f, -1403f)))) + vec4<f32>(_wgslsmith_f_op_f32(872f + -1365f), _wgslsmith_div_f32(-1208f, 278f), _wgslsmith_f_op_f32(149f + 2074f), _wgslsmith_f_op_f32(1405f - -215f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -748f)))), -861f)));
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 0u, var_1.a), vec4<u32>(var_1.a, var_1.a, u_input.a, 1u) >> (vec4<u32>(var_1.a, u_input.a, u_input.a, var_1.a) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), vec4<u32>(var_1.a, 17332u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 4592u, 0u)), ~vec4<u32>(var_1.a, var_1.a, u_input.a, 7954u), firstLeadingBit(vec4<u32>(1u, 75260u, u_input.a, 10852u)))), var_1.a, abs(var_1.a ^ reverseBits(1u)), var_1.a), ~(vec4<u32>(var_1.a << (var_1.a % 32u), _wgslsmith_sub_u32(u_input.a, u_input.a), countOneBits(u_input.a), u_input.a << (1u % 32u)) ^ vec4<u32>(_wgslsmith_add_u32(0u, 1u), ~u_input.a, abs(u_input.a), u_input.a)));
    var_3 = firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(65267u, 70626u, 23925u)), ~vec3<u32>(var_1.a, u_input.a, var_1.a)), u_input.a), 57105u >> (~_wgslsmith_mult_u32(u_input.a, 52376u) % 32u)));
    let var_4 = vec3<u32>(u_input.a, var_1.a, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_mod_u32(reverseBits(4294967295u) >> (u_input.a % 32u), _wgslsmith_sub_u32(4294967295u, reverseBits(u_input.a))), var_1.a), var_4.yx ^ var_4.yx);
}

