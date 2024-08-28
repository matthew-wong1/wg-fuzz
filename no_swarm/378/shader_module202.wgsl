struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: u32 = 0u;

var<private> global2: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(5199i, i32(-2147483648), -1i, 0i), vec4<i32>(1i, -1i, 1i, 1i), vec4<i32>(-9891i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, -12318i, -2039i, 33403i), vec4<i32>(-1i, -15613i, 51038i, 7263i), vec4<i32>(2147483647i, 4127i, -34420i, -49980i), vec4<i32>(1i, 0i, 18481i, 0i), vec4<i32>(43662i, -1i, 33286i, -24522i), vec4<i32>(5275i, 1i, -71575i, 1i), vec4<i32>(583i, -101339i, -22450i, 1i), vec4<i32>(-27350i, -4481i, 1i, 2147483647i), vec4<i32>(1i, i32(-2147483648), 23192i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), -21337i, -1i), vec4<i32>(2147483647i, 1i, 0i, i32(-2147483648)), vec4<i32>(1i, 0i, -31900i, 2147483647i), vec4<i32>(-25422i, -13827i, -12478i, -9304i), vec4<i32>(-1423i, -1i, 11879i, -1i), vec4<i32>(i32(-2147483648), 0i, -13063i, -29732i), vec4<i32>(1i, -33505i, 62832i, 2147483647i), vec4<i32>(-9374i, -1i, i32(-2147483648), 1i), vec4<i32>(-1i, 40896i, -1i, i32(-2147483648)), vec4<i32>(42554i, 0i, 0i, -11173i), vec4<i32>(2147483647i, -32065i, -31350i, 1i));

var<private> global3: vec3<f32> = vec3<f32>(-763f, 591f, -377f);

var<private> global4: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(0i, 1i), vec2<i32>(8582i, -8182i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: bool) -> vec3<f32> {
    var var_0 = ~u_input.d.xw;
    let var_1 = global3.yz;
    var_0 = max(~(~(~(~vec2<u32>(792u, 1u)))), ~u_input.d.zy);
    let var_2 = vec2<u32>(u_input.c.x, u_input.b);
    global4 = array<vec2<i32>, 2>();
    return vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - 1472f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: i32) -> u32 {
    let var_0 = vec3<u32>(arg_1, arg_1, arg_1);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(true, true), vec3<f32>(global3.x, 368f, -109f), !arg_0)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1414f, global3.x, 264f))))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -161f, -1000f) - vec3<f32>(383f, -339f, 644f)), vec3<f32>(global3.x, global3.x, global3.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x))))));
    var var_2 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(127465u, 20u)]), select(vec2<bool>(false, false), vec2<bool>(arg_0, global3.x >= _wgslsmith_f_op_f32(abs(639f))), !(u_input.a.x < arg_2)));
    var var_3 = ~max(var_0.yz, ~(~u_input.c.yx));
    var var_4 = Struct_3(var_2.a, var_2.b);
    return 4294967295u;
}

fn func_1(arg_0: bool) -> Struct_2 {
    global1 = _wgslsmith_add_u32((_wgslsmith_mod_u32(~u_input.b, 4294967295u) & (u_input.b ^ ~4294967295u)) | countOneBits(~u_input.d.x), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 0u), abs(vec2<u32>(81980u, 21898u))), _wgslsmith_add_u32(~(u_input.d.x ^ 17618u), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, u_input.b), 34058u)), _wgslsmith_dot_vec2_u32(vec2<u32>(func_2(false, 12556u, u_input.a.x), ~u_input.c.x), ~firstTrailingBit(u_input.d.yw))));
    var var_0 = Struct_4(u_input.d, global4[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(u_input.d.x, u_input.d.x ^ 4294967295u)), 2u)], Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-global3.x), u_input.a.x, 31552i, u_input.c.x)), !vec2<bool>(true, arg_0)), global3.x);
    let var_1 = _wgslsmith_clamp_vec2_u32(select(((var_0.a.ww >> (u_input.c.zz % vec2<u32>(32u))) | _wgslsmith_sub_vec2_u32(var_0.a.ww, u_input.d.zx)) << (var_0.a.zz % vec2<u32>(32u)), var_0.a.yz, true), ~vec2<u32>(4294967295u, var_0.a.x) & vec2<u32>(~var_0.a.x, 17128u), u_input.c.zx);
    let var_2 = Struct_4(~firstTrailingBit(u_input.d), u_input.a.yy, Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1560f), var_0.c.a.a.b, var_0.c.a.a.c, ~0u)), !(!(!var_0.c.b))), global3.x);
    return var_2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(global3.x * func_1(false).a.a), 732f, 824f);
    var var_1 = countOneBits(u_input.a.yx);
    global1 = ~_wgslsmith_mult_u32(firstLeadingBit(firstLeadingBit(_wgslsmith_div_u32(var_0.a.d, var_0.a.d))), var_0.a.d);
    var var_2 = Struct_4(u_input.d, vec2<i32>(var_0.a.b ^ ~select(var_1.x, 41165i, false), 13098i & var_0.a.c), Struct_3(var_0, !select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.a, var_0.a.a, global3.x)))), any(vec3<bool>(false, true, true)))).x)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-532f)), _wgslsmith_f_op_f32(-global3.x))) * -331f)));
}

