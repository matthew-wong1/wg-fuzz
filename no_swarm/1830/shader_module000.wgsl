struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-800f, -277f), vec2<f32>(-143f, 1723f), vec2<f32>(-2033f, 661f), vec2<f32>(1000f, 264f), vec2<f32>(-959f, 1615f), vec2<f32>(-309f, 422f), vec2<f32>(1000f, 1000f), vec2<f32>(-946f, -1264f), vec2<f32>(-1178f, 424f), vec2<f32>(-1000f, -600f), vec2<f32>(1254f, -2085f), vec2<f32>(-215f, 1315f), vec2<f32>(-995f, 1000f), vec2<f32>(-428f, 1712f), vec2<f32>(-677f, -642f), vec2<f32>(-136f, 991f), vec2<f32>(989f, -817f), vec2<f32>(-2007f, -1060f), vec2<f32>(-886f, -622f), vec2<f32>(2185f, 1000f), vec2<f32>(-965f, -731f), vec2<f32>(-871f, -340f), vec2<f32>(1576f, -658f), vec2<f32>(841f, 1985f), vec2<f32>(-1000f, -1853f), vec2<f32>(1055f, 1890f), vec2<f32>(1000f, -1672f), vec2<f32>(-510f, -527f), vec2<f32>(1230f, 546f));

var<private> global1: vec2<bool>;

var<private> global2: array<bool, 7> = array<bool, 7>(false, true, false, true, false, true, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = Struct_1(abs(max(~(u_input.d >> (vec3<u32>(1u, u_input.c, arg_0.a) % vec3<u32>(32u))), vec3<i32>(abs(arg_0.b.a.x), _wgslsmith_mult_i32(u_input.e, u_input.e), -61646i ^ arg_0.b.b.a.a.x))));
    var var_1 = Struct_1(_wgslsmith_mult_vec3_i32(firstLeadingBit(u_input.d), -vec3<i32>(_wgslsmith_clamp_i32(var_0.a.x, -1i, arg_0.e.x), u_input.d.x ^ -2147483647i, 1761i)));
    var var_2 = Struct_5(arg_0.a, Struct_3(vec4<i32>(25126i, countOneBits(~(-13545i)), -arg_1.a.a.x, var_1.a.x), Struct_2(arg_1.a)), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.a.a.x, u_input.e, u_input.e), countOneBits(arg_1.a.a)), -vec3<i32>(-1417i, var_0.a.x, arg_1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1327f))), vec4<i32>(-(-arg_0.b.b.a.a.x << (arg_0.a % 32u)), 38631i, u_input.d.x << (_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a, arg_0.a), ~vec2<u32>(41798u, u_input.b.x)) % 32u), 2147483647i));
    global0 = array<vec2<f32>, 29>();
    let var_3 = var_2.a;
    return vec2<i32>(arg_1.a.a.x, _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_div_i32(41163i, arg_0.c)), var_0.a.x) | 28494i);
}

fn func_2() -> Struct_4 {
    global0 = array<vec2<f32>, 29>();
    global2 = array<bool, 7>();
    var var_0 = Struct_3(vec4<i32>(abs(_wgslsmith_mult_i32(45024i, ~u_input.d.x)), -u_input.e, ~u_input.d.x, 0i), Struct_2(Struct_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(-1315i, 0i, 1i), u_input.d))));
    let var_1 = vec3<i32>(-2265i, _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.d.x, abs(~var_0.b.a.a.x)), -func_3(Struct_5(u_input.a.x, Struct_3(vec4<i32>(u_input.e, 1i, -19868i, 0i), Struct_2(Struct_1(u_input.d))), 1i, 479f, vec4<i32>(var_0.b.a.a.x, 0i, -2147483647i, var_0.b.a.a.x)), var_0.b)), -45586i);
    global0 = array<vec2<f32>, 29>();
    return Struct_4(any(select(select(select(vec2<bool>(true, false), vec2<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 7u)], true)), vec2<bool>(true, false), global1.x), vec2<bool>(true, global2[_wgslsmith_index_u32(46004u, 7u)]), select(select(vec2<bool>(global1.x, false), vec2<bool>(false, false), vec2<bool>(true, global1.x)), select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 7u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 7u)], false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global1.x)), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 7u)], global2[_wgslsmith_index_u32(0u, 7u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-590f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(770f - 600f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(151f))))), select(!select(vec4<bool>(global1.x, false, true, false), select(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(31027u, 7u)], true), vec4<bool>(global2[_wgslsmith_index_u32(17369u, 7u)], global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global1.x, false), vec4<bool>(true, true, global1.x, false)), true), vec4<bool>(false, !any(vec4<bool>(false, true, true, true)), _wgslsmith_add_i32(u_input.e, 46757i) == 1i, select(any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], true, true)), true, true)), global2[_wgslsmith_index_u32(~u_input.c, 7u)]), Struct_2(var_0.b.a), var_0.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_2) -> Struct_4 {
    let var_0 = Struct_4(select(!any(select(arg_1.c, vec4<bool>(arg_1.c.x, false, false, global1.x), global1.x)), 1918f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b))), global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1008f), arg_1.c, func_2().d, func_2().d);
    global2 = array<bool, 7>();
    var var_1 = Struct_2(arg_2.a);
    let var_2 = !arg_1.c.x;
    var_1 = arg_2;
    return var_0;
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    global1 = select(func_2().c.wy, vec2<bool>(!((arg_0.d.a.a.x <= -51501i) && global2[_wgslsmith_index_u32(~67859u, 7u)]), !any(arg_0.c.xw)), !(!select(vec2<bool>(arg_0.a, false), select(vec2<bool>(arg_0.c.x, true), arg_0.c.wz, true), arg_0.c.yz)));
    let var_0 = func_2().e;
    global2 = array<bool, 7>();
    global2 = array<bool, 7>();
    let var_1 = Struct_1(~arg_0.d.a.a);
    return var_0;
}

fn func_1(arg_0: bool) -> vec4<i32> {
    let var_0 = Struct_3(firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(~u_input.e, 8072i), (u_input.e | u_input.e) & u_input.d.x, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.e, u_input.d.x), u_input.e), countOneBits(u_input.d.x) << (~u_input.a.x % 32u))), func_5(func_4(_wgslsmith_div_vec2_u32(vec2<u32>(46711u, u_input.c), vec2<u32>(1u, 107688u)) >> (~vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), func_2(), Struct_2(func_2().d.a))));
    global1 = vec2<bool>(u_input.a.x > u_input.a.x, !select(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(0u, 7u)], global1.x), false)), !(!arg_0), arg_0));
    let var_1 = ~vec2<u32>(0u, 10698u) ^ ~vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.c, 1u, u_input.c, u_input.b.x) >> (u_input.b % vec4<u32>(32u))), firstTrailingBit(18333u));
    global2 = array<bool, 7>();
    let var_2 = vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, 1u), 7u)], ~(~min(0i, u_input.e)) != (i32(-1i) * -27210i));
    return _wgslsmith_mult_vec4_i32(min(var_0.a, vec4<i32>(-(0i >> (0u % 32u)), u_input.d.x, u_input.d.x, var_0.a.x)), -(min(_wgslsmith_div_vec4_i32(vec4<i32>(-67868i, -38496i, 2751i, u_input.e), var_0.a), -var_0.a) & select(var_0.a, firstLeadingBit(var_0.a), var_2.x)));
}

fn func_6(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_2 {
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    var var_1 = Struct_3(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.d.x, u_input.e, -30110i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -3980i, u_input.d.x, u_input.e), vec4<i32>(25233i, 10313i, u_input.e, -2897i))), func_6(~countOneBits(func_1(global1.x)), max(_wgslsmith_mod_vec3_i32(u_input.d, -u_input.d), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.d.x), u_input.d)), func_5(Struct_4(!global2[_wgslsmith_index_u32(u_input.c, 7u)], _wgslsmith_f_op_f32(f32(-1f) * -993f), vec4<bool>(global2[_wgslsmith_index_u32(28827u, 7u)], global2[_wgslsmith_index_u32(16324u, 7u)], global1.x, global1.x), func_4(vec2<u32>(u_input.b.x, 1u), Struct_4(global1.x, 873f, vec4<bool>(false, global1.x, true, false), Struct_2(Struct_1(u_input.d)), Struct_2(Struct_1(vec3<i32>(-3701i, u_input.e, -38318i)))), Struct_2(Struct_1(u_input.d))).e, Struct_2(Struct_1(vec3<i32>(u_input.e, u_input.e, 33485i))))), u_input.b.zx));
    var var_2 = func_4(select(u_input.b.zy, vec2<u32>(~(~4294967295u), u_input.c >> (4294967295u % 32u)), vec2<bool>(any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 7u)])), global2[_wgslsmith_index_u32(u_input.a.x, 7u)])), Struct_4(global2[_wgslsmith_index_u32(firstTrailingBit(max(reverseBits(u_input.b.x), ~u_input.c)), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1286f)) - -1435f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1106f * -1458f))), func_4(u_input.b.zx, func_4(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(u_input.b.x, u_input.c)), func_4(u_input.a, Struct_4(true, 1000f, vec4<bool>(false, global2[_wgslsmith_index_u32(30718u, 7u)], false, global1.x), Struct_2(var_1.b.a), Struct_2(Struct_1(vec3<i32>(var_1.a.x, var_1.b.a.a.x, var_1.a.x)))), var_1.b), func_5(Struct_4(global2[_wgslsmith_index_u32(u_input.c, 7u)], -1155f, vec4<bool>(false, global1.x, global1.x, false), Struct_2(var_1.b.a), Struct_2(var_1.b.a)))), var_1.b).c, Struct_2(Struct_1(~vec3<i32>(2147483647i, 13722i, var_1.b.a.a.x))), var_1.b), var_1.b);
    var var_3 = func_2().a;
    var_2 = func_2();
    var var_4 = 50774i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(-select(var_1.b.a.a.zy | vec2<i32>(var_2.d.a.a.x, var_1.a.x), ~vec2<i32>(2147483647i, u_input.e), vec2<bool>(var_2.a, global2[_wgslsmith_index_u32(u_input.a.x, 7u)])), ~(-vec2<i32>(0i, var_1.b.a.a.x))), ~firstTrailingBit(vec4<u32>(u_input.c << (u_input.c % 32u), ~12279u, ~u_input.a.x, ~u_input.b.x)), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(~3597u, min(u_input.a.x, 2907u)), vec2<u32>(~31391u, u_input.b.x))), u_input.e);
}

