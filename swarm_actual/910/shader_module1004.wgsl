struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(1i, 6698i, 0i, -15553i, 25934i, 18151i, -1i, 2147483647i, 59002i, 10883i, -1i, -541i, -12929i, -16666i, i32(-2147483648), i32(-2147483648));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(-vec4<i32>(abs(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(8448u, 16u)], -72305i, 11601i)), ~1i, 2147483647i, max(5613i, -2147483647i)), vec2<bool>(true, true), select(~_wgslsmith_clamp_vec2_u32(min(vec2<u32>(47968u, 1u), vec2<u32>(26498u, 1u)), ~vec2<u32>(44083u, 1u), ~vec2<u32>(37781u, 30163u)), firstLeadingBit(vec2<u32>(1u, 1u)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1534f))))) * _wgslsmith_div_f32(-566f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(803f + -974f))))), firstTrailingBit(~vec3<u32>(firstLeadingBit(28200u), 1u, ~1u)));
    let var_1 = Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(var_0.c.x, 16u)], firstLeadingBit(min(1i, global0[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_dot_vec3_i32(-var_0.a.ywy, _wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(25573u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(var_0.c.x, 16u)]), var_0.a.wzw)) << ((var_0.c.x ^ ~var_0.c.x) % 32u), u_input.a), select(var_0.b, !(!(!var_0.b)), var_0.e.x != 2351u), countOneBits(countOneBits(vec2<u32>(var_0.e.x, 1u))), _wgslsmith_f_op_f32(f32(-1f) * -1275f), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(139257u, var_0.e.x, 79629u), vec3<u32>(var_0.e.x, 122752u, var_0.c.x)), ~vec3<u32>(var_0.c.x, 32010u, var_0.e.x)), ~var_0.e), var_0.e));
    return var_1.e.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = arg_1.a.x << (_wgslsmith_mod_u32(countOneBits(_wgslsmith_add_u32(~arg_1.a.x, ~arg_1.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, ~arg_1.a.x, ~arg_1.a.x), vec4<u32>(~arg_1.a.x, arg_1.a.x, max(arg_1.a.x, arg_1.a.x), func_3()))) % 32u);
    global0 = array<i32, 16>();
    var var_1 = select(~((~arg_1.a.x << (~68605u % 32u)) ^ arg_1.a.x), reverseBits(arg_1.a.x), !(!all(select(vec4<bool>(true, arg_1.d, true, arg_1.d), vec4<bool>(true, arg_1.d, arg_1.d, false), vec4<bool>(false, arg_1.d, true, false)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -308f), _wgslsmith_f_op_f32(floor(arg_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(659f, -693f, arg_1.d)), arg_1.c.x, -32593i > arg_1.e)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-672f)) - _wgslsmith_f_op_f32(step(-212f, -216f))))));
    var var_3 = vec3<u32>(arg_1.a.x, max(arg_1.a.x, ~countOneBits(~4294967295u)), arg_1.a.x | ~arg_1.a.x);
    return !(!select(vec2<bool>(true, true), vec2<bool>(arg_1.a.x < 79173u, arg_1.d), select(select(vec2<bool>(false, true), vec2<bool>(arg_1.d, arg_1.d), vec2<bool>(arg_1.d, arg_1.d)), select(vec2<bool>(true, false), vec2<bool>(arg_1.d, false), vec2<bool>(true, false)), select(vec2<bool>(arg_1.d, arg_1.d), vec2<bool>(arg_1.d, true), vec2<bool>(true, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global0 = array<i32, 16>();
    let var_0 = abs(abs(0u));
    let var_1 = 36511u;
    global0 = array<i32, 16>();
    var var_2 = Struct_1(_wgslsmith_mult_vec4_i32(arg_0.a, select(arg_0.a, vec4<i32>(~u_input.a, arg_0.a.x, u_input.a, arg_2.a.x), vec4<bool>(all(arg_0.b), true, arg_0.b.x, all(vec4<bool>(true, arg_2.b.x, false, true))))), !(!select(select(vec2<bool>(true, arg_1.b.x), vec2<bool>(arg_1.b.x, arg_1.b.x), arg_1.b), arg_1.b, select(vec2<bool>(arg_2.b.x, true), vec2<bool>(arg_2.b.x, arg_0.b.x), vec2<bool>(true, false)))), vec2<u32>(~(arg_2.c.x ^ 11956u), arg_2.c.x | ~_wgslsmith_sub_u32(4294967295u, var_1)), _wgslsmith_f_op_f32(1096f - arg_1.d), arg_2.e);
    return Struct_2(~vec2<u32>(arg_2.e.x, abs(32136u)), vec3<i32>(arg_2.a.x, -1i, arg_0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1969f, -365f, arg_1.d, arg_1.d))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.d, 1000f, 1626f, -2605f), vec4<f32>(242f, arg_1.d, arg_1.d, arg_1.d)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.d, var_2.d, -2015f, arg_0.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1531f, var_2.d, var_2.d, -365f) * vec4<f32>(222f, arg_1.d, var_2.d, 449f)), !vec4<bool>(arg_0.b.x, true, false, false))))), any(select(arg_0.b, arg_1.b, vec2<bool>(true, true))), _wgslsmith_add_i32(~(~(~arg_0.a.x)), reverseBits(_wgslsmith_add_i32(-1i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, arg_0.c.x), 16u)]))));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> Struct_2 {
    global0 = array<i32, 16>();
    let var_0 = 21014u;
    var var_1 = Struct_2(~(~vec2<u32>(~4294967295u, 1u)), -(~(vec3<i32>(-2147483647i, -12705i, u_input.a) << (vec3<u32>(15445u, arg_0, var_0) % vec3<u32>(32u))) & vec3<i32>(~1i, global0[_wgslsmith_index_u32(~1117u, 16u)], _wgslsmith_dot_vec4_i32(vec4<i32>(44850i, arg_2, -25175i, arg_2), vec4<i32>(u_input.a, arg_2, global0[_wgslsmith_index_u32(var_0, 16u)], 0i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_3 - 101f), arg_3, _wgslsmith_f_op_f32(352f + 693f), arg_3) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_3, arg_3)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-914f, -946f, arg_3, arg_3))))), false, u_input.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c.zzy));
    let var_3 = i32(-1i) * -1i;
    return func_4(Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3, -60656i, arg_2, 0i), ~vec4<i32>(var_3, -13175i, -3344i, -3467i))), select(select(vec2<bool>(true, arg_1.x), vec2<bool>(true, arg_1.x), select(arg_1.zw, arg_1.xw, arg_1.xz)), !vec2<bool>(false, arg_1.x), func_2(~var_1.b, Struct_2(vec2<u32>(arg_0, arg_0), vec3<i32>(global0[_wgslsmith_index_u32(var_0, 16u)], -1i, arg_2), var_1.c, false, 2147483647i))), ~(~var_1.a), -2802f, vec3<u32>(arg_0, ~var_0, max(51706u, 4294967295u))), Struct_1(-(vec4<i32>(0i, arg_2, 1i, 2147483647i) | _wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, 8735i, global0[_wgslsmith_index_u32(arg_0, 16u)]), vec4<i32>(-2147483647i, u_input.a, var_1.b.x, -1i))), vec2<bool>(true, all(arg_1.wxy)), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-383f)))), ~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(33450u, var_1.a.x, 49297u), vec3<u32>(var_1.a.x, arg_0, 57115u)))), Struct_1(vec4<i32>(firstLeadingBit(u_input.a), max(2147483647i, _wgslsmith_add_i32(-41266i, 879i)), var_3 << (~arg_0 % 32u), _wgslsmith_add_i32(-4889i, _wgslsmith_mod_i32(26473i, -19905i))), arg_1.wx, _wgslsmith_div_vec2_u32(var_1.a, vec2<u32>(_wgslsmith_mult_u32(var_0, 44828u), var_1.a.x)), 879f, vec3<u32>(~4294967295u, var_1.a.x, var_1.a.x | arg_0)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_2);
    let var_1 = Struct_1(-vec4<i32>(~1i, ~_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(arg_1.a.x, 16u)], global0[_wgslsmith_index_u32(arg_1.a.x, 16u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_1.a.x, 33042u), 1u), 16u)], _wgslsmith_dot_vec3_i32(~arg_1.b, abs(vec3<i32>(arg_1.e, -1i, u_input.a)))), func_2(vec3<i32>(29348i, 1i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(17003u, 16u)], -2147483647i, 16418i)), func_4(Struct_1(select(vec4<i32>(global0[_wgslsmith_index_u32(arg_3.x, 16u)], u_input.a, global0[_wgslsmith_index_u32(55567u, 16u)], -2147483647i), vec4<i32>(-21700i, -2147483647i, arg_1.b.x, arg_1.b.x), false), arg_0.zy, arg_1.a << (vec2<u32>(arg_3.x, 79444u) % vec2<u32>(32u)), arg_1.c.x, arg_3.wzx), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(arg_3.x, 16u)], -1i, 1i, 37144i), !vec2<bool>(arg_1.d, false), arg_3.yx, 323f, abs(vec3<u32>(1u, 35036u, 4294967295u))), Struct_1(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(arg_1.a.x, 16u)], -1i, -21021i, arg_1.e)), arg_0.yx, firstTrailingBit(vec2<u32>(32881u, 0u)), _wgslsmith_f_op_f32(-arg_1.c.x), arg_3.wzz))), vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(6662u), ~arg_3.x), _wgslsmith_mult_u32(~10516u, _wgslsmith_div_u32(29010u, arg_3.x))) & arg_3.xz, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))), arg_1.c.x), ~vec3<u32>(~(~37093u), _wgslsmith_div_u32(0u, arg_3.x), func_4(Struct_1(vec4<i32>(0i, -1i, 1i, arg_1.e), vec2<bool>(true, arg_0.x), arg_1.a, 294f, arg_3.wwy), Struct_1(vec4<i32>(0i, 2100i, -2147483647i, 7346i), arg_0.yz, arg_1.a, arg_1.c.x, vec3<u32>(5003u, arg_3.x, arg_3.x)), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(23129u, 16u)], global0[_wgslsmith_index_u32(arg_1.a.x, 16u)], -26937i, -1i), arg_0.xy, vec2<u32>(12623u, 1u), 353f, arg_3.xzy)).a.x));
    let var_2 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-arg_1.e, ~global0[_wgslsmith_index_u32(0u, 16u)], ~global0[_wgslsmith_index_u32(var_1.e.x, 16u)]), vec3<i32>(arg_1.e, i32(-1i) * -2147483647i, 4135i)), arg_1.e, -var_1.a.x, -arg_1.b.x), !select(!select(vec2<bool>(true, arg_1.d), arg_0.zy, true), vec2<bool>(arg_3.x > arg_3.x, arg_0.x), (19036u >= arg_3.x) || arg_1.d), arg_3.zy, _wgslsmith_f_op_f32(round(-1310f)), firstLeadingBit(vec3<u32>(4294967295u, var_1.e.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(49457u, 1u), var_1.e.yz) % 32u), 1u ^ firstTrailingBit(10156u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(arg_1.c, arg_1.c));
    global0 = array<i32, 16>();
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_sub_vec3_u32(reverseBits(select(vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 10898u, 28846u), false)), ~vec3<u32>(1u, 1u, 1u)));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2437f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-952f, _wgslsmith_f_op_f32(697f - -1606f))))), global0[_wgslsmith_index_u32(func_5(vec3<bool>(true, !var_1, var_1 || var_1), func_1(_wgslsmith_sub_u32(var_0.x, 146u), select(vec4<bool>(var_1, true, true, false), vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(var_1, var_1, true, var_1)), firstLeadingBit(global0[_wgslsmith_index_u32(11862u, 16u)]), _wgslsmith_f_op_f32(f32(-1f) * -758f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-385f, -1077f) + vec2<f32>(124f, -328f)) * vec2<f32>(-1746f, 335f)), abs(~vec4<u32>(0u, var_0.x, var_0.x, 4294967295u))), 16u)] != global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, ~(~var_0.x)), 16u)]));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(var_2.x * 1229f), var_2.x, _wgslsmith_f_op_f32(1f - -602f));
    var var_4 = func_4(Struct_1(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 16u)], 56922i, u_input.a, u_input.a)), ~vec4<i32>(-23i, -39580i, u_input.a, u_input.a)) | vec4<i32>(global0[_wgslsmith_index_u32(48679u, 16u)], 1i, global0[_wgslsmith_index_u32(~var_0.x, 16u)], u_input.a), vec2<bool>((var_1 & false) | var_1, var_0.x >= var_0.x), var_0.zz, var_2.x, vec3<u32>(~var_0.x | var_0.x, var_0.x, var_0.x)), Struct_1(vec4<i32>(57908i, 3059i, -u_input.a, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, u_input.a), -1i << (0u % 32u))), vec2<bool>(select(-43891i, global0[_wgslsmith_index_u32(var_0.x, 16u)], var_1) <= (global0[_wgslsmith_index_u32(13588u, 16u)] ^ global0[_wgslsmith_index_u32(var_0.x, 16u)]), func_2(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 26432i, 1i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(46829u, 16u)], u_input.a)), func_1(44904u, vec4<bool>(var_1, true, false, false), -1i, var_3.x)).x), var_0.xx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(272f * 367f)), ~(~(~vec3<u32>(var_0.x, 11946u, 0u)))), Struct_1(min(max(vec4<i32>(-2147483647i, -18495i, 2147483647i, u_input.a), -vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 16u)], 60153i, -36297i, global0[_wgslsmith_index_u32(39429u, 16u)])), _wgslsmith_clamp_vec4_i32(vec4<i32>(-40698i, 1i, 0i, u_input.a) ^ vec4<i32>(26769i, u_input.a, u_input.a, -334i), ~vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(var_0.x, 16u)], -4842i, u_input.a), select(vec4<i32>(28390i, u_input.a, -40515i, -7159i), vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 16u)], 0i, u_input.a, u_input.a), false))), vec2<bool>(var_1 | (false != var_1), any(vec2<bool>(true, true)) && select(var_1, var_1, true)), var_0.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(abs(-625f)))), _wgslsmith_mod_vec3_u32(select(countOneBits(vec3<u32>(96587u, 0u, var_0.x)), vec3<u32>(4294967295u, 66880u, var_0.x), vec3<bool>(var_1, var_1, var_1)), vec3<u32>(var_0.x & 62861u, _wgslsmith_div_u32(var_0.x, var_0.x), _wgslsmith_mod_u32(var_0.x, 0u)))));
    global0 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.zy, _wgslsmith_div_vec3_i32(var_4.b, func_1(func_5(select(vec3<bool>(true, false, false), vec3<bool>(var_1, var_1, true), true), Struct_2(var_0.zy, vec3<i32>(-1i, var_4.b.x, var_4.e), var_4.c, var_1, -2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, -138f)), ~vec4<u32>(var_0.x, var_0.x, 1303u, var_0.x)), select(vec4<bool>(true, var_4.d, var_4.d, true), select(vec4<bool>(true, var_1, var_1, var_4.d), vec4<bool>(var_1, false, var_1, var_4.d), vec4<bool>(var_1, false, var_4.d, false)), vec4<bool>(true, var_4.d, false, var_1)), -1i, -1117f).b), _wgslsmith_f_op_f32(-var_4.c.x), ~select(_wgslsmith_div_vec4_i32(abs(vec4<i32>(20547i, 12482i, global0[_wgslsmith_index_u32(1u, 16u)], var_4.b.x)), -vec4<i32>(global0[_wgslsmith_index_u32(var_4.a.x, 16u)], -40007i, u_input.a, global0[_wgslsmith_index_u32(15376u, 16u)])), vec4<i32>(-27732i, ~1i, u_input.a, 1i), vec4<bool>(var_4.a.x >= var_4.a.x, any(vec2<bool>(var_1, true)), false, true)), -584f);
}

