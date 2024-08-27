struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 6>;

var<private> global1: array<vec3<bool>, 13>;

var<private> global2: f32 = 947f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_3(u_input.b);
    let var_1 = -2147483647i;
    let var_2 = 833f;
    let var_3 = u_input.a.x;
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f + var_2), _wgslsmith_f_op_f32(-var_2), var_2, _wgslsmith_f_op_f32(-var_2)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-900f, var_2, -152f, -2980f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(905f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -640f) + -1481f), var_2, -323f)));
    return _wgslsmith_f_op_f32(-var_2);
}

fn func_2() -> Struct_4 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-963f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-877f)), _wgslsmith_f_op_f32(f32(-1f) * -146f))))), _wgslsmith_f_op_f32(-1439f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec4<i32>(1i, -2147483647i, -26256i, -1i), Struct_1(false, u_input.a.zw), Struct_1(true, u_input.a.wx), Struct_1(false, u_input.a.wz))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(434f + 1000f))) * _wgslsmith_f_op_f32(f32(-1f) * -1594f))));
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(firstLeadingBit(-32187i), 0i, ~(-2147483647i), ~(~_wgslsmith_add_i32(0i, 2147483647i))), -min(_wgslsmith_div_vec4_i32(~vec4<i32>(60905i, 58678i, -1i, -5715i), firstLeadingBit(vec4<i32>(1i, -1i, 2147483647i, 2147483647i))), ~reverseBits(vec4<i32>(39500i, -2147483647i, 2147483647i, 2147483647i))));
    global1 = array<vec3<bool>, 13>();
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(558f))))), -489f, var_0.x, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), false))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f), var_0.x), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1487f))), _wgslsmith_f_op_f32(f32(-1f) * -1616f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-var_0.x))) * 1000f)));
    var var_3 = 0i;
    return Struct_4(!vec2<bool>(true, !any(vec2<bool>(false, true))), 874f, countOneBits(var_1.zx));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2();
    global1 = array<vec3<bool>, 13>();
    global0 = array<vec2<f32>, 6>();
    global2 = -810f;
    let var_1 = vec4<u32>(u_input.a.x, ~((44669u << (1u % 32u)) >> (0u % 32u)), _wgslsmith_add_u32(~(0u >> (_wgslsmith_sub_u32(u_input.a.x, 4294967295u) % 32u)), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b.x, 34987u), 0u)), u_input.a.x);
    return Struct_4(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b), -139f)) - 464f)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-_wgslsmith_mult_i32(var_0.c.x, var_0.c.x), -_wgslsmith_add_i32(-1i, var_0.c.x)), _wgslsmith_sub_vec2_i32(var_0.c, vec2<i32>(var_0.c.x, var_0.c.x) << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))), var_0.c));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = func_1().b;
    var var_1 = Struct_3(~select(abs(vec3<u32>(arg_2.b.x, 1u, u_input.b.x)), vec3<u32>(u_input.a.x, arg_2.b.x, arg_2.b.x), !global1[_wgslsmith_index_u32(arg_2.b.x, 13u)]) ^ vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 0u | u_input.a.x), ~69881u >> (0u % 32u), arg_2.b.x ^ ~u_input.a.x));
    let var_2 = Struct_2(arg_0, arg_2, arg_2, arg_2);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(522f, var_0)))))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(func_2().b, arg_1.b))));
    global1 = array<vec3<bool>, 13>();
    return vec3<bool>(!(4509u > _wgslsmith_clamp_u32(5508u, ~2956u, var_2.d.b.x)), false, !arg_1.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    global2 = -981f;
    var var_0 = Struct_3(vec3<u32>(1u, arg_0.b.x, abs(4294967295u)) ^ vec3<u32>(arg_0.b.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(9615u, u_input.a.x, u_input.b.x)), u_input.b), _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.b.x, 47026u, 66477u), _wgslsmith_div_u32(u_input.a.x, 17328u))));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(689f, 1370f, -1087f, 214f) * vec4<f32>(638f, -1839f, -1000f, -701f))))))));
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, -285f, var_2.x, -1263f), vec4<f32>(var_2.x, var_2.x, 512f, var_2.x))) - vec4<f32>(1000f, var_2.x, -100f, var_2.x))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, -186f), vec4<f32>(1024f, 1029f, var_2.x, var_2.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-934f, 1000f, 1455f, var_2.x))))))));
    return Struct_2(abs(~vec4<i32>(countOneBits(-1i), 1i, countOneBits(3950i), -1i)), arg_0, arg_0, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 13>();
    var var_0 = func_5(Struct_1(true & ((1u ^ u_input.b.x) == 58832u), u_input.a.zz), !func_4(vec4<i32>(1i, 1i, 1i, 1i), func_1(), Struct_1(any(vec3<bool>(true, false, true)), ~vec2<u32>(u_input.b.x, u_input.a.x))));
    var var_1 = ~(~(~_wgslsmith_mod_vec4_u32(select(u_input.a, u_input.a, vec4<bool>(var_0.d.a, var_0.d.a, false, false)), ~vec4<u32>(109996u, var_0.b.b.x, u_input.a.x, 4294967295u))));
    var var_2 = select(func_1().a.x, any(!vec2<bool>(var_0.c.a, var_0.b.a)), any(select(global1[_wgslsmith_index_u32(var_0.c.b.x, 13u)], select(global1[_wgslsmith_index_u32(1u, 13u)], vec3<bool>(var_0.d.a, true, var_0.d.a), var_0.b.a), all(func_2().a))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_2(~var_0.a, var_0.c, var_0.b, var_0.d))))), -1249f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(854f * -1738f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1010f, -1445f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1655f + -1000f))), !(!var_0.b.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f)))));
    let var_4 = var_3.x;
    var_1 = countOneBits(reverseBits(vec4<u32>(1u, ~func_5(Struct_1(var_0.b.a, vec2<u32>(u_input.b.x, var_1.x)), vec3<bool>(var_0.b.a, false, var_0.c.a)).c.b.x, ~(~var_0.c.b.x), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, var_0.b.b.x, 7780u)), var_1.yyz & var_1.wxz))));
    var var_5 = vec4<bool>(var_0.d.a, false && var_0.d.a, true, func_1().a.x);
    var var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, var_6.b, 66091u, var_0.c.b, func_1().b);
}

