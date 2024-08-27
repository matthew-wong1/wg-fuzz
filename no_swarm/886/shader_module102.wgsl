struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5>;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(0u, 1i, vec3<i32>(32764i, 1i, -1i))), vec2<i32>(54751i, 1i), Struct_1(1u, i32(-2147483648), vec3<i32>(2147483647i, 5694i, i32(-2147483648))));

var<private> global2: array<f32, 15> = array<f32, 15>(-273f, 1262f, 1061f, -1454f, 326f, -1525f, -2160f, 1021f, -1845f, -1820f, 520f, -421f, 314f, 169f, -769f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> vec2<i32> {
    global2 = array<f32, 15>();
    global1 = Struct_3(global1.a, ~firstLeadingBit(_wgslsmith_clamp_vec2_i32(global1.c.c.xx, -arg_1.c.zx, countOneBits(vec2<i32>(1560i, arg_1.c.x)))), Struct_1(~1u, _wgslsmith_clamp_i32(reverseBits(_wgslsmith_mod_i32(arg_1.b, global1.a.a.c.x)), 14901i, global1.c.c.x), select(_wgslsmith_add_vec3_i32(-global1.a.a.c, countOneBits(global1.c.c)), _wgslsmith_div_vec3_i32(~vec3<i32>(arg_1.b, arg_1.b, arg_1.c.x), global1.c.c), false)));
    let var_0 = vec4<bool>(~(-52483i) >= _wgslsmith_mod_i32(~arg_1.b, _wgslsmith_dot_vec2_i32(arg_1.c.yz, vec2<i32>(arg_1.c.x, 1i))), !all(vec4<bool>(select(false, true, false), true, true, true)), false, true);
    let var_1 = Struct_3(Struct_2(arg_1), vec2<i32>(firstTrailingBit(global1.b.x), global1.a.a.c.x), arg_1);
    let var_2 = var_1.a.a.b ^ ~(-2147483647i);
    return global1.a.a.c.zy;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: u32) -> Struct_3 {
    var var_0 = arg_1.yyx;
    var var_1 = _wgslsmith_add_vec4_i32(~arg_1, abs(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, arg_1.x, global1.b.x), vec4<i32>(-2147483647i, var_0.x, arg_1.x, -8830i)), firstTrailingBit(vec4<i32>(arg_1.x, global1.a.a.b, global1.c.c.x, arg_1.x))))) | ~_wgslsmith_mult_vec4_i32(max(abs(vec4<i32>(var_0.x, var_0.x, arg_1.x, -2147483647i)), arg_1 | global0[_wgslsmith_index_u32(18307u, 5u)]), global0[_wgslsmith_index_u32(arg_2, 5u)]);
    global1 = Struct_3(Struct_2(Struct_1(0u, ~16864i, vec3<i32>(-35485i & var_1.x, countOneBits(var_0.x), -25358i))), vec2<i32>(arg_1.x, arg_1.x) | _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i) | global1.c.c.yx, vec2<i32>(var_1.x, 6690i)), _wgslsmith_mod_vec2_i32(var_1.wz, var_0.xz), arg_1.zy & func_3(vec3<f32>(arg_0.x, global2[_wgslsmith_index_u32(arg_2, 15u)], arg_0.x), global1.c, 2423f)), Struct_1(arg_2, arg_1.x, select(abs(vec3<i32>(-44034i, global1.b.x, 16857i)), vec3<i32>(~var_1.x, max(28667i, var_1.x), _wgslsmith_add_i32(-2920i, arg_1.x)), min(arg_1.x, 10988i) > 2147483647i)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1343f * _wgslsmith_f_op_f32(abs(arg_0.x))) + _wgslsmith_div_f32(arg_0.x, global2[_wgslsmith_index_u32(reverseBits(arg_2), 15u)])))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-145f, global2[_wgslsmith_index_u32(47301u, 15u)]) - _wgslsmith_f_op_f32(min(-607f, 1013f))))));
    global2 = array<f32, 15>();
    return Struct_3(Struct_2(Struct_1(_wgslsmith_mult_u32(global1.a.a.a, ~arg_2), var_1.x, ~vec3<i32>(global1.a.a.c.x, var_0.x, arg_1.x))), -(vec2<i32>(var_1.x, _wgslsmith_div_i32(-1335i, var_0.x)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(-44385i, -13308i), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, 2147483647i), vec2<i32>(7856i, global1.c.b)))), Struct_1(arg_2, -10406i, global1.c.c));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> vec3<i32> {
    var var_0 = arg_0;
    let var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2349f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-321f, _wgslsmith_f_op_f32(abs(-1000f)))))), vec4<i32>(_wgslsmith_div_i32(-2147483647i, -2147483647i), min(_wgslsmith_div_i32(max(arg_0, arg_1.a.a.c.x), func_2(vec2<f32>(-234f, global2[_wgslsmith_index_u32(global1.a.a.a, 15u)]), vec4<i32>(arg_0, 1i, 1i, arg_1.a.a.b), arg_1.a.a.a).a.a.c.x), max(firstLeadingBit(global1.c.c.x), global1.c.b)), arg_0, global1.a.a.b), 59644u);
    var_0 = var_1.b.x;
    var var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_1.a.a.a, 15u)], -838f, global2[_wgslsmith_index_u32(arg_1.c.a, 15u)])), _wgslsmith_div_vec3_f32(vec3<f32>(639f, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<f32>(arg_3, -1349f, arg_3)), all(vec3<bool>(arg_2, true, arg_2)))), vec3<f32>(279f, -241f, _wgslsmith_f_op_f32(arg_3 - global2[_wgslsmith_index_u32(arg_1.a.a.a, 15u)]))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3))), 1000f, global2[_wgslsmith_index_u32(reverseBits(u_input.c.x), 15u)])));
    return global1.a.a.c;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(global1.a.a.a, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(534f, -939f)))), _wgslsmith_add_vec4_i32(vec4<i32>(-arg_3.c.x, 8048i, -2147483647i, 5037i), -_wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(arg_3.a, 5u)], vec4<i32>(arg_1.x, arg_1.x, global1.c.b, arg_1.x), vec4<i32>(global1.c.c.x, 17525i, -47023i, -1i))), arg_3.a).a, func_4(~1i, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(arg_3.a, 15u)], -354f)) - vec2<f32>(-926f, 490f)), vec4<i32>(_wgslsmith_clamp_i32(arg_2.x, arg_2.x, -2147483647i), firstLeadingBit(global1.c.b), firstLeadingBit(1407i), select(1i, 0i, true)), abs(~4294967295u)), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~21122u, 15u)]))).yz, func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(496f, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], global2[_wgslsmith_index_u32(0u, 15u)]))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 160f), vec2<f32>(global2[_wgslsmith_index_u32(global1.c.a, 15u)], -126f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-212f, global2[_wgslsmith_index_u32(arg_3.a, 15u)]) * vec2<f32>(-249f, 736f)))), vec4<i32>(global1.b.x, -1i, global1.c.c.x, ~(-1i) & countOneBits(arg_2.x)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(13009u, arg_3.a, arg_0.x), vec3<u32>(arg_0.x, global1.a.a.a, 1u)))).a.a);
    global1 = Struct_3(Struct_2(func_2(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_0.c.a, 15u)], 1221f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(arg_3.a, 15u)], -154f))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(u_input.b, 5u)], global0[_wgslsmith_index_u32(1060u, 5u)]), global0[_wgslsmith_index_u32(arg_3.a | 670u, 5u)]), ~(arg_0.x >> (44516u % 32u))).c), _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.a.a.c.x, ~1i), -(~(~vec2<i32>(arg_2.x, 1i))), vec2<i32>(~reverseBits(1i), 1i)), var_0.c);
    let var_1 = func_4(-17833i, Struct_3(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(160f, -832f)), global0[_wgslsmith_index_u32(max(1u, 4294967295u) >> (max(global1.a.a.a, arg_0.x) % 32u), 5u)], ~global1.a.a.a).a, abs(abs(~var_0.b)), var_0.c), true, -613f).xz;
    var var_2 = global1.a.a;
    let var_3 = Struct_4(Struct_3(Struct_2(var_0.c), arg_3.c.yy ^ abs(var_0.a.a.c.xy), func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_0.a.a.a, 15u)], 963f) - vec2<f32>(global2[_wgslsmith_index_u32(33831u, 15u)], global2[_wgslsmith_index_u32(27778u, 15u)])), _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1u, 15u)], 459f), vec2<f32>(-100f, -397f))), vec4<i32>(-13828i, ~(-11643i), var_0.b.x, var_2.c.x), (arg_3.a << (arg_0.x % 32u)) ^ ~30318u).c), func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(arg_0.x, 15u)], 614f), vec2<f32>(global2[_wgslsmith_index_u32(1u, 15u)], -1019f))))), -firstTrailingBit(~vec4<i32>(-3176i, -1i, -71885i, var_2.c.x)), 20756u));
    return var_3.b;
}

fn func_1() -> Struct_2 {
    let var_0 = any(vec3<bool>(!(!all(vec4<bool>(true, false, true, true))), !(any(vec2<bool>(false, false)) | true), true));
    global1 = func_5(~(~(_wgslsmith_sub_vec2_u32(u_input.c.zy, vec2<u32>(global1.a.a.a, u_input.b)) | u_input.c.xw)), func_4(_wgslsmith_mult_i32(max(_wgslsmith_div_i32(global1.a.a.c.x, global1.b.x), global1.c.c.x), ~(~global1.c.c.x)), func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-147f, global2[_wgslsmith_index_u32(u_input.a.x, 15u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(global1.c.a, 15u)], -234f)))), global0[_wgslsmith_index_u32(~61153u, 5u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, global1.a.a.a), ~vec4<u32>(u_input.c.x, 0u, u_input.b, 4294967295u))), min(_wgslsmith_mult_i32(global1.c.c.x, global1.b.x), firstTrailingBit(57253i)) >= -1i, _wgslsmith_f_op_f32(exp2(1f))), ~_wgslsmith_mult_vec2_i32(~vec2<i32>(-25271i, 31088i), -countOneBits(vec2<i32>(global1.a.a.c.x, 65717i))), Struct_1(u_input.a.x, -2147483647i, vec3<i32>(-8148i, select(~global1.b.x, ~global1.a.a.b, any(vec4<bool>(var_0, false, var_0, var_0))), i32(-1i) * -31818i)));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1231f * 242f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(64981u, 15u)])))))))));
    var var_2 = global1.a;
    let var_3 = -(~(i32(-1i) * -2147483647i)) >= _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(~32240i, -var_2.a.c.x, 1i), global1.b.x);
    return func_5(~u_input.a.yy, _wgslsmith_mult_vec3_i32(reverseBits(global1.c.c) & global1.c.c, ~(~vec3<i32>(global1.a.a.b, global1.c.c.x, global1.c.c.x) >> (countOneBits(u_input.a) % vec3<u32>(32u)))), func_4(var_2.a.b, Struct_3(func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2[_wgslsmith_index_u32(var_2.a.a, 15u)], 1228f), vec2<f32>(-779f, global2[_wgslsmith_index_u32(124781u, 15u)]))), global0[_wgslsmith_index_u32(16643u, 5u)], u_input.b ^ global1.c.a).a, vec2<i32>(-8559i, var_2.a.c.x), var_2.a), -517f == global2[_wgslsmith_index_u32(var_2.a.a, 15u)], _wgslsmith_f_op_f32(-796f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f)))).yy, func_5(select(vec2<u32>(max(u_input.c.x, 0u), u_input.b), _wgslsmith_div_vec2_u32(u_input.a.xy, vec2<u32>(4294967295u, 12670u)) | u_input.c.yy, select(true, true, !var_3)), vec3<i32>(func_5(vec2<u32>(1u, 5576u) >> (u_input.c.ww % vec2<u32>(32u)), vec3<i32>(global1.c.b, 32701i, var_2.a.b) & vec3<i32>(global1.b.x, global1.c.c.x, -1891i), global1.b, func_5(vec2<u32>(u_input.b, 0u), global1.c.c, vec2<i32>(-50119i, 20686i), global1.a.a).a.a).b.x, _wgslsmith_mult_i32(var_2.a.b, global1.c.b), _wgslsmith_dot_vec2_i32(~vec2<i32>(32455i, 9366i), firstTrailingBit(vec2<i32>(0i, -67795i)))), select(global1.a.a.c.xz, vec2<i32>(~global1.a.a.c.x, select(global1.a.a.b, global1.b.x, true)), !select(vec2<bool>(true, true), vec2<bool>(var_0, true), false)), Struct_1(global1.a.a.a, _wgslsmith_clamp_i32(min(global1.b.x, var_2.a.b), -8932i, ~global1.b.x), vec3<i32>(reverseBits(-49050i), var_2.a.c.x, global1.a.a.c.x))).a.a).a;
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = true;
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~41417u, global1.c.a, _wgslsmith_sub_u32(56617u, 0u), 31163u), ~max(vec4<u32>(25945u, global1.c.a, arg_0, 1u), vec4<u32>(u_input.c.x, 4294967295u, arg_0, 1u))), arg_0, 1u), abs(vec3<u32>(u_input.c.x, arg_0, u_input.b) >> ((u_input.c.xwy >> (vec3<u32>(320u, global1.a.a.a, 34550u) % vec3<u32>(32u))) % vec3<u32>(32u))) & ~(~u_input.a));
    var var_2 = vec2<u32>(~(~(0u << (~4294967295u % 32u))), arg_1.c.a);
    let var_3 = func_1().a;
    var var_4 = -765f;
    return Struct_1(var_3.a, -1i, vec3<i32>(1i, max(-1i, arg_1.a.a.b), -54273i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 5>();
    var var_0 = Struct_4(Struct_3(Struct_2(Struct_1(abs(global1.c.a), 20559i ^ global1.b.x, _wgslsmith_mult_vec3_i32(global1.a.a.c, vec3<i32>(-41118i, global1.b.x, global1.b.x)))), ~global1.a.a.c.zx, func_6(u_input.c.x, Struct_3(func_1(), _wgslsmith_mult_vec2_i32(global1.a.a.c.yx, vec2<i32>(global1.a.a.c.x, global1.b.x)), func_1().a), false, global1.c.c)), Struct_3(Struct_2(func_1().a), ~_wgslsmith_add_vec2_i32(vec2<i32>(global1.c.c.x, -21284i) ^ vec2<i32>(global1.b.x, 0i), func_5(u_input.a.yz, global1.a.a.c, global1.c.c.zy, Struct_1(u_input.a.x, -28874i, vec3<i32>(global1.a.a.b, global1.b.x, global1.b.x))).b), Struct_1(select(~global1.a.a.a, global1.c.a, true), ~(global1.b.x >> (global1.c.a % 32u)), countOneBits(~vec3<i32>(41332i, 1i, 3922i)))));
    let var_1 = Struct_4(Struct_3(Struct_2(func_6(global1.c.a, func_2(vec2<f32>(-1000f, global2[_wgslsmith_index_u32(global1.a.a.a, 15u)]), vec4<i32>(var_0.a.b.x, var_0.b.a.a.c.x, 2147483647i, -11591i), 17082u), true, reverseBits(var_0.a.a.a.c))), _wgslsmith_clamp_vec2_i32(vec2<i32>(~var_0.b.a.a.b, func_3(vec3<f32>(-1228f, -102f, global2[_wgslsmith_index_u32(u_input.b, 15u)]), Struct_1(u_input.c.x, var_0.b.b.x, vec3<i32>(var_0.a.a.a.c.x, var_0.b.c.c.x, 0i)), global2[_wgslsmith_index_u32(u_input.b, 15u)]).x), ~global1.c.c.zx, var_0.a.a.a.c.zy), Struct_1(~(~1u), global1.a.a.c.x, -(~var_0.a.c.c))), Struct_3(var_0.a.a, vec2<i32>(-2147483647i, _wgslsmith_add_i32(var_0.a.b.x, global1.b.x)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-526f, -975f))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(global0[_wgslsmith_index_u32(7057u, 5u)]), global0[_wgslsmith_index_u32(~global1.c.a, 5u)], vec4<i32>(var_0.b.a.a.c.x, 0i, 0i, var_0.b.a.a.c.x)), min(select(72068u, var_0.b.a.a.a, true), var_0.a.a.a.a)).a.a));
    global0 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-var_0.b.b.x & var_0.b.b.x, var_0.b.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1181f), _wgslsmith_f_op_f32(select(-970f, global2[_wgslsmith_index_u32(var_1.a.a.a.a, 15u)], true)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(36679u, 15u)] - 214f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-431f, -720f, 261f, 236f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global1.c.a, 15u)], global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(104818u, 15u)], -1090f), vec4<f32>(global2[_wgslsmith_index_u32(var_1.b.c.a, 15u)], -205f, global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)])), _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], 1766f, -1000f, 784f), vec4<f32>(global2[_wgslsmith_index_u32(27108u, 15u)], -343f, -462f, global2[_wgslsmith_index_u32(4294967295u, 15u)]))))))));
}

