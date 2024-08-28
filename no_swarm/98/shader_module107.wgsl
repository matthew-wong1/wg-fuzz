struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1650f), _wgslsmith_div_f32(-540f, -1038f), true))))));
    return _wgslsmith_div_u32(~(~max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(32492u, 40629u, 23700u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 51822u)))), _wgslsmith_mult_u32(~(~_wgslsmith_add_u32(0u, 0u)), _wgslsmith_clamp_u32(1u, ~1u, 4294967295u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, -1913f), _wgslsmith_f_op_f32(trunc(695f))) + -265f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1340f, -2152f))) - -1479f));
    var var_1 = true;
    var var_2 = arg_0;
    var_2 = Struct_1(~vec3<u32>(0u, _wgslsmith_sub_u32(~arg_0.c.x, arg_0.d.x), ~4294967295u), arg_0.a.x << (~1u % 32u), reverseBits(abs(select(arg_0.d, vec3<u32>(4294967295u, 65768u, arg_0.a.x), vec3<bool>(false, true, true))) ^ arg_1), _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1.x >> (arg_1.x % 32u), _wgslsmith_mod_u32(arg_1.x, 19890u), 25930u), ~(vec3<u32>(1u, arg_0.a.x, var_2.d.x) >> (~vec3<u32>(arg_1.x, var_2.a.x, arg_1.x) % vec3<u32>(32u))), arg_0.c), vec4<i32>(i32(-1i) * -_wgslsmith_dot_vec3_i32(arg_0.e.yyx, arg_0.e.yzx), 3355i & _wgslsmith_add_i32(-u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(45297i, -22759i, 0i, var_2.e.x), var_2.e)), firstTrailingBit(-1324i << (1u % 32u)), reverseBits(abs(var_2.e.x))));
    let var_3 = Struct_1(~var_2.a, 0u, _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(arg_0.d, vec3<u32>(var_2.c.x, 4294967295u, 24810u), var_2.a) & var_2.c, ~_wgslsmith_mult_vec3_u32(~var_2.d, ~vec3<u32>(0u, arg_0.b, 39492u))), vec3<u32>(71319u << (func_2(true, vec4<bool>(true, true, true, true), _wgslsmith_div_vec2_i32(vec2<i32>(var_2.e.x, var_2.e.x), vec2<i32>(u_input.a.x, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.e.x, -2426i, -1i), arg_0.e.wxz)) % 32u), 0u << (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.c.x, arg_1.x), vec2<u32>(11742u, 4294967295u) << (arg_1.xz % vec2<u32>(32u))) % 32u), _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(var_2.b, arg_1.x)), 4294967295u & _wgslsmith_clamp_u32(4294967295u, 1u, 64418u))), _wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(arg_0.e.x), _wgslsmith_mod_i32(u_input.a.x & 24611i, ~(-56330i)), u_input.a.x, min(select(var_2.e.x, u_input.a.x, true), 1i)), arg_0.e));
    return ~max(_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, 17242u, 28803u, 3347u), ~countOneBits(vec4<u32>(0u, 0u, var_2.a.x, 1u))), ~firstLeadingBit(vec4<u32>(arg_1.x, 4294967295u, arg_0.d.x, 1u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(_wgslsmith_sub_u32(arg_0.c.x, arg_0.d.x)), func_2(any(vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), -arg_2.wz, 1i), arg_1.x, arg_1.x >> (_wgslsmith_sub_u32(arg_1.x, arg_0.c.x) % 32u)), ~(~(~vec4<u32>(arg_0.a.x, 1u, arg_1.x, arg_1.x))), func_3(arg_0, ~min(arg_0.d, arg_1))) & ((vec4<u32>(arg_0.c.x, ~arg_0.a.x, abs(0u), arg_1.x) >> (vec4<u32>(1u, arg_1.x, _wgslsmith_dot_vec2_u32(arg_0.c.zx, vec2<u32>(0u, arg_0.a.x)), arg_1.x) % vec4<u32>(32u))) ^ abs(~vec4<u32>(0u, 84918u, 0u, arg_0.c.x)));
    var var_1 = -(~(~_wgslsmith_div_i32(firstLeadingBit(-1i), min(arg_2.x, arg_2.x))));
    var var_2 = vec2<u32>(arg_1.x, ~(~arg_1.x));
    return Struct_1(~vec3<u32>(12772u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, 0u, var_0.x, 16613u), var_0) & ~61297u, ~4294967295u), 1u, vec3<u32>(4294967295u, 4294967295u, func_2(true, vec4<bool>(all(vec3<bool>(true, true, false)), all(vec4<bool>(false, true, true, true)), all(vec3<bool>(false, false, false)), true), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_0.e.x), vec2<i32>(arg_2.x, arg_2.x) | vec2<i32>(-23859i, -46024i)), arg_0.e.x)), ~vec3<u32>(_wgslsmith_div_u32(var_2.x, _wgslsmith_div_u32(var_0.x, 26495u)), arg_1.x, var_2.x), arg_0.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_mult_u32(min(~8213u, 114583u), 1u);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1139f + 1684f)))) * _wgslsmith_f_op_f32(max(306f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-160f)), _wgslsmith_f_op_f32(-1032f + -398f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-874f, -396f), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2103f), 1465f))), any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))))), !any(vec2<bool>(true, true))));
    let var_2 = arg_0.e.wyy;
    var var_3 = arg_0;
    var_3 = func_1(arg_1, var_3.c, countOneBits(arg_0.e));
    return StorageBuffer(-abs(-(vec2<i32>(var_3.e.x, arg_0.e.x) | vec2<i32>(var_3.e.x, arg_1.e.x))), vec4<u32>(_wgslsmith_mult_u32(~var_3.b ^ 0u, func_2(true, vec4<bool>(true, false, false, true), select(arg_1.e.zz, vec2<i32>(arg_0.e.x, var_3.e.x), vec2<bool>(false, false)), arg_0.e.x)), 69043u, arg_1.b, arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = func_4(Struct_1(vec3<u32>(countOneBits(~46872u), reverseBits(_wgslsmith_mod_u32(50295u, 67483u)), 33879u), 4294967295u, max(~vec3<u32>(66063u, 0u, 0u), ~vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(reverseBits(vec3<u32>(28846u, 4294967295u, 16068u)))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(19619i, 21139i, u_input.a.x), 2147483647i), (u_input.a.x | u_input.a.x) >> ((4294967295u >> (1u % 32u)) % 32u), -(~(-1i)), -_wgslsmith_div_i32(u_input.a.x, u_input.a.x))), func_1(Struct_1(~select(vec3<u32>(9499u, 12359u, 4294967295u), vec3<u32>(0u, 17280u, 4294967295u), false), _wgslsmith_clamp_u32(~20893u, _wgslsmith_mod_u32(0u, 69122u), _wgslsmith_mult_u32(1u, 4294967295u)), vec3<u32>(1u, 1u, 1u), vec3<u32>(74475u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 22516u)), 4294967295u), min(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 0i), vec4<i32>(1i, -1i, u_input.a.x, u_input.a.x)) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(1u, firstTrailingBit(47677u), 4294967295u), (vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 2677i, -1i, 0i)) << ((vec4<u32>(1u, 1u, 1u, 1u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(10446u, 0u, 1u, 39760u), vec4<u32>(4294967295u, 7032u, 1u, 0u))) % vec4<u32>(32u))));
}

