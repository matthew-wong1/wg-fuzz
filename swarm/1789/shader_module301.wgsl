struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_5) -> vec2<bool> {
    let var_0 = arg_1.c.c.c.xzy;
    var var_1 = ~u_input.a.wxw;
    var_1 = ~(vec3<u32>(4294967295u, u_input.a.x, 15238u) & ~var_0);
    var var_2 = arg_1;
    var_1 = vec3<u32>(_wgslsmith_sub_u32(~((var_0.x << (23249u % 32u)) & ~var_2.c.c.c.x), u_input.a.x), min(var_2.c.a.d, 4294967295u), ~1u);
    return !vec2<bool>(all(select(!vec2<bool>(arg_0.b.b, arg_1.c.a.a), select(vec2<bool>(arg_1.c.a.b, var_2.c.a.a), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))), arg_0.a.a);
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_2(Struct_1(true, false, _wgslsmith_mult_vec4_u32(~vec4<u32>(42687u, u_input.a.x, 0u, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 67024u, u_input.a.x, u_input.a.x), u_input.a)) | ~abs(u_input.a), ~(~1u), reverseBits(~vec2<i32>(0i, 38372i)) | (-vec2<i32>(u_input.e.x, u_input.b) >> (u_input.a.yy % vec2<u32>(32u)))), Struct_1(all(vec4<bool>(true, true, true, true)), true, u_input.a, u_input.a.x, -vec2<i32>(u_input.c.x, max(u_input.e.x, u_input.e.x))));
    let var_1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -44238i << (~u_input.a.x % 32u)), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(1i, 2147483647i, -51952i)), vec3<i32>(abs(var_0.b.e.x), var_0.a.e.x | var_0.a.e.x, -28823i)));
    var var_2 = -48563i;
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(-51416i ^ u_input.e.x) << (u_input.a.x % 32u), -2147483647i, abs(u_input.e.x), ~(i32(-1i) * -var_1)), vec4<i32>(var_1, (-42058i & var_1) >> (~var_0.a.c.x % 32u), i32(-1i) * -countOneBits(43552i), ~_wgslsmith_add_i32(-10518i, _wgslsmith_clamp_i32(16949i, var_1, 0i))));
    var_2 = abs(var_1);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-672f, -478f, 1203f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1743f, 397f, 549f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(230f, -1335f, -693f) - vec3<f32>(-1000f, -917f, 744f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 1809f, 1443f), vec3<f32>(194f, 282f, -1006f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2499f, 1017f, 179f))))))));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_3(~0u, select(!select(func_2(Struct_2(Struct_1(true, true, u_input.a, 4294967295u, vec2<i32>(u_input.c.x, u_input.c.x)), Struct_1(false, true, vec4<u32>(31275u, 0u, u_input.a.x, u_input.a.x), 86404u, vec2<i32>(-26910i, -1i))), Struct_5(u_input.a.x, u_input.c, Struct_4(Struct_1(false, false, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), 6328u, u_input.c.zx), u_input.c.wyy, Struct_1(true, false, u_input.a, 4294967295u, vec2<i32>(u_input.d, u_input.d))))), vec2<bool>(true, true), vec2<bool>(true, true)), func_2(Struct_2(Struct_1(false, false, u_input.a, u_input.a.x, vec2<i32>(u_input.b, u_input.b)), Struct_1(true, true, u_input.a, 9775u, u_input.c.xy)), Struct_5(u_input.a.x ^ u_input.a.x, _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(-2147483647i, 9100i, 1i, -20766i)), Struct_4(Struct_1(true, false, vec4<u32>(1317u, u_input.a.x, 19083u, u_input.a.x), u_input.a.x, u_input.e), u_input.c.wyw, Struct_1(true, true, u_input.a, 17258u, vec2<i32>(1456i, u_input.e.x))))), select(select(func_2(Struct_2(Struct_1(false, true, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), 0u, vec2<i32>(-1i, -2147483647i)), Struct_1(false, true, vec4<u32>(0u, 7013u, u_input.a.x, u_input.a.x), 15999u, vec2<i32>(u_input.c.x, -41914i))), Struct_5(u_input.a.x, vec4<i32>(-2147483647i, 0i, 19822i, 2147483647i), Struct_4(Struct_1(false, true, u_input.a, 29883u, vec2<i32>(8042i, -1i)), u_input.c.wwz, Struct_1(true, true, u_input.a, u_input.a.x, u_input.e)))), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())));
    var var_1 = 0i;
    let var_2 = ~(-1i);
    let var_3 = !all(func_2(Struct_2(Struct_1(var_0.b.x, var_0.b.x, vec4<u32>(u_input.a.x, u_input.a.x, var_0.a, u_input.a.x), 0u, u_input.c.xw), Struct_1(var_0.b.x, false, vec4<u32>(var_0.a, var_0.a, 8748u, var_0.a), u_input.a.x, vec2<i32>(1i, -2147483647i))), Struct_5(1u, vec4<i32>(-20561i, u_input.e.x, var_2, 6969i), Struct_4(Struct_1(false, true, vec4<u32>(17964u, 0u, u_input.a.x, var_0.a), 1u, vec2<i32>(1i, var_2)), u_input.c.ywx, Struct_1(false, var_0.b.x, vec4<u32>(var_0.a, var_0.a, u_input.a.x, u_input.a.x), 0u, vec2<i32>(var_2, -2147483647i))))));
    var_1 = -u_input.e.x;
    return Struct_4(Struct_1(!(-15956i != _wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(17891i, var_2))), true, firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), ~u_input.a)), u_input.a.x, -u_input.c.yz), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c.x, u_input.c.x, u_input.e.x) ^ countOneBits(vec3<i32>(u_input.c.x, u_input.b, var_2)), reverseBits(u_input.c.zxy), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2, -41182i, 27391i), abs(vec3<i32>(1i, 0i, var_2)))) >> (abs(vec3<u32>(1u, _wgslsmith_div_u32(u_input.a.x, 0u), var_0.a ^ 0u)) % vec3<u32>(32u)), Struct_1((_wgslsmith_f_op_f32(-var_0.c.x) != _wgslsmith_f_op_f32(2137f * -1267f)) | (_wgslsmith_add_i32(u_input.e.x, -52758i) != 0i), var_3, u_input.a, 6421u, vec2<i32>(-firstTrailingBit(-2147483647i), 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(min(10658i, u_input.e.x));
}

