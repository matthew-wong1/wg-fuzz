struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(933f, 857f), vec2<f32>(1644f, 1027f), vec2<f32>(713f, -3214f), vec2<f32>(-2362f, 1102f), vec2<f32>(1905f, 451f), vec2<f32>(1000f, 177f), vec2<f32>(490f, -328f), vec2<f32>(-984f, -3005f), vec2<f32>(-379f, 591f), vec2<f32>(-110f, -1201f), vec2<f32>(1576f, -1390f), vec2<f32>(1000f, -1057f), vec2<f32>(1301f, 631f), vec2<f32>(1000f, 123f), vec2<f32>(-554f, -1000f), vec2<f32>(1381f, -416f), vec2<f32>(-387f, 1312f), vec2<f32>(-1652f, 1049f), vec2<f32>(1539f, -600f), vec2<f32>(862f, 1113f), vec2<f32>(-3171f, -1000f), vec2<f32>(1226f, -1240f), vec2<f32>(-1162f, -1638f), vec2<f32>(1000f, 351f), vec2<f32>(-735f, -1334f), vec2<f32>(569f, 371f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~0u, 5u)];
    return _wgslsmith_f_op_f32(-arg_0.a.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>) -> vec3<u32> {
    let var_0 = Struct_5(Struct_3(vec3<f32>(-1008f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(598f, -1563f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-362f - -280f)))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(max(289f, _wgslsmith_f_op_f32(-856f - 1000f))), _wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(755f, -201f, -111f)), u_input.b.x)))));
    var var_1 = _wgslsmith_div_i32(~_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), select(vec2<i32>(11199i, -1i), vec2<i32>(20455i, arg_0.x), false))), -(i32(-1i) * -11848i));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(var_0.a.a * var_0.a.a));
    global0 = array<vec2<bool>, 5>();
    let var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.a.x)) + var_0.a.a.x), select(vec3<i32>(_wgslsmith_sub_i32(-1i, -arg_0.x), 1i, -arg_0.x), vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-26076i, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(2147483647i, 12393i, arg_0.x, arg_0.x), vec4<bool>(true, arg_1.x, true, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(9198i, arg_0.x, arg_0.x, 34315i), vec4<i32>(arg_0.x, -2147483647i, arg_0.x, 19092i))), ~abs(arg_0.x), -_wgslsmith_add_i32(arg_0.x, -1i)), vec3<bool>(arg_1.x, all(vec3<bool>(false, arg_1.x, false)), false)), 1199f, Struct_1(reverseBits(_wgslsmith_dot_vec2_u32(u_input.c.wy ^ vec2<u32>(1u, u_input.a.x), vec2<u32>(0u, u_input.b.x) >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u)))), vec2<bool>(!arg_1.x, any(select(vec2<bool>(arg_1.x, arg_1.x), arg_1.zx, vec2<bool>(arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(floor(565f))));
    return ~(~(_wgslsmith_div_vec3_u32(u_input.b & vec3<u32>(17128u, u_input.c.x, 34563u), _wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(var_3.d.a, u_input.a.x, 1u))) >> (~vec3<u32>(22884u, var_3.d.a, u_input.c.x) % vec3<u32>(32u))));
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.c.x;
    let var_1 = _wgslsmith_clamp_vec3_u32(countOneBits(select(vec3<u32>(88239u, 1u, u_input.b.x) << (abs(u_input.c.yxz) % vec3<u32>(32u)), func_2(-vec2<i32>(33811i, 56791i), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), !any(global0[_wgslsmith_index_u32(u_input.a.x, 5u)]))), u_input.b, countOneBits(firstTrailingBit(firstLeadingBit(u_input.b)) | ~vec3<u32>(12819u, 0u, u_input.a.x)));
    var_0 = var_1.x;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(1679f, -1304f, -2391f), vec3<f32>(1000f, 1921f, 645f))), u_input.c.x)))), vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_mod_i32(463i, -2036i), -46738i, _wgslsmith_add_i32(49555i, -7812i)), -625f, Struct_1(var_1.x, vec2<bool>(true, any(!global0[_wgslsmith_index_u32(0u, 5u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f))));
    global0 = array<vec2<bool>, 5>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 26u)])))) - global1[_wgslsmith_index_u32(~(var_2.d.a ^ var_1.x), 26u)]), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(var_2.d.c - -589f), _wgslsmith_f_op_f32(-var_2.d.c)))), !global0[_wgslsmith_index_u32(45607u, 5u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 26>();
    var var_0 = Struct_1(countOneBits(~select(_wgslsmith_dot_vec2_u32(vec2<u32>(47132u, u_input.c.x), u_input.b.yz), u_input.b.x, true)), !select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.b.x << (u_input.c.x % 32u)), 5u)], !select(global0[_wgslsmith_index_u32(38567u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1435f + 136f)))));
    global0 = array<vec2<bool>, 5>();
    var var_1 = Struct_4(var_0.c, _wgslsmith_div_vec3_i32(vec3<i32>(14492i, (i32(-1i) * -2147483647i) >> (u_input.b.x % 32u), ~1i & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -29037i), vec3<i32>(-38029i, 3120i, -1i))), max(abs(~vec3<i32>(1i, -8215i, -15816i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 50665i), vec2<i32>(0i, 14771i)), ~45100i, _wgslsmith_sub_i32(0i, -32489i)))), var_0.c, Struct_1(reverseBits(_wgslsmith_dot_vec2_u32(u_input.a.yy << (u_input.a.zy % vec2<u32>(32u)), vec2<u32>(var_0.a, var_0.a))), vec2<bool>(true, true), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + 1000f))));
    let var_2 = true || (true | var_0.b.x);
    var var_3 = func_1();
    let var_4 = u_input.c.x;
    let var_5 = var_1.d.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_1.d.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.a, 67336u), u_input.b.xx) >> (~var_0.a % 32u), var_4, 1u), vec4<f32>(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), -905f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-619f)), -1633f)));
}

