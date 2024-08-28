struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
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

var<private> global0: array<Struct_1, 6>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(2147483647i, 26391i, 1i), vec2<u32>(48691u, 1u));

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<i32>(1i, -40065i, i32(-2147483648)), vec2<u32>(67225u, 10283u)), Struct_1(vec3<i32>(28984i, i32(-2147483648), i32(-2147483648)), vec2<u32>(4294967295u, 0u)), Struct_1(vec3<i32>(i32(-2147483648), 3907i, -42782i), vec2<u32>(72536u, 1u)), Struct_1(vec3<i32>(-26598i, 0i, 17657i), vec2<u32>(1669u, 4294967295u)), Struct_1(vec3<i32>(1i, -1i, 1i), vec2<u32>(4294967295u, 33782u)), Struct_1(vec3<i32>(-26093i, 78763i, 17140i), vec2<u32>(46491u, 86379u)), Struct_1(vec3<i32>(i32(-2147483648), 5373i, 2147483647i), vec2<u32>(4294967295u, 77493u)), Struct_1(vec3<i32>(-24653i, 34826i, 1i), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<i32>(0i, -66384i, -8600i), vec2<u32>(219u, 1u)), Struct_1(vec3<i32>(0i, 31975i, -45882i), vec2<u32>(0u, 0u)), Struct_1(vec3<i32>(-54050i, 12983i, -73975i), vec2<u32>(74992u, 105924u)), Struct_1(vec3<i32>(1i, 34626i, -1i), vec2<u32>(12249u, 1u)), Struct_1(vec3<i32>(i32(-2147483648), -51459i, -17888i), vec2<u32>(0u, 44068u)), Struct_1(vec3<i32>(51357i, -19623i, 2147483647i), vec2<u32>(18600u, 4294967295u)), Struct_1(vec3<i32>(-4154i, 0i, 18557i), vec2<u32>(85050u, 4294967295u)), Struct_1(vec3<i32>(-10590i, 24856i, -15491i), vec2<u32>(1u, 26557u)), Struct_1(vec3<i32>(1i, 2147483647i, 12414i), vec2<u32>(10875u, 4294967295u)), Struct_1(vec3<i32>(50156i, i32(-2147483648), 1i), vec2<u32>(0u, 0u)), Struct_1(vec3<i32>(1i, 1i, i32(-2147483648)), vec2<u32>(32089u, 15249u)), Struct_1(vec3<i32>(37388i, -1i, 17245i), vec2<u32>(21038u, 17003u)), Struct_1(vec3<i32>(1i, 1i, 2147483647i), vec2<u32>(91738u, 21119u)), Struct_1(vec3<i32>(1i, 426i, 2147483647i), vec2<u32>(27160u, 7612u)), Struct_1(vec3<i32>(1i, -1i, 2147483647i), vec2<u32>(69577u, 2953u)), Struct_1(vec3<i32>(-33531i, i32(-2147483648), -47197i), vec2<u32>(24345u, 5002u)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 47256u), 6u)];
    var var_0 = _wgslsmith_add_vec3_u32((((vec3<u32>(global1.b.x, global1.b.x, u_input.a.x) & vec3<u32>(58554u, 61274u, global1.b.x)) ^ ~vec3<u32>(u_input.a.x, global1.b.x, u_input.a.x)) & select(vec3<u32>(32914u, 21013u, u_input.a.x) >> (vec3<u32>(u_input.a.x, 1u, 4294967295u) % vec3<u32>(32u)), abs(vec3<u32>(u_input.a.x, 1u, 9407u)), vec3<bool>(false, false, false))) | vec3<u32>(0u, _wgslsmith_mult_u32(global1.b.x, 43648u) & _wgslsmith_sub_u32(75757u, 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(64050u, u_input.a.x, 1u, global1.b.x), vec4<u32>(global1.b.x, 82622u, 26292u, 19101u))), vec3<u32>(firstTrailingBit(~u_input.a.x), ~(~0u), ~(~global1.b.x) | u_input.a.x));
    var var_1 = global1.b.x;
    var var_2 = Struct_1(vec3<i32>(1i, u_input.c.x, reverseBits(2147483647i)), global1.b);
    var var_3 = Struct_1(-_wgslsmith_mod_vec3_i32(firstLeadingBit(~var_2.a), ~(global1.a & vec3<i32>(16284i, var_2.a.x, -1i))), u_input.a & ~_wgslsmith_sub_vec2_u32(var_0.xz, u_input.a));
    return global0[_wgslsmith_index_u32(80638u, 6u)];
}

fn func_3() -> i32 {
    let var_0 = Struct_1(-global1.a, _wgslsmith_div_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(min(u_input.a, vec2<u32>(global1.b.x, u_input.a.x)) | ~u_input.a, global1.b)));
    let var_1 = Struct_1(-global1.a, vec2<u32>(~20740u, func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(439f, 446f, -1683f) * vec3<f32>(-2092f, 1132f, 1287f)))), countOneBits(vec2<i32>(global1.a.x, -24018i)) | vec2<i32>(7490i, global1.a.x)).b.x));
    global2 = array<Struct_1, 24>();
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(840f, -1000f, 356f))) - vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1583f, -1133f, -980f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(406f, -1457f, 289f) + vec3<f32>(1332f, -1256f, 808f))))), firstTrailingBit(-u_input.c));
    global2 = array<Struct_1, 24>();
    return _wgslsmith_dot_vec3_i32(var_2.a, ~(~(~vec3<i32>(1i, var_0.a.x, u_input.b.x))));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> i32 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-604f, _wgslsmith_f_op_f32(-2664f + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(326f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-176f, 1000f, 1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1315f, -406f, 329f)))))), ~select(u_input.b, vec2<i32>(1i, -1049i), all(vec3<bool>(true, true, true))));
    global1 = Struct_1(vec3<i32>(arg_1.x & func_3(), _wgslsmith_mult_i32(0i, 57821i), ~37381i), abs(var_0.b));
    var var_1 = Struct_1(vec3<i32>(-(~(-24725i)), _wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(arg_1.x, -61495i)), i32(-1i) * 0i), _wgslsmith_mult_vec2_u32(vec2<u32>(select(4294967295u, 41662u, true), ~1u), ~var_0.b) << ((u_input.a >> (_wgslsmith_clamp_vec2_u32(global1.b >> (global1.b % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(var_0.b, u_input.a), ~vec2<u32>(u_input.a.x, 16699u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = 169f;
    let var_3 = _wgslsmith_mult_i32(var_1.a.x, _wgslsmith_div_i32(_wgslsmith_add_i32(max(global1.a.x, u_input.b.x), ~_wgslsmith_mod_i32(1i, 9441i)), ~(~_wgslsmith_mult_i32(-29278i, -1961i))));
    return _wgslsmith_div_i32(-2147483647i, var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, func_1(~u_input.a.x, global1.a.zx), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.c.x, -1i, 0i), -vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, u_input.b.x))), _wgslsmith_mod_vec3_i32(global1.a, vec3<i32>(1i, min(global1.a.x, 1i), 0i))), _wgslsmith_mod_vec2_u32(global1.b, global1.b));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-466f - _wgslsmith_f_op_f32(f32(-1f) * -773f)) - 1307f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-510f, -1280f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -647f)), true)) - _wgslsmith_f_op_f32(abs(-190f))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~9709u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u ^ var_0.b.x, 90771u, 1u)), (select(vec3<u32>(0u, 45034u, u_input.a.x), vec3<u32>(global1.b.x, global1.b.x, var_0.b.x), false) >> (~vec3<u32>(4294967295u, 40212u, 0u) % vec3<u32>(32u))) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a.x, 1u), vec3<u32>(var_0.b.x, u_input.a.x, 4294967295u), vec3<u32>(9880u, global1.b.x, 10224u)) % vec3<u32>(32u)))), 6u)];
    global0 = array<Struct_1, 6>();
    var_2 = Struct_1(vec3<i32>(_wgslsmith_div_i32(abs(_wgslsmith_mult_i32(2147483647i, 0i)), global1.a.x), -reverseBits(var_2.a.x), var_0.a.x), vec2<u32>(4294967295u, global1.b.x));
    var var_3 = Struct_1(vec3<i32>(min(12466i, ~1i), 1i, -29556i), select(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 59627u), vec2<u32>(56852u, 4294967295u)), vec2<u32>(19924u, global1.b.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.x, var_2.b.x), ~vec2<u32>(global1.b.x, 1u))), u_input.a << (vec2<u32>(reverseBits(var_0.b.x), abs(global1.b.x)) % vec2<u32>(32u)), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x, -1i, -34824i) & vec3<i32>(var_2.a.x, 47109i << (var_2.b.x % 32u), _wgslsmith_dot_vec2_i32(var_0.a.zx, u_input.c)));
}

