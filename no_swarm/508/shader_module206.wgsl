struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_3,
    d: i32,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_mult_u32(~select(reverseBits(1u), firstLeadingBit(59629u), -u_input.a.x != (u_input.a.x | u_input.a.x)), ~(~(~min(35448u, 1u))));
    let var_1 = abs(vec4<u32>(66904u, var_0, var_0, 4294967295u));
    global0 = array<vec4<f32>, 5>();
    var var_2 = ~u_input.a.x;
    global0 = array<vec4<f32>, 5>();
    return Struct_3(Struct_1(-2147483647i, select(vec2<bool>(true, true), !(!arg_0.yy), arg_1 | select(arg_0.x, arg_0.x, arg_0.x))), !vec3<bool>(any(vec4<bool>(true, false, true, false)), true, !arg_0.x), ~_wgslsmith_sub_vec4_u32(var_1, vec4<u32>(var_1.x, ~var_0, var_0, ~4294967295u)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-19166i, u_input.a.x), u_input.a), u_input.a.x), -2147483647i));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> i32 {
    global0 = array<vec4<f32>, 5>();
    let var_0 = arg_0.b.b.x;
    var var_1 = arg_0.d.x;
    var var_2 = func_2(!(!vec3<bool>(select(var_0, false, var_0), var_0 | var_0, func_2(vec3<bool>(arg_0.b.b.x, arg_0.b.b.x, true), true).a.b.x)), (-(~arg_0.d.x) & _wgslsmith_mod_i32(-20309i, _wgslsmith_add_i32(1i, -2147483647i))) > 45112i);
    let var_3 = firstLeadingBit(4294967295u) >> (var_2.c.x % 32u);
    return reverseBits(abs(max(_wgslsmith_div_i32(~arg_0.d.x, reverseBits(222i)), i32(-1i) * -14772i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = func_2(!vec3<bool>(arg_2.b.x, arg_0.x, arg_0.x || arg_0.x), arg_2.b.x);
    let var_1 = arg_2.c.x;
    var var_2 = Struct_4(0i, -(~(~var_0.a.a) & func_3(Struct_2(1244f, Struct_1(-55793i, vec2<bool>(false, true)), vec4<f32>(-2155f, arg_1.x, arg_1.x, 1206f), vec3<i32>(-1i, 1i, -1i)), _wgslsmith_sub_i32(-2147483647i, -2147483647i))), arg_2, min(1i, ~arg_2.d), i32(-1i) * -arg_2.d);
    global0 = array<vec4<f32>, 5>();
    let var_3 = ~42046u;
    return func_2(!(!arg_2.b), false);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_5) -> f32 {
    let var_0 = ~(~(~arg_0.c.c.xxy)) ^ arg_0.c.c.yxz;
    var var_1 = var_0.x;
    var var_2 = arg_2;
    var var_3 = _wgslsmith_mult_vec2_i32(-_wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_1.b, u_input.a.x), ~(~arg_1.a.d.zx), _wgslsmith_clamp_vec2_i32(u_input.a, ~vec2<i32>(0i, 0i), vec2<i32>(arg_0.c.d, -2147483647i) << (arg_0.c.c.zy % vec2<u32>(32u)))), arg_2.a.d.xz);
    var var_4 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(195f * 1065f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2529f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-272f * 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(0i, u_input.a.x, func_1(vec2<bool>(false, true), global0[_wgslsmith_index_u32(30456u, 5u)], Struct_3(Struct_1(u_input.a.x, vec2<bool>(false, true)), vec3<bool>(false, false, true), vec4<u32>(24514u, 58750u, 24968u, 1u), -2147483647i)), abs(-1i), -1i), Struct_5(Struct_2(-1583f, Struct_1(u_input.a.x, vec2<bool>(false, true)), vec4<f32>(1596f, -186f, -743f, 1027f), vec3<i32>(-48839i, -2147483647i, u_input.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), -1000f), Struct_5(Struct_2(259f, Struct_1(u_input.a.x, vec2<bool>(true, true)), vec4<f32>(269f, -524f, -878f, 888f), vec3<i32>(u_input.a.x, 0i, u_input.a.x)), -32674i, _wgslsmith_f_op_f32(1703f - 755f)))) + 285f), -1282f);
    global0 = array<vec4<f32>, 5>();
    global0 = array<vec4<f32>, 5>();
    let var_1 = ~abs(vec4<u32>(1u, 1u, 1u, 1u)) & vec4<u32>(33749u, 4980u >> (firstTrailingBit(1u) % 32u), 19224u, 0u);
    global0 = array<vec4<f32>, 5>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 151f, 430f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 350f) * vec3<f32>(var_0.x, 893f, 2573f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1451f, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1090f, -494f, -1328f) - vec3<f32>(-1623f, var_0.x, 1000f)))) + vec3<f32>(-1279f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(ceil(-1335f))), -472f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(415f, var_0.x, -270f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-927f, var_0.x, 712f), _wgslsmith_f_op_vec3_f32(vec3<f32>(959f, var_0.x, 1141f) - vec3<f32>(1587f, var_0.x, var_0.x)))))));
    let var_3 = !vec3<bool>(~abs(var_1.x) < var_1.x, 1144u != ~abs(var_1.x), func_2(!func_1(vec2<bool>(true, false), global0[_wgslsmith_index_u32(40355u, 5u)], Struct_3(Struct_1(-8294i, vec2<bool>(false, true)), vec3<bool>(true, false, true), var_1, u_input.a.x)).b, all(vec3<bool>(true, true, true))).a.b.x);
    let var_4 = vec2<u32>(~_wgslsmith_mult_u32(~20384u, 1u), var_1.x);
    let var_5 = func_2(func_2(var_3, true).b, true).a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_4.x), var_1.zy);
}

