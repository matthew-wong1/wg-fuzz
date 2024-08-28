struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-1i, 1i, 0i, -1i));

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-1685f, -1423f, -2325f), vec3<f32>(-419f, 203f, -175f), vec3<f32>(1035f, 1106f, -316f), vec3<f32>(434f, 591f, -1653f), vec3<f32>(1843f, -668f, 1024f), vec3<f32>(1350f, -495f, -865f));

var<private> global2: array<vec3<bool>, 22>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 565f, arg_0.x, _wgslsmith_f_op_f32(-1490f + _wgslsmith_f_op_f32(f32(-1f) * -1655f))), vec4<f32>(-1577f, 2037f, _wgslsmith_f_op_f32(sign(-1226f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -980f) * -128f)), !(firstTrailingBit(global0.a.x) > (i32(-1i) * -1i))))));
    global0 = Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(56881i, u_input.b.x, u_input.b.x, -1i), vec4<i32>(15289i, -1i, 37279i, u_input.b.x)), abs(global0.a), arg_1.x), ~(~vec4<i32>(global0.a.x, global0.a.x, -38965i, global0.a.x))), vec4<i32>(u_input.b.x << (u_input.a % 32u), 55531i, 1i, 23360i)));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.b.x & _wgslsmith_clamp_i32(-32116i, -2083i, u_input.b.x), global0.a.x, u_input.b.x, _wgslsmith_sub_i32(global0.a.x, -1i)), _wgslsmith_mod_vec4_i32(~global0.a, vec4<i32>(reverseBits(33123i), abs(-6840i), -1i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x))), _wgslsmith_mult_vec4_i32(~(vec4<i32>(7796i, -15442i, global0.a.x, 12660i) & vec4<i32>(u_input.b.x, u_input.b.x, global0.a.x, 1i)), reverseBits(vec4<i32>(2147483647i, -26373i, u_input.b.x, -2147483647i)) << ((vec4<u32>(40583u, 1u, u_input.d.x, u_input.a) & u_input.c) % vec4<u32>(32u)))));
    var var_2 = vec2<i32>(abs(0i), u_input.b.x);
    var var_3 = !vec3<bool>(arg_1.x, false, false);
    return ~min(reverseBits(abs(1u)), ~u_input.a >> (u_input.a % 32u)) ^ ~((reverseBits(66693u) << (0u % 32u)) | max(1u, ~u_input.a));
}

fn func_2(arg_0: vec3<i32>) -> vec3<u32> {
    global1 = array<vec3<f32>, 6>();
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(max(u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.xx, ~vec2<u32>(4294967295u, 110921u))), ~(~49379u)), min(u_input.d.xx, vec2<u32>(_wgslsmith_div_u32(1u, u_input.a | 1u), func_3(vec2<f32>(-437f, -750f), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true)))));
    var var_1 = Struct_1(firstTrailingBit(~vec4<i32>(arg_0.x, 13488i, u_input.b.x, global0.a.x)));
    let var_2 = -vec4<i32>(_wgslsmith_add_i32(global0.a.x, _wgslsmith_dot_vec2_i32(select(var_1.a.yy, vec2<i32>(var_1.a.x, u_input.b.x), true), global0.a.ww)), -1i, 1i, var_1.a.x);
    let var_3 = Struct_1(select(_wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(var_1.a, vec4<i32>(var_1.a.x, 0i, global0.a.x, 34165i), vec4<i32>(u_input.b.x, 1i, var_2.x, global0.a.x)), var_1.a), vec4<i32>(arg_0.x, _wgslsmith_mult_i32(~var_2.x, -38254i), firstLeadingBit(u_input.b.x), global0.a.x), vec4<bool>(false, true, !(var_0.x > var_0.x), all(vec2<bool>(true, true)) || true)));
    return abs(vec3<u32>(var_0.x, _wgslsmith_mod_u32(~_wgslsmith_sub_u32(49742u, var_0.x), ~var_0.x), _wgslsmith_mult_u32(firstLeadingBit(abs(u_input.d.x)), var_0.x)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.zxx, func_2(vec3<i32>(global0.a.x, -2147483647i, 15566i))) & vec3<u32>(u_input.c.x << (1u % 32u), ~4294967295u, 51079u), ~_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(u_input.c.x, 6751u, u_input.c.x))), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -2889f), vec2<f32>(-227f, -615f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(312f, arg_0) * vec2<f32>(arg_0, arg_0)) - vec2<f32>(2763f, arg_0))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), 4294967295u == u_input.d.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false)))), firstTrailingBit(~(28796u << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u))));
    let var_1 = _wgslsmith_mult_u32(~select(4294967295u, var_0.x, true), u_input.c.x);
    var_0 = _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.c.x, 0u >> (var_1 % 32u), ~0u)), vec3<u32>(_wgslsmith_add_u32(5404u, _wgslsmith_add_u32(4294967295u, countOneBits(var_0.x))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, 0u), var_0.xy >> (vec2<u32>(54572u, var_1) % vec2<u32>(32u))), func_2(~global0.a.zxw).x));
    let var_2 = Struct_1(global0.a);
    let var_3 = Struct_1(select(global0.a, _wgslsmith_sub_vec4_i32(var_2.a, abs(vec4<i32>(global0.a.x, var_2.a.x, global0.a.x, 0i)) << ((vec4<u32>(var_1, u_input.a, var_1, var_1) ^ vec4<u32>(1u, var_0.x, 30312u, u_input.c.x)) % vec4<u32>(32u))), true));
    return var_3;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-177f * _wgslsmith_f_op_f32(1005f - -1044f)), _wgslsmith_f_op_f32(f32(-1f) * -464f))), -804f, 513f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -979f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(227f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(~(~(~1u)), countOneBits(29323u), ~(~u_input.a), ~_wgslsmith_dot_vec3_u32(u_input.d, ~vec3<u32>(37102u, u_input.c.x, 1u))), ~(~reverseBits(u_input.c)));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-405f, 408f, -1000f, 1434f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-170f, 721f, -207f, 1337f) - vec4<f32>(176f, -316f, 1319f, 416f))) + _wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(false, false, false, false), ~vec3<u32>(4294967295u, u_input.c.x, var_0.x), func_1(628f)))))));
    let var_2 = Struct_1(vec4<i32>(5232i, _wgslsmith_add_i32(reverseBits(_wgslsmith_mod_i32(0i, global0.a.x)), u_input.b.x), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x))).a.x, 7967i));
    let var_3 = _wgslsmith_mod_u32(var_0.x, _wgslsmith_div_u32(u_input.a, 15368u));
    var var_4 = select(true, !((_wgslsmith_dot_vec3_u32(u_input.c.zww, vec3<u32>(1u, 34547u, 129095u)) <= _wgslsmith_sub_u32(var_3, var_3)) || (~u_input.a > firstLeadingBit(var_0.x))), false);
    var var_5 = func_1(-100f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(global0.a.x, _wgslsmith_clamp_i32(-(~var_5.a.x), u_input.b.x, -2147483647i)), select(~u_input.c.yy, _wgslsmith_sub_vec2_u32(~(~vec2<u32>(25815u, var_3)), _wgslsmith_div_vec2_u32(u_input.d.yz, max(var_0.zy, u_input.c.yw))), true));
}

