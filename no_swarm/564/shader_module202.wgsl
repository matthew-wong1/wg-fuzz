struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-837f, -992f, 1403f, 587f);

var<private> global1: i32 = 1i;

var<private> global2: Struct_2;

var<private> global3: vec3<i32> = vec3<i32>(-4519i, -24488i, -1i);

var<private> global4: vec2<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: Struct_3) -> vec2<i32> {
    return vec2<i32>(1i, 22295i);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    global2 = Struct_2(Struct_1(vec3<i32>(global2.a.a.x, ~(~arg_2.c), _wgslsmith_dot_vec2_i32(abs(arg_2.d.a.a.yy), vec2<i32>(arg_3.a.x, -14933i))), firstLeadingBit(~_wgslsmith_clamp_vec3_u32(global2.a.b, arg_2.d.a.b, arg_0.a.b)), countOneBits(-_wgslsmith_mult_i32(1i, global2.a.c))), _wgslsmith_div_u32(12904u, arg_3.b.x) >> (arg_3.b.x % 32u), select(select(vec3<bool>(!global2.c.x, all(arg_2.b.zy), true), !select(vec3<bool>(false, false, true), vec3<bool>(arg_0.c.x, true, global2.c.x), arg_2.b.xxw), any(vec3<bool>(true, global2.c.x, arg_2.d.c.x))), arg_2.b.ywz, global2.c.x & arg_0.c.x));
    var var_0 = ~firstLeadingBit(~(~vec4<u32>(4294967295u, arg_3.b.x, 27045u, arg_0.b))) >> (min(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(57269u, arg_3.b.x, 32536u, arg_0.b), vec4<u32>(1u, 24311u, global2.b, global2.a.b.x))) | abs(firstLeadingBit(vec4<u32>(global2.a.b.x, arg_0.a.b.x, global2.b, 34740u))), _wgslsmith_sub_vec4_u32(vec4<u32>(~arg_0.a.b.x, 1u, ~global2.a.b.x, 16325u), (vec4<u32>(4294967295u, 55775u, 0u, 12923u) & vec4<u32>(50145u, arg_0.b, arg_0.b, arg_3.b.x)) ^ ~vec4<u32>(0u, 34731u, global2.a.b.x, arg_3.b.x))) % vec4<u32>(32u));
    var_0 = _wgslsmith_mult_vec4_u32(max(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_0.x, global2.b, 4294967295u, var_0.x)), ~vec4<u32>(var_0.x, arg_3.b.x, 62020u, 1u) >> (vec4<u32>(60877u, 1u, global2.b, global2.a.b.x) % vec4<u32>(32u))), vec4<u32>(global2.b >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.b.x, var_0.x, 4294967295u, arg_3.b.x), vec4<u32>(arg_3.b.x, 0u, 4294967295u, global2.b)) % 32u), _wgslsmith_clamp_u32(arg_0.b, var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(34598u, arg_0.a.b.x), vec2<u32>(28995u, 0u))), ~1u, _wgslsmith_sub_u32(min(var_0.x, arg_0.a.b.x), ~arg_2.d.b))), vec4<u32>(1u, 73099u, min(arg_2.d.a.b.x, 19036u | global2.b), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 42488u), vec2<u32>(1u, var_0.x))), _wgslsmith_dot_vec3_u32(min(arg_3.b, vec3<u32>(var_0.x, 14597u, 26522u)), arg_0.a.b))));
    global2 = Struct_2(Struct_1(-(~(~vec3<i32>(arg_3.a.x, arg_0.a.c, -2147483647i))), vec3<u32>(53706u ^ select(arg_3.b.x, 4294967295u, arg_2.b.x), _wgslsmith_clamp_u32(~7319u, ~arg_2.d.b, _wgslsmith_sub_u32(4294967295u, var_0.x)), arg_0.a.b.x), _wgslsmith_mod_i32(func_2(Struct_3(arg_0.a.c, vec4<bool>(false, arg_0.c.x, arg_2.b.x, global2.c.x), 12323i, arg_0)).x, global2.a.a.x)), ~0u, !arg_0.c);
    let var_1 = Struct_3(-1i, vec4<bool>(false && global2.c.x, any(vec2<bool>(arg_0.c.x, global2.c.x)), _wgslsmith_div_u32(21368u, arg_3.b.x) != var_0.x, arg_0.c.x), -(~_wgslsmith_mult_i32(global2.a.c, ~arg_3.a.x)), arg_0);
    return Struct_1(-vec3<i32>(select(~(-2147483647i), 0i ^ global4.x, false), global2.a.a.x, firstLeadingBit(0i)), ~(~(~vec3<u32>(var_1.d.b, 1u, 1u))), global2.a.a.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_1 {
    global2 = Struct_2(func_3(Struct_2(Struct_1(firstTrailingBit(global2.a.a), min(vec3<u32>(21080u, 82467u, 51005u), global2.a.b), -2147483647i), 71154u, vec3<bool>(true, arg_1 != 534f, !global2.c.x)), _wgslsmith_dot_vec2_i32(select(-vec2<i32>(0i, global4.x), func_2(Struct_3(global4.x, vec4<bool>(true, global2.c.x, global2.c.x, false), -1i, Struct_2(global2.a, 12217u, global2.c))), vec2<bool>(false, false)), ~func_2(Struct_3(global2.a.a.x, vec4<bool>(global2.c.x, true, global2.c.x, false), 0i, Struct_2(global2.a, 41581u, global2.c)))), Struct_3(10542i, vec4<bool>(true, !global2.c.x, global2.c.x, !global2.c.x), func_2(Struct_3(u_input.a, vec4<bool>(global2.c.x, true, global2.c.x, global2.c.x), u_input.a, Struct_2(global2.a, global2.a.b.x, global2.c))).x, Struct_2(global2.a, _wgslsmith_dot_vec2_u32(global2.a.b.xz, global2.a.b.yz), select(vec3<bool>(global2.c.x, false, global2.c.x), global2.c, global2.c))), Struct_1(global2.a.a, ~vec3<u32>(global2.b, 43900u, global2.b), reverseBits(-58200i))), ~_wgslsmith_div_u32(global2.b, 1u), select(global2.c, select(global2.c, vec3<bool>(true, all(global2.c.xy), false), any(select(vec2<bool>(false, false), global2.c.zz, vec2<bool>(global2.c.x, false)))), !select(global2.c, !global2.c, vec3<bool>(global2.c.x, global2.c.x, global2.c.x))));
    return global2.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<bool>) -> Struct_4 {
    var var_0 = max(-(abs(select(vec4<i32>(-40877i, global2.a.a.x, global3.x, 67121i), vec4<i32>(-1i, 15086i, global3.x, -1i), global2.c.x)) ^ vec4<i32>(global3.x, arg_1.c, -34244i ^ arg_1.a.x, arg_1.c)), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_add_i32(20850i, global2.a.a.x), 995i, _wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, global2.a.a.x, 9310i), arg_1.a), -17053i)), vec4<i32>(~(~u_input.a), abs(global4.x), ~func_2(Struct_3(arg_1.a.x, vec4<bool>(false, global2.c.x, false, arg_3.x), global3.x, Struct_2(Struct_1(vec3<i32>(global4.x, arg_1.c, arg_1.a.x), global2.a.b, global3.x), 4294967295u, vec3<bool>(true, arg_3.x, arg_3.x)))).x, 1i)));
    return Struct_4(~max(global2.a.b.x, firstLeadingBit(arg_1.b.x >> (arg_0 % 32u))), Struct_3(~_wgslsmith_mod_i32(1i, _wgslsmith_add_i32(40995i, global3.x)), !select(!vec4<bool>(arg_3.x, global2.c.x, global2.c.x, false), select(vec4<bool>(global2.c.x, arg_3.x, global2.c.x, global2.c.x), vec4<bool>(false, false, arg_3.x, true), global2.c.x), !vec4<bool>(true, true, global2.c.x, arg_3.x)), global3.x, Struct_2(arg_1, arg_0, vec3<bool>(global2.c.x, !global2.c.x, arg_3.x))), func_1(_wgslsmith_sub_vec2_i32(global3.xz >> ((global2.a.b.xz ^ vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(firstLeadingBit(var_0.zx), -vec2<i32>(global2.a.a.x, -25569i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))).b.yy, Struct_2(Struct_1(_wgslsmith_div_vec3_i32(~vec3<i32>(-44474i, global2.a.c, global4.x), arg_1.a), vec3<u32>(_wgslsmith_sub_u32(arg_0, 49033u), global2.b, max(arg_0, 1u)), 1i), _wgslsmith_mod_u32(28161u, select(arg_0, ~arg_1.b.x, -263f <= arg_2.x)), select(global2.c, vec3<bool>(!global2.c.x, true, global2.c.x), vec3<bool>(arg_3.x, -5552i < arg_1.a.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 16403i;
    let var_1 = func_4(abs(_wgslsmith_add_u32(5906u, global2.a.b.x)) | 93983u, func_1(global2.a.a.xz & global2.a.a.zy, global0.x), _wgslsmith_f_op_vec2_f32(min(global0.wy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.zx, vec2<f32>(1252f, global0.x))) + global0.yx))), global2.c.yx);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1845f);
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.xww)) + global0.xxy)));
    var var_4 = _wgslsmith_div_vec2_u32(select(global2.a.b.zz << (max(func_4(57135u, global2.a, var_3.xx, vec2<bool>(false, false)).b.d.a.b.yx, ~var_1.d.a.b.zx) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(var_1.d.a.b.x, var_1.b.d.a.b.x)), reverseBits(var_1.b.d.a.b.yy), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.c.x, var_1.b.d.a.b.x), vec2<u32>(35370u, var_1.b.d.a.b.x))), vec2<bool>(!select(true, true, false), global2.c.x & true)), firstLeadingBit(select(~vec2<u32>(global2.a.b.x, 4294967295u), ~(vec2<u32>(global2.a.b.x, 0u) >> (vec2<u32>(4294967295u, var_1.a) % vec2<u32>(32u))), true)));
    var var_5 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec4<i32>(1i, var_5.a, 9192i << (var_4.x % 32u), var_5.c ^ -2147483647i), countOneBits(_wgslsmith_div_vec4_i32(-vec4<i32>(-17410i, 84527i, var_5.a, 2147483647i), ~vec4<i32>(var_1.d.a.a.x, var_0, -21015i, global3.x)))));
}

