struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(276f, 956f) * 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1274f)), 756f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-1279f + -1330f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0, _wgslsmith_f_op_vec4_f32(trunc(var_0)))), var_0));
    var_1 = vec4<f32>(var_1.x, _wgslsmith_div_f32(-1291f, -725f), _wgslsmith_f_op_f32(-761f + _wgslsmith_f_op_f32(abs(-1050f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-816f, _wgslsmith_f_op_f32(1859f - _wgslsmith_f_op_f32(ceil(var_0.x)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1724f, var_1.x))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))), -1213f);
    return _wgslsmith_mult_u32(~(~0u) >> (_wgslsmith_div_u32(1u, abs(1u)) % 32u), ~select(24415u, 1u, arg_1.x) & 1u) >> ((countOneBits(1u) ^ ((51726u | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u))) & countOneBits(~1u))) % 32u);
}

fn func_2() -> Struct_1 {
    var var_0 = ~4294967295u;
    let var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, countOneBits(~0u)), vec2<u32>(1u, firstLeadingBit(0u)) & vec2<u32>(_wgslsmith_mod_u32(~27788u, func_3(vec4<i32>(24722i, u_input.b, 37428i, -2147483647i), vec2<bool>(true, false))), 1u));
    var var_2 = -u_input.b;
    var var_3 = Struct_1(~abs(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(112903u, 0u, 67093u, var_1), vec4<u32>(22031u, var_1, 26693u, var_1)), vec4<u32>(var_1, var_1, var_1, var_1))), vec2<bool>(select(false, true, any(vec3<bool>(true, true, false))), (35416i > abs(u_input.a.x)) == true), true, !select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)));
    var var_4 = 1169f;
    return Struct_1(vec4<u32>(var_1, 17862u, ~var_1, ~max(abs(var_1), var_3.a.x)), var_3.b, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_3.c, false, var_3.c, var_3.b.x), false && var_3.b.x), select(!vec4<bool>(false, var_3.b.x, true, var_3.c), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, var_3.b.x, var_3.b.x), vec4<bool>(var_3.b.x, false, true, var_3.b.x)), var_3.c), false)), vec2<bool>(var_3.c, all(select(!vec3<bool>(var_3.c, false, var_3.d.x), !vec3<bool>(false, true, var_3.d.x), false))));
}

fn func_1() -> Struct_1 {
    let var_0 = countOneBits(u_input.b);
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1056f, 594f), _wgslsmith_f_op_vec2_f32(vec2<f32>(564f, 1092f) + vec2<f32>(-245f, -669f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-832f, -882f) + vec2<f32>(-639f, 730f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(402f, -552f)))), vec2<f32>(_wgslsmith_f_op_f32(960f * -897f), _wgslsmith_f_op_f32(1744f * 509f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-709f, _wgslsmith_f_op_f32(-719f + 457f))))), arg_1.d.x));
    var var_1 = abs(~(~u_input.a)) >> (~(~_wgslsmith_add_vec3_u32(max(arg_0.a.wyz, arg_1.a.yww), arg_1.a.zyz)) % vec3<u32>(32u));
    var_1 = firstTrailingBit(reverseBits(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, 24811i, var_1.x), u_input.a, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, var_1.x, 43163i), vec3<i32>(var_1.x, 41533i, 1i)), ~u_input.a))));
    var var_2 = _wgslsmith_f_op_f32(-1f);
    let var_3 = vec4<bool>(all(select(vec3<bool>(arg_0.d.x, all(arg_1.d), any(vec4<bool>(false, true, true, arg_0.c))), vec3<bool>(func_2().c, false, select(true, false, arg_1.b.x)), all(vec4<bool>(arg_0.c, arg_0.d.x, arg_0.d.x, false)) || true)), arg_1.b.x, arg_1.d.x, !(!(!arg_0.c)));
    return Struct_2(func_2());
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: f32) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = arg_1;
    return Struct_2(Struct_1(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.a.x, 0u, 26142u, var_1.a.a.x), vec4<u32>(var_0.a.a.x, 4294967295u, var_1.a.a.x, arg_1.a.a.x) >> (arg_1.a.a % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.a.a.yww, vec3<u32>(var_0.a.a.x, 69304u, var_1.a.a.x)), ~arg_1.a.a.x, func_1().a.x, reverseBits(21325u)), true), vec2<bool>(true, arg_0.x), var_0.a.c, !(!arg_0.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!vec3<bool>(false, false, all(vec4<bool>(true, false, true, true))), func_4(func_1(), Struct_1(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), vec2<bool>(true, true), true, vec2<bool>(any(vec2<bool>(true, false)), true))), func_1().b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1421f))))));
    var_0 = Struct_2(func_4(func_2(), func_4(Struct_1(var_0.a.a, vec2<bool>(var_0.a.d.x, var_0.a.d.x), false, var_0.a.d), var_0.a).a).a);
    var_0 = func_5(select(vec3<bool>(true, !all(vec2<bool>(false, false)), -2147483647i > u_input.b), vec3<bool>(false, true, true), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, var_0.a.d.x), vec3<bool>(var_0.a.c, var_0.a.b.x, var_0.a.d.x)), !(!vec3<bool>(var_0.a.d.x, var_0.a.d.x, true)), select(all(vec3<bool>(false, false, true)), false, true))), Struct_2(var_0.a), vec2<bool>(true, !var_0.a.b.x), _wgslsmith_f_op_f32(trunc(-1000f)));
    var_0 = Struct_2(var_0.a);
    let var_1 = -41410i;
    var var_2 = Struct_1(func_4(Struct_1(func_1().a, vec2<bool>(true, true), var_0.a.c, var_0.a.d), func_5(!vec3<bool>(var_0.a.d.x, var_0.a.b.x, var_0.a.b.x), Struct_2(func_4(Struct_1(var_0.a.a, vec2<bool>(true, true), var_0.a.b.x, vec2<bool>(var_0.a.b.x, var_0.a.d.x)), Struct_1(var_0.a.a, var_0.a.b, true, vec2<bool>(var_0.a.d.x, var_0.a.c))).a), func_2().b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 725f) * _wgslsmith_div_f32(-170f, 827f))).a).a.a, !(!var_0.a.d), !var_0.a.c, vec2<bool>(_wgslsmith_dot_vec2_i32(u_input.a.yz << (var_0.a.a.xz % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(0i, -2147483647i))) <= (_wgslsmith_add_i32(u_input.b, 8830i) >> (1u % 32u)), any(vec4<bool>(false, false, var_0.a.b.x, var_0.a.a.x == 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(~(~abs(vec2<u32>(27691u, var_2.a.x))), var_2.a.yx), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(261f * 182f) + _wgslsmith_f_op_f32(1648f - 189f)) - 960f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(570f * -1005f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1159f), -1828f, true)))), -2231f));
}

