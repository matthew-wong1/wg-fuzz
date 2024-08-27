struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-1i, vec2<i32>(-22652i, 25994i), vec3<u32>(25638u, 1u, 0u));

var<private> global1: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: vec4<i32>) -> i32 {
    global1 = array<vec4<bool>, 25>();
    global0 = Struct_3(arg_0.a, firstLeadingBit(arg_3.wz), vec3<u32>(_wgslsmith_mod_u32(47008u >> (arg_0.c.x % 32u), 1u), 64870u, arg_0.c.x) << (arg_0.c % vec3<u32>(32u)));
    var var_0 = 1u;
    let var_1 = ~_wgslsmith_mod_u32(arg_1.c.x, ~(~arg_0.c.x & max(global0.c.x, 4294967295u)));
    var_0 = arg_1.c.x;
    return arg_3.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_3(arg_1.a, abs(select(abs(vec2<i32>(16276i, -4274i)), u_input.a.xx, true)), ~reverseBits(_wgslsmith_div_vec3_u32(~global0.c, global0.c << (global0.c % vec3<u32>(32u)))));
    global0 = Struct_3(_wgslsmith_add_i32(2147483647i, ~func_3(Struct_3(-46401i, vec2<i32>(u_input.a.x, global0.b.x), vec3<u32>(global0.c.x, global0.c.x, global0.c.x)), Struct_3(-67580i, vec2<i32>(-21395i, 1i), global0.c), _wgslsmith_f_op_f32(f32(-1f) * -1059f), firstTrailingBit(vec4<i32>(arg_0.a, arg_1.a, arg_0.a, 2147483647i)))), vec2<i32>(func_3(Struct_3(-1i, min(vec2<i32>(global0.b.x, u_input.a.x), u_input.a.yx), min(vec3<u32>(2721u, global0.c.x, global0.c.x), vec3<u32>(global0.c.x, 4294967295u, global0.c.x))), Struct_3(-2147483647i, _wgslsmith_sub_vec2_i32(global0.b, vec2<i32>(u_input.a.x, -1i)), ~vec3<u32>(global0.c.x, global0.c.x, global0.c.x)), _wgslsmith_f_op_f32(-1211f - 276f), -(~vec4<i32>(-33470i, u_input.a.x, global0.b.x, arg_0.a))), _wgslsmith_mod_i32(1i, i32(-1i) * -17395i)), firstTrailingBit(vec3<u32>(countOneBits(66017u), 13910u, 1u)));
    var var_0 = ~(~_wgslsmith_div_vec4_u32(vec4<u32>(54416u, 0u, global0.c.x, global0.c.x), vec4<u32>(2131u, 1u, global0.c.x, 4294967295u)) & (abs(vec4<u32>(8270u, 8605u, 1u, 0u)) >> ((vec4<u32>(1u, global0.c.x, 44128u, global0.c.x) & vec4<u32>(global0.c.x, global0.c.x, global0.c.x, 70924u)) % vec4<u32>(32u)))) & vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_add_u32(0u, global0.c.x), 1u >> (_wgslsmith_mult_u32(global0.c.x, global0.c.x) % 32u)), ~(~(31425u ^ global0.c.x)), ~global0.c.x, _wgslsmith_add_u32(abs(25564u), firstTrailingBit(~global0.c.x)));
    let var_1 = 2147483647i;
    global1 = array<vec4<bool>, 25>();
    return Struct_1(1i);
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(244f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(805f)), _wgslsmith_f_op_f32(floor(519f)), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-282f, _wgslsmith_f_op_f32(sign(537f)))), -142f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-761f, 1640f)))), _wgslsmith_f_op_f32(-683f + _wgslsmith_f_op_f32(f32(-1f) * -863f)), -157f)));
    let var_1 = Struct_3(1i, global0.b, select(countOneBits(global0.c), firstTrailingBit(vec3<u32>(global0.c.x, global0.c.x, 12060u)), select(any(vec3<bool>(true, true, false)), false, select(true, true, true))) & vec3<u32>(global0.c.x, max(min(14508u, global0.c.x), 4294967295u), ~(~4294967295u)));
    let var_2 = Struct_2(_wgslsmith_mult_vec3_u32(global0.c, vec3<u32>(global0.c.x, ~8800u, var_1.c.x)) << ((vec3<u32>(min(872u, global0.c.x), var_1.c.x, 4294967295u) >> (countOneBits(~vec3<u32>(var_1.c.x, 1u, 53322u)) % vec3<u32>(32u))) % vec3<u32>(32u)), false, !global1[_wgslsmith_index_u32(reverseBits(abs(_wgslsmith_mod_u32(var_1.c.x, var_1.c.x))), 25u)], arg_0, func_2(func_2(func_2(Struct_1(-1i), arg_0), arg_0), func_2(func_2(Struct_1(global0.a), Struct_1(-2147483647i)), func_2(func_2(Struct_1(-4973i), arg_0), func_2(arg_0, arg_0)))));
    var var_3 = vec3<u32>(~1u, ~var_1.c.x << (_wgslsmith_add_u32(abs(~var_2.a.x), abs(var_2.a.x) & 0u) % 32u), var_1.c.x);
    global1 = array<vec4<bool>, 25>();
    return ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 30481u, var_2.a.x, global0.c.x) & vec4<u32>(4500u, 21275u, global0.c.x, 0u), firstLeadingBit(vec4<u32>(12593u, global0.c.x, 41709u, var_3.x))) << (1u % 32u), 1u, !(_wgslsmith_f_op_f32(-var_0.x) < _wgslsmith_f_op_f32(1154f - -1225f)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(vec3<u32>(30400u, arg_1.c.x, min(func_4(func_2(Struct_1(u_input.a.x), Struct_1(-2147483647i))), 1u)), true, !select(vec4<bool>(true, true, true, true), !global1[_wgslsmith_index_u32(~74537u, 25u)], false), func_2(Struct_1(_wgslsmith_div_i32(global0.a & -5198i, -2147483647i)), func_2(Struct_1(u_input.a.x << (global0.c.x % 32u)), func_2(func_2(Struct_1(arg_0.a), Struct_1(arg_0.b.x)), func_2(Struct_1(2147483647i), Struct_1(0i))))), func_2(func_2(Struct_1(func_3(arg_0, Struct_3(arg_0.b.x, vec2<i32>(-1i, u_input.a.x), vec3<u32>(arg_0.c.x, arg_1.c.x, 44725u)), 2089f, vec4<i32>(-1i, 1i, u_input.a.x, arg_0.a))), func_2(Struct_1(global0.a), func_2(Struct_1(global0.a), Struct_1(-1i)))), func_2(Struct_1(abs(arg_1.b.x)), Struct_1(global0.a))));
    global0 = arg_0;
    global1 = array<vec4<bool>, 25>();
    let var_1 = _wgslsmith_sub_vec4_u32(abs(~(~vec4<u32>(arg_1.c.x, var_0.a.x, 35602u, 0u)) >> (reverseBits(select(vec4<u32>(arg_1.c.x, 1u, var_0.a.x, 104248u), vec4<u32>(global0.c.x, 28373u, 45060u, var_0.a.x), var_0.c)) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, arg_0.c.x, 55903u, var_0.a.x), vec4<u32>(4294967295u, arg_1.c.x, arg_1.c.x, 0u)) | vec4<u32>(arg_0.c.x, arg_0.c.x, 63369u, 1u), ~vec4<u32>(var_0.a.x, 38819u, global0.c.x, arg_0.c.x) >> ((vec4<u32>(61380u, 15825u, 4294967295u, 54784u) >> (vec4<u32>(1u, 66421u, 41519u, arg_0.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global0 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_3(select(min(_wgslsmith_mult_i32(-2147483647i, u_input.a.x), u_input.a.x), u_input.a.x, all(vec4<bool>(true, true, false, true))), vec2<i32>(706i, _wgslsmith_mult_i32(global0.b.x, firstLeadingBit(u_input.a.x))), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(global0.c.x, global0.c.x, 7360u), global0.c << (vec3<u32>(global0.c.x, global0.c.x, global0.c.x) % vec3<u32>(32u))))), Struct_3(2147483647i, u_input.a.zy, ~global0.c));
    global0 = func_1(func_1(func_1(Struct_3(var_0.a, global0.b, vec3<u32>(global0.c.x, 4294967295u, var_0.c.x) | vec3<u32>(1u, global0.c.x, global0.c.x)), func_1(func_1(Struct_3(50795i, var_0.b, global0.c), Struct_3(20072i, global0.b, vec3<u32>(1u, var_0.c.x, global0.c.x))), func_1(Struct_3(-2147483647i, u_input.a.zz, vec3<u32>(4294967295u, var_0.c.x, global0.c.x)), Struct_3(u_input.a.x, global0.b, global0.c)))), func_1(func_1(func_1(Struct_3(-49769i, global0.b, global0.c), Struct_3(u_input.a.x, vec2<i32>(global0.a, u_input.a.x), vec3<u32>(var_0.c.x, 1u, 1u))), Struct_3(global0.b.x, vec2<i32>(u_input.a.x, -2147483647i), vec3<u32>(4294967295u, var_0.c.x, global0.c.x))), func_1(func_1(Struct_3(global0.b.x, global0.b, var_0.c), Struct_3(-35808i, vec2<i32>(-1i, 1735i), vec3<u32>(19778u, var_0.c.x, 0u))), Struct_3(-17356i, global0.b, vec3<u32>(var_0.c.x, global0.c.x, var_0.c.x))))), func_1(func_1(Struct_3(-2906i, max(vec2<i32>(1310i, var_0.a), vec2<i32>(-73424i, 15228i)), vec3<u32>(4294967295u, 0u, 0u)), func_1(func_1(Struct_3(-2147483647i, vec2<i32>(-13598i, 15091i), vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x)), Struct_3(16715i, var_0.b, vec3<u32>(var_0.c.x, var_0.c.x, global0.c.x))), Struct_3(-49622i, global0.b, vec3<u32>(77848u, 80562u, global0.c.x)))), Struct_3(-2147483647i, ~vec2<i32>(11406i, global0.b.x), _wgslsmith_mult_vec3_u32(~global0.c, min(var_0.c, vec3<u32>(global0.c.x, 6211u, var_0.c.x))))));
    global0 = func_1(func_1(func_1(func_1(func_1(Struct_3(0i, vec2<i32>(-64488i, 1i), var_0.c), Struct_3(var_0.a, vec2<i32>(global0.a, var_0.a), vec3<u32>(global0.c.x, 4294967295u, 19321u))), func_1(Struct_3(global0.a, vec2<i32>(var_0.a, global0.a), global0.c), Struct_3(global0.b.x, vec2<i32>(1i, u_input.a.x), vec3<u32>(global0.c.x, 4294967295u, var_0.c.x)))), Struct_3(_wgslsmith_mult_i32(global0.a, 0i), abs(vec2<i32>(1i, global0.a)), reverseBits(vec3<u32>(global0.c.x, 12340u, 27989u)))), Struct_3(44928i, reverseBits(var_0.b), global0.c)), Struct_3(~global0.b.x, vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, 3636i), u_input.a.x)), var_0.c));
    global1 = array<vec4<bool>, 25>();
    var var_1 = global0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x << (firstLeadingBit(~_wgslsmith_sub_u32(4294967295u, global0.c.x)) % 32u), abs(firstLeadingBit(94033u)), global0.b.x >> (~func_4(func_2(Struct_1(var_0.b.x), Struct_1(-67773i))) % 32u), (select(select(var_0.c, vec3<u32>(global0.c.x, global0.c.x, 1u), false), vec3<u32>(1u, global0.c.x, var_0.c.x), vec3<bool>(true, true, true)) ^ vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(global0.c, var_0.c), ~49192u)) & vec3<u32>(~(global0.c.x >> (0u % 32u)), var_0.c.x & ~1u, ~0u));
}

