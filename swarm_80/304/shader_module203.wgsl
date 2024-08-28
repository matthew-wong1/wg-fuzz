struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 3u)];
    var var_1 = var_0.a;
    var var_2 = u_input.a.x >> (13360u % 32u);
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 3u)];
    global1 = ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x);
    return -2147483647i;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = -select(i32(-1i) * -1i, func_3(), all(vec4<bool>(true, false, any(vec2<bool>(false, false)), any(vec3<bool>(false, true, false)))));
    var var_1 = false;
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(reverseBits(min(vec4<i32>(-1i, -1i, -9960i, -1i), vec4<i32>(1i, -55607i, -2147483647i, -12418i))) & vec4<i32>(_wgslsmith_div_i32(1i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -7630i, 0i, -3500i), vec4<i32>(15230i, 2147483647i, -47337i, -2147483647i)), -2463i, ~1i), vec4<i32>(-1i, -_wgslsmith_clamp_i32(0i, 25151i, -2147483647i), abs(_wgslsmith_div_i32(-2147483647i, 2147483647i)), -51462i)), true && (_wgslsmith_sub_u32(~6681u, abs(0u)) <= select(3630u, _wgslsmith_clamp_u32(0u, 1u, arg_0), true)));
    global1 = ~(~38087u);
    global0 = array<Struct_1, 3>();
    return Struct_2(Struct_1(-var_2.a, all(!select(vec3<bool>(var_2.b, var_2.b, var_2.b), vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(var_2.b, var_2.b, var_2.b)))), var_2, ~vec4<u32>(u_input.a.x, ~arg_0, 12155u, _wgslsmith_mult_u32(~25824u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, arg_0), vec3<u32>(4294967295u, arg_0, arg_0)))), vec2<i32>(-17354i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a, var_2.a, 2832i), vec3<i32>(-28666i, var_2.a, -44572i), vec3<i32>(var_2.a, -27671i, -37346i)), ~vec3<i32>(var_2.a, -2935i, var_2.a)), _wgslsmith_mult_vec3_i32(max(vec3<i32>(var_2.a, -2147483647i, 1i), vec3<i32>(var_2.a, var_2.a, var_2.a)), ~vec3<i32>(var_2.a, 15959i, -11762i)))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(9007i, var_2.a), vec2<i32>(2147483647i, -8310i)), var_2.a), -abs(var_2.a), select(12037i, reverseBits(-23903i), var_2.b), var_2.a) ^ reverseBits(select(firstLeadingBit(vec4<i32>(-1821i, var_2.a, -27234i, 9392i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.a, var_2.a, var_2.a, 0i), vec4<i32>(33840i, var_2.a, var_2.a, -53306i)), vec4<bool>(var_2.b, true, true, true))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = ~abs(1u & _wgslsmith_div_u32(43312u, ~u_input.a.x));
    global0 = array<Struct_1, 3>();
    let var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, ~var_0), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) & u_input.a.x, var_0));
    var var_2 = func_2(arg_1.c.x);
    var_2 = arg_1;
    return Struct_1(-arg_0.a, true);
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 3>();
    var var_0 = Struct_2(Struct_1(reverseBits(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 6643i, 12634i, -15282i), vec4<i32>(1i, 69560i, -6788i, -1i)), _wgslsmith_add_i32(-28834i, 38642i))), any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)))), func_4(global0[_wgslsmith_index_u32(57551u, 3u)], func_2(max(~140456u, ~9349u))), ~_wgslsmith_sub_vec4_u32(func_2(u_input.a.x).c, u_input.a | u_input.a) ^ ~(~u_input.a), ~(-vec2<i32>(-1i, -2147483647i)) << (vec2<u32>(u_input.a.x, _wgslsmith_div_u32(1u, u_input.a.x) ^ (u_input.a.x << (u_input.a.x % 32u))) % vec2<u32>(32u)), countOneBits(vec4<i32>(-33877i, 1i, 23807i, ~(~1i))));
    var var_1 = _wgslsmith_f_op_f32(select(560f, _wgslsmith_f_op_f32(f32(-1f) * -174f), var_0.a.b));
    var_1 = -1000f;
    let var_2 = func_4(Struct_1(~_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.a.a, 2147483647i, 27897i, var_0.e.x), var_0.e), false), func_2(69721u));
    return func_4(Struct_1(countOneBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(51953i, 29384i, var_2.a), var_0.e.wxy), var_2.a & -2147483647i, ~var_0.b.a)), _wgslsmith_add_u32(func_2(0u).c.x, 1u) <= _wgslsmith_dot_vec4_u32(max(u_input.a, u_input.a), select(vec4<u32>(1u, 44511u, var_0.c.x, var_0.c.x), var_0.c, var_0.b.b))), func_2(_wgslsmith_sub_u32(~1u, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1390f;
    var_0 = -643f;
    var var_1 = global0[_wgslsmith_index_u32(1u, 3u)];
    global0 = array<Struct_1, 3>();
    var var_2 = func_1();
    var var_3 = vec2<i32>(_wgslsmith_add_i32(var_1.a, _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.a, -1i, var_2.a, 2627i), vec4<i32>(-1i, 1868i, 51328i, var_1.a) >> (u_input.a % vec4<u32>(32u)), vec4<bool>(var_2.b, false, var_2.b, false)), vec4<i32>(_wgslsmith_div_i32(var_1.a, var_2.a), -42185i, 0i, _wgslsmith_mod_i32(var_1.a, -1i)))), var_2.a >> (~u_input.a.x % 32u));
    var var_4 = func_2(func_2(u_input.a.x).c.x);
    let var_5 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_4.e.zwy, vec3<i32>(~(~var_3.x), _wgslsmith_mult_i32(-2147483647i | var_2.a, 0i), firstLeadingBit(-var_4.b.a))), ~(vec3<i32>(-52354i, var_2.a, var_4.d.x) | firstTrailingBit(var_4.e.yyw)) << ((vec3<u32>(~4294967295u, select(u_input.a.x, 43998u, false), firstTrailingBit(0u)) | _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, var_4.c.x, var_4.c.x), var_4.c.zxz ^ u_input.a.zxw)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a.x >> (47952u % 32u)));
}

