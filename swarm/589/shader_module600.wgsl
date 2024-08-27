struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-725f, 1500f, -1709f), vec3<f32>(348f, 699f, 1030f), vec3<f32>(-2460f, -1275f, 256f), vec3<f32>(180f, -1000f, 1164f), vec3<f32>(554f, -928f, -1768f), vec3<f32>(233f, 1000f, 361f), vec3<f32>(424f, 1597f, -490f), vec3<f32>(197f, -1000f, 134f), vec3<f32>(430f, -177f, 1000f), vec3<f32>(1058f, -795f, -398f), vec3<f32>(2243f, -606f, 1505f), vec3<f32>(-764f, 1253f, 189f), vec3<f32>(-946f, 571f, -763f), vec3<f32>(-1474f, -255f, -2007f), vec3<f32>(-651f, -1000f, 386f), vec3<f32>(-457f, 661f, -422f), vec3<f32>(1066f, 2001f, -1303f), vec3<f32>(-477f, -1532f, 1350f), vec3<f32>(-368f, 121f, -1014f), vec3<f32>(1064f, 104f, -237f), vec3<f32>(-873f, -941f, 1000f), vec3<f32>(1260f, 132f, -1410f), vec3<f32>(-2162f, -1565f, -1444f), vec3<f32>(-805f, -499f, -190f), vec3<f32>(-553f, -691f, 1956f), vec3<f32>(270f, -1000f, -738f), vec3<f32>(1110f, 1000f, 972f), vec3<f32>(762f, -1662f, -1000f), vec3<f32>(2461f, 366f, 1000f));

var<private> global2: array<i32, 28>;

var<private> global3: vec4<f32> = vec4<f32>(1278f, 1000f, -596f, 589f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> vec4<bool> {
    let var_0 = func_2(arg_0, ~(u_input.a | min(reverseBits(u_input.a), select(arg_1.c.zz, u_input.b.zy, false))));
    var var_1 = (arg_1.a.xx & (func_2(arg_0, ~arg_0.c.yz).a.yx << (arg_1.c.xz % vec2<u32>(32u)))) >> (arg_1.c.zz % vec2<u32>(32u));
    var var_2 = -607f;
    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + global3.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1121f), global3.x, select(arg_2.x, true, true)))))));
    let var_3 = u_input.b;
    return select(vec4<bool>(!arg_2.x || any(select(vec3<bool>(true, false, false), arg_2, false)), arg_2.x, all(arg_2.zx), !arg_3), !(!select(vec4<bool>(true, true, true, false), !vec4<bool>(arg_3, false, arg_3, false), true || arg_3)), !(_wgslsmith_f_op_f32(-527f - global3.x) >= _wgslsmith_f_op_f32(round(-1743f))) != arg_3);
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_div_u32(u_input.a.x, 0u);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(447f, _wgslsmith_f_op_f32(abs(global3.x))))))), reverseBits(u_input.a));
    var var_2 = func_2(func_2(func_2(func_2(Struct_1(vec4<i32>(2147483647i, -2147483647i, global2[_wgslsmith_index_u32(var_1.b.x, 28u)], -11204i), arg_0.x, u_input.b), abs(u_input.b.xy)), u_input.b.yy), ~u_input.a), vec2<u32>(1u, 1u) & (vec2<u32>(u_input.b.x | 0u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_1.b.x, 1u))) & abs(~vec2<u32>(6549u, u_input.b.x))));
    let var_3 = firstLeadingBit(~(~(~vec3<u32>(var_2.c.x, 37823u, 25117u)))) >> ((firstTrailingBit(~(u_input.b & vec3<u32>(1u, 17748u, 68621u))) & func_2(func_2(Struct_1(vec4<i32>(77968i, arg_0.x, global2[_wgslsmith_index_u32(61444u, 28u)], 34573i), 0i, vec3<u32>(var_0, 0u, var_2.c.x)), ~vec2<u32>(u_input.b.x, var_2.c.x)), var_1.b).c) % vec3<u32>(32u));
    var var_4 = func_2(func_2(func_2(Struct_1(var_2.a, ~var_2.b, vec3<u32>(u_input.a.x, var_2.c.x, 0u)), ~countOneBits(u_input.a)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 14647u, var_2.c.x, 1906u), firstLeadingBit(vec4<u32>(4294967295u, var_3.x, 31705u, 16743u))), var_0)), ~(func_2(Struct_1(vec4<i32>(0i, 29703i, var_2.a.x, 1i), -50897i, vec3<u32>(var_3.x, 37497u, 39501u)), u_input.a).c.xx | abs(~vec2<u32>(43390u, 38223u))));
    return select(any(vec2<bool>(any(vec3<bool>(false, false, false)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))))), _wgslsmith_f_op_f32(floor(591f)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-261f, var_1.a)), any(func_1(Struct_1(max(var_2.a, var_4.a), arg_0.x, var_3), Struct_1(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_3.x, 28u)], var_4.b, 1i) | vec4<i32>(51891i, 18289i, 1i, arg_0.x), 2147483647i, firstTrailingBit(vec3<u32>(4294967295u, 47486u, var_0))), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), func_1(Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)], 31205i, global2[_wgslsmith_index_u32(u_input.b.x, 28u)]), global2[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.b), Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], global2[_wgslsmith_index_u32(u_input.b.x, 28u)], global2[_wgslsmith_index_u32(39797u, 28u)], -1i), global2[_wgslsmith_index_u32(1u, 28u)], vec3<u32>(u_input.b.x, u_input.b.x, 5023u)), vec3<bool>(true, true, true), false))), func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(-37035i, -29308i, -47089i), -vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], -7329i, 20081i))), true));
    global2 = array<i32, 28>();
    let var_1 = Struct_2(1000f, max(vec2<u32>(~0u, ~u_input.b.x) << (u_input.a % vec2<u32>(32u)), select(_wgslsmith_div_vec2_u32(u_input.a, ~u_input.b.xz), ~u_input.a, select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(false, true)))));
    global0 = select(~(~_wgslsmith_sub_u32(~1u, u_input.a.x)), u_input.a.x, !(var_1.b.x < ~(~u_input.a.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(floor(var_1.a)), firstTrailingBit(~vec2<u32>(0u, var_1.b.x)));
    var var_3 = var_1;
    let var_4 = -380f;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec2<i32>(26645i, -101223i) << (var_1.b % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 22672i), vec2<i32>(global2[_wgslsmith_index_u32(13700u, 28u)], global2[_wgslsmith_index_u32(var_2.b.x, 28u)]), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)]))), _wgslsmith_clamp_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(var_1.b.x, 28u)], 15118i), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], -2147483647i), vec2<i32>(global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(27239u, 28u)])) | max(vec2<i32>(global2[_wgslsmith_index_u32(1u, 28u)], 0i), vec2<i32>(global2[_wgslsmith_index_u32(0u, 28u)], -53336i)))), ~(~u_input.a.x), select(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.b.x, var_3.b.x), vec2<u32>(1u, u_input.b.x)), vec2<u32>(4294967295u, var_2.b.x)), var_3.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, 4294967295u, var_3.b.x), u_input.b) | var_2.b.x), vec4<u32>(~_wgslsmith_add_u32(var_2.b.x, 1u), firstLeadingBit(0u) | _wgslsmith_clamp_u32(u_input.b.x, 44130u, u_input.b.x), var_1.b.x, abs(~var_2.b.x)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<u32>(min(abs(~var_3.b.x), ~_wgslsmith_mult_u32(1u, var_1.b.x)), ~(u_input.a.x ^ countOneBits(var_1.b.x)), _wgslsmith_div_u32(~_wgslsmith_div_u32(u_input.b.x, 1u), 73097u), var_1.b.x));
}

