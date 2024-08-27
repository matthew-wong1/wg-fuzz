struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, -44768i, -1i);

var<private> global1: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-1565f, -186f), vec2<f32>(428f, -460f), vec2<f32>(745f, -1000f), vec2<f32>(839f, 1000f), vec2<f32>(638f, -113f), vec2<f32>(1316f, 251f), vec2<f32>(740f, -512f), vec2<f32>(-1000f, -1181f), vec2<f32>(-536f, 214f), vec2<f32>(399f, 141f), vec2<f32>(-338f, 1000f), vec2<f32>(327f, -355f), vec2<f32>(-790f, 278f), vec2<f32>(1000f, -1067f), vec2<f32>(1824f, -356f), vec2<f32>(-1236f, 552f), vec2<f32>(466f, 766f), vec2<f32>(183f, 419f), vec2<f32>(1253f, -120f), vec2<f32>(-456f, -349f), vec2<f32>(-536f, -154f), vec2<f32>(-382f, -267f), vec2<f32>(543f, 308f), vec2<f32>(199f, -1390f), vec2<f32>(1062f, 1107f), vec2<f32>(1062f, -1000f), vec2<f32>(-776f, 427f), vec2<f32>(342f, 1000f), vec2<f32>(-1000f, 685f), vec2<f32>(933f, -133f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(vec4<u32>(u_input.d.x, u_input.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(21019u, 1u), vec2<u32>(u_input.d.x, 0u)), _wgslsmith_add_vec2_u32(u_input.c.xz, u_input.d.xx)), abs(~u_input.c.yx)), 795u), all(vec3<bool>(false, all(vec4<bool>(true, true, true, true)) && false, !(0i >= u_input.b))), select(countOneBits(abs(vec3<i32>(global0.x, 11593i, u_input.b))), -abs(vec3<i32>(global0.x, 1i, 0i)), vec3<bool>(true, true, true)) >> ((vec3<u32>(u_input.c.x, ~129409u, u_input.c.x) >> (~vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), 48325u, !select(vec4<bool>(all(vec3<bool>(false, true, false)), any(vec2<bool>(true, true)), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true), all(vec3<bool>(true, true, false))), true));
    var var_1 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~var_0.d, u_input.c.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_0.a, u_input.d), u_input.c.x ^ 0u), ~u_input.d.x << (u_input.d.x % 32u), ~var_0.d), vec4<u32>(0u >> (1u % 32u), 1u, min(0u, u_input.d.x >> (1u % 32u)), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, var_0.d)), abs(var_0.a.wz)))), true, vec3<i32>(17932i, u_input.e, -2147483647i), 1555u, vec4<bool>(var_0.e.x, var_0.b | (var_0.b | true), var_0.b, all(vec4<bool>(false, true, var_0.e.x, 0u < u_input.d.x))));
    var var_2 = false;
    var var_3 = -var_0.c.x;
    let var_4 = ~countOneBits(min(max(u_input.e >> (u_input.d.x % 32u), u_input.a & var_1.c.x), -2147483647i));
    return vec4<bool>(all(vec3<bool>(var_0.b, !(!var_1.b), true)), var_0.b, !(!var_0.b), -1671f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(378f, -996f))))));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = select(!select(func_3(), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true), func_3()), true), vec4<bool>(all(func_3().xyz), any(vec3<bool>(true, true, true)), !all(vec3<bool>(true, true, true)), min(global0.x & global0.x, _wgslsmith_dot_vec2_i32(global0.yz, global0.zx)) == global0.x), any(select(vec2<bool>(true, true), vec2<bool>(true, true), func_3().xw)));
    return all(select(vec4<bool>(true, false, any(!vec3<bool>(var_0.x, var_0.x, true)), !var_0.x), select(!vec4<bool>(false, true, true, var_0.x), func_3(), true && any(var_0.xyy)), vec4<bool>(!var_0.x & var_0.x, var_0.x, true, func_3().x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<i32> {
    var var_0 = vec2<u32>(~max(~(~32387u), max(min(4294967295u, u_input.c.x), ~4294967295u)), _wgslsmith_mult_u32(u_input.c.x, 1u));
    let var_1 = _wgslsmith_add_u32(firstLeadingBit(~(~u_input.d.x)), var_0.x);
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(min(38389u, 41128u)) << ((var_0.x & 8021u) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.d.x, ~u_input.c.x, u_input.d.x & arg_2.d), vec3<u32>(countOneBits(21276u), reverseBits(u_input.c.x), _wgslsmith_div_u32(0u, 25040u))), max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.x, 1u), abs(vec2<u32>(48939u, 1u))), ~(~arg_2.d)), ~_wgslsmith_dot_vec3_u32(countOneBits(arg_2.a.ywz), ~vec3<u32>(u_input.c.x, 4294967295u, 29017u))), u_input.d);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.x), 1f, true == arg_2.b)), arg_2.b))));
    let var_4 = 1i;
    return vec4<i32>(var_4, -4490i, 9552i & (firstTrailingBit(~arg_0.x) << (4294967295u % 32u)), ~(-30954i));
}

fn func_1() -> i32 {
    global1 = array<vec2<f32>, 30>();
    var var_0 = -((vec4<i32>(-20230i >> (u_input.c.x % 32u), _wgslsmith_div_i32(63059i, 65491i), _wgslsmith_dot_vec4_i32(vec4<i32>(18936i, 0i, u_input.a, 2147483647i), vec4<i32>(2147483647i, global0.x, 24947i, -27028i)), abs(1i)) & (~vec4<i32>(global0.x, global0.x, u_input.a, 51594i) | abs(vec4<i32>(0i, u_input.a, 1i, global0.x)))) | func_4(~(vec3<i32>(3443i, 0i, 0i) << (vec3<u32>(1u, u_input.d.x, u_input.c.x) % vec3<u32>(32u))), vec2<bool>(global0.x > global0.x, func_2(24056u)), Struct_1(u_input.d << (vec4<u32>(u_input.c.x, 40217u, u_input.d.x, 1u) % vec4<u32>(32u)), true, firstLeadingBit(vec3<i32>(-1i, u_input.b, u_input.e)), u_input.d.x | u_input.c.x, select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-436f, 1100f)), _wgslsmith_f_op_vec2_f32(floor(global1[_wgslsmith_index_u32(0u, 30u)]))))));
    global1 = array<vec2<f32>, 30>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(723f + _wgslsmith_f_op_f32(trunc(-831f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1946f + 1453f) - -1117f)))));
    let var_2 = countOneBits(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, 0u, u_input.d.x, 0u) | _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d.x, u_input.c.x, u_input.c.x), vec4<u32>(0u, u_input.d.x, u_input.c.x, 1u)), u_input.d), abs(vec4<u32>(u_input.d.x, u_input.c.x, 1u, _wgslsmith_mod_u32(54367u, u_input.d.x)))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(func_1() < u_input.a), !(firstTrailingBit(~global0.x) != _wgslsmith_mod_i32(1i, ~u_input.a)), u_input.d.x < ~u_input.c.x);
    var var_1 = Struct_1(vec4<u32>(~(~(~u_input.d.x)), ~(1u >> (u_input.d.x % 32u)) >> (_wgslsmith_dot_vec3_u32(u_input.c | u_input.d.wwx, u_input.c | vec3<u32>(u_input.d.x, u_input.c.x, u_input.c.x)) % 32u), u_input.c.x, u_input.d.x), var_0.x, -vec3<i32>(abs(_wgslsmith_div_i32(global0.x, u_input.a)), -1i, global0.x), countOneBits(u_input.d.x), vec4<bool>(true, var_0.x, true, var_0.x));
    let var_2 = func_4(abs(vec3<i32>(-_wgslsmith_div_i32(61662i, var_1.c.x), ~var_1.c.x, var_1.c.x)), vec2<bool>(true, true), Struct_1(vec4<u32>(~(~u_input.c.x), ~abs(4806u), max(0u, 3112u) << (1u % 32u), firstLeadingBit(_wgslsmith_div_u32(u_input.d.x, 1596u))), var_0.x | (_wgslsmith_add_u32(u_input.c.x, 4294967295u) != 4294967295u), select(min(abs(var_1.c), ~var_1.c), vec3<i32>(2147483647i, 1i, u_input.e) & vec3<i32>(global0.x, var_1.c.x, 2147483647i), _wgslsmith_f_op_f32(round(905f)) < -206f), 9975u, !var_1.e), global1[_wgslsmith_index_u32(~u_input.c.x, 30u)]).x;
    var var_3 = Struct_1((var_1.a & (vec4<u32>(var_1.d, 97045u, var_1.a.x, 74327u) << (vec4<u32>(var_1.d, var_1.d, var_1.d, u_input.c.x) % vec4<u32>(32u)))) << (var_1.a % vec4<u32>(32u)), false, var_1.c, var_1.d, !vec4<bool>(true & (var_1.e.x == false), true, var_1.b, any(vec4<bool>(true, var_1.e.x, var_1.b, false))));
    var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(~max(vec4<u32>(var_1.a.x, u_input.d.x, 0u, 4294967295u) >> (u_input.d % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.d, 1u, 64695u, var_1.d), vec4<u32>(4294967295u, var_3.d, 4294967295u, 79298u), vec4<u32>(12159u, 1u, 4294967295u, 56887u))), var_3.a, var_3.a), !(!(!any(var_1.e.wxy))), ~vec3<i32>(~(-1i), _wgslsmith_dot_vec2_i32(var_3.c.yx, var_1.c.yz), _wgslsmith_mult_i32(9667i, var_1.c.x)) >> (u_input.d.yzw % vec3<u32>(32u)), 46287u, select(vec4<bool>(any(!var_3.e.zxw), !any(var_0), true, true), var_1.e, vec4<bool>(false, var_0.x, !(var_2 >= 0i), var_1.e.x)));
    var var_4 = false;
    var_1 = Struct_1(u_input.d, true, _wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, global0.x, _wgslsmith_sub_i32(var_3.c.x, ~u_input.e)), min(vec3<i32>(select(var_1.c.x, var_2, var_0.x), 1i, ~var_3.c.x), -(~vec3<i32>(2147483647i, var_3.c.x, -41736i)))), max(select(~(u_input.d.x & 14930u), 52004u, all(select(var_1.e.wy, vec2<bool>(var_3.e.x, var_1.b), var_1.e.xy))), abs(firstLeadingBit(_wgslsmith_clamp_u32(1u, 1u, var_3.d)))), select(var_3.e, var_1.e, var_1.e.x));
    var var_5 = Struct_1(reverseBits(vec4<u32>(4586u, _wgslsmith_mult_u32(var_3.a.x, firstLeadingBit(u_input.c.x)), firstLeadingBit(1u), ~var_3.a.x)), !any(func_3()), -vec3<i32>(17267i, var_3.c.x, _wgslsmith_div_i32(~(-31636i), -25110i >> (u_input.d.x % 32u))), abs(firstLeadingBit(~u_input.d.x)) | max(_wgslsmith_sub_u32(u_input.d.x, var_1.a.x) & 0u, 0u), vec4<bool>(!var_3.b, !(!(-2147483647i < global0.x)), var_3.b, !var_3.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_5.a.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-288f * -178f)));
}

