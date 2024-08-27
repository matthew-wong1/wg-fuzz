struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<u32>(1979u, 54169u, 1u), vec3<bool>(true, false, false), Struct_1(vec4<bool>(true, false, true, false), 66790i, -4340i, 1u), vec3<f32>(953f, 1000f, -820f), vec4<u32>(28827u, 1u, 0u, 21223u)), Struct_2(vec3<u32>(4317u, 7805u, 0u), vec3<bool>(true, true, false), Struct_1(vec4<bool>(true, false, false, false), -49740i, 1i, 4294967295u), vec3<f32>(-601f, -943f, -835f), vec4<u32>(4294967295u, 14000u, 20727u, 6575u)), Struct_2(vec3<u32>(0u, 0u, 65309u), vec3<bool>(false, true, false), Struct_1(vec4<bool>(true, true, false, false), -1i, 80708i, 15679u), vec3<f32>(-1721f, -1436f, -2470f), vec4<u32>(1u, 13260u, 38451u, 4294967295u)), Struct_2(vec3<u32>(27665u, 1u, 4294967295u), vec3<bool>(false, true, false), Struct_1(vec4<bool>(true, false, true, false), 26472i, 35820i, 0u), vec3<f32>(1000f, 1607f, -216f), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)), Struct_2(vec3<u32>(7965u, 1013u, 80411u), vec3<bool>(true, false, false), Struct_1(vec4<bool>(true, true, true, true), 1i, -1i, 1u), vec3<f32>(-915f, 1781f, -210f), vec4<u32>(0u, 4294967295u, 37943u, 0u)), Struct_2(vec3<u32>(28625u, 1u, 0u), vec3<bool>(false, true, false), Struct_1(vec4<bool>(false, true, false, true), 984i, 29339i, 32669u), vec3<f32>(618f, -1369f, 1000f), vec4<u32>(29548u, 1u, 1u, 1u)), Struct_2(vec3<u32>(83240u, 108999u, 18780u), vec3<bool>(true, true, false), Struct_1(vec4<bool>(false, false, false, true), 1i, 55133i, 13206u), vec3<f32>(-226f, 307f, -1111f), vec4<u32>(1u, 4294967295u, 0u, 12874u)), Struct_2(vec3<u32>(1u, 4294967295u, 51784u), vec3<bool>(true, false, false), Struct_1(vec4<bool>(false, true, false, true), -6671i, 17121i, 3812u), vec3<f32>(-258f, 130f, -131f), vec4<u32>(58977u, 1u, 1039u, 28178u)), Struct_2(vec3<u32>(94569u, 24075u, 19215u), vec3<bool>(false, false, false), Struct_1(vec4<bool>(false, false, true, false), 23266i, 1i, 1u), vec3<f32>(1582f, 311f, 1000f), vec4<u32>(95458u, 15733u, 4294967295u, 24566u)), Struct_2(vec3<u32>(57757u, 4294967295u, 5086u), vec3<bool>(true, true, false), Struct_1(vec4<bool>(false, true, true, false), 1i, 30592i, 48307u), vec3<f32>(976f, -177f, -193f), vec4<u32>(4294967295u, 43795u, 25086u, 69064u)), Struct_2(vec3<u32>(10006u, 42833u, 60784u), vec3<bool>(false, false, true), Struct_1(vec4<bool>(false, false, false, true), 0i, 1i, 1u), vec3<f32>(1444f, -146f, -635f), vec4<u32>(1u, 4294967295u, 95042u, 42261u)), Struct_2(vec3<u32>(1u, 1u, 4294967295u), vec3<bool>(true, false, false), Struct_1(vec4<bool>(true, true, false, true), 20414i, i32(-2147483648), 79650u), vec3<f32>(-1000f, -665f, -221f), vec4<u32>(61156u, 31146u, 4294967295u, 1u)), Struct_2(vec3<u32>(12137u, 4294967295u, 2551u), vec3<bool>(true, true, false), Struct_1(vec4<bool>(true, false, true, true), i32(-2147483648), -16939i, 42569u), vec3<f32>(107f, -1987f, -243f), vec4<u32>(1u, 0u, 56298u, 1u)), Struct_2(vec3<u32>(94376u, 3800u, 18469u), vec3<bool>(false, false, false), Struct_1(vec4<bool>(false, false, false, true), i32(-2147483648), 1i, 29802u), vec3<f32>(-123f, 1563f, 835f), vec4<u32>(0u, 0u, 0u, 4294967295u)), Struct_2(vec3<u32>(8124u, 0u, 36815u), vec3<bool>(true, true, false), Struct_1(vec4<bool>(false, false, true, false), 0i, i32(-2147483648), 1u), vec3<f32>(781f, 1492f, -803f), vec4<u32>(4409u, 2237u, 4294967295u, 0u)), Struct_2(vec3<u32>(909u, 4294967295u, 56723u), vec3<bool>(true, true, false), Struct_1(vec4<bool>(false, false, true, false), -1i, -28354i, 4294967295u), vec3<f32>(-855f, -484f, -971f), vec4<u32>(53216u, 4294967295u, 1u, 4294967295u)), Struct_2(vec3<u32>(1u, 79749u, 21437u), vec3<bool>(false, false, false), Struct_1(vec4<bool>(false, false, true, false), i32(-2147483648), -1i, 1u), vec3<f32>(1658f, -709f, -1311f), vec4<u32>(13798u, 79785u, 0u, 1u)));

var<private> global1: vec3<u32> = vec3<u32>(1u, 15687u, 0u);

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = 1u;
    let var_1 = Struct_4(any(global2.c.a.zwz), vec2<i32>(_wgslsmith_div_i32(abs(0i), min(-u_input.c.x, global2.c.c << (arg_0.x % 32u))), ~u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f * global2.d.x)) + 782f));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d.x, -829f)))));
    var var_3 = Struct_3(global2.c, u_input.c.zw | select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, global2.c.c), vec2<i32>(var_1.b.x, 1i)), u_input.e.x), (vec2<i32>(0i, var_1.b.x) | vec2<i32>(global2.c.c, u_input.e.x)) >> (global1.xx % vec2<u32>(32u)), !select(global2.c.a.yx, vec2<bool>(var_1.a, true), global2.c.a.x)), false);
    let var_4 = select(select(select(vec2<bool>(!global2.c.a.x, any(global2.c.a)), global2.b.zz, _wgslsmith_dot_vec4_u32(global2.e, vec4<u32>(global2.a.x, var_0, global1.x, var_3.a.d)) >= ~var_3.a.d), global2.b.xy, var_3.a.a.xy), global2.c.a.ww, vec2<bool>(global2.c.a.x, true));
    return false;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_3(global2.c, _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(u_input.e.xy, vec2<i32>(u_input.c.x, u_input.e.x))), -firstLeadingBit(u_input.e.zx)), u_input.e.xw), func_3(_wgslsmith_mod_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(11537u, 4294967295u), global1.yy), ~global2.e.xx, !global2.c.a.x), vec2<u32>(~global1.x, _wgslsmith_dot_vec2_u32(global2.e.yz, vec2<u32>(u_input.b.x, 40326u))))));
    let var_1 = -12691i;
    var var_2 = Struct_1(select(select(global2.c.a, select(!global2.c.a, vec4<bool>(true, false, false, true), false), select(!vec4<bool>(false, var_0.c, false, var_0.c), var_0.a.a, global2.c.a)), vec4<bool>(all(select(vec2<bool>(global2.b.x, false), vec2<bool>(var_0.c, global2.b.x), var_0.a.a.yx)), global2.b.x, !all(var_0.a.a.xw), var_0.c), arg_0 <= _wgslsmith_div_f32(-198f, _wgslsmith_f_op_f32(312f + arg_0))), abs(u_input.c.x), ~(-global2.c.c), global2.c.d);
    var var_3 = ~u_input.a.xxz;
    let var_4 = Struct_4((_wgslsmith_sub_i32(-44699i, global2.c.c) & ~u_input.c.x) == -var_1, -(_wgslsmith_mod_vec2_i32(var_0.b, min(var_0.b, u_input.c.xw)) << (var_3.zx % vec2<u32>(32u))), _wgslsmith_f_op_f32(select(-311f, global2.d.x, true | (0u >= var_3.x))));
    return var_0.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> Struct_5 {
    global0 = array<Struct_2, 17>();
    let var_0 = firstLeadingBit(~(~abs(u_input.a.wz)) & ~vec2<u32>(~112104u, ~u_input.d.x));
    var var_1 = Struct_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, abs(49011u), 53454u << (u_input.a.x % 32u)), select(global2.a, vec3<u32>(u_input.d.x, 1u, 14360u), global2.b) << (vec3<u32>(arg_2, global2.a.x, global2.c.d) % vec3<u32>(32u))), !arg_1.a.xwz, func_2(_wgslsmith_div_f32(845f, global2.d.x)), vec3<f32>(249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.x - _wgslsmith_f_op_f32(global2.d.x - arg_3.x)) * _wgslsmith_f_op_f32(-arg_3.x)), global2.d.x), select(~firstLeadingBit(global2.e), u_input.a, vec4<bool>(true & !arg_0.x, true, arg_0.x, func_3(_wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(global1.x, 32284u), global2.e.yz)))));
    global0 = array<Struct_2, 17>();
    let var_2 = Struct_3(var_1.c, vec2<i32>(-var_1.c.b, select(u_input.e.x | -24588i, 0i, false) ^ global2.c.c), !(arg_0.x | arg_1.a.x));
    return Struct_5(firstTrailingBit(~vec3<i32>(~var_2.a.c, -13405i, abs(var_2.a.c))), (_wgslsmith_add_u32(firstLeadingBit(u_input.a.x), global2.a.x << (4294967295u % 32u)) < ~1u) && !all(select(vec4<bool>(arg_1.a.x, arg_0.x, arg_1.a.x, false), vec4<bool>(true, false, var_1.b.x, arg_1.a.x), false)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i, global2.c.b, abs(arg_0.x), arg_0.x), u_input.c);
    var var_1 = func_4(!select(vec2<bool>(all(global2.c.a.xz), true), global2.b.xy, !(global2.b.x | true)), func_2(_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_sub_u32(13975u, 6549u), arg_1.zwx);
    let var_2 = min(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))).c, _wgslsmith_dot_vec2_i32(select(u_input.c.xy, _wgslsmith_mod_vec2_i32(arg_0.zy, vec2<i32>(2147483647i, -2147483647i)), global2.c.a.yw) ^ _wgslsmith_add_vec2_i32(var_1.a.zz, -vec2<i32>(arg_0.x, global2.c.b)), u_input.c.wy));
    global1 = ~(~u_input.b);
    var var_3 = Struct_4(!func_2(global2.d.x).a.x, arg_0.yx, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1693f, global2.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) - global2.d.x), global2.d.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: u32) -> Struct_2 {
    var var_0 = vec2<u32>(~(~global2.e.x), ~_wgslsmith_mult_u32(~40263u & abs(arg_2), arg_2));
    let var_1 = global2.b.x;
    global1 = ~arg_0.xyw;
    var_0 = ~vec2<u32>(0u, 44064u >> (_wgslsmith_add_u32(abs(global1.x), ~global1.x) % 32u));
    var_0 = vec2<u32>(select(firstTrailingBit(u_input.a.x << (arg_2 % 32u)), ~abs(global1.x), true), countOneBits(global1.x));
    return Struct_2(arg_0.yyy, vec3<bool>(!(false && func_4(vec2<bool>(false, false), Struct_1(vec4<bool>(global2.c.a.x, global2.c.a.x, global2.c.a.x, false), global2.c.b, u_input.c.x, 4294967295u), u_input.b.x, vec3<f32>(global2.d.x, -833f, global2.d.x)).b), any(global2.c.a), !any(global2.c.a.yx)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1127f + arg_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1042f, arg_1.x, arg_1.x)) - arg_1))), ~(select(abs(global2.e), vec4<u32>(0u, arg_2, var_0.x, global1.x), vec4<bool>(true, global2.b.x, global2.c.a.x, global2.c.a.x)) >> (arg_0 % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(abs(4294967295u), _wgslsmith_add_u32(u_input.b.x, 1u)), ~(global1.yy ^ global2.e.zy));
    let var_1 = func_5(u_input.a, _wgslsmith_f_op_vec3_f32(global2.d - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global2.d.x, -1294f) + vec3<f32>(-730f, global2.d.x, 416f)), vec3<f32>(_wgslsmith_f_op_f32(global2.d.x + global2.d.x), _wgslsmith_f_op_f32(f32(-1f) * -750f), _wgslsmith_f_op_f32(func_1(u_input.e.wwz, vec4<f32>(-1237f, global2.d.x, global2.d.x, global2.d.x), u_input.b.zx))), func_2(_wgslsmith_f_op_f32(trunc(-1527f))).a.xxz))), countOneBits(_wgslsmith_div_u32(max(~u_input.a.x, global2.a.x >> (global1.x % 32u)), 60052u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1538f + -396f)), 1770f));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2), _wgslsmith_f_op_vec2_f32(-var_1.d.yz));
    var_0 = global2.e.ww;
    var var_4 = func_5(vec4<u32>(~(~(var_1.c.d ^ var_0.x)), ~4294967295u, func_5(select(vec4<u32>(var_1.e.x, var_0.x, global1.x, u_input.a.x), vec4<u32>(71586u, global1.x, var_0.x, 0u), vec4<bool>(var_1.b.x, false, true, global2.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.d.x, 381f, var_3.x))) * vec3<f32>(var_1.d.x, var_3.x, 773f)), var_1.a.x).a.x, ~var_1.a.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.d.x, global2.d.x, var_3.x))))))))), 1u).c.a.zwy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(682f, global2.d.x, true)), _wgslsmith_f_op_f32(func_1(u_input.e.zxx, vec4<f32>(-715f, var_2.x, var_3.x, -326f), vec2<u32>(72622u, 3531u))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_2.x, -1000f))))) - _wgslsmith_f_op_f32(1f + global2.d.x)), var_1.c.c, select(reverseBits(firstTrailingBit(max(vec3<i32>(-1i, 19579i, global2.c.b), vec3<i32>(var_1.c.c, -26895i, -1i)))), select(~vec3<i32>(u_input.c.x, var_1.c.b, 43311i), vec3<i32>(global2.c.c & u_input.c.x, 19742i, -2612i), !global2.b.x), var_1.c.a.x), -36387i);
}

