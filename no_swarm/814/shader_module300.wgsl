struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> bool {
    return any(vec4<bool>(all(arg_1.d), all(vec2<bool>(true, true)), arg_1.a.a.x, false));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec4<u32> {
    var var_0 = 0u;
    let var_1 = 45679u;
    var var_2 = select(arg_1.zxz, !select(!vec3<bool>(arg_1.x, true, arg_1.x), select(arg_1.xxx, select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true), arg_1.xzw), func_3(vec3<f32>(-636f, -1035f, 2207f), Struct_2(Struct_1(arg_1.zyw, arg_0.x, u_input.c, arg_1.wyx, vec4<u32>(var_1, 0u, u_input.b, arg_0.x)), 4294967295u, Struct_1(vec3<bool>(false, true, false), 88632u, 2147483647i, arg_1.wxy, vec4<u32>(var_1, 7738u, 1u, var_1)), arg_1.zyx), vec4<f32>(-1198f, -1000f, 986f, -672f))), true), true);
    var_2 = select(vec3<bool>(true, func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(643f, 555f, -309f), vec3<f32>(-2306f, 640f, -695f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1514f, 360f, 599f) + vec3<f32>(-1996f, -1000f, -1871f))), Struct_2(Struct_1(arg_1.xyz, u_input.b, 19086i, vec3<bool>(var_2.x, true, false), vec4<u32>(0u, 74170u, 4294967295u, 1u)), ~u_input.b, Struct_1(vec3<bool>(true, true, arg_1.x), u_input.b, -8792i, vec3<bool>(false, true, false), vec4<u32>(var_1, 49993u, arg_0.x, arg_0.x)), arg_1.wzw), vec4<f32>(_wgslsmith_f_op_f32(sign(-227f)), -1877f, -352f, 1267f)), true), select(select(!vec3<bool>(arg_1.x, true, true), !vec3<bool>(false, var_2.x, false), select(!vec3<bool>(arg_1.x, true, false), arg_1.wwx, vec3<bool>(arg_1.x, false, arg_1.x))), !vec3<bool>(true, var_2.x, true), !var_2.x), true);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(880f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-162f * 656f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2084f - 1834f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))))));
    return abs(vec4<u32>(firstTrailingBit(arg_0.x), 0u, 34216u << (~abs(4294967295u) % 32u), _wgslsmith_sub_u32(countOneBits(_wgslsmith_clamp_u32(u_input.b, 33919u, u_input.b)), ~6174u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = arg_1.c.d.x;
    var var_1 = Struct_2(Struct_1(!(!select(arg_0.d, vec3<bool>(arg_0.a.x, false, true), false)), 0u, arg_0.c, arg_1.a.a, ~func_2(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(arg_1.c.b, u_input.b), false), select(vec4<bool>(true, var_0, arg_0.d.x, var_0), vec4<bool>(true, var_0, arg_1.d.x, true), vec4<bool>(true, arg_0.d.x, false, true)))), ~10639u, Struct_1(!vec3<bool>(!arg_0.a.x, arg_0.a.x != arg_1.a.d.x, true), 1u << (arg_1.b % 32u), _wgslsmith_add_i32(arg_1.c.c, arg_0.c) >> (0u % 32u), select(select(select(arg_0.d, arg_0.d, false), !vec3<bool>(arg_1.c.a.x, var_0, false), true), vec3<bool>(true, false, all(vec2<bool>(var_0, arg_0.d.x))), select(!arg_1.c.a, arg_0.d, !arg_0.d)), arg_0.e), vec3<bool>(true, !arg_1.a.a.x, select(var_0, arg_1.c.a.x, true)));
    var_1 = Struct_2(Struct_1(select(arg_0.d, var_1.d, !var_0), 74719u, ~6177i, vec3<bool>(false, all(!arg_0.d.yy), !arg_1.d.x), vec4<u32>(var_1.a.e.x, ~arg_2, 23417u, max(max(arg_1.c.b, arg_2), arg_2))), 41213u, Struct_1(!(!vec3<bool>(true, var_1.a.a.x, false)), ~reverseBits(var_1.a.b), 2147483647i, !select(vec3<bool>(true, var_1.c.a.x, arg_1.d.x), select(vec3<bool>(var_0, var_0, var_1.d.x), var_1.a.d, vec3<bool>(arg_1.c.d.x, true, arg_1.a.d.x)), arg_1.c.d), ~(~vec4<u32>(u_input.b, 0u, arg_1.b, var_1.c.b) ^ ~vec4<u32>(u_input.b, var_1.b, 1u, u_input.b))), !select(vec3<bool>(true, arg_1.d.x | arg_0.d.x, false), var_1.a.a, select(!var_1.c.a, !var_1.d, any(var_1.c.d.yz))));
    var_1 = Struct_2(arg_0, ~u_input.b, Struct_1(vec3<bool>(var_1.d.x, true, select(true, any(var_1.c.d.xx), 4294967295u == arg_2)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~4294967295u, arg_0.b), 4294967295u), -max(arg_0.c, arg_0.c) ^ ~arg_1.c.c, vec3<bool>(any(vec4<bool>(true, true, true, true)), true || (false || var_1.a.d.x), arg_1.c.d.x), ~(~var_1.c.e)), vec3<bool>(all(vec2<bool>(true, arg_0.a.x)), !any(var_1.d), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-609f, 1083f, -833f), vec3<f32>(-352f, -1000f, -600f))), Struct_2(var_1.c, var_1.b, Struct_1(arg_1.d, 6164u, 0i, var_1.a.a, arg_0.e), !arg_0.a), vec4<f32>(-1494f, -1361f, 416f, _wgslsmith_f_op_f32(-756f - 1000f)))));
    var var_2 = Struct_1(vec3<bool>(select(select(true || arg_0.a.x, true, all(arg_0.d.zx)), !var_1.a.a.x, false), true, true), _wgslsmith_mult_u32(u_input.b, ~arg_2), -4585i, arg_1.a.a, var_1.c.e);
    return Struct_1(arg_0.d, 1u, 29732i << (firstLeadingBit(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.e.x, 19296u, var_2.b), vec4<u32>(var_2.e.x, 4294967295u, 14927u, 15345u)))) % 32u), vec3<bool>((14463u >> (~arg_1.b % 32u)) >= 4294967295u, !all(select(var_2.d.yz, var_2.d.xz, false)), all(!arg_1.a.a.xz)), _wgslsmith_mult_vec4_u32(var_1.c.e, var_1.c.e));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>) -> vec2<i32> {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(591f, _wgslsmith_f_op_f32(abs(-1595f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-982f * -158f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(2705f, -641f)), _wgslsmith_f_op_f32(floor(1767f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(994f - -313f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(289f, 734f, -1058f) * vec3<f32>(-1000f, 1065f, -449f))))) - vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-958f - 124f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2671f) * _wgslsmith_f_op_f32(510f - -150f)), -419f)));
    let var_1 = u_input.b;
    let var_2 = arg_0.c >> ((57340u ^ ((1u << (u_input.b % 32u)) << (abs(1u) % 32u))) % 32u);
    let var_3 = -vec3<i32>(abs(func_1(arg_0, Struct_2(Struct_1(vec3<bool>(arg_0.a.x, arg_1.x, arg_1.x), arg_0.e.x, -2147483647i, vec3<bool>(arg_0.d.x, true, false), vec4<u32>(arg_0.b, 51167u, 0u, var_1)), u_input.b, arg_0, arg_0.a), 12304u).c), ~1i, u_input.c & arg_0.c);
    let var_4 = Struct_1(!select(!vec3<bool>(arg_0.a.x, arg_1.x, arg_0.a.x), select(vec3<bool>(false, arg_0.d.x, arg_1.x), select(vec3<bool>(false, false, true), vec3<bool>(arg_0.a.x, true, false), vec3<bool>(true, false, arg_0.d.x)), vec3<bool>(arg_1.x, false, arg_0.a.x)), arg_1), abs(38125u), 28591i, !(!arg_1), ~min(countOneBits(~vec4<u32>(arg_0.b, arg_0.b, 1u, arg_2.x)), func_2(arg_2.yz, vec4<bool>(arg_1.x, true, arg_0.d.x, true))));
    return var_3.yy & ~vec2<i32>(arg_0.c, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2087f, 1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1445f, -581f))), _wgslsmith_f_op_f32(f32(-1f) * -1814f)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -670f) + _wgslsmith_f_op_f32(f32(-1f) * -411f)), _wgslsmith_f_op_f32(f32(-1f) * -334f), 234f, 1000f)));
    var var_1 = _wgslsmith_f_op_f32(-640f * 803f);
    var_1 = _wgslsmith_f_op_f32(exp2(var_0.x));
    var var_2 = _wgslsmith_mult_vec2_i32(firstTrailingBit(~(~(~vec2<i32>(u_input.d, 1i)))), _wgslsmith_sub_vec2_i32(min(func_4(func_1(Struct_1(vec3<bool>(false, true, false), 12379u, -5611i, vec3<bool>(true, false, false), vec4<u32>(64579u, u_input.b, 13076u, 4294967295u)), Struct_2(Struct_1(vec3<bool>(true, true, false), u_input.b, -2147483647i, vec3<bool>(false, true, false), vec4<u32>(0u, 1u, u_input.b, 25058u)), u_input.b, Struct_1(vec3<bool>(false, false, false), 1u, 2147483647i, vec3<bool>(true, false, false), vec4<u32>(1u, 0u, 0u, u_input.b)), vec3<bool>(true, true, true)), u_input.b), vec3<bool>(false, false, false), ~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), ~(vec2<i32>(u_input.c, -54250i) | vec2<i32>(u_input.d, 0i))), _wgslsmith_mult_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(0i, -5886i))), vec2<i32>(u_input.c, u_input.d >> (30407u % 32u)))));
    var var_3 = min(~0i, max(-45165i, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b << (~(~abs(u_input.b)) % 32u), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, 55747i, u_input.c) | ~vec3<i32>(1i, var_2.x, u_input.c), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.c, 2147483647i), vec3<i32>(-1i, var_2.x, 2147483647i))) << (~(~(vec3<u32>(15469u, u_input.b, u_input.b) << (vec3<u32>(u_input.b, 4294967295u, u_input.b) % vec3<u32>(32u)))) % vec3<u32>(32u)));
}

