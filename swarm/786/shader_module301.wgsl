struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(729f, -921f, -365f), vec3<f32>(-1050f, 243f, -1541f), vec3<f32>(161f, 1000f, 1105f), vec3<f32>(-883f, 684f, 1133f));

var<private> global1: array<i32, 4>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec4<bool>(false, false, true, false))), vec3<bool>(true, any(vec4<bool>(false, false, false, true)), all(vec2<bool>(false, false)))), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true))), select(vec3<bool>(true, true, true), vec3<bool>(arg_1.b.x >= 82724u, true, select(true, false, false)), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), true), true);
    var var_1 = arg_1.b.xx;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(228f, 1061f, 103f), vec3<f32>(-272f, -1001f, 478f)))))))))));
    let var_3 = _wgslsmith_mod_vec2_u32(arg_1.b.wx, ~(~abs(u_input.d.zx)));
    var var_4 = !(!(!select(!vec4<bool>(true, var_0.x, true, false), !vec4<bool>(var_0.x, true, var_0.x, false), all(var_0.zx))));
    return _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(firstTrailingBit(u_input.d ^ vec4<u32>(16720u, 1u, 1u, u_input.d.x)), vec4<u32>(min(var_1.x, u_input.a), 59771u, u_input.d.x, _wgslsmith_mod_u32(1u, u_input.a))), ~(u_input.d | _wgslsmith_sub_vec4_u32(vec4<u32>(42851u, 0u, 44011u, 43243u), arg_1.b)));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    global1 = array<i32, 4>();
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    var var_0 = ~max(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 4294967295u, 1u), func_3(Struct_1(1u, vec4<u32>(u_input.a, 0u, 1u, 4294967295u)), Struct_1(0u, u_input.d), u_input.c, arg_0)), ~(~u_input.d)), u_input.d);
    var var_1 = ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(10936u, var_0.x) & _wgslsmith_add_u32(4294967295u, u_input.b), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(42911u, 0u), u_input.d.xw))) >= _wgslsmith_div_u32(0u, var_0.x);
    return Struct_1(_wgslsmith_add_u32(~_wgslsmith_mult_u32(u_input.d.x | 0u, u_input.d.x >> (38478u % 32u)), _wgslsmith_sub_u32(abs(_wgslsmith_clamp_u32(0u, var_0.x, 26102u)), ~_wgslsmith_mod_u32(39069u, var_0.x))), ~vec4<u32>(~_wgslsmith_div_u32(var_0.x, 13006u), 30142u, func_3(Struct_1(4294967295u, vec4<u32>(1u, 0u, 1u, 4294967295u)), Struct_1(37781u, u_input.d), 1i, _wgslsmith_sub_vec2_i32(arg_0, arg_0)).x, var_0.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<vec3<f32>, 4>();
    global1 = array<i32, 4>();
    return 4294967295u;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(u_input.d.x, u_input.d);
    var_0 = Struct_1(58643u | _wgslsmith_clamp_u32(42169u, 0u, func_4(vec4<bool>(true, true, true, true), func_2(vec2<i32>(u_input.c, 39366i), 1108f, vec4<i32>(-17112i, 2147483647i, 0i, 2147483647i), 1757f), func_2(vec2<i32>(-1i, 7429i), -2234f, vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.d.x, 4u)], u_input.c, 1i), -1056f))), ~vec4<u32>(var_0.b.x, ~_wgslsmith_mod_u32(var_0.b.x, u_input.d.x), abs(0u >> (u_input.d.x % 32u)), 1u));
    let var_1 = false;
    var_0 = Struct_1(4294967295u, _wgslsmith_mod_vec4_u32(var_0.b, u_input.d));
    let var_2 = ~(global1[_wgslsmith_index_u32(~56416u, 4u)] | reverseBits(1i));
    return Struct_1(var_0.a, min(vec4<u32>(u_input.b, var_0.a, u_input.a, var_0.b.x), _wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(abs(24071u), ~4294967295u, 0u, max(var_0.b.x, 4294967295u)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    global0 = array<vec3<f32>, 4>();
    var var_0 = vec4<u32>(1u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(69514u, arg_1.x))), abs(~(~arg_0.b.x)), countOneBits(~u_input.d.x)) | vec4<u32>(u_input.b, ~24039u, ~min(2808u, 0u >> (arg_1.x % 32u)), reverseBits(func_3(Struct_1(4294967295u, vec4<u32>(1u, arg_0.b.x, arg_1.x, 1u)), Struct_1(arg_0.b.x, arg_0.b), u_input.c, vec2<i32>(global1[_wgslsmith_index_u32(33386u, 4u)], -2147483647i)).x) ^ 1u);
    let var_1 = -(~vec4<i32>(2355i, 2147483647i, i32(-1i) * -1i, u_input.c)) | vec4<i32>(countOneBits(u_input.c | abs(-17481i)), -6133i, ~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 4u)]) & reverseBits(vec2<i32>(u_input.c, 35560i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(0u, 4u)], u_input.c), vec2<i32>(33182i, global1[_wgslsmith_index_u32(4294967295u, 4u)])), abs(1i))));
    global1 = array<i32, 4>();
    let var_2 = ~u_input.d.yy;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_i32(~vec3<i32>(16027i, -1i, -(~u_input.c)), ~reverseBits(firstLeadingBit(vec3<i32>(23540i, 2147483647i, 7622i) | vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)], 10091i))));
    let var_1 = func_5(func_1(), u_input.d.wwy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-3009f))) + _wgslsmith_f_op_f32(f32(-1f) * -1058f)));
    var var_2 = func_5(var_1, vec3<u32>(func_1().a, ~var_1.a, ~18199u), 1153f);
    var var_3 = firstTrailingBit(-28696i) ^ _wgslsmith_clamp_i32(-(1i | -var_0.x), -53103i ^ max(u_input.c, var_0.x), 6767i);
    global1 = array<i32, 4>();
    let var_4 = func_5(var_1, abs(vec3<u32>(countOneBits(118512u), firstTrailingBit(_wgslsmith_clamp_u32(u_input.a, u_input.b, var_1.a)), ~u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-262f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(680f * 444f), _wgslsmith_f_op_f32(f32(-1f) * -292f), all(vec2<bool>(false, true)))))));
    global0 = array<vec3<f32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(-574f);
}

