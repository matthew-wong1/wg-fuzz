struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

var<private> global1: vec4<f32> = vec4<f32>(967f, 1000f, 467f, 845f);

var<private> global2: array<i32, 21>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(global1.x - global1.x);
    var var_1 = Struct_1(u_input.c.xzw, vec2<i32>(-24599i, u_input.c.x), vec4<u32>(~(0u | u_input.b.x), ~u_input.a, _wgslsmith_add_u32(select(u_input.a, u_input.a, false), ~u_input.a), 1u) << (~(~countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 17630u, u_input.a))) % vec4<u32>(32u)));
    var var_2 = Struct_1(var_1.a, countOneBits(~select(var_1.a.yy, u_input.c.xy, true) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(0u, 21u)], var_1.b.x) & vec2<i32>(2147483647i, u_input.c.x), -vec2<i32>(u_input.c.x, 2147483647i))), ~(~var_1.c));
    global0 = array<vec4<i32>, 20>();
    let var_3 = Struct_1(-vec3<i32>(var_1.b.x, ~abs(u_input.c.x), var_1.a.x), var_1.a.yy, min(~vec4<u32>(var_2.c.x, ~var_1.c.x, u_input.b.x, max(var_1.c.x, 0u)), var_2.c));
    return vec3<i32>(u_input.c.x, 1i, var_2.b.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c.wwy, vec3<i32>(_wgslsmith_add_i32(-79941i, 6897i), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], u_input.c.x), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(u_input.b.x, 21u)])))), _wgslsmith_add_vec3_i32(u_input.c.xwz, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 36855i, 0i), vec3<i32>(-67435i, 3152i, -2147483647i))) ^ (_wgslsmith_mult_vec3_i32(u_input.c.wyy, vec3<i32>(u_input.c.x, global2[_wgslsmith_index_u32(25650u, 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)])) ^ abs(vec3<i32>(-1i, 0i, u_input.c.x))), select(firstTrailingBit(u_input.c.yxw ^ u_input.c.zyy), func_3(), !(15849u > u_input.a))), u_input.c.yz, ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 31681u, 1u, 1u), vec4<u32>(u_input.a, 19558u, 1u, 1u) | vec4<u32>(u_input.a, 0u, 1u, 0u)), ~5857u, 0u, (11003u >> (u_input.b.x % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 16602u, 4294967295u, 36615u)) % 32u)));
    var var_1 = max(-27377i, reverseBits(-30562i));
    let var_2 = -547f;
    var var_3 = var_0.c.x;
    var_3 = ~50670u;
    return Struct_1(~countOneBits(_wgslsmith_mod_vec3_i32(select(u_input.c.xzy, vec3<i32>(var_0.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], 1i), true), ~vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 21u)], -2147483647i, 56426i))), vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a) & _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0.c.x, u_input.a, u_input.a), var_0.c), var_0.c.x), 21u)], -1i), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 1u, 0u) << (vec4<u32>(u_input.a, u_input.b.x, 61u, u_input.b.x) % vec4<u32>(32u)), var_0.c) ^ reverseBits(min(~var_0.c, vec4<u32>(var_0.c.x, 4294967295u, var_0.c.x, 0u))));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(global1.xyy + global1.yzz);
    let var_2 = Struct_1(arg_0.a, reverseBits(vec2<i32>(-30361i, 38844i)) & arg_0.a.yz, ~vec4<u32>(u_input.b.x, func_2().c.x, ~var_0.c.x, func_2().c.x));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(650f, var_1.x))), global1.wx);
    var var_4 = firstTrailingBit(~_wgslsmith_sub_vec4_u32(select(arg_0.c, vec4<u32>(var_2.c.x, var_2.c.x, 1u, 4294967295u) ^ var_0.c, select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false)), var_0.c));
    return vec4<bool>(~(~var_2.c.x) <= _wgslsmith_clamp_u32(~var_2.c.x, ~1u, 50256u), all(vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), false, true, true)), !select(true, false, ~4294967295u <= ~arg_0.c.x), all(vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    var var_0 = func_2();
    let var_1 = Struct_1(var_0.a, var_0.a.zx, ~var_0.c | _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, u_input.a), ~u_input.b.x, var_0.c.x, reverseBits(u_input.a)), max(var_0.c, var_0.c >> (var_0.c % vec4<u32>(32u)))));
    let var_2 = var_1;
    global2 = array<i32, 21>();
    var var_3 = Struct_1(func_3(), vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(-vec3<i32>(u_input.c.x, global2[_wgslsmith_index_u32(var_1.c.x, 21u)], u_input.c.x)), vec3<i32>(var_2.a.x, _wgslsmith_dot_vec2_i32(var_2.b, u_input.c.xw), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, u_input.b.x, 14823u), var_0.c.wzw), 21u)])), _wgslsmith_dot_vec2_i32(min(u_input.c.zx, vec2<i32>(0i, -2147483647i)), var_0.a.yz) >> ((~0u | (u_input.b.x & 110671u)) % 32u)), min(~var_2.c, _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_0.c.x, 1u), u_input.b.x, ~var_0.c.x, var_2.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.c.x, 47278u, u_input.b.x, 9660u), max(vec4<u32>(1u, var_0.c.x, var_2.c.x, 70601u), var_0.c)))));
    return ~max(_wgslsmith_div_i32(-43659i, _wgslsmith_dot_vec3_i32(var_1.a, u_input.c.xwz) >> (~54551u % 32u)), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global0 = array<vec4<i32>, 20>();
    global0 = array<vec4<i32>, 20>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-348f * -204f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)), -592f), _wgslsmith_f_op_vec3_f32(global1.zwz * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -241f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1090f, -1308f)) * vec3<f32>(global1.x, -536f, -1109f)) * vec3<f32>(1222f, _wgslsmith_f_op_f32(max(1572f, -316f)), _wgslsmith_div_f32(160f, global1.x))), _wgslsmith_f_op_vec3_f32(floor(global1.wxw))));
    let var_2 = Struct_1(_wgslsmith_sub_vec3_i32(-u_input.c.yyy, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(4294967295u, 21u)], u_input.c.x, -2147483647i), u_input.c << (vec4<u32>(1337u, 27642u, 766u, u_input.b.x) % vec4<u32>(32u))), 1i, _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(u_input.c.x, 2147483647i)))), _wgslsmith_mod_vec2_i32(u_input.c.zw, vec2<i32>(0i, -8093i)), ~vec4<u32>(~_wgslsmith_sub_u32(57292u, 0u), u_input.b.x, max(u_input.a ^ var_0.x, ~u_input.b.x), 39206u));
    let var_3 = Struct_1(vec3<i32>(-1i, abs(func_4(func_1(var_2))), ~(~_wgslsmith_mod_i32(0i, -1i))), -_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.c.x, 0i)), vec2<i32>(func_4(vec4<bool>(true, false, true, true)), _wgslsmith_clamp_i32(var_2.b.x, u_input.c.x, global2[_wgslsmith_index_u32(u_input.b.x, 21u)]))), firstLeadingBit(vec4<u32>(~_wgslsmith_div_u32(var_2.c.x, 41814u), ~_wgslsmith_div_u32(var_2.c.x, u_input.b.x), ~(~4294967295u), ~_wgslsmith_mod_u32(var_0.x, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, abs(var_2.c.yww), reverseBits(vec4<u32>(~var_2.c.x, var_3.c.x | 59690u, 1u, ~var_2.c.x) & ~var_2.c), ~vec3<u32>(17874u, u_input.a, var_3.c.x), 1u);
}

