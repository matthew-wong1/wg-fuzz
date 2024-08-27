struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-486f, -1750f, -247f, 165f);

var<private> global1: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-740f, -1000f, 642f), vec3<f32>(393f, 396f, -134f), vec3<f32>(-1000f, 1196f, -1220f), vec3<f32>(1116f, 1056f, -153f), vec3<f32>(849f, -217f, -1604f), vec3<f32>(-447f, -1000f, 1032f), vec3<f32>(478f, -345f, 953f), vec3<f32>(101f, 526f, -559f), vec3<f32>(-326f, 519f, 599f), vec3<f32>(-1481f, -1113f, 1580f), vec3<f32>(-534f, 1491f, 332f), vec3<f32>(455f, -372f, -431f), vec3<f32>(1288f, -330f, 256f), vec3<f32>(-931f, 2143f, -463f), vec3<f32>(978f, 454f, 412f), vec3<f32>(-561f, -344f, -1134f), vec3<f32>(-936f, -672f, 1030f), vec3<f32>(493f, -1000f, -271f), vec3<f32>(-407f, -2198f, 1048f), vec3<f32>(-1260f, -1710f, 840f), vec3<f32>(1000f, 1000f, 450f), vec3<f32>(1096f, -2346f, 408f), vec3<f32>(-1414f, 1066f, -995f), vec3<f32>(721f, 2058f, 292f), vec3<f32>(-720f, -1201f, -330f), vec3<f32>(905f, 943f, -682f), vec3<f32>(429f, 1024f, -1663f), vec3<f32>(-1000f, 330f, 1000f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = ~vec2<u32>(u_input.a, ~(~arg_0));
    var var_1 = reverseBits(_wgslsmith_sub_vec4_i32(abs(select(vec4<i32>(41758i, -2147483647i, u_input.d.x, -60078i), vec4<i32>(u_input.d.x, -22769i, 40703i, -25196i), -1032f < global0.x)), vec4<i32>(2147483647i, _wgslsmith_div_i32(select(-18371i, u_input.e.x, false), u_input.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.e.x, u_input.d.x, -1i), ~vec4<i32>(-2147483647i, 36848i, 8710i, 1i)), -1227i)));
    var var_2 = select(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), any(vec4<bool>(true, false, false, false)))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(any(vec2<bool>(false, false)), true), vec2<bool>(true, true), _wgslsmith_mod_u32(u_input.b, 0u) != (var_0.x << (var_0.x % 32u)))), true);
    let var_3 = Struct_1(true, select(vec2<bool>(reverseBits(10833u) != ~var_0.x, ~1u == min(4050u, u_input.a)), !select(!vec2<bool>(var_2.x, true), vec2<bool>(true, true), !vec2<bool>(var_2.x, var_2.x)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1000f))), -firstLeadingBit(abs(reverseBits(vec4<i32>(var_1.x, 1i, u_input.d.x, u_input.e.x)))), select(select(vec3<bool>(any(vec3<bool>(true, var_2.x, var_2.x)), false, true), vec3<bool>(true, !var_2.x, select(false, true, var_2.x)), all(!vec4<bool>(false, var_2.x, var_2.x, true))), select(vec3<bool>(true, true, true), !(!vec3<bool>(false, var_2.x, var_2.x)), !select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, var_2.x, true), var_2.x)), all(select(select(vec3<bool>(true, var_2.x, true), vec3<bool>(false, false, var_2.x), vec3<bool>(false, var_2.x, var_2.x)), !vec3<bool>(false, true, var_2.x), vec3<bool>(true, var_2.x, var_2.x)))));
    var_2 = var_3.b;
    return max(1u, ~(~4294967295u));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    var var_0 = select(abs(func_3(u_input.a)), arg_0.x, true);
    let var_1 = 0u;
    var_0 = 35295u;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1225f, global0.x, -630f, 510f), vec4<f32>(-126f, 176f, -1458f, global0.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(-329f, 1323f, arg_2.c.x, -947f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, 1478f, -481f, 1112f), vec4<f32>(-606f, global0.x, -242f, global0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, 569f, -397f, arg_2.c.x))))), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_2.c.x, 143f, arg_2.c.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, -997f, arg_2.c.x, arg_2.c.x) * vec4<f32>(1029f, -154f, -402f, -2453f)), vec4<f32>(-1225f, global0.x, arg_2.c.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1100f, global0.x, arg_2.c.x, -157f) * vec4<f32>(global0.x, -805f, arg_2.c.x, 1068f)))))));
    global1 = array<vec3<f32>, 28>();
    return -2147483647i;
}

fn func_1() -> vec4<f32> {
    global1 = array<vec3<f32>, 28>();
    var var_0 = vec4<i32>(~(-_wgslsmith_mod_i32(u_input.d.x, u_input.e.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(~35513i, 2147483647i, ~u_input.d.x << (21588u % 32u), -func_2(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 4294967295u, u_input.b), Struct_1(true, vec2<bool>(false, false), vec2<f32>(global0.x, global0.x), vec4<i32>(u_input.c, -2147483647i, u_input.d.x, 1i), vec3<bool>(false, false, true)), vec4<i32>(-1i, u_input.d.x, 17449i, u_input.e.x))), max(-vec4<i32>(u_input.e.x, u_input.c, 1i, 2147483647i) | vec4<i32>(u_input.e.x, -2147483647i, -28174i, u_input.d.x), vec4<i32>(min(u_input.e.x, u_input.d.x), -u_input.c, u_input.d.x, _wgslsmith_mult_i32(-1i, u_input.d.x)))), ~_wgslsmith_mod_i32(u_input.e.x, -27926i), _wgslsmith_add_i32(-1i, -_wgslsmith_sub_i32(u_input.e.x, 24492i)) & ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_mod_vec2_i32(u_input.d, u_input.e.yz)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-557f, _wgslsmith_f_op_f32(step(-251f, global0.x)), _wgslsmith_div_f32(-414f, 1432f), 659f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-702f, 573f, global0.x, -237f), vec4<f32>(global0.x, global0.x, global0.x, global0.x), false)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global0.x, global0.x, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 690f, global0.x, 1226f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 316f, global0.x, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-992f, global0.x, -1462f, global0.x) * vec4<f32>(149f, -411f, global0.x, 1000f))), !(-1i > u_input.d.x)))));
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-284f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), true)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(abs(-503f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_div_f32(-675f, 1000f), -873f, 2466f)))));
    var var_1 = vec2<u32>(~10015u, abs(4294967295u) & _wgslsmith_mult_u32(abs(u_input.b), firstTrailingBit(u_input.b) >> (1u % 32u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(189f + -685f), _wgslsmith_div_f32(-1171f, 363f), _wgslsmith_div_f32(992f, 460f), global0.x)) + vec4<f32>(-1296f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-246f * global0.x) + global0.x), -2193f, 306f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    global0 = vec4<f32>(240f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.x))))))), -1541f);
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(max(firstTrailingBit(~vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(~u_input.a, ~16104u)), min(~(~vec2<u32>(81147u, 4294967295u)), vec2<u32>(abs(83976u), u_input.b))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4855u >> (u_input.b % 32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, 1u)))), ~vec2<u32>(u_input.a, max(1u, 51906u))));
    var var_1 = arg_2;
    global0 = arg_0;
    let var_2 = Struct_1(true, select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), all(vec4<bool>(false, true, false, false))), vec2<bool>(true, all(vec4<bool>(true, false, false, false))), vec2<bool>(true, any(vec4<bool>(true, false, false, true)))), vec2<bool>(true, true), !any(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-929f, _wgslsmith_f_op_f32(global0.x - 598f)) * _wgslsmith_f_op_vec2_f32(abs(global0.ww)))), arg_2.a >> (vec4<u32>(~(~69821u), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, u_input.b), func_3(1u)), abs(var_0), select(_wgslsmith_div_u32(3267u, var_0), ~u_input.b, -2147483647i >= arg_2.a.x)) % vec4<u32>(32u)), !(!vec3<bool>(any(vec4<bool>(true, false, false, true)), false, true)));
    return var_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(func_4(_wgslsmith_f_op_vec4_f32(func_1()), ~6125i, Struct_2(vec4<i32>(u_input.c, u_input.d.x, u_input.d.x, 87989i))), vec3<bool>(true, true, true), true), vec3<bool>(true, false, false), vec3<bool>(select(true != any(vec3<bool>(false, false, true)), all(vec3<bool>(true, false, true)), select(any(vec3<bool>(true, false, false)), true, false)), true, !(!all(vec4<bool>(true, false, true, false)))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(141f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2277f)) - _wgslsmith_f_op_f32(trunc(global0.x))), global0.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(832f - global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -2751f))), 208f));
    var var_1 = global1[_wgslsmith_index_u32(1u, 28u)];
    let var_2 = countOneBits(66190i);
    let var_3 = vec2<bool>(any(var_0), var_0.x);
    var var_4 = Struct_2(-(-vec4<i32>(var_2, var_2, 12551i, -33735i) & (vec4<i32>(-1i, -1i, var_2, var_2) & ~vec4<i32>(22596i, u_input.e.x, u_input.d.x, var_2))));
    var var_5 = -firstLeadingBit(vec4<i32>(var_4.a.x ^ _wgslsmith_dot_vec4_i32(var_4.a, var_4.a), -47560i, _wgslsmith_sub_i32(firstLeadingBit(-1i), var_4.a.x), min(2147483647i, var_2) ^ _wgslsmith_mult_i32(-1i, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(select(vec3<u32>(64906u, 889u, 0u), vec3<u32>(0u, 73858u, u_input.b), vec3<bool>(var_3.x, true, false)), vec3<u32>(4294967295u, u_input.b, u_input.a), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.yy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zx) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1882f), 619f)), any(!(!vec4<bool>(false, var_0.x, var_0.x, false))))), vec2<u32>(~max(u_input.b & 105527u, abs(u_input.a)), 4294967295u), 0i);
}

