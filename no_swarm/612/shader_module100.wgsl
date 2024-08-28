struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(false, vec4<bool>(false, true, false, false), vec3<f32>(718f, 919f, -1375f), vec4<i32>(19703i, 1i, 22501i, 34753i)), Struct_1(true, vec4<bool>(false, false, true, true), vec3<f32>(456f, 302f, -1036f), vec4<i32>(-2477i, -69731i, 0i, -1011i)), Struct_1(true, vec4<bool>(true, false, true, true), vec3<f32>(-946f, -786f, 856f), vec4<i32>(7089i, 0i, 1i, 27146i)), Struct_1(true, vec4<bool>(false, true, false, true), vec3<f32>(896f, -972f, 1442f), vec4<i32>(-1i, -4529i, 9640i, 4380i)), Struct_1(true, vec4<bool>(false, false, true, false), vec3<f32>(-132f, -316f, -203f), vec4<i32>(-37692i, 40567i, 0i, 0i)), Struct_1(false, vec4<bool>(true, false, false, false), vec3<f32>(707f, 1354f, -1217f), vec4<i32>(3809i, -1i, 1i, -4258i)), Struct_1(true, vec4<bool>(true, false, true, true), vec3<f32>(-1094f, 1019f, 394f), vec4<i32>(2147483647i, 42595i, i32(-2147483648), 24997i)), Struct_1(false, vec4<bool>(false, true, true, true), vec3<f32>(-1138f, 715f, -724f), vec4<i32>(34512i, 12616i, 1i, 2147483647i)), Struct_1(true, vec4<bool>(false, false, false, true), vec3<f32>(-1206f, 627f, -162f), vec4<i32>(2147483647i, 2147483647i, 14481i, 178i)), Struct_1(true, vec4<bool>(false, true, true, false), vec3<f32>(-1000f, 1734f, 1519f), vec4<i32>(0i, 0i, 21821i, 34149i)), Struct_1(true, vec4<bool>(true, true, true, true), vec3<f32>(1827f, -380f, -904f), vec4<i32>(16666i, i32(-2147483648), -1i, 2147483647i)), Struct_1(true, vec4<bool>(false, false, false, true), vec3<f32>(-423f, 537f, 282f), vec4<i32>(18319i, 27060i, 16613i, i32(-2147483648))), Struct_1(true, vec4<bool>(true, false, true, true), vec3<f32>(183f, 142f, -326f), vec4<i32>(19965i, -54973i, -59852i, 17721i)), Struct_1(true, vec4<bool>(true, true, false, false), vec3<f32>(-260f, 1000f, -1365f), vec4<i32>(19803i, -13191i, -39199i, 0i)), Struct_1(false, vec4<bool>(true, true, true, true), vec3<f32>(-1000f, 994f, 240f), vec4<i32>(1i, 0i, 59201i, 4888i)), Struct_1(false, vec4<bool>(true, false, false, true), vec3<f32>(-1183f, -100f, -615f), vec4<i32>(1i, 1033i, 37709i, 2147483647i)), Struct_1(false, vec4<bool>(false, false, true, false), vec3<f32>(1427f, -112f, 1789f), vec4<i32>(-731i, 2147483647i, -22372i, 30674i)), Struct_1(true, vec4<bool>(true, false, false, false), vec3<f32>(499f, 1632f, -409f), vec4<i32>(-10460i, 31743i, 1i, 18005i)), Struct_1(true, vec4<bool>(true, false, false, true), vec3<f32>(1396f, 540f, 776f), vec4<i32>(41604i, i32(-2147483648), 2147483647i, -33825i)), Struct_1(true, vec4<bool>(true, true, true, false), vec3<f32>(-1241f, 384f, 454f), vec4<i32>(-27652i, 9159i, 2147483647i, -49214i)), Struct_1(true, vec4<bool>(true, false, true, false), vec3<f32>(548f, -407f, 707f), vec4<i32>(i32(-2147483648), 1i, -1i, -9278i)), Struct_1(true, vec4<bool>(false, true, true, true), vec3<f32>(-2018f, -452f, 826f), vec4<i32>(2147483647i, -10564i, -31933i, 2147483647i)), Struct_1(false, vec4<bool>(true, true, false, true), vec3<f32>(-3856f, -1022f, 1392f), vec4<i32>(i32(-2147483648), -14975i, 2147483647i, 0i)), Struct_1(false, vec4<bool>(false, true, false, true), vec3<f32>(262f, 1535f, 942f), vec4<i32>(0i, 1i, 0i, -16108i)), Struct_1(true, vec4<bool>(false, false, false, false), vec3<f32>(-1042f, 2461f, 1460f), vec4<i32>(-1i, 24155i, 34355i, 2147483647i)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> u32 {
    return ~u_input.c.x;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    let var_1 = ~reverseBits(arg_1.d) ^ _wgslsmith_mult_vec4_i32(~(~(~var_0.d)), ~abs(select(vec4<i32>(2147483647i, u_input.b, 1i, 2147483647i), vec4<i32>(7293i, u_input.b, -2147483647i, 2147483647i), true)));
    var var_2 = 21843u << (~u_input.d % 32u);
    var var_3 = ~firstTrailingBit(vec2<u32>(4294967295u, _wgslsmith_mult_u32(u_input.c.x, 1u)) & ((u_input.a.xz ^ u_input.a.zy) >> (u_input.a.xz % vec2<u32>(32u))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.c.x)));
    return min(reverseBits(abs(~4569u) << (var_3.x % 32u)), 114966u);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = u_input.c.yw;
    var var_1 = 70576i;
    let var_2 = false;
    var var_3 = Struct_1(var_2 && any(vec4<bool>(!arg_0.a, false, false, true)), vec4<bool>(true | (true && any(arg_0.b.xxx)), true, all(!arg_0.b.zxz), true), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(-269f - arg_0.c.x), _wgslsmith_f_op_f32(select(1587f, arg_0.c.x, arg_0.b.x)), arg_0.c.x), select(arg_0.a, false, !arg_0.a))))), u_input.e);
    var var_4 = ~firstLeadingBit(vec4<u32>(countOneBits(1u), 34978u, func_3(false, global1[_wgslsmith_index_u32(u_input.c.x, 25u)]), 4294967295u));
    return Struct_1(var_0.x > var_4.x, vec4<bool>(!var_3.a, all(var_3.b.yx), !(!arg_0.a), !(!(var_3.c.x > -290f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x))), _wgslsmith_f_op_f32(max(arg_0.c.x, 821f)), arg_0.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(~19300i, firstTrailingBit(arg_2.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.e, arg_2), arg_0.d.x), arg_0.d.x), firstTrailingBit(arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -100f;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, u_input.d, u_input.c.x), u_input.c)), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -436f) + vec3<f32>(var_0, 405f, 1000f))), i32(-1i) * -1i, u_input.e.x, Struct_1(true, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, -795f, var_0), vec3<f32>(var_0, var_0, 1847f))), vec4<i32>(u_input.b, u_input.e.x, -1i, 9530i) | vec4<i32>(u_input.b, 26867i, 2147483647i, u_input.b)))), reverseBits(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 940f, 2220f))), i32(-1i) * -46721i, 0i, func_2(Struct_1(false, vec4<bool>(false, false, false, false), vec3<f32>(-1965f, 1650f, -253f), vec4<i32>(5904i, -1i, u_input.e.x, -1i)), u_input.d, u_input.e))), reverseBits(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, 67040u, u_input.c.x), _wgslsmith_clamp_u32(u_input.c.x, 1u, u_input.a.x), _wgslsmith_sub_u32(u_input.c.x, u_input.a.x))) << (reverseBits(u_input.d) % 32u)), 25u)];
    let var_2 = vec4<bool>(!any(select(func_2(Struct_1(false, vec4<bool>(var_1.b.x, var_1.a, var_1.a, var_1.a), var_1.c, var_1.d), 96382u, vec4<i32>(2029i, 2147483647i, var_1.d.x, u_input.b)).b.wz, select(vec2<bool>(true, true), var_1.b.xx, false), var_1.b.zx)), !(!(!(var_0 < var_1.c.x))), all(select(!(!var_1.b), select(vec4<bool>(false, true, var_1.a, var_1.a), !var_1.b, any(vec2<bool>(false, var_1.b.x))), var_1.a)), select(true & (any(var_1.b.wyw) || (3822i >= u_input.e.x)), all(!func_2(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], u_input.c.x, vec4<i32>(-82013i, var_1.d.x, var_1.d.x, u_input.e.x)).b.xyy), true));
    let var_3 = select(vec3<bool>(var_2.x, !(!(var_0 >= 1000f)), all(vec3<bool>(u_input.c.x == 0u, var_2.x, !var_1.b.x))), func_2(func_2(func_2(global1[_wgslsmith_index_u32(1u, 25u)], u_input.c.x, vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2147483647i)), ~(~6864u), ~(~vec4<i32>(var_1.d.x, u_input.e.x, 42560i, u_input.b))), 1u, abs(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 2147483647i, 2147483647i, var_1.d.x), vec4<i32>(u_input.b, -43305i, u_input.e.x, 10740i)))).b.ywx, vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1847f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1767f - var_1.c.x))), false, !any(var_2.xyw) && (var_1.a && true)));
    var var_4 = func_2(global1[_wgslsmith_index_u32(~firstTrailingBit(~(~30896u)), 25u)], u_input.a.x, abs(var_1.d));
    var var_5 = _wgslsmith_add_u32(u_input.d, ~func_3(var_1.b.x, Struct_1(var_1.a, var_1.b, vec3<f32>(-3017f, var_1.c.x, var_1.c.x), vec4<i32>(-22463i, var_4.d.x, 0i, -49713i))) | select(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, 1u), u_input.a.x), ~41842u | _wgslsmith_clamp_u32(u_input.a.x, u_input.c.x, u_input.d), var_4.a));
    let var_6 = u_input.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~91983u, var_6.x, u_input.d), vec4<u32>(reverseBits(var_6.x), reverseBits(countOneBits(~75866u)), ~_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, 0u), 31528u), 19665u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.c.x, -1000f) + 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-545f - -415f))));
}

