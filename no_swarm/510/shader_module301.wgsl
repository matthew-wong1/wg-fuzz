struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1448f;

var<private> global1: array<vec2<bool>, 3>;

var<private> global2: array<Struct_4, 28>;

var<private> global3: Struct_5 = Struct_5(vec3<i32>(26155i, 0i, 62244i), vec2<u32>(22256u, 4294967295u), vec2<bool>(true, true), vec4<u32>(0u, 134423u, 8147u, 1u));

var<private> global4: i32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec3_u32(global3.d.xyx, ~reverseBits(select(vec3<u32>(30481u, global3.d.x, 1u) ^ vec3<u32>(1u, global3.b.x, global3.b.x), global3.d.zzz, !vec3<bool>(true, global3.c.x, true))));
    global2 = array<Struct_4, 28>();
    var var_1 = global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(_wgslsmith_add_u32(global3.d.x, 27446u) & 1u, 0u) << (global3.b.x % 32u)), 28u)];
    global2 = array<Struct_4, 28>();
    var var_2 = firstLeadingBit(1i);
    return ~(abs(vec2<u32>(1u, abs(global3.d.x))) << (~_wgslsmith_add_vec2_u32(vec2<u32>(16532u, global3.d.x), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), global3.d.xy)) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> bool {
    global3 = Struct_5(global3.a, ~_wgslsmith_sub_vec2_u32(vec2<u32>(25652u, _wgslsmith_dot_vec2_u32(vec2<u32>(44285u, 4294967295u), global3.d.zw)), func_3() & firstLeadingBit(vec2<u32>(global3.b.x, 95779u))), vec2<bool>(true, global3.b.x == func_3().x), vec4<u32>(~(~_wgslsmith_dot_vec2_u32(global3.d.xx, vec2<u32>(global3.d.x, global3.d.x))), _wgslsmith_mod_u32(abs(1u), global3.b.x), global3.b.x & 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(global3.d.wzy, global3.d.wyw), select(global3.d.wyw, vec3<u32>(global3.b.x, global3.d.x, global3.b.x), true)), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(global3.b.x, 4294967295u, global3.d.x), global3.d.zww)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b.c.x)), _wgslsmith_f_op_f32(step(arg_1.c.b.c.x, _wgslsmith_f_op_f32(-arg_0.b.c.x))), _wgslsmith_f_op_f32(max(1000f, arg_0.b.c.x)), arg_1.c.b.c.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.c.x), _wgslsmith_f_op_f32(-435f - -139f), _wgslsmith_f_op_f32(arg_0.b.c.x * arg_1.c.b.c.x), _wgslsmith_f_op_f32(-arg_1.c.b.c.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.b.c.x, -693f, arg_0.b.c.x, -131f) * vec4<f32>(arg_0.b.c.x, 1000f, arg_1.c.b.c.x, -721f))))));
    global4 = -2147483647i;
    var var_1 = global3.d;
    let var_2 = Struct_5(-(vec3<i32>(_wgslsmith_dot_vec4_i32(arg_1.a, arg_1.a), 11563i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global3.a.x, arg_0.b.b.x, global3.a.x), arg_1.a)) ^ global3.a), ~vec2<u32>(abs(var_1.x), ~(~4294967295u)), select(!global1[_wgslsmith_index_u32(~(~global3.d.x), 3u)], !(!arg_2.xy), global3.c.x), ~min(abs(min(vec4<u32>(49939u, 55745u, 4294967295u, global3.b.x), vec4<u32>(var_1.x, var_1.x, global3.d.x, global3.d.x))), reverseBits(global3.d)));
    return any(!arg_2);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: f32) -> Struct_5 {
    let var_0 = -47693i;
    global1 = array<vec2<bool>, 3>();
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -812f)) + _wgslsmith_f_op_f32(749f - arg_1))), arg_2));
    global4 = _wgslsmith_mult_i32(max(_wgslsmith_div_i32(u_input.b, -1i ^ var_0), firstLeadingBit(var_0)) >> (~max(global3.b.x, 1u) % 32u), -19461i);
    var var_1 = Struct_2(all(!select(select(vec4<bool>(arg_0.x, true, false, global3.c.x), arg_0, arg_0), arg_0, vec4<bool>(global3.c.x, false, true, true))), Struct_1(vec4<bool>(arg_0.x, !arg_0.x, true, arg_0.x | (arg_0.x || arg_0.x)), reverseBits(firstLeadingBit(vec2<i32>(u_input.a.x, 0i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2, arg_2))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2232f, arg_1), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-799f, arg_2), vec2<f32>(1000f, -619f))), !vec2<bool>(false, global3.c.x))))));
    return Struct_5(firstTrailingBit(~(~global3.a)) << (~vec3<u32>(global3.d.x << (19463u % 32u), _wgslsmith_mult_u32(10947u, 1u), ~104079u) % vec3<u32>(32u)), global3.d.wy, global3.c, ~(~(vec4<u32>(global3.b.x, global3.b.x, 16712u, global3.b.x) & firstTrailingBit(vec4<u32>(global3.b.x, 1u, 1u, 1u)))));
}

fn func_5(arg_0: u32, arg_1: Struct_5) -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1019f)), -235f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1645f, -140f)))))));
    let var_0 = Struct_3(vec4<i32>(~(-12120i), arg_1.a.x, 61789i, arg_1.a.x), !select(vec4<bool>(all(vec2<bool>(true, arg_1.c.x)), true, !arg_1.c.x, false), vec4<bool>(!arg_1.c.x, true, true, true), vec4<bool>(any(vec2<bool>(false, global3.c.x)), 0i == arg_1.a.x, !arg_1.c.x, !global3.c.x)), Struct_2(false, Struct_1(select(!vec4<bool>(global3.c.x, arg_1.c.x, false, false), select(vec4<bool>(false, false, arg_1.c.x, true), vec4<bool>(true, false, global3.c.x, true), vec4<bool>(arg_1.c.x, global3.c.x, global3.c.x, arg_1.c.x)), select(vec4<bool>(global3.c.x, true, global3.c.x, arg_1.c.x), vec4<bool>(true, true, false, false), arg_1.c.x)), -vec2<i32>(70207i, global3.a.x), vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -788f)))));
    var var_1 = _wgslsmith_dot_vec2_u32(~global3.b, ~abs(min(vec2<u32>(arg_0, 58178u), ~arg_1.d.zx)));
    var var_2 = select(~global3.d.x, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(min(global3.d.yxy, arg_1.d.zyz), select(arg_1.d.xxx, arg_1.d.xyw, vec3<bool>(var_0.c.a, arg_1.c.x, true)), abs(arg_1.d.zyz)), ~(~arg_1.d.yww)), true);
    var var_3 = arg_1.a;
    return _wgslsmith_clamp_vec4_u32(global3.d, global3.d, ~vec4<u32>(firstTrailingBit(75994u), 1u, 4294967295u, global3.b.x));
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    global2 = array<Struct_4, 28>();
    var var_0 = func_5(~(~_wgslsmith_mod_u32(global3.d.x << (9871u % 32u), _wgslsmith_mult_u32(global3.d.x, global3.b.x))), func_4(!vec4<bool>(global3.b.x <= 40780u, func_2(Struct_2(false, Struct_1(vec4<bool>(true, true, true, true), arg_0, vec2<f32>(857f, 1596f))), Struct_3(vec4<i32>(-1i, -640i, global3.a.x, global3.a.x), vec4<bool>(true, global3.c.x, true, false), Struct_2(true, Struct_1(vec4<bool>(false, global3.c.x, global3.c.x, false), vec2<i32>(1i, -4963i), vec2<f32>(-1000f, -714f)))), vec4<bool>(global3.c.x, false, true, global3.c.x)), !global3.c.x, func_2(Struct_2(global3.c.x, Struct_1(vec4<bool>(true, true, true, global3.c.x), vec2<i32>(u_input.a.x, global3.a.x), vec2<f32>(490f, -1719f))), Struct_3(vec4<i32>(global3.a.x, global3.a.x, u_input.b, -2147483647i), vec4<bool>(true, global3.c.x, global3.c.x, global3.c.x), Struct_2(false, Struct_1(vec4<bool>(global3.c.x, global3.c.x, global3.c.x, true), arg_0, vec2<f32>(242f, 725f)))), vec4<bool>(false, true, global3.c.x, true))), 600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f)))));
    global2 = array<Struct_4, 28>();
    let var_1 = -1i;
    var_0 = vec4<u32>(var_0.x >> (13093u % 32u), ~11216u, 6234u, countOneBits(max(min(min(0u, 0u), 4294967295u << (var_0.x % 32u)), 1u & var_0.x)));
    return vec4<bool>(false, true, any(!select(!vec4<bool>(false, global3.c.x, global3.c.x, false), vec4<bool>(global3.c.x, global3.c.x, global3.c.x, false), vec4<bool>(true, true, true, true))), !(39444i <= _wgslsmith_add_i32(var_1 >> (108723u % 32u), -u_input.b)));
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_2) -> f32 {
    global3 = func_4(arg_3.b.a, arg_3.b.c.x, -1232f);
    global2 = array<Struct_4, 28>();
    let var_0 = func_4(vec4<bool>(true, true, true, false), arg_3.b.c.x, _wgslsmith_f_op_f32(floor(827f))).c.x;
    global2 = array<Struct_4, 28>();
    var var_1 = _wgslsmith_dot_vec4_u32(global3.d, vec4<u32>(4294967295u, _wgslsmith_mult_u32(~(102390u | global3.d.x), 1u), _wgslsmith_clamp_u32(60735u, firstLeadingBit(~0u), ~(~10391u)), ~(~49075u)));
    return -225f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global3.c.x;
    var_0 = false;
    var var_1 = abs(vec4<u32>(global3.b.x, global3.b.x, ~_wgslsmith_div_u32(global3.d.x, ~1u), 0u));
    global0 = 1f;
    global0 = _wgslsmith_f_op_f32(func_6(!(!(u_input.a.x < global3.a.x)), var_1.x, func_1(vec2<i32>(global3.a.x, -1i)), Struct_2(global3.c.x, Struct_1(!select(vec4<bool>(global3.c.x, global3.c.x, false, global3.c.x), vec4<bool>(global3.c.x, true, false, false), vec4<bool>(global3.c.x, global3.c.x, global3.c.x, global3.c.x)), abs(vec2<i32>(u_input.b, 2147483647i)) | vec2<i32>(global3.a.x, 44448i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 644f)) * vec2<f32>(1f, 1f))))));
    let var_2 = _wgslsmith_f_op_f32(round(-623f));
    let var_3 = Struct_5(vec3<i32>(i32(-1i) * -(u_input.a.x >> (26974u % 32u)), global3.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 1i, -1i), _wgslsmith_div_vec3_i32(global3.a, vec3<i32>(u_input.b, 2147483647i, 0i))), vec3<i32>(countOneBits(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 61283i, global3.a.x, 10745i), vec4<i32>(-1i, global3.a.x, 2147483647i, u_input.a.x)), firstTrailingBit(global3.a.x)))), ~(~global3.d.wy), vec2<bool>(true, !func_4(func_1(u_input.a.xz), var_2, _wgslsmith_f_op_f32(ceil(var_2))).c.x), abs(vec4<u32>(global3.d.x, ~var_1.x, ~(global3.d.x >> (global3.d.x % 32u)), 86274u)));
    let var_4 = any(global1[_wgslsmith_index_u32(abs(1u), 3u)]);
    var var_5 = _wgslsmith_mult_vec4_u32(var_3.d, ~vec4<u32>(~var_3.b.x, var_1.x, 4294967295u, func_3().x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3.a), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(func_6(false, var_1.x, vec4<bool>(false, false, false, global3.c.x), Struct_2(true, Struct_1(vec4<bool>(false, true, false, var_4), var_3.a.yz, vec2<f32>(var_2, -1701f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(select(-550f, -648f, var_4)))), _wgslsmith_f_op_f32(floor(-115f))), ~37131i, ((vec3<u32>(var_1.x, var_3.b.x, 0u) ^ _wgslsmith_clamp_vec3_u32(var_5.wzz, vec3<u32>(4294967295u, 0u, var_5.x), vec3<u32>(0u, global3.b.x, 16952u))) ^ max(var_3.d.zyz, _wgslsmith_mod_vec3_u32(var_1.zxy, vec3<u32>(4294967295u, global3.d.x, var_5.x)))) << (var_3.d.wzy % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1393f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(f32(-1f) * -688f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -746f, -274f)))))));
}

