struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, vec4<bool>(true, false, true, true), vec3<i32>(0i, 26809i, 2147483647i), vec2<f32>(250f, -1359f)), Struct_1(false, vec4<bool>(false, false, true, false), vec3<i32>(1i, 35666i, -12102i), vec2<f32>(198f, 1000f)), Struct_1(false, vec4<bool>(false, true, true, false), vec3<i32>(-42569i, 18798i, -44597i), vec2<f32>(-1113f, -127f)), Struct_1(true, vec4<bool>(false, true, false, false), vec3<i32>(4847i, 35307i, 26784i), vec2<f32>(-603f, -218f)), Struct_1(true, vec4<bool>(true, true, true, true), vec3<i32>(-1i, 2147483647i, 0i), vec2<f32>(-458f, -675f)), Struct_1(true, vec4<bool>(false, true, true, true), vec3<i32>(-47684i, -1i, 1i), vec2<f32>(-401f, -718f)), Struct_1(true, vec4<bool>(true, true, true, false), vec3<i32>(-1i, -55534i, -15468i), vec2<f32>(658f, 1126f)), Struct_1(false, vec4<bool>(true, false, false, false), vec3<i32>(2147483647i, -7405i, i32(-2147483648)), vec2<f32>(827f, 1346f)), Struct_1(true, vec4<bool>(false, true, false, true), vec3<i32>(0i, i32(-2147483648), 25319i), vec2<f32>(-575f, 1168f)), Struct_1(false, vec4<bool>(true, false, true, true), vec3<i32>(-1i, i32(-2147483648), 0i), vec2<f32>(-307f, 1000f)), Struct_1(true, vec4<bool>(false, false, true, true), vec3<i32>(29582i, 2147483647i, 2147483647i), vec2<f32>(-1335f, -696f)), Struct_1(false, vec4<bool>(true, true, false, true), vec3<i32>(-24376i, -1i, 0i), vec2<f32>(-414f, 1307f)), Struct_1(false, vec4<bool>(true, false, true, true), vec3<i32>(-48811i, 1i, -1i), vec2<f32>(-207f, -704f)), Struct_1(false, vec4<bool>(false, true, false, true), vec3<i32>(-9368i, 50385i, 4024i), vec2<f32>(370f, 1803f)), Struct_1(true, vec4<bool>(true, true, true, false), vec3<i32>(-16359i, 0i, 0i), vec2<f32>(618f, 2119f)), Struct_1(false, vec4<bool>(false, true, true, true), vec3<i32>(2147483647i, 3131i, 0i), vec2<f32>(383f, 816f)), Struct_1(false, vec4<bool>(false, true, false, true), vec3<i32>(0i, 2147483647i, 7341i), vec2<f32>(-714f, 171f)), Struct_1(true, vec4<bool>(false, false, true, false), vec3<i32>(2147483647i, 10061i, 2147483647i), vec2<f32>(-728f, 1050f)), Struct_1(false, vec4<bool>(true, true, true, false), vec3<i32>(-1i, 2147483647i, 1267i), vec2<f32>(-211f, -245f)), Struct_1(true, vec4<bool>(true, false, true, true), vec3<i32>(-7169i, 30299i, -1i), vec2<f32>(1075f, -1511f)), Struct_1(true, vec4<bool>(false, true, false, true), vec3<i32>(i32(-2147483648), 84129i, 0i), vec2<f32>(813f, 1544f)), Struct_1(true, vec4<bool>(false, false, false, false), vec3<i32>(-57205i, i32(-2147483648), 22213i), vec2<f32>(-1320f, 1000f)), Struct_1(true, vec4<bool>(false, false, false, false), vec3<i32>(-56370i, -42884i, 52770i), vec2<f32>(-355f, -1006f)), Struct_1(true, vec4<bool>(true, true, false, false), vec3<i32>(5229i, 4697i, i32(-2147483648)), vec2<f32>(1748f, 445f)), Struct_1(true, vec4<bool>(false, false, true, true), vec3<i32>(-1i, 22965i, i32(-2147483648)), vec2<f32>(1558f, -719f)), Struct_1(false, vec4<bool>(true, false, true, false), vec3<i32>(-26856i, 36533i, 2147483647i), vec2<f32>(-443f, 1000f)), Struct_1(false, vec4<bool>(true, true, false, false), vec3<i32>(-1297i, -24266i, -37136i), vec2<f32>(936f, 453f)), Struct_1(false, vec4<bool>(true, false, false, true), vec3<i32>(1i, 53777i, -1i), vec2<f32>(1000f, -866f)), Struct_1(true, vec4<bool>(true, false, true, true), vec3<i32>(-1i, 55815i, -3702i), vec2<f32>(-1387f, 906f)), Struct_1(false, vec4<bool>(false, false, true, false), vec3<i32>(-37741i, -15935i, -47167i), vec2<f32>(-860f, 523f)), Struct_1(true, vec4<bool>(true, false, false, false), vec3<i32>(1i, -1i, 2147483647i), vec2<f32>(471f, 745f)), Struct_1(true, vec4<bool>(false, true, false, false), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec2<f32>(436f, 378f)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> vec4<bool> {
    let var_0 = u_input.c;
    var var_1 = Struct_1(true, vec4<bool>(true & ((arg_0 != -1i) == all(vec2<bool>(true, false))), !all(select(vec4<bool>(global1.b.x, global1.a, global1.a, false), global1.b, vec4<bool>(global1.a, true, global1.a, global1.b.x))), all(select(select(vec3<bool>(false, true, global1.b.x), global1.b.zzz, global1.a), vec3<bool>(true, global1.a, true), true)), true), abs(_wgslsmith_div_vec3_i32(~global1.c, -(vec3<i32>(global1.c.x, -2147483647i, arg_0) & global1.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1.d, arg_1.zx))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-643f, 160f))))));
    let var_2 = _wgslsmith_add_i32(firstTrailingBit(global1.c.x), _wgslsmith_mod_i32(~global1.c.x, 3778i));
    global1 = global0[_wgslsmith_index_u32(u_input.a.x, 32u)];
    let var_3 = global1.a;
    return vec4<bool>(all(select(!(!vec3<bool>(false, global1.a, false)), select(vec3<bool>(false, true, global1.a), !vec3<bool>(var_1.a, true, false), !var_1.b.xxz), vec3<bool>(true, false, true))), true, !(!(var_0.x != 4294967295u)) != global1.b.x, all(vec3<bool>(var_1.a, var_1.b.x, any(!vec3<bool>(false, false, global1.b.x)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<i32> {
    global2 = array<Struct_1, 11>();
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(923f))), arg_1.d.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(420f - arg_1.d.x))) != arg_1.d.x, select(global1.b, func_3(2805i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, arg_1.d.x, -736f, 1000f) + vec4<f32>(-545f, global1.d.x, var_0, -1599f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, arg_1.d.x, var_0, arg_1.d.x))))), any(!func_3(arg_1.c.x, vec4<f32>(576f, arg_1.d.x, global1.d.x, arg_1.d.x)).yxx)), arg_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-var_0)), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_div_f32(var_0, arg_1.d.x)))));
    let var_2 = ~(~u_input.c);
    global0 = array<Struct_1, 32>();
    return var_1.c;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = 0i;
    let var_1 = arg_1.c.x | 34469i;
    var var_2 = Struct_1(false, arg_1.b, _wgslsmith_add_vec3_i32(arg_1.c, _wgslsmith_sub_vec3_i32(func_2(~arg_2.zx, Struct_1(false, arg_1.b, vec3<i32>(global1.c.x, global1.c.x, var_1), vec2<f32>(arg_1.d.x, global1.d.x))), vec3<i32>(_wgslsmith_sub_i32(global1.c.x, var_1), -2147483647i, ~2147483647i))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1.d))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(-313f))), _wgslsmith_f_op_vec2_f32(min(global1.d, _wgslsmith_f_op_vec2_f32(round(arg_3.xw)))), vec2<bool>(arg_1.b.x | false, all(arg_1.b.zw)))))));
    var var_3 = arg_3;
    let var_4 = arg_1.a;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~u_input.a, vec4<u32>(0u, _wgslsmith_dot_vec2_u32(~u_input.c.yx, vec2<u32>(31365u, u_input.c.x)), 0u, max(8351u, ~u_input.b))), vec4<u32>(~arg_2.x, _wgslsmith_add_u32(1u & arg_2.x, u_input.c.x), ~arg_2.x << (firstTrailingBit(abs(41373u)) % 32u), max(~arg_2.x, ~(~u_input.b))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_2.yz, u_input.c.xx), ~6665u) & (1u >> (0u % 32u)), ~0u, ~arg_2.x, arg_2.x));
    global1 = Struct_1(!(!arg_0.a), vec4<bool>(all(vec3<bool>(true, false, true)), false, false || ((arg_1.x << (u_input.a.x % 32u)) == ~0i), arg_3.a && any(arg_3.b)), arg_1, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_3.d, global1.d))), global1.d));
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    return func_1(abs(max(select(arg_1.x, abs(24372i), true), ~global1.c.x)), arg_3, arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-230f, 475f, _wgslsmith_f_op_f32(step(arg_3.d.x, global1.d.x)), arg_0.d.x))) - vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1019f + arg_0.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.d.x)), _wgslsmith_f_op_f32(trunc(arg_3.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-828f - 498f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x - -915f) - _wgslsmith_f_op_f32(-global1.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global1.b.x, false, global1.a);
    let var_1 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, u_input.b, u_input.c.x) | vec3<u32>(0u, u_input.a.x, 6460u)), vec3<u32>(1u, 33548u, ~u_input.b))), 32u)];
    var var_2 = global2[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(4294967295u, u_input.b) >> (1u % 32u), ~(~0u)) << (~_wgslsmith_add_u32(u_input.c.x, u_input.b) % 32u), 11u)];
    var var_3 = var_2.a;
    global1 = func_4(func_1(max(max(_wgslsmith_mod_i32(global1.c.x, global1.c.x), ~1i), var_2.c.x), global2[_wgslsmith_index_u32(abs(u_input.b), 11u)], ~u_input.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2083f, 638f, -398f, var_1.d.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1298f, 625f, 543f, -426f)))))), ~vec3<i32>(firstLeadingBit(-30929i), -15688i, var_1.c.x >> (_wgslsmith_add_u32(u_input.a.x, u_input.c.x) % 32u)), firstLeadingBit(vec3<u32>(reverseBits(_wgslsmith_dot_vec2_u32(u_input.a.wy, u_input.c.xz)), 22888u, 12149u)), global2[_wgslsmith_index_u32(1u, 11u)]);
    var var_4 = func_1(37784i & min(-56529i, ~min(var_1.c.x, global1.c.x)), Struct_1(true, var_2.b, global1.c, global1.d), ~(vec3<u32>(u_input.c.x, 4294967295u, countOneBits(4294967295u)) << (vec3<u32>(countOneBits(u_input.b), countOneBits(59958u), 0u) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-863f, -250f, var_1.d.x, _wgslsmith_f_op_f32(194f * -1729f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_f_op_f32(sign(526f)), 1f, -1000f))));
    global2 = array<Struct_1, 11>();
    var_4 = global2[_wgslsmith_index_u32(u_input.c.x, 11u)];
    let var_5 = vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(13089i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-394f - var_2.d.x), -1893f, 865f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1.d.x))))))), vec4<i32>(firstTrailingBit(~2524i), ~_wgslsmith_add_i32(6076i, var_2.c.x << (0u % 32u)), var_2.c.x, 2147483647i), -var_2.c.x);
}

