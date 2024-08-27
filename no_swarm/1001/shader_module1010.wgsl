struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), 4294967295u, vec3<u32>(4876u, 37987u, 29872u), vec2<i32>(5419i, 0i), 1u);

var<private> global1: bool = true;

var<private> global2: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(-1582f, 1077f, 1768f), vec3<f32>(-1000f, -1775f, -1000f), vec3<f32>(-1000f, 1127f, 259f), vec3<f32>(364f, 633f, 526f), vec3<f32>(203f, 802f, -1106f), vec3<f32>(504f, -476f, -357f), vec3<f32>(-481f, -2014f, 800f), vec3<f32>(-1219f, 411f, -1162f), vec3<f32>(-550f, -1348f, -1002f), vec3<f32>(1121f, 1360f, -113f), vec3<f32>(-236f, 193f, 473f), vec3<f32>(-1000f, -501f, 1000f), vec3<f32>(880f, -728f, 1486f), vec3<f32>(265f, -640f, 714f), vec3<f32>(-1000f, 1487f, -1060f), vec3<f32>(-463f, 1241f, -1333f), vec3<f32>(369f, -2117f, 696f), vec3<f32>(-456f, -802f, 653f), vec3<f32>(-512f, 2469f, 237f), vec3<f32>(-908f, 1311f, -1000f), vec3<f32>(134f, -299f, -1000f), vec3<f32>(-1000f, 1378f, -130f), vec3<f32>(1274f, 403f, 1034f), vec3<f32>(1512f, -616f, -969f), vec3<f32>(-713f, -2015f, 1852f));

var<private> global3: array<bool, 20> = array<bool, 20>(false, false, false, true, false, false, true, true, false, true, true, true, true, false, false, true, false, false, true, false);

var<private> global4: array<vec3<i32>, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = ~global0.c;
    global2 = array<vec3<f32>, 25>();
    var var_1 = -vec2<i32>(global0.d.x, ~_wgslsmith_sub_i32(~(-1i), _wgslsmith_sub_i32(global0.d.x, -17076i)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -312f);
    global4 = array<vec3<i32>, 16>();
    return _wgslsmith_clamp_u32(firstTrailingBit(26930u) & reverseBits(abs(_wgslsmith_mult_u32(global0.c.x, u_input.a))), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(15879u, 10227u, u_input.a, 0u) & vec4<u32>(u_input.a, global0.c.x, var_0.x, 4374u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.e, u_input.a, 33355u, global0.b), vec4<u32>(u_input.a, 16391u, 4294967295u, global0.e))) >> (_wgslsmith_dot_vec3_u32(~(global0.c ^ global0.c), global0.c) % 32u), _wgslsmith_mod_u32(~4294967295u, var_0.x));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = _wgslsmith_mod_u32(global0.e, u_input.a);
    var_1 = func_3();
    global2 = array<vec3<f32>, 25>();
    var_0 = all(vec3<bool>(all(select(global0.a.zyx, vec3<bool>(true, false, false), global0.a.zwz)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~global0.e), 40923u), 20u)], true));
    return Struct_1(vec4<bool>(true, global3[_wgslsmith_index_u32(77159u, 20u)], true, !global3[_wgslsmith_index_u32(u_input.a, 20u)]), ~max(global0.e, ~u_input.a), global0.c, -firstTrailingBit(-(vec2<i32>(global0.d.x, 7776i) | u_input.c.wy)), global0.e);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    global3 = array<bool, 20>();
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(-1064f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-536f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_2 = _wgslsmith_dot_vec2_u32(global0.c.zy, vec2<u32>(4294967295u, _wgslsmith_mod_u32(arg_0, 60693u)));
    let var_3 = Struct_1(select(vec4<bool>(false, true, !(!global0.a.x), arg_2.a.x), func_2().a, all(arg_1.a)), _wgslsmith_sub_u32(~arg_1.c.x, func_3()), global0.c, -global0.d, _wgslsmith_mult_u32(1u, ~(~13592u)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) - _wgslsmith_f_op_f32(683f * var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - -1954f) + var_1)) - _wgslsmith_f_op_f32(-arg_3.x))));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) * vec2<f32>(166f, 277f)))))) + vec2<f32>(_wgslsmith_f_op_f32(max(-1603f, _wgslsmith_div_f32(-855f, -602f))), _wgslsmith_f_op_f32(func_4(31997u, func_2(), func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1052f, -635f, 407f))))));
    var var_1 = any(global0.a.wzx);
    var var_2 = Struct_1(!select(vec4<bool>(any(global0.a), !global3[_wgslsmith_index_u32(4294967295u, 20u)], global0.a.x, select(global0.a.x, true, global0.a.x)), func_2().a, all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 20u)], global0.a.x))), u_input.a, global0.c, min(func_2().d, min(vec2<i32>(2147483647i, u_input.c.x) & vec2<i32>(22547i, u_input.b.x), global0.d)), ~u_input.a);
    var var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(countOneBits(vec4<u32>(var_2.c.x, var_2.e, global0.b, u_input.a))), ~select(vec4<u32>(1u, var_2.c.x, global0.b, 0u), vec4<u32>(4294967295u, 4294967295u, 0u, global0.e), vec4<bool>(global3[_wgslsmith_index_u32(55234u, 20u)], false, true, false))) | vec4<u32>(max(4294967295u >> (1u % 32u), ~4294967295u), ~4294967295u, func_2().b, var_2.c.x), vec4<u32>(~1u, ~(~(~var_2.e)), 66818u, global0.c.x));
    let var_4 = func_2();
    return vec4<bool>(~_wgslsmith_clamp_i32(var_4.d.x, _wgslsmith_mult_i32(u_input.b.x, global0.d.x), 29308i) > 5457i, any(!vec4<bool>(var_2.a.x & var_2.a.x, false, true, global0.a.x | false)), any(select(func_2().a.yy, !global0.a.xz, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(86928u, var_4.e, var_2.e, var_2.e), vec4<u32>(4294967295u, 0u, var_2.e, var_4.c.x)), 20u)])), all(func_2().a.wy));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = 752f;
    global4 = array<vec3<i32>, 16>();
    global1 = !arg_1.x;
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_div_u32(718u, ~global0.b), arg_2.e) ^ global0.b;
    var_1 = u_input.a;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0 + -1098f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-576f + _wgslsmith_f_op_f32(f32(-1f) * -2099f)))));
}

fn func_6(arg_0: f32, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(arg_2, 20u)], !global0.a.x == !global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 12218u), 20u)], false, func_1().x), u_input.a, vec3<u32>(u_input.a, u_input.a | countOneBits(u_input.a), min(~18011u, select(42053u | u_input.a, u_input.a, true))), u_input.b.yy, func_3());
    let var_1 = func_2();
    global2 = array<vec3<f32>, 25>();
    var var_2 = !vec2<bool>(global3[_wgslsmith_index_u32(min(61764u, _wgslsmith_add_u32(34341u, u_input.a)), 20u)] || true, true);
    return Struct_1(vec4<bool>(var_0.a.x, select(any(var_0.a.xz), !(!global0.a.x), select(!var_0.a.x, true, var_1.b >= 4294967295u)), global3[_wgslsmith_index_u32(1u, 20u)], var_2.x), _wgslsmith_dot_vec2_u32(~(vec2<u32>(arg_2, var_1.e) ^ (global0.c.yz >> (var_0.c.zy % vec2<u32>(32u)))), ~var_1.c.xy), ~var_1.c, var_1.d, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1025f - 2677f)) - _wgslsmith_f_op_f32(-296f * _wgslsmith_div_f32(2340f, 319f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(vec2<f32>(_wgslsmith_f_op_f32(-1478f - -1820f), -203f), func_1(), Struct_1(global0.a, global0.c.x, reverseBits(vec3<u32>(global0.c.x, 114779u, 4294967295u)), vec2<i32>(1i, u_input.c.x), u_input.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-610f, 957f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1665f, 1410f) * vec2<f32>(-533f, -641f))))), 34969u);
    var var_1 = Struct_1(func_2().a, _wgslsmith_sub_u32(~abs(var_0.e), 0u) << (~firstTrailingBit(func_3()) % 32u), _wgslsmith_div_vec3_u32(global0.c, ~var_0.c), -func_2().d, abs(~_wgslsmith_mod_u32(~var_0.b, var_0.b)));
    var_0 = func_2();
    global4 = array<vec3<i32>, 16>();
    global4 = array<vec3<i32>, 16>();
    let var_2 = Struct_1(vec4<bool>(!(!any(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global0.a.x))), !var_1.a.x, true, true), 1u, reverseBits(var_0.c), ~(~var_0.d), ~_wgslsmith_div_u32(38387u, global0.b) & var_0.e);
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(global4[_wgslsmith_index_u32(~global0.b, 16u)], _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, var_2.d.x, global0.d.x), _wgslsmith_clamp_vec3_i32(u_input.b, global4[_wgslsmith_index_u32(4294967295u, 16u)], vec3<i32>(51087i, -21427i, 61702i))), firstTrailingBit(u_input.b))));
}

