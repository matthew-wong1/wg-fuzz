struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: i32,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-135f, -838f);

var<private> global1: Struct_1 = Struct_1(0u, true, 711f);

var<private> global2: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(1104f, -314f, -899f, -922f), vec4<f32>(-1000f, -253f, 290f, 972f), vec4<f32>(1546f, 254f, 1207f, 115f), vec4<f32>(-597f, -462f, -1046f, -1572f), vec4<f32>(531f, -554f, -852f, -1334f), vec4<f32>(-1169f, -629f, -312f, -999f), vec4<f32>(-967f, 989f, -669f, -1252f), vec4<f32>(-1372f, 561f, 685f, 1351f), vec4<f32>(-1202f, 1554f, -342f, 1252f), vec4<f32>(-907f, 1000f, 638f, 286f), vec4<f32>(-433f, -1000f, 515f, -429f), vec4<f32>(-1628f, -707f, 1326f, -1579f), vec4<f32>(1000f, 1637f, 1196f, -2233f), vec4<f32>(-1361f, 780f, -189f, 293f), vec4<f32>(349f, -641f, -209f, -1309f), vec4<f32>(397f, -1194f, -1542f, 468f), vec4<f32>(-254f, -1338f, 335f, -783f), vec4<f32>(-584f, 783f, 1053f, 100f), vec4<f32>(-947f, 397f, -735f, 1854f), vec4<f32>(-1343f, -1000f, -1000f, 1540f), vec4<f32>(-273f, -597f, -299f, -2785f), vec4<f32>(-437f, -531f, 1102f, 237f), vec4<f32>(1962f, -270f, 738f, -525f), vec4<f32>(116f, -1540f, -923f, 352f));

var<private> global3: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> vec3<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b.c)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    var var_1 = arg_0.b.b;
    let var_2 = var_1.b || true;
    return arg_1.c;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_5) -> Struct_5 {
    global3 = array<vec4<bool>, 22>();
    var var_0 = Struct_4(vec2<bool>(true, true), Struct_2(vec3<i32>(16754i, min(u_input.d.x, -u_input.d.x), -2147483647i >> ((global1.a & 0u) % 32u)), Struct_1(u_input.b.x, true & all(vec2<bool>(arg_1.b.b, false)), 1000f), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 30037u, arg_1.c, 45229u), vec4<u32>(u_input.b.x, 1u, global1.a, 4294967295u))) | 4294967295u), func_3(Struct_4(select(vec2<bool>(arg_1.b.b, false), !vec2<bool>(global1.b, global1.b), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(arg_1.b.b, arg_1.b.b))), arg_1, !(!vec3<bool>(false, global1.b, arg_1.b.b))), Struct_4(!select(vec2<bool>(global1.b, true), vec2<bool>(true, global1.b), vec2<bool>(arg_1.b.b, global1.b)), Struct_2(u_input.d, arg_1.b, ~u_input.c.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, global1.b), vec3<bool>(true, arg_1.b.b, arg_1.b.b), false), !vec3<bool>(true, global1.b, arg_1.b.b)))));
    let var_1 = Struct_5(vec3<f32>(-650f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.x)))), -581f));
    global1 = arg_1.b;
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1244f, -1000f, _wgslsmith_f_op_f32(-593f - _wgslsmith_div_f32(var_0.b.b.c, 554f))) * var_1.a));
    return Struct_5(_wgslsmith_f_op_vec3_f32(var_2.a * vec3<f32>(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.b.b.c, global1.c)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1142f * global0.x), var_1.a.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> bool {
    global3 = array<vec4<bool>, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, arg_3.b.c)), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a.x, arg_0.a.x), arg_0.a.zz, vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-arg_0.a.xy))))));
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), 1000f), _wgslsmith_f_op_f32(select(-797f, global0.x, all(vec2<bool>(arg_3.b.b, false)))));
    global2 = array<vec4<f32>, 24>();
    global0 = vec2<f32>(arg_3.b.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.b.c * arg_0.a.x), _wgslsmith_f_op_f32(trunc(1f)))))));
    return false;
}

fn func_1() -> vec2<bool> {
    global2 = array<vec4<f32>, 24>();
    let var_0 = firstTrailingBit(~(~vec3<u32>(~4265u, ~0u, global1.a)));
    var var_1 = Struct_1(~58417u, true, _wgslsmith_f_op_f32(floor(-294f)));
    let var_2 = _wgslsmith_f_op_f32(global1.c - var_1.c);
    global2 = array<vec4<f32>, 24>();
    return select(vec2<bool>(var_1.b, func_4(func_2(global1.a, Struct_2(u_input.d, Struct_1(global1.a, false, var_2), 4294967295u), Struct_5(vec3<f32>(341f, var_2, global1.c))), 29585i, -2147483647i, Struct_2(vec3<i32>(u_input.a, u_input.d.x, u_input.a), Struct_1(var_1.a, false, var_1.c), ~52072u))), vec2<bool>((2147483647i >= u_input.d.x) & true, all(vec2<bool>(global1.b, var_1.b))), vec2<bool>(any(vec3<bool>(func_4(Struct_5(vec3<f32>(224f, var_1.c, global0.x)), 0i, u_input.a, Struct_2(u_input.d, Struct_1(var_0.x, false, var_2), 34705u)), all(vec3<bool>(global1.b, var_1.b, global1.b)), var_1.b)), global1.b));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.d.b.c, 334f), _wgslsmith_f_op_f32(global0.x + global1.c))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.c, _wgslsmith_div_f32(arg_1.d.b.c, global1.c)), _wgslsmith_div_f32(-867f, _wgslsmith_f_op_f32(max(704f, global1.c)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2817f * -445f)))));
    var var_1 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(27151u, 0u, arg_1.d.c, 1u) << (vec4<u32>(arg_1.d.c, arg_1.d.b.a ^ global1.a, countOneBits(global1.a), u_input.c.x << (4294967295u % 32u)) % vec4<u32>(32u))), vec4<u32>(u_input.c.x | ~(~arg_1.d.c), ~(72604u & firstTrailingBit(1u)), firstLeadingBit(arg_1.d.c), 1u));
    var var_2 = var_0.x;
    let var_3 = ~_wgslsmith_div_u32(firstLeadingBit(global1.a), min(40185u, _wgslsmith_clamp_u32(~arg_1.d.c, ~var_1.x, 4294967295u)));
    var var_4 = Struct_2(max(abs(vec3<i32>(23515i, arg_1.c, arg_1.a)), u_input.d) & select(u_input.d, arg_1.d.a << (~vec3<u32>(var_1.x, 4294967295u, u_input.b.x) % vec3<u32>(32u)), global1.b || true), Struct_1(~(~1u), select(all(vec2<bool>(false, arg_0.x)), arg_0.x, true), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.c, global0.x), _wgslsmith_f_op_f32(-793f - global1.c)))), _wgslsmith_dot_vec3_u32(var_1.xxx >> (select(var_1.xyx, vec3<u32>(29000u, var_1.x, 4294967295u), arg_1.e) % vec3<u32>(32u)), var_1.zww));
    return Struct_1(firstTrailingBit(firstTrailingBit(var_1.x)), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-162f - -465f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1817f)) + _wgslsmith_f_op_f32(floor(var_4.b.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(select(!func_1(), !(!(!vec2<bool>(false, global1.b))), !vec2<bool>(any(vec4<bool>(false, global1.b, true, false)), global1.c >= global0.x)), Struct_3(-1i, true || all(vec2<bool>(false, true)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.d.x, 41141i), vec4<i32>(1i, 19973i, u_input.d.x, 19911i) | vec4<i32>(u_input.d.x, u_input.a, u_input.a, -2147483647i)), u_input.d.x), Struct_2(vec3<i32>(u_input.a, u_input.d.x, _wgslsmith_div_i32(-1i, -2147483647i)), Struct_1(countOneBits(u_input.b.x), all(vec2<bool>(false, false)), _wgslsmith_f_op_f32(-global0.x)), 15217u), vec3<bool>(true, global1.b, global1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(global1.a, 24u)]), global2[_wgslsmith_index_u32(global1.a, 24u)])), ~abs(~(vec3<u32>(u_input.b.x, u_input.c.x, 42385u) ^ vec3<u32>(global1.a, 90630u, u_input.b.x))));
}

