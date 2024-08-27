struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, true, true, true, true, false, true, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, false);

var<private> global1: vec3<u32> = vec3<u32>(1u, 30824u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1225f, -334f, 2715f, -1299f) + vec4<f32>(-440f, 697f, -371f, 1791f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -323f, 622f, -805f) - vec4<f32>(-429f, -1000f, -643f, 142f)), arg_1.c)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1889f, -788f, -399f, -753f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(474f)) * _wgslsmith_div_f32(1000f, -1210f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-876f + 1000f)) + 1980f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(929f, 937f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1328f)) * -1084f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(107f - 100f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1689f)))))));
    global1 = ~vec3<u32>(abs(33804u), 14834u, ~_wgslsmith_dot_vec3_u32(~u_input.a.wyy, ~u_input.a.ywy));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(abs(var_0.x)));
    let var_2 = vec3<u32>(1u, countOneBits(arg_2.a.x ^ 19462u), 0u << (~4294967295u % 32u));
    let var_3 = 1234f;
    return abs(~28037i);
}

fn func_3(arg_0: i32) -> u32 {
    global1 = u_input.a.zyz;
    global1 = abs(~reverseBits(vec3<u32>(firstLeadingBit(u_input.a.x), global1.x, u_input.a.x)));
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(252f, -1093f, -460f)))) - vec3<f32>(_wgslsmith_f_op_f32(select(1020f, 304f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), -857f, _wgslsmith_f_op_f32(f32(-1f) * -173f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-159f, -1088f, -305f), vec3<f32>(-725f, -313f, -1000f))))))), any(!vec2<bool>(global0[_wgslsmith_index_u32(select(u_input.a.x, 87209u, false), 23u)], true))));
    let var_1 = vec4<i32>(reverseBits(arg_0), -1i, arg_0 << ((50867u & (~4751u >> (global1.x % 32u))) % 32u), 0i);
    var var_2 = vec4<bool>(!any(!vec4<bool>(false, global0[_wgslsmith_index_u32(global1.x, 23u)], true, true)), any(vec2<bool>(global0[_wgslsmith_index_u32(70048u, 23u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global1.x), vec3<u32>(global1.x, u_input.a.x, 0u)), firstLeadingBit(u_input.a.xxw)), 23u)])), true, false);
    return _wgslsmith_sub_u32(19653u, firstLeadingBit(firstLeadingBit(u_input.a.x)));
}

fn func_2(arg_0: f32, arg_1: f32) -> vec3<i32> {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, ~32966u, 1u), func_3(1i)), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(45236i, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), -(~vec2<i32>(-3444i, 14841i)))), !global0[_wgslsmith_index_u32(21851u, 23u)] && false);
    var_0 = Struct_1(~global1.xy, _wgslsmith_div_vec2_i32(~vec2<i32>(35216i, var_0.b.x & var_0.b.x), -_wgslsmith_clamp_vec2_i32(var_0.b, _wgslsmith_mod_vec2_i32(var_0.b, vec2<i32>(var_0.b.x, -461i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_0.b.x), vec2<i32>(0i, 27516i), vec2<i32>(-6856i, -1380i)))), any(vec4<bool>(select(0i, -1i, true) <= max(var_0.b.x, var_0.b.x), true, true, true)));
    global1 = ~u_input.a.wxw;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), -1230f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * _wgslsmith_f_op_f32(ceil(arg_0))))));
    var_0 = Struct_1(global1.xx, var_0.b, global0[_wgslsmith_index_u32(~28147u, 23u)]);
    return vec3<i32>(firstLeadingBit(_wgslsmith_mod_i32(-(i32(-1i) * -3841i), var_0.b.x)), ~_wgslsmith_mod_i32(var_0.b.x, func_1(-var_0.b, Struct_1(vec2<u32>(global1.x, global1.x), var_0.b, global0[_wgslsmith_index_u32(19676u, 23u)]), Struct_1(u_input.a.yy, var_0.b, false))), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(-vec3<i32>(select(34004i, 1i, global0[_wgslsmith_index_u32(global1.x, 23u)]), 1i, func_1(vec2<i32>(-26008i, -1i), Struct_1(global1.zx, vec2<i32>(-2147483647i, 1i), false), Struct_1(vec2<u32>(54141u, 22917u), vec2<i32>(-22835i, -20432i), true)))) | abs(max(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-27595i, 1i), vec2<i32>(62170i, -8588i)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(36293i, -1i, 1i)), 0i), abs(vec3<i32>(-24677i, 2147483647i, 1i))));
    var_0 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -652f))), -2071f);
    let var_1 = Struct_1(~u_input.a.xw, -var_0.zz, global0[_wgslsmith_index_u32(countOneBits(u_input.a.x) & ~0u, 23u)]);
    global1 = _wgslsmith_add_vec3_u32(vec3<u32>(117080u, 16987u, ~_wgslsmith_dot_vec2_u32(u_input.a.zz >> (global1.xz % vec2<u32>(32u)), u_input.a.zz & u_input.a.xx)), max(vec3<u32>(~0u << (~var_1.a.x % 32u), var_1.a.x, global1.x), ~firstTrailingBit(firstTrailingBit(vec3<u32>(30129u, 23071u, global1.x)))));
    global0 = array<bool, 23>();
    var var_2 = ~vec3<u32>(var_1.a.x, min(~0u, global1.x) & (_wgslsmith_add_u32(1u, global1.x) << (~global1.x % 32u)), 1u);
    let var_3 = var_1;
    global0 = array<bool, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(-1057f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-848f, 995f)), _wgslsmith_f_op_f32(round(-657f)), true))), -348f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1674f)), min(vec4<u32>(1u, 0u, u_input.a.x, var_2.x), ~(vec4<u32>(1u, var_1.a.x, u_input.a.x, 44621u) & (u_input.a << (vec4<u32>(0u, 64085u, var_3.a.x, 30272u) % vec4<u32>(32u))))), select(select(vec3<i32>(reverseBits(var_3.b.x), firstTrailingBit(var_1.b.x), min(var_3.b.x, -2147483647i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2999i, var_1.b.x, var_0.x), vec3<i32>(var_3.b.x, 2147483647i, var_3.b.x)), reverseBits(40600i), _wgslsmith_sub_i32(1i, 33218i)), any(!vec2<bool>(var_3.c, true))), ~abs(abs(vec3<i32>(var_1.b.x, var_1.b.x, var_0.x))), !vec3<bool>(any(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(var_2.x, 23u)])), true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.yz, vec2<u32>(var_2.x, global1.x)), 23u)])));
}

