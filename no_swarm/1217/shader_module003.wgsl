struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(627f, -405f, -2392f, 123f), vec4<f32>(-599f, 133f, -1286f, 208f), vec4<f32>(1240f, 176f, -1000f, -1509f), vec4<f32>(1927f, -282f, 208f, 1618f), vec4<f32>(2047f, -1813f, 3128f, 496f), vec4<f32>(249f, 214f, -2847f, 1457f), vec4<f32>(-1094f, -769f, -586f, 1217f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = array<vec4<f32>, 7>();
    var var_0 = Struct_1(vec2<bool>(select(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), false, true || all(vec2<bool>(true, true))), any(vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, false, all(vec3<bool>(true, true, false)), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, false)))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), firstLeadingBit(countOneBits(u_input.a)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), true, vec2<i32>(abs(1i), ~(1i ^ -u_input.a.x)));
    var var_1 = Struct_1(select(!select(vec2<bool>(true, true), vec2<bool>(var_0.a.x, true), true), vec2<bool>(var_0.d, var_0.b.x), select(var_0.b.yx, vec2<bool>(true, true), 1i == u_input.a.x)), select(!select(var_0.b, select(var_0.b, vec4<bool>(var_0.a.x, false, false, var_0.b.x), true), select(var_0.b, vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), var_0.b.x)), var_0.b, !(!var_0.a.x)), u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) * _wgslsmith_f_op_f32(round(-667f))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -544f))) + -940f), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), var_0.c, var_0.e) & vec2<i32>(-10493i, u_input.a.x));
    let var_2 = var_1.b.xyy;
    var_0 = Struct_1(!var_0.b.wx, !var_0.b, vec2<i32>(-_wgslsmith_add_i32(-u_input.a.x, _wgslsmith_mult_i32(var_0.c.x, u_input.a.x)), 0i), (u_input.a.x & (countOneBits(9598i) | (43531i ^ var_1.c.x))) >= -firstLeadingBit(var_0.c.x | -24308i), u_input.a);
    return _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(24053i, var_1.e.x), abs(1i), 0i, -1i), vec4<i32>(i32(-1i) * -2147483647i, -2147483647i, var_1.e.x ^ u_input.a.x, var_1.c.x)), 1i);
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<bool>(false, !(-2147483647i > ~func_3()), true);
    var var_1 = 1u;
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    var var_2 = Struct_2(Struct_1(!vec2<bool>(var_0.x, true), !(!(!vec4<bool>(true, true, true, var_0.x))), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-2147483647i, -5831i)), _wgslsmith_clamp_vec2_i32(select(u_input.a, vec2<i32>(-1i, 0i), false), abs(u_input.a), vec2<i32>(-1i, -37806i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -213f, true)) - 1932f) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-273f, 339f) * 337f), ~firstLeadingBit(vec2<i32>(u_input.a.x, -1i))));
    return Struct_1(select(!select(var_2.a.a, var_2.a.a, any(var_2.a.b.wyy)), var_2.a.b.yz, !(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false), false))), !vec4<bool>(var_0.x, false, _wgslsmith_div_f32(249f, 1386f) <= _wgslsmith_f_op_f32(trunc(526f)), !(!var_2.a.d)), _wgslsmith_clamp_vec2_i32(var_2.a.e, max(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), u_input.a), u_input.a), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a)) & _wgslsmith_div_vec2_i32(~abs(vec2<i32>(-2147483647i, 5275i)), vec2<i32>(1i, 1i)), true, vec2<i32>(-38597i, ~func_3()));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = vec2<bool>(true, true);
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    var var_1 = vec3<i32>(u_input.a.x, u_input.a.x, ~u_input.a.x ^ -4576i);
    return Struct_2(func_2());
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32) -> StorageBuffer {
    let var_0 = arg_0.a.c.x;
    var var_1 = 14683u;
    var_1 = min(~arg_2, 0u);
    var var_2 = Struct_1(vec2<bool>(true, true), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(arg_2, 7u)] * global0[_wgslsmith_index_u32(arg_2, 7u)]))) + vec4<f32>(-400f, _wgslsmith_div_f32(1000f, 2104f), 473f, _wgslsmith_f_op_f32(f32(-1f) * -910f))), vec2<u32>(arg_2, 49047u), 13307u).a.b, ~max(select(_wgslsmith_mult_vec2_i32(vec2<i32>(-2792i, -67421i), vec2<i32>(-1i, var_0)), u_input.a >> (vec2<u32>(1u, 11007u) % vec2<u32>(32u)), true), vec2<i32>(~var_0, ~var_0)), false, ~(~u_input.a) << (vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_2, 19970u), arg_2 >> (18044u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 46563u, 0u, arg_2), vec4<u32>(0u, 15695u, 7259u, 5710u))) % vec2<u32>(32u)));
    let var_3 = Struct_1(select(arg_0.a.b.xy, arg_0.a.b.zw, false), vec4<bool>(arg_1.x, all(!vec2<bool>(var_2.a.x, true)), var_2.d, any(!vec3<bool>(arg_0.a.a.x, true, arg_1.x))), var_2.c, !any(arg_1), ~vec2<i32>(var_0 | var_0, abs(~arg_0.a.c.x)));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1672f * 908f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1303f)))) * _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(298f, 1317f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1988f * 1236f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(476f + -283f))), _wgslsmith_div_f32(484f, _wgslsmith_f_op_f32(-795f + 1692f)))), _wgslsmith_f_op_vec4_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2, arg_2), 7u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    let x = u_input.a;
    s_output = func_4(func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1139f), _wgslsmith_f_op_f32(f32(-1f) * -920f), _wgslsmith_f_op_f32(-202f * _wgslsmith_div_f32(1671f, -888f)), 952f), select(vec2<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, 76675u), 1u), ~abs(vec2<u32>(4294967295u, 22629u)), false), ~_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(4294967295u, 9670u, 1u))), !func_2().b, ~countOneBits(1u));
}

