struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25>;

var<private> global1: vec2<u32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> vec2<u32> {
    let var_0 = vec4<u32>(1u, ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(7506u, 0u, 2048u, 22070u), vec4<u32>(global1.x, 4294967295u, global1.x, 1u)))), min(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~global1.x, ~1992u, global1.x), ~reverseBits(32930u)), 0u), ~4294967295u);
    var var_1 = vec3<f32>(-1011f, -192f, -474f);
    global0 = array<vec4<bool>, 25>();
    return var_0.xz;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> f32 {
    let var_0 = 122f;
    var var_1 = max(arg_0.c, _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-10026i, -2147483647i), 125717i, 1i, -arg_0.a), arg_0.c)) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(35705u, 1u, ~37625u, abs(arg_3)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global1.x, 0u, 1u), vec4<u32>(global1.x, arg_3, arg_3, global1.x)), vec4<u32>(21414u, 4294967295u, 45307u, global1.x)), vec4<u32>(arg_3, _wgslsmith_div_u32(global1.x, 10181u), global1.x, _wgslsmith_div_u32(29302u, 4294967295u))) % vec4<u32>(32u));
    let var_2 = abs(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(54956u, global1.x), vec2<u32>(36025u, global1.x))));
    var var_3 = _wgslsmith_dot_vec2_i32(var_1.ww << (firstLeadingBit(firstTrailingBit(_wgslsmith_mod_vec2_u32(var_2, vec2<u32>(arg_3, 37568u)))) % vec2<u32>(32u)), ~var_1.yw);
    let var_4 = ~(select(var_1.zx, vec2<i32>(var_1.x, abs(16310i)), vec2<bool>(true, true)) << (var_2 % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(step(-971f, arg_2.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    global1 = firstLeadingBit(~func_2(arg_1, vec3<i32>(u_input.a ^ arg_1.c.x, ~u_input.a, reverseBits(-2147483647i))));
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1319f, 172f, arg_1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_1.b.x, -783f, false))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-931f * arg_1.b.x), 2380f, arg_1.b.x, -758f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.x, arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(-14379i, arg_1.b, arg_1.c), u_input.a, vec3<f32>(144f, arg_1.b.x, -139f), global1.x))), _wgslsmith_f_op_f32(1338f - arg_1.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, -213f, -1711f, arg_1.b.x))), 0u >= global1.x)), !(-2147483647i > u_input.a)));
    let var_1 = vec2<bool>(!arg_0.x, select(all(select(select(vec4<bool>(false, arg_0.x, true, true), global0[_wgslsmith_index_u32(global1.x, 25u)], true), arg_0, select(global0[_wgslsmith_index_u32(global1.x, 25u)], global0[_wgslsmith_index_u32(global1.x, 25u)], arg_0))), all(select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), arg_0, true)), true));
    var var_2 = ~1u;
    let var_3 = var_0.zzz;
    return ~(~58589u << (firstLeadingBit(~_wgslsmith_clamp_u32(global1.x, 26386u, global1.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-38330i, -1i, u_input.a, -u_input.a);
    var var_1 = vec4<u32>(global1.x, max(~func_1(select(global0[_wgslsmith_index_u32(60478u, 25u)], vec4<bool>(false, false, false, false), global0[_wgslsmith_index_u32(global1.x, 25u)]), Struct_1(var_0.x, vec2<f32>(841f, 1000f), vec4<i32>(3550i, 21467i, -6535i, 27528i))), 13777u), 46681u, _wgslsmith_mod_u32(35332u ^ global1.x, global1.x) | ~global1.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -461f, -1000f), vec3<f32>(379f, -399f, -368f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(181f, -1000f, -773f) - vec3<f32>(1405f, 820f, 170f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-318f, -330f, -613f)), vec3<f32>(-1000f, 1f, -1064f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -654f, -282f) - vec3<f32>(113f, -1389f, -408f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(723f, 295f, 2024f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2326f, 1939f, -203f) + vec3<f32>(-969f, -976f, -1124f))) - vec3<f32>(_wgslsmith_f_op_f32(-2294f * 1002f), _wgslsmith_f_op_f32(f32(-1f) * -2226f), -809f))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(-14682i, vec2<f32>(var_2.x, 208f), vec4<i32>(u_input.a, 58967i, u_input.a, var_0.x)), u_input.a, var_2, 4021u)) * _wgslsmith_f_op_f32(floor(2089f)))))), _wgslsmith_f_op_f32(var_2.x * -469f), var_2.x);
    var var_4 = vec2<i32>(~(~(~70413i)), var_0.x) & var_0.xx;
    var var_5 = Struct_1(_wgslsmith_mult_i32(countOneBits(_wgslsmith_clamp_i32(-2147483647i, 1i, 10233i) ^ abs(38995i)), -(~(-1i))), vec2<f32>(_wgslsmith_f_op_f32(-1078f * -752f), _wgslsmith_div_f32(-385f, _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-18523i, var_4.x, -24848i, var_4.x), vec4<i32>(var_4.x, -44857i, 31980i, -2147483647i)), vec4<i32>(1i, -2147483647i, u_input.a, var_0.x), max(vec4<i32>(var_4.x, u_input.a, -2133i, 30025i), vec4<i32>(-38348i, var_4.x, u_input.a, -4010i)))), vec4<i32>(reverseBits(var_4.x), 36534i, var_0.x, 61284i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(select(1614f, 219f, true)), -1000f) * _wgslsmith_f_op_vec3_f32(var_2 * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 320f, var_2.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1356f, _wgslsmith_f_op_f32(1000f - var_5.b.x), 1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1647f, var_2.x, var_3.x)))));
}

