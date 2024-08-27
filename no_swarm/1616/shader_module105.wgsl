struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec2<i32>(4760i, 10716i), -200f, vec3<bool>(false, false, true), Struct_1(vec3<u32>(0u, 1u, 1376u), vec4<i32>(46733i, -58244i, -1028i, i32(-2147483648))), 48090u), Struct_2(vec2<i32>(0i, 2147483647i), -1000f, vec3<bool>(false, false, true), Struct_1(vec3<u32>(14613u, 1u, 1u), vec4<i32>(-1i, i32(-2147483648), 65484i, -17441i)), 4294967295u), Struct_2(vec2<i32>(0i, 1i), -1000f, vec3<bool>(false, false, true), Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec4<i32>(i32(-2147483648), 14246i, -1i, -1i)), 1u), Struct_2(vec2<i32>(62712i, 1i), -1157f, vec3<bool>(false, true, false), Struct_1(vec3<u32>(21933u, 81168u, 9553u), vec4<i32>(0i, 1i, 1i, i32(-2147483648))), 31760u), Struct_2(vec2<i32>(-8790i, 25606i), -1969f, vec3<bool>(false, false, true), Struct_1(vec3<u32>(2531u, 6786u, 33095u), vec4<i32>(-1i, -35623i, 0i, -1358i)), 4294967295u), Struct_2(vec2<i32>(-1730i, 2927i), 1184f, vec3<bool>(false, false, false), Struct_1(vec3<u32>(89029u, 4294967295u, 18413u), vec4<i32>(-12067i, 0i, 0i, 0i)), 64239u), Struct_2(vec2<i32>(1i, -8162i), 434f, vec3<bool>(false, true, false), Struct_1(vec3<u32>(31660u, 66296u, 15140u), vec4<i32>(-28640i, 0i, 65952i, 12488i)), 4294967295u), Struct_2(vec2<i32>(2147483647i, 0i), -1000f, vec3<bool>(true, false, true), Struct_1(vec3<u32>(1u, 98307u, 4294967295u), vec4<i32>(2147483647i, 1i, 1i, i32(-2147483648))), 4294967295u), Struct_2(vec2<i32>(2147483647i, 12749i), 853f, vec3<bool>(true, true, true), Struct_1(vec3<u32>(0u, 79109u, 1u), vec4<i32>(-4455i, -37810i, i32(-2147483648), 1i)), 0u), Struct_2(vec2<i32>(5882i, 5592i), 2640f, vec3<bool>(true, true, false), Struct_1(vec3<u32>(29650u, 46489u, 100957u), vec4<i32>(37080i, 33952i, -72750i, -51635i)), 45039u), Struct_2(vec2<i32>(2147483647i, -51618i), 950f, vec3<bool>(true, false, false), Struct_1(vec3<u32>(4294967295u, 6458u, 4294967295u), vec4<i32>(13715i, 52732i, 0i, -1i)), 30764u), Struct_2(vec2<i32>(-22987i, -17811i), -1000f, vec3<bool>(true, false, false), Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -26384i)), 40576u), Struct_2(vec2<i32>(17705i, 2147483647i), 443f, vec3<bool>(true, false, true), Struct_1(vec3<u32>(12680u, 4294967295u, 11573u), vec4<i32>(2147483647i, -32499i, 1i, 0i)), 58373u));

var<private> global1: array<vec3<u32>, 10>;

var<private> global2: Struct_4 = Struct_4(vec2<u32>(1u, 0u), vec3<u32>(4294967295u, 168010u, 11726u), 1u, vec4<u32>(26697u, 4294967295u, 37639u, 28588u), Struct_3(vec2<i32>(1i, -38236i), vec4<u32>(0u, 66257u, 0u, 59510u)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(u_input.a.yxx, _wgslsmith_add_vec4_i32(abs(select(_wgslsmith_add_vec4_i32(vec4<i32>(-27444i, 19372i, u_input.b.x, 27397i), vec4<i32>(global2.e.a.x, u_input.b.x, 0i, -2147483647i)), vec4<i32>(global2.e.a.x, -1i, global2.e.a.x, u_input.b.x), select(true, false, false))), min(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b.x, u_input.b.x, 58586i, -1i)), firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, global2.e.a.x, 0i))), ~(-vec4<i32>(-8875i, global2.e.a.x, global2.e.a.x, 13766i)))));
    var var_1 = _wgslsmith_clamp_u32(global2.e.b.x, 29363u, ~(26366u | ~_wgslsmith_sub_u32(18062u, var_0.a.x)));
    var var_2 = global2.e.a.x == ((global2.e.a.x | ~(~0i)) << (30474u % 32u));
    var_1 = global2.a.x >> (_wgslsmith_div_u32(global2.c, u_input.a.x) % 32u);
    global2 = Struct_4(~(~abs(u_input.a.wy)), vec3<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(32245u, 1729u, 27216u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a.x), global1[_wgslsmith_index_u32(var_0.a.x, 10u)])), vec3<u32>(64693u, global2.a.x, reverseBits(global2.b.x))), 1u, _wgslsmith_add_u32(4294967295u, var_0.a.x | u_input.a.x)), _wgslsmith_dot_vec2_u32(~abs(var_0.a.xx), global2.d.wy), select(~(~vec4<u32>(1u, 1u, var_0.a.x, var_0.a.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, var_0.a.x, 0u, 1u), ~global2.d, ~vec4<u32>(var_0.a.x, global2.a.x, var_0.a.x, 1u)), vec4<bool>(all(vec2<bool>(false, true)), true, true, true)) >> (~firstTrailingBit(vec4<u32>(7454u, global2.e.b.x, var_0.a.x, u_input.a.x)) % vec4<u32>(32u)), global2.e);
    return ~(vec3<u32>(max(2494u, var_0.a.x & 4294967295u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), var_0.a.yx)), u_input.a.x) & select(global2.b, global2.d.wzy, select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_4(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(min(_wgslsmith_div_vec2_u32(global2.b.zz, vec2<u32>(7305u, 0u)), u_input.a.yy), global2.e.b.yx), min(u_input.a.zx | ~vec2<u32>(u_input.a.x, 64863u), ~u_input.a.yw)), vec3<u32>(_wgslsmith_dot_vec4_u32(global2.e.b, global2.e.b | ~vec4<u32>(15797u, global2.c, 2811u, u_input.a.x)), reverseBits(_wgslsmith_dot_vec4_u32(u_input.a | vec4<u32>(15309u, 1u, global2.e.b.x, 57255u), _wgslsmith_mod_vec4_u32(global2.d, u_input.a))), global2.a.x), 61019u, vec4<u32>(~(~2053u), ~(~firstLeadingBit(4294967295u)), 1u, ~4294967295u), global2.e);
    let var_1 = _wgslsmith_add_vec3_u32((select(~u_input.a.zwz, u_input.a.yxw, true) | global2.e.b.zww) | reverseBits(~_wgslsmith_div_vec3_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], vec3<u32>(var_0.b.x, 26842u, 1u))), func_3());
    var var_2 = Struct_4(var_0.b.zy, ~vec3<u32>(~4294967295u, _wgslsmith_mod_u32(57465u, max(var_0.e.b.x, var_1.x)), min(global2.b.x, var_0.e.b.x) >> ((0u & var_1.x) % 32u)), var_0.c, _wgslsmith_add_vec4_u32(firstTrailingBit(var_0.e.b), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_0.b.x, 1u, 82644u), vec4<u32>(u_input.a.x, var_1.x, 1u, u_input.a.x)) ^ ~vec4<u32>(u_input.a.x, 1u, global2.d.x, 4294967295u)), Struct_3(var_0.e.a, var_0.e.b));
    let var_3 = false;
    var var_4 = var_0.e;
    return vec2<bool>(true, any(!select(!vec3<bool>(var_3, true, false), !vec3<bool>(false, var_3, var_3), select(vec3<bool>(false, true, true), vec3<bool>(true, var_3, false), false))));
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<i32>(firstTrailingBit(global2.e.a.x), _wgslsmith_sub_i32(firstTrailingBit(~global2.e.a.x << (max(global2.d.x, global2.d.x) % 32u)), max(firstLeadingBit(1i) << (~4294967295u % 32u), select(u_input.b.x, 1i, true))), global2.e.a.x, u_input.b.x);
    let var_1 = select(vec2<bool>(true, true), select(select(select(func_2(), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec4<bool>(false, true, false, false))), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec2<bool>(true, ~24589u <= (global2.b.x ^ 0u)), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)))), vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true))), true));
    let var_2 = ~(_wgslsmith_mult_vec2_i32(var_0.yw, _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, -2147483647i) ^ vec2<i32>(global2.e.a.x, var_0.x), global2.e.a)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, abs(u_input.b.x)), u_input.b.yz));
    var var_3 = global2.e;
    global2 = Struct_4(~u_input.a.zy, vec3<u32>(1u >> (0u % 32u), _wgslsmith_mod_u32(112624u, ~4294967295u ^ (global2.e.b.x ^ var_3.b.x)), 70578u), global2.e.b.x, ~reverseBits((global2.d ^ vec4<u32>(u_input.a.x, global2.b.x, 0u, var_3.b.x)) & (u_input.a >> (var_3.b % vec4<u32>(32u)))), Struct_3(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.e.a.x, global2.e.a.x, u_input.b.x, 1i) ^ vec4<i32>(1i, u_input.b.x, 3961i, var_0.x), max(var_0, vec4<i32>(var_2.x, global2.e.a.x, var_3.a.x, var_3.a.x))), select(-421i, var_3.a.x, var_1.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(var_3.b.x), ~global2.a.x, 0u, 107958u), u_input.a, global2.d)));
    return Struct_2(abs(var_3.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(595f, -738f))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-608f * 799f))))), select(!vec3<bool>(true, global2.c <= u_input.a.x, true), select(vec3<bool>(any(vec3<bool>(var_1.x, false, false)), var_1.x, !var_1.x), select(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, var_1.x, true)), select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(var_1.x, true, var_1.x)), any(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false)))), false), Struct_1(func_3(), var_0 >> (~select(vec4<u32>(79997u, 74272u, 22024u, var_3.b.x), u_input.a, vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)) % vec4<u32>(32u))), _wgslsmith_clamp_u32(~(~(~0u)), 0u, min(global2.d.x, u_input.a.x) << (~global2.e.b.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(firstLeadingBit(global2.e.a), var_0.b, vec3<bool>(false, false, any(var_0.c.zx)), func_1().d, func_3().x);
    let var_2 = -230f;
    global2 = Struct_4(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(var_1.d.a.x, u_input.a.x), u_input.a.ww), abs(countOneBits(global2.a)), firstTrailingBit(vec2<u32>(var_1.e, var_0.d.a.x)) & abs(vec2<u32>(u_input.a.x, global2.d.x))), vec2<u32>(func_3().x ^ _wgslsmith_sub_u32(u_input.a.x, 4294967295u), ~(~u_input.a.x))), vec3<u32>(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 0u, 59369u), vec4<u32>(u_input.a.x, 1u, var_0.e, 50858u))), (51153u ^ (6453u | u_input.a.x)) | min(61102u, ~var_1.e), _wgslsmith_div_u32(u_input.a.x >> (u_input.a.x % 32u), ~u_input.a.x)), 49006u, _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(var_1.e, firstTrailingBit(var_1.d.a.x), global2.d.x, u_input.a.x)), global2.e);
    var var_3 = Struct_3(-u_input.b.yz, global2.e.b);
    global0 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-max(-53780i, u_input.b.x), _wgslsmith_mult_i32(~(-19317i) >> (~var_3.b.x % 32u), _wgslsmith_mult_i32(~0i, var_1.d.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2))), 660f))));
}

