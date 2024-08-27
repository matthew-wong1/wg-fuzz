struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(216f, -1000f, 228f, 1237f), vec4<f32>(1521f, 1000f, -1174f, 1026f), vec4<f32>(1633f, 1415f, -348f, 357f), vec4<f32>(-341f, -1721f, 1396f, -645f), vec4<f32>(-694f, -376f, 1395f, -935f), vec4<f32>(1184f, -195f, 1033f, -902f), vec4<f32>(469f, -1975f, -235f, -1630f), vec4<f32>(-1005f, -601f, -912f, -861f));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<u32>, arg_3: bool) -> u32 {
    var var_0 = Struct_2(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, global1.a.x, 46547u), vec3<u32>(global1.a.x, 0u, 0u)), vec3<u32>(arg_2.x, arg_2.x, 0u)), arg_2.x), ~vec2<u32>(0u, 1u >> (~global1.a.x % 32u)), vec4<bool>(all(!vec2<bool>(false, arg_3)), arg_1 && arg_1, select(false, !arg_3, !arg_3 || (arg_3 & arg_1)), !(!(true && arg_3))), true, select(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(1u, 64372u, global1.a.x, arg_2.x) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, 1i), vec4<i32>(0i, 0i, -1i, u_input.a.x)), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, 35558i), vec4<i32>(u_input.a.x, u_input.a.x, 30719i, -42260i)), -29866i, reverseBits(u_input.a.x))), vec4<i32>(u_input.a.x, -_wgslsmith_mod_i32(2147483647i, u_input.a.x), u_input.a.x, abs(-3669i)), !select(!vec4<bool>(false, arg_1, true, true), vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, arg_3, arg_1))));
    global1 = Struct_1(min(~vec2<u32>(~global1.a.x, 4294967295u), vec2<u32>(abs(~11330u), ~abs(31238u))), -889f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - global1.b)))) + global1.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(4294967295u, 8u)] - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, 700f, global1.b)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.a, 0u, arg_2.x), 8u)]))))));
    let var_3 = var_0.c.wwy;
    return arg_2.x & (var_0.a ^ ~(~arg_2.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: i32) -> vec4<i32> {
    var var_0 = vec2<i32>(-(u_input.a.x & (0i << (abs(1u) % 32u))), u_input.a.x);
    global0 = array<vec4<f32>, 8>();
    global0 = array<vec4<f32>, 8>();
    global1 = global2[_wgslsmith_index_u32(0u, 11u)];
    var var_1 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(max(func_3(arg_1.x, true, global1.a, false), arg_0.x >> (1u % 32u)), _wgslsmith_div_u32(0u, 1u) | global1.a.x), max((arg_0 << (arg_0 % vec2<u32>(32u))) >> ((arg_0 | vec2<u32>(arg_0.x, global1.a.x)) % vec2<u32>(32u)), arg_0)), global1.b);
    return _wgslsmith_mult_vec4_i32(reverseBits(~abs(firstTrailingBit(vec4<i32>(1i, arg_3, 2147483647i, -1i)))), firstTrailingBit(select(vec4<i32>(arg_3, arg_3, 2147483647i, 2621i) >> (vec4<u32>(20027u, 3820u, arg_0.x, var_1.a.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, arg_3, u_input.a.x, u_input.a.x), vec4<i32>(-27054i, 29718i, u_input.a.x, arg_3)), vec4<i32>(u_input.a.x, -6560i, arg_3, arg_3) << (vec4<u32>(1u, global1.a.x, var_1.a.x, 0u) % vec4<u32>(32u))), vec4<bool>(arg_2.x, any(arg_2.wx), arg_0.x == global1.a.x, all(arg_2.xx)))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec3<bool>(arg_0.d, arg_0.c.x, true);
    var var_1 = _wgslsmith_f_op_f32(-global1.b);
    global2 = array<Struct_1, 11>();
    let var_2 = arg_0;
    var var_3 = !((-(7350i | var_2.e.x) ^ abs(1i)) > u_input.a.x);
    return Struct_2(_wgslsmith_mult_u32(abs(1u), 13651u), vec2<u32>(0u, 1u), vec4<bool>(!((false || arg_0.c.x) && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1026f * global1.b)) < _wgslsmith_f_op_f32(sign(-1000f)), all(arg_0.c), var_2.d), all(vec3<bool>(arg_0.c.x, false, true)), func_2(~(~var_2.b) | vec2<u32>(var_2.a, _wgslsmith_sub_u32(var_2.b.x, 4294967295u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - global1.b) - -1229f), global1.b, global1.b), select(select(!vec4<bool>(true, false, var_2.c.x, var_2.c.x), var_2.c, true), select(vec4<bool>(arg_0.d, true, true, var_2.d), vec4<bool>(var_0.x, var_2.c.x, false, var_0.x), vec4<bool>(var_2.c.x, arg_0.c.x, true, arg_0.c.x)), var_0.x), var_2.e.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2, arg_3: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_3, arg_3 | global1.a), _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, firstLeadingBit(4294967295u)), ~countOneBits(global1.a.x)), ~arg_1), countOneBits(select(select(~vec3<u32>(1u, arg_2.b.x, arg_1), ~vec3<u32>(global1.a.x, global1.a.x, 6812u), !arg_2.c.xzw), vec3<u32>(~4294967295u, select(arg_3.x, arg_1, false), 1u), arg_2.c.xwx)));
    var var_1 = func_1(arg_2);
    let var_2 = var_1.c;
    let var_3 = arg_2.c;
    return -360f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1177f, _wgslsmith_f_op_f32(global1.b - global1.b))), global1.b, _wgslsmith_div_f32(-988f, -1157f))), ~global1.a.x, func_1(Struct_2(~_wgslsmith_add_u32(global1.a.x, global1.a.x), abs(global1.a), vec4<bool>(true, true, true, true), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), ~(~vec4<i32>(u_input.a.x, -37347i, u_input.a.x, -2147483647i)))), func_1(func_1(Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec4<u32>(global1.a.x, global1.a.x, 13410u, global1.a.x)), _wgslsmith_div_vec2_u32(global1.a, global1.a), vec4<bool>(false, false, false, false), false, -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))).b));
    global2 = array<Struct_1, 11>();
    global2 = array<Struct_1, 11>();
    var var_1 = select(select(vec3<u32>(global1.a.x, _wgslsmith_sub_u32(~global1.a.x, global1.a.x), 0u), ~reverseBits(reverseBits(vec3<u32>(21417u, global1.a.x, 4294967295u))), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), ~(~firstTrailingBit(vec3<u32>(0u, global1.a.x, global1.a.x) & vec3<u32>(global1.a.x, global1.a.x, 47653u))), vec3<bool>(true, true, all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))));
    let var_2 = ~min(var_1.x, global1.a.x) ^ reverseBits(~var_1.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1425f - _wgslsmith_f_op_f32(step(global1.b, var_0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-682f, global1.b)) * -301f)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - var_0) - _wgslsmith_f_op_f32(sign(global1.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + 1039f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(558f, 866f)) * var_0), _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(floor(1914f))), true)))), 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec4<u32>(select(2172u, 17342u, false) ^ ~1u, var_1.x, (var_2 | var_2) & 18374u, var_1.x) | reverseBits(vec4<u32>(~78227u, max(var_2, 4294967295u), ~103935u, _wgslsmith_mult_u32(0u, var_2))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -311f))))), u_input.a.x);
}

