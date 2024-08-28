struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    let var_0 = arg_1.a;
    global0 = array<Struct_3, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a, -464f, var_0.a, -986f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.a, -1166f, 1064f, arg_1.a.a), vec4<f32>(-1068f, -551f, var_0.a, arg_1.a.a), false)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a, -484f, arg_1.a.a, -612f) * vec4<f32>(-772f, var_0.a, 388f, arg_2.a.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a, _wgslsmith_f_op_f32(-var_0.a), 355f, _wgslsmith_f_op_f32(floor(-992f)))), any(select(arg_0.a.c, !arg_1.a.c, !arg_0.a.c)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1000f, 256f), arg_1.a.a, _wgslsmith_f_op_f32(-var_0.a), 560f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(879f, var_0.a, arg_2.a.a, 1940f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(274f, arg_1.a.a, var_0.a, arg_2.a.a))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) - arg_1.a.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -175f), var_1.x, var_1.x));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_2.a.a))))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~11147u, 0u, 0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4725u), vec2<u32>(1u, 1u))) << (~83592u % 32u));
    let var_1 = ~(-2147483647i);
    let var_2 = select(vec2<u32>(~_wgslsmith_div_u32(~0u, ~82383u), abs(select(countOneBits(3979u), 4294967295u, all(arg_2.a.c)))), vec2<u32>(70851u, 1u), arg_1.d);
    var_0 = ~var_2.x;
    var var_3 = true;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1070f, arg_0, arg_0))), arg_3, arg_1.c))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.x)))), arg_3.x, -1419f));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * -299f));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-319f)) + _wgslsmith_f_op_f32(-var_0)), arg_1, Struct_2(Struct_1(1452f, u_input.a.x, vec3<bool>(arg_1.c.x, false, arg_1.c.x), false)), vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(366f, arg_1.b, vec3<bool>(true, true, true), arg_2.x)), Struct_3(Struct_1(arg_1.a, 0i, arg_1.c, false), vec4<u32>(4294967295u, 4294967295u, 127499u, 15201u), u_input.a.x), Struct_3(arg_1, vec4<u32>(1u, 4294967295u, 79892u, 1u), arg_1.b))), _wgslsmith_f_op_f32(-274f * arg_1.a), _wgslsmith_f_op_f32(min(var_0, arg_1.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(arg_1.a + -1835f), arg_1.a)))));
    var var_2 = _wgslsmith_add_i32(arg_0.x, u_input.a.x);
    let var_3 = any(select(select(!(!vec3<bool>(arg_1.c.x, arg_1.d, false)), select(select(arg_1.c, arg_1.c, arg_2.x), select(arg_1.c, arg_1.c, arg_1.d), arg_2.x), arg_1.c), vec3<bool>(arg_1.d, _wgslsmith_f_op_f32(-var_1.x) >= _wgslsmith_f_op_f32(floor(arg_1.a)), !arg_1.d), false));
    var_2 = countOneBits(1i);
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_3(Struct_1(-525f, u_input.a.x, !(!(!arg_0.c)), true), select(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(!arg_0.c.x, !arg_0.d, true, select(true, arg_0.d, true)), select(select(vec4<bool>(true, true, false, arg_0.d), vec4<bool>(false, false, arg_0.d, true), arg_0.d), vec4<bool>(true, true, false, false), any(vec4<bool>(arg_0.d, arg_0.c.x, false, arg_0.c.x))), vec4<bool>(false, false && arg_0.d, all(vec4<bool>(arg_0.d, true, arg_0.d, false)), !arg_0.c.x))), _wgslsmith_mult_i32(~u_input.a.x, u_input.a.x));
    global0 = array<Struct_3, 7>();
    let var_1 = var_0.b.x;
    let var_2 = _wgslsmith_add_vec3_u32(select(var_0.b.zwz, vec3<u32>(_wgslsmith_clamp_u32(~var_1, select(0u, var_1, true), var_1), ~(~var_0.b.x), ~(~var_0.b.x)), var_0.a.c), vec3<u32>(32796u, var_1, ~(~firstTrailingBit(29792u))));
    let var_3 = _wgslsmith_f_op_f32(select(var_0.a.a, _wgslsmith_f_op_f32(select(1407f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1325f + _wgslsmith_f_op_f32(max(var_0.a.a, -1000f))) + arg_0.a), !any(func_2(vec3<i32>(u_input.a.x, var_0.a.b, 37006i), Struct_1(-531f, 30394i, var_0.a.c, arg_0.c.x), var_0.a.c.zy).c.yx))), func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_0.a.b, 1i), 2547i, -1i), abs(select(vec3<i32>(4432i, -2147483647i, -13257i), vec3<i32>(1i, 4867i, 48809i), vec3<bool>(false, var_0.a.c.x, true)))), func_2(abs(~vec3<i32>(2147483647i, var_0.c, arg_0.b)), Struct_1(673f, 50100i, arg_0.c, true), !vec2<bool>(false, arg_0.c.x)), var_0.a.c.yz).d));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), 227f);
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_5(func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(54761i, 2147483647i, u_input.a.x)), Struct_1(1000f, u_input.a.x, vec3<bool>(true, false, true), false), vec2<bool>(true, true)))))), -1i, vec3<bool>(false, all(vec3<bool>(select(true, false, true), true, true)), !(!func_2(vec3<i32>(-2622i, u_input.a.x, u_input.a.x), Struct_1(816f, u_input.a.x, vec3<bool>(true, false, true), false), vec2<bool>(true, false)).c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(select(-1624f, _wgslsmith_f_op_f32(-2562f * -1207f), -20214i >= u_input.a.x)))) > func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -36164i), vec3<i32>(2147483647i, u_input.a.x, -1i) ^ vec3<i32>(43769i, u_input.a.x, -1i)), Struct_1(_wgslsmith_div_f32(1969f, -1000f), -2311i, vec3<bool>(true, true, true), false), vec2<bool>(true, true)).a);
    let var_1 = var_0.d;
    return Struct_3(Struct_1(2179f, u_input.a.x, !(!vec3<bool>(var_0.c.x, false, var_0.d)), var_0.d), vec4<u32>(reverseBits(1u), 6885u, 1u, 19134u), 34334i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -7603i;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -743f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(145f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-489f, -717f)))));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(43729u, 1u, 2997u), 0u);
    var var_3 = func_1();
    let var_4 = select(-1i, 25971i, !(!(!select(false, var_3.a.d, true))));
    var_3 = global0[_wgslsmith_index_u32(57653u, 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_i32(select(vec4<i32>(-1i, 1i, -8578i, var_4), _wgslsmith_add_vec4_i32(vec4<i32>(var_4, u_input.a.x, u_input.a.x, -1i), vec4<i32>(-2147483647i, 11684i, var_4, 1i)), any(vec2<bool>(false, var_3.a.d))), firstLeadingBit(vec4<i32>(29289i, -2697i, var_0, var_4))), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-514f, -1192f)))), countOneBits(min(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(37937u, 4294967295u), var_3.b.xx, var_3.b.xz)), vec2<u32>(firstLeadingBit(1u), _wgslsmith_sub_u32(var_3.b.x, var_3.b.x)))));
}

