struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -975f;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec3<bool> {
    global0 = 893f;
    global0 = _wgslsmith_div_f32(-466f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-630f, -341f)), _wgslsmith_f_op_f32(366f + 664f), select(true, false, false))) + _wgslsmith_f_op_f32(min(-675f, _wgslsmith_f_op_f32(f32(-1f) * -1348f))))));
    return !(!vec3<bool>(~0i >= _wgslsmith_div_i32(u_input.a, -24936i), true, any(vec3<bool>(false, true, true))));
}

fn func_3(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = -_wgslsmith_div_vec3_i32(vec3<i32>(49872i, 14969i, ~(-u_input.a)), -vec3<i32>(-57818i, _wgslsmith_mod_i32(u_input.a, 6280i), i32(-1i) * -921i));
    let var_1 = !func_2();
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(350f, _wgslsmith_f_op_f32(f32(-1f) * -173f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-962f, _wgslsmith_f_op_f32(1000f + -376f)))))));
    let var_3 = var_1.xx;
    var var_4 = var_0.yz;
    return Struct_1(vec4<i32>(u_input.a, ~(-var_0.x), var_0.x, select(-18894i | var_0.x, var_4.x, true)) & _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-1i, var_0.x, var_0.x, u_input.a)) & vec4<i32>(var_4.x, 10342i, var_0.x, u_input.a), ~(~vec4<i32>(-3565i, var_0.x, 0i, var_4.x))), countOneBits(abs(u_input.b.x)));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(646f, 1000f, 792f, 1000f) + vec4<f32>(-210f, -385f, 1000f, -391f))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(865f - 1173f) - -219f)), true)) * var_0.x);
    global0 = var_0.x;
    var var_1 = Struct_2(func_3(func_2()), vec3<bool>(select(true & (-657f >= var_0.x), -u_input.a < 59777i, true | any(vec3<bool>(false, true, false))), ~firstLeadingBit(0u) > abs(_wgslsmith_add_u32(1u, u_input.b.x)), any(vec4<bool>(true, true, true, true)) && select(u_input.b.x != u_input.b.x, true, true)), 67058i, ~(~vec3<u32>(~u_input.b.x, 4294967295u | u_input.b.x, 4591u)), vec4<u32>(~func_3(vec3<bool>(true, true, true)).b, ~max(u_input.b.x << (7287u % 32u), 1u), reverseBits(u_input.b.x), firstLeadingBit((u_input.b.x << (u_input.b.x % 32u)) << (_wgslsmith_div_u32(239u, u_input.b.x) % 32u))));
    var var_2 = ~(vec3<u32>(~(~0u), _wgslsmith_add_u32(~19953u, ~u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, abs(7854u))) & abs(vec3<u32>(reverseBits(29796u), 0u, 4294967295u)));
    return var_1.b.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = Struct_3(firstLeadingBit(~(~vec4<u32>(arg_2.d.x, arg_3.a.x, 4294967295u, arg_2.d.x))));
    let var_1 = !(!arg_0.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, 1261f, 1442f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(348f, -339f, 1003f, -163f) - vec4<f32>(290f, -760f, 269f, -1132f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-386f, -1210f, -232f, 563f)))) - vec4<f32>(_wgslsmith_f_op_f32(min(322f, 1435f)), _wgslsmith_f_op_f32(min(-2080f, 434f)), 1f, 667f)), vec4<f32>(_wgslsmith_f_op_f32(min(2084f, 1225f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(727f, 140f)))), _wgslsmith_f_op_f32(730f - -497f), _wgslsmith_f_op_f32(-679f - -267f))), any(vec3<bool>(any(vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x)) && func_2().x, func_2().x, true))));
    return StorageBuffer(1i >> (arg_2.d.x % 32u), -127f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_2(Struct_1(select(vec4<i32>(u_input.a, u_input.a, 0i, -2147483647i), vec4<i32>(-40141i, 1i, -3775i, 16904i), false) | -vec4<i32>(-1i, -488i, u_input.a, -2147483647i), ~(~6352u)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(func_1(), func_1(), true)), abs(u_input.a), _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.b.x, 4294967295u)) >> (firstLeadingBit(vec3<u32>(94669u, 1506u, 1u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.b.x, 0u))), ~select(abs(vec4<u32>(u_input.b.x, u_input.b.x, 2707u, 22533u)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), true)), ~max(vec3<u32>(1u, u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 59438u, 0u), vec3<u32>(31978u, u_input.b.x, u_input.b.x))), vec3<u32>(min(u_input.b.x, 0u), min(51314u, 4294967295u), u_input.b.x >> (40473u % 32u))), Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(func_3(vec3<bool>(true, false, true)).a, _wgslsmith_mod_vec4_i32(vec4<i32>(40177i, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, 16462i)), ~vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), 42500u), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(false, true, false), select(true, false, true)), func_3(vec3<bool>(true, true, true)).a.x, vec3<u32>(_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 4294967295u))), 0u, 53526u), _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u), vec4<u32>(59851u, 4294967295u, 36781u, u_input.b.x)), min(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 9788u, u_input.b.x), ~vec4<u32>(1u, 0u, 66920u, u_input.b.x)) % vec4<u32>(32u))), Struct_3(vec4<u32>(u_input.b.x, u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 1u), _wgslsmith_add_u32(0u, 1u))));
}

