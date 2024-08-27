struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -22219i;

var<private> global1: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(1i, 6802i), vec2<i32>(-28691i, -20258i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 26470i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, -16825i), vec2<i32>(-18783i, 1i), vec2<i32>(34096i, 1i), vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 25388i), vec2<i32>(-1i, 552i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(37337i, 2147483647i), vec2<i32>(-28939i, -5182i), vec2<i32>(2147483647i, 0i), vec2<i32>(1530i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, -703i), vec2<i32>(-24134i, 1i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(-13262i, 2147483647i));

var<private> global2: vec3<f32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x * global2.x))))), 435f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-584f)))))));
    let var_0 = Struct_1(u_input.a.wz, u_input.a.wz, true);
    var var_1 = Struct_1(vec2<i32>(1i, firstLeadingBit(1i)), -vec2<i32>(max(-var_0.a.x, -1i), -66773i), ~24421i == ~_wgslsmith_add_i32(var_0.b.x, u_input.a.x ^ var_0.a.x));
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1824f, global2.x, global2.x) + vec3<f32>(-517f, -461f, global2.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(875f, 1299f, global2.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1053f, -670f, global2.x)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 113f, global2.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1323f, global2.x, global2.x)))))))), any(select(vec3<bool>(arg_0.x, true, true), vec3<bool>(select(false, true, var_0.c), true, true), select(vec3<bool>(false, false, true), vec3<bool>(var_1.c, var_1.c, false), vec3<bool>(var_1.c, true, true))))));
    global1 = array<vec2<i32>, 23>();
    return select(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, 42971u, 4294967295u)) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(18822u, 0u, 0u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), ~abs(vec3<u32>(22185u, 49813u, 61054u))), _wgslsmith_add_vec3_u32(vec3<u32>(abs(40035u), 1u, _wgslsmith_mult_u32(1u, 10868u)) << (vec3<u32>(~15138u, select(37571u, 4294967295u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(33423u, 1u, 22096u, 6448u), vec4<u32>(4294967295u, 0u, 66366u, 38444u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mod_u32(4294967295u, 45064u), 2134u, _wgslsmith_mod_u32(1u, reverseBits(35610u)))), true);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(31522i, 1i), _wgslsmith_clamp_vec2_i32(arg_0.b.a, global1[_wgslsmith_index_u32(~1u, 23u)], _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 31423i), global1[_wgslsmith_index_u32(1u, 23u)]))), abs(abs(global1[_wgslsmith_index_u32(4294967295u, 23u)])) & vec2<i32>(-40391i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 38472i, arg_0.b.a.x), vec4<i32>(arg_0.b.b.x, -1i, -17946i, 69910i))), any(vec4<bool>(all(arg_0.a.xx), !arg_0.a.x, true, true))), vec3<u32>(~reverseBits(~14191u), abs(1u), 1u), u_input.a.yw);
    let var_1 = var_0.a.c;
    var var_2 = Struct_3(Struct_1(var_0.c, global1[_wgslsmith_index_u32(var_0.b.x, 23u)] >> (~(~var_0.b.xy) % vec2<u32>(32u)), false), ~vec3<u32>(var_0.b.x, 1u, var_0.b.x), vec2<i32>(1i, abs(_wgslsmith_mult_i32(var_0.c.x, var_0.a.b.x))) | _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.c.b.x, arg_0.c.b.x >> (var_0.b.x % 32u)), -(var_0.a.b << (var_0.b.yx % vec2<u32>(32u))), abs(vec2<i32>(var_0.c.x, arg_0.c.b.x))));
    var var_3 = -120f;
    let var_4 = Struct_3(var_2.a, _wgslsmith_mult_vec3_u32(var_0.b, func_3(select(vec2<bool>(true, var_2.a.c), arg_0.a.zx, arg_0.a.zy)) & min(select(var_0.b, var_2.b, vec3<bool>(var_1, false, arg_0.a.x)), vec3<u32>(var_2.b.x, var_2.b.x, 8816u))), -vec2<i32>(-min(var_2.c.x, var_2.a.b.x), -231i));
    return var_2.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = ~(_wgslsmith_clamp_u32(~0u, ~27479u, _wgslsmith_div_u32(1u, 1u)) & _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(1u, 4294967295u, 36371u, 4294967295u)), vec4<u32>(select(35719u, 16925u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(60313u, 4294967295u, 37403u), vec3<u32>(4294967295u, 1u, 13478u)), 1u, ~0u)));
    let var_1 = min(u_input.a, abs(_wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(16423i, 72468i, u_input.a.x, 36798i)), u_input.a)));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 968f, 233f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, global2.x, arg_1.x) - vec3<f32>(700f, 620f, 1000f)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -816f, 167f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 483f, global2.x) - vec3<f32>(2065f, -1397f, arg_1.x)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1360f, _wgslsmith_f_op_f32(round(984f))), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(select(1815f, 814f, false))), vec3<bool>(arg_0.b.c, true, arg_2.c.a.x <= u_input.a.x)))));
    let var_2 = Struct_2(select(arg_0.a, vec3<bool>(true, !arg_0.a.x, false), vec3<bool>(false, arg_2.b.c, arg_2.c.c)), func_2(arg_2), Struct_1(~firstTrailingBit(select(arg_2.b.a, global1[_wgslsmith_index_u32(4294967295u, 23u)], true)), -vec2<i32>(1i, firstTrailingBit(-1131i)), arg_2.c.c));
    global1 = array<vec2<i32>, 23>();
    return Struct_1(max(vec2<i32>(arg_0.b.a.x, i32(-1i) * -9482i) << (vec2<u32>(~0u, abs(4294967295u)) % vec2<u32>(32u)), vec2<i32>(0i, 1i)), max(_wgslsmith_clamp_vec2_i32(u_input.a.yz, ~u_input.a.ww, vec2<i32>(var_1.x, -1i)) >> (vec2<u32>(1u, 59461u) % vec2<u32>(32u)), min(_wgslsmith_clamp_vec2_i32(global1[_wgslsmith_index_u32(0u, 23u)], -vec2<i32>(arg_2.b.a.x, 15395i), ~vec2<i32>(-1i, 1i)), vec2<i32>(arg_0.b.a.x, firstLeadingBit(-62410i)))), true);
}

fn func_1() -> u32 {
    let var_0 = Struct_2(vec3<bool>(true, true, true), func_4(Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), func_2(Struct_2(vec3<bool>(true, false, true), Struct_1(u_input.a.wz, vec2<i32>(u_input.a.x, u_input.a.x), false), Struct_1(u_input.a.yw, vec2<i32>(u_input.a.x, u_input.a.x), true))), func_2(Struct_2(vec3<bool>(true, false, true), Struct_1(u_input.a.xx, vec2<i32>(u_input.a.x, u_input.a.x), false), Struct_1(vec2<i32>(45187i, u_input.a.x), vec2<i32>(u_input.a.x, -15731i), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 269f) * _wgslsmith_f_op_vec2_f32(-global2.xz))), Struct_2(vec3<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(false, true)), true), func_2(Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(65413u, 23u)], true), Struct_1(vec2<i32>(u_input.a.x, 5745i), global1[_wgslsmith_index_u32(2644u, 23u)], false))), func_2(Struct_2(vec3<bool>(false, true, false), Struct_1(global1[_wgslsmith_index_u32(17626u, 23u)], u_input.a.zz, false), Struct_1(vec2<i32>(-8343i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), false))))), Struct_1(vec2<i32>(u_input.a.x, -2147483647i) | ~firstTrailingBit(u_input.a.yy), func_4(Struct_2(vec3<bool>(true, false, false), func_4(Struct_2(vec3<bool>(true, false, false), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 23u)], u_input.a.yx, false), Struct_1(vec2<i32>(u_input.a.x, -44922i), u_input.a.zz, true)), vec2<f32>(global2.x, global2.x), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<i32>(2147483647i, u_input.a.x), u_input.a.xy, true), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 0i), false))), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-1i, u_input.a.x), true)), _wgslsmith_f_op_vec2_f32(-global2.zz), Struct_2(vec3<bool>(false, false, true), func_4(Struct_2(vec3<bool>(true, false, false), Struct_1(u_input.a.yy, vec2<i32>(-1i, u_input.a.x), false), Struct_1(vec2<i32>(u_input.a.x, 28003i), vec2<i32>(u_input.a.x, u_input.a.x), true)), vec2<f32>(-549f, -1000f), Struct_2(vec3<bool>(false, true, true), Struct_1(global1[_wgslsmith_index_u32(31698u, 23u)], vec2<i32>(21093i, u_input.a.x), true), Struct_1(vec2<i32>(-59288i, u_input.a.x), vec2<i32>(13642i, u_input.a.x), false))), func_2(Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<i32>(u_input.a.x, -1i), u_input.a.zy, false), Struct_1(u_input.a.zx, vec2<i32>(u_input.a.x, 11914i), false))))).b, !all(vec2<bool>(true, true))));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, 1u), 23u)], true), _wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(1u) ^ ~4294967295u, 91442u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(47815u, 1u))), _wgslsmith_sub_vec3_u32(vec3<u32>(~314u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1009u), vec2<u32>(4294967295u, 4294967295u)), ~4294967295u), vec3<u32>(func_1(), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 91041u, 1386u, 18833u), vec4<u32>(50009u, 0u, 0u, 0u)), abs(32408u)))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(0u, 23u)]), ~firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x))), vec2<i32>(1i, 1i) ^ select(func_2(Struct_2(vec3<bool>(true, false, false), Struct_1(u_input.a.yw, global1[_wgslsmith_index_u32(40511u, 23u)], true), Struct_1(vec2<i32>(u_input.a.x, 0i), vec2<i32>(u_input.a.x, u_input.a.x), false))).a, firstLeadingBit(global1[_wgslsmith_index_u32(1076u, 23u)]), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), u_input.a.zx));
    var var_1 = Struct_3(func_2(Struct_2(vec3<bool>(false, true, all(vec2<bool>(var_0.a.c, false))), func_4(Struct_2(vec3<bool>(false, var_0.a.c, var_0.a.c), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(var_0.a.b.x, 4349i), true), var_0.a), vec2<f32>(global2.x, global2.x), Struct_2(vec3<bool>(true, var_0.a.c, var_0.a.c), var_0.a, var_0.a)), var_0.a)), vec3<u32>(var_0.b.x, ~((1u ^ var_0.b.x) ^ 4294967295u), 81337u), _wgslsmith_mod_vec2_i32(var_0.a.b, vec2<i32>(~67577i, u_input.a.x)));
    var var_2 = vec2<bool>(_wgslsmith_div_i32(max(_wgslsmith_dot_vec3_i32(vec3<i32>(90538i, var_1.c.x, -53897i), vec3<i32>(u_input.a.x, var_1.a.a.x, -14335i)), var_1.c.x & u_input.a.x), -func_2(Struct_2(vec3<bool>(var_0.a.c, false, true), Struct_1(var_0.c, var_0.c, false), Struct_1(u_input.a.zx, vec2<i32>(u_input.a.x, -1i), true))).b.x) <= 1i, true);
    var var_3 = 768f;
    var_2 = select(select(select(select(select(vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, false), vec2<bool>(false, false)), vec2<bool>(false, false), select(vec2<bool>(var_0.a.c, var_1.a.c), vec2<bool>(var_1.a.c, false), vec2<bool>(false, true))), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, var_0.a.c), var_1.a.c), !var_0.a.c), !var_2.x), select(!(!vec2<bool>(false, var_0.a.c)), vec2<bool>(var_2.x, false), vec2<bool>(true, true)), ~var_0.b.x == 1u), vec2<bool>(var_0.a.c, all(vec4<bool>(all(vec4<bool>(true, false, var_0.a.c, var_0.a.c)), true, !var_1.a.c, var_0.a.c != var_2.x))), select(vec2<bool>(184f > global2.x, !(1u != var_1.b.x)), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(var_1.a.c, var_0.a.c)), select(vec2<bool>(false, var_0.a.c), vec2<bool>(true, var_1.a.c), vec2<bool>(var_2.x, false)), select(vec2<bool>(var_2.x, var_0.a.c), vec2<bool>(var_2.x, true), var_0.a.c)), true));
    var var_4 = Struct_2(vec3<bool>(!(!var_1.a.c) && any(!vec3<bool>(true, false, var_2.x)), var_1.a.c, global2.x > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-2814f, -462f, true))))), Struct_1(vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(u_input.a.xzy << (var_0.b % vec3<u32>(32u)), u_input.a.zwx & vec3<i32>(-1i, u_input.a.x, 11496i))), reverseBits(reverseBits(vec2<i32>(8194i, -9481i))) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(-1i, u_input.a.x)), abs(0i)), any(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 0i), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, var_1.c.x), var_1.c), var_1.c)), reverseBits(vec2<i32>(-4444i, -2147483647i)), !var_0.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, var_0.b.x, 0u, var_1.b.x)) ^ ~vec4<u32>(var_0.b.x, var_1.b.x, 48946u, var_0.b.x), ~vec4<u32>(0u, 57270u, 95374u, var_0.b.x)), _wgslsmith_div_u32(var_0.b.x, ~(~(var_0.b.x | 2489u))));
}

