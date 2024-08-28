struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-571f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f) * _wgslsmith_f_op_f32(859f - -1000f)) * _wgslsmith_f_op_f32(sign(3025f)))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<i32>) -> i32 {
    var var_0 = Struct_1(firstLeadingBit(select(arg_1, arg_2.x << (u_input.a.x % 32u), true) ^ -18597i));
    let var_1 = arg_0;
    var var_2 = firstLeadingBit(vec4<u32>(43601u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 44641u, arg_0, arg_0), vec4<u32>(var_1, 31187u, u_input.a.x, u_input.a.x)), abs(u_input.a.x)), 88231u, abs(arg_0))) >> (~(~vec4<u32>(reverseBits(13246u), 0u, 2318u, arg_0 >> (89192u % 32u))) % vec4<u32>(32u));
    let var_3 = -(~arg_1);
    let var_4 = _wgslsmith_clamp_u32(~max(var_1, 4294967295u << (var_2.x % 32u)), ~1u, 4294967295u) >> (u_input.a.x % 32u);
    return ~var_0.a;
}

fn func_4(arg_0: i32) -> u32 {
    let var_0 = ~(vec4<u32>(u_input.a.x, 1u, firstTrailingBit(38094u), firstLeadingBit(~1u)) >> ((~(~vec4<u32>(49789u, u_input.a.x, 1u, 5538u)) ^ max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 42535u, u_input.a.x, 1354u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, 22596u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-245f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 734f))))));
    var var_2 = Struct_2(var_1, Struct_1(arg_0), Struct_1(_wgslsmith_dot_vec2_i32(abs(countOneBits(vec2<i32>(arg_0, 1502i))), ~_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, arg_0)))), Struct_1(1i), !select(vec2<bool>(false, any(vec4<bool>(true, true, false, true))), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_3 = _wgslsmith_dot_vec2_u32(abs(var_0.xx), var_0.xx);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1250f)));
    return _wgslsmith_mod_u32(u_input.a.x, u_input.a.x | ~u_input.a.x);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), _wgslsmith_add_u32(~42501u, 4481u), ~(~51990u)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(~1u, 1u, reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), select(min(select(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 9037u, 6452u), vec4<bool>(false, true, false, false)), vec4<u32>(0u, 4294967295u, 4464u, u_input.a.x) & vec4<u32>(16842u, 4496u, u_input.a.x, 1u)), ~abs(vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x)), true)));
    let var_1 = var_0.x;
    var_0 = ~vec4<u32>(var_0.x, var_0.x, _wgslsmith_div_u32(~1u, ~0u), func_4(func_3(15911u, ~arg_0.a, -vec2<i32>(arg_0.a, arg_0.a))));
    var_0 = ~(~vec4<u32>(~(~96885u), var_0.x, _wgslsmith_div_u32(76457u, 4294967295u), _wgslsmith_sub_u32(0u, u_input.a.x) & u_input.a.x));
    var_0 = min(vec4<u32>(4294967295u, u_input.a.x >> (~(u_input.a.x ^ var_0.x) % 32u), u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x << (4294967295u % 32u), 4294967295u, countOneBits(7519u)), ~6483u)), select(select(vec4<u32>(24885u, u_input.a.x, u_input.a.x, 4294967295u) >> (vec4<u32>(42729u, var_0.x, u_input.a.x, var_0.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, 0u), vec4<u32>(1u, var_0.x, 4294967295u, var_0.x), vec4<u32>(33609u, 49648u, 1u, 61049u)), vec4<bool>(true, true, true, true)) | vec4<u32>(firstLeadingBit(u_input.a.x), 4294967295u << (var_0.x % 32u), ~var_0.x, 27051u), countOneBits(vec4<u32>(37071u, u_input.a.x, var_0.x, 938u)) >> (vec4<u32>(u_input.a.x, abs(0u), var_0.x << (4294967295u % 32u), ~var_0.x) % vec4<u32>(32u)), false));
    return -2209f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-924f, -812f), vec2<f32>(-1525f, -104f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(139f * 2028f) - 644f), _wgslsmith_f_op_f32(round(1000f)))), vec2<f32>(_wgslsmith_f_op_f32(func_1()), 826f));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1156f, -648f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(926f - 985f))), _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_mult_i32(1i, 46966i))))));
    let var_1 = i32(-1i) * -6161i;
    let var_2 = !all(!vec3<bool>(false, false, select(true, false, true)));
    var var_3 = _wgslsmith_mod_vec3_i32(-max(abs(-vec3<i32>(var_1, var_1, var_1)), vec3<i32>(19413i >> (0u % 32u), var_1 ^ -29070i, -var_1)), reverseBits(~(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_1, -37645i), vec3<i32>(var_1, var_1, var_1), vec3<i32>(var_1, var_1, -23261i)) << (~vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))));
    let var_4 = var_2;
    let var_5 = Struct_2(416f, Struct_1(~(~25904i << (u_input.a.x % 32u))), Struct_1(-(~50682i)), Struct_1(i32(-1i) * -1i), !vec2<bool>(true, _wgslsmith_f_op_f32(sign(var_0.x)) == _wgslsmith_f_op_f32(trunc(-167f))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(step(-942f, var_5.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_5.a, -1083f)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(154f, 2005f)))) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(var_0.x - var_5.a)))));
    var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) + _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1660f))), vec2<f32>(1000f, _wgslsmith_f_op_f32(trunc(var_0.x))), select(vec2<bool>(false, var_5.e.x), vec2<bool>(var_4, !var_5.e.x), select(var_5.e, var_5.e, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(64715u, 13550u, u_input.a.x, _wgslsmith_mult_u32(func_4(0i), _wgslsmith_mult_u32(u_input.a.x, 20290u)))));
}

