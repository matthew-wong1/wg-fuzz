struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: Struct_3,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(849f, -1187f, 991f, -2290f);

var<private> global1: vec2<f32> = vec2<f32>(-2241f, 267f);

var<private> global2: Struct_3;

var<private> global3: f32 = -782f;

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(119f, _wgslsmith_f_op_f32(-global1.x), global2.a))), global2.b >> (global2.b % vec4<u32>(32u)), vec4<bool>(0i < _wgslsmith_dot_vec4_i32(vec4<i32>(50792i, 1i, u_input.a, -2147483647i), vec4<i32>(u_input.a, 1i, 60045i, u_input.a)), any(global4.c.yz) | any(vec2<bool>(global2.a, global2.a)), global4.c.x, !all(vec4<bool>(global4.c.x, global4.c.x, global4.c.x, false)))), Struct_1(-1713f, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(36928u, 31420u, global2.b.x, 58164u), _wgslsmith_sub_vec4_u32(global4.b, global2.b)), vec4<u32>(u_input.c, u_input.d.x, global4.b.x, u_input.c) >> (global4.b % vec4<u32>(32u))), global4.c), _wgslsmith_mult_i32(~8440i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), -43378i)) ^ countOneBits(select(2147483647i, u_input.a | u_input.a, global4.c.x)), select(vec3<u32>(~u_input.c, global2.b.x << (global4.b.x % 32u), abs(global4.b.x)) ^ abs(~vec3<u32>(u_input.c, 11713u, u_input.d.x)), u_input.d, !vec3<bool>(global4.b.x < 16099u, true, global2.a)));
    global1 = _wgslsmith_f_op_vec2_f32(ceil(global0.xw));
    let var_1 = firstTrailingBit(vec3<i32>(~(u_input.a & countOneBits(var_0.c)), countOneBits(u_input.a >> (0u % 32u)) | _wgslsmith_clamp_i32(var_0.c ^ var_0.c, countOneBits(var_0.c), u_input.a), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, 2147483647i, 2147483647i), reverseBits(var_0.c)), u_input.a)));
    let var_2 = ~_wgslsmith_clamp_u32(1u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(global4.b.x, 4294967295u, global4.b.x), vec3<u32>(global2.b.x, 4294967295u, var_0.b.b.x)), _wgslsmith_mult_u32(global2.b.x, _wgslsmith_sub_u32(33032u, u_input.d.x)) >> (5705u % 32u), 10549u);
    var var_3 = var_0;
    return ~max(70854u, 53066u);
}

fn func_2() -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-979f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.a))), global1.x, _wgslsmith_div_f32(global4.a, _wgslsmith_f_op_f32(-352f - -1059f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -100f, -334f, global0.x), vec4<f32>(352f, -1026f, 342f, 544f), vec4<bool>(global4.c.x, false, false, global2.a))))))));
    global2 = Struct_3(false, max(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global4.b.xy, vec2<u32>(global4.b.x, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(6156u, 84785u), global4.b.yw), 4294967295u), func_3(), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, 4294967295u, global2.b.x), vec3<u32>(global2.b.x, 94430u, global4.b.x))), _wgslsmith_clamp_u32(71797u, 5555u, firstTrailingBit(35049u))), ~global4.b | ~vec4<u32>(1u, global2.b.x, 5552u, global4.b.x)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-911f, global4.a) - global4.a)))), ~select(vec4<u32>(12624u, global2.b.x, u_input.c, 0u), global4.b, global4.c), select(vec4<bool>(select(global2.a, any(global4.c.zwx), !global2.a), (global4.a < global0.x) || global4.c.x, global2.a, any(global4.c.xw) | !global2.a), vec4<bool>(any(global4.c), true, !all(global4.c), _wgslsmith_f_op_f32(-global0.x) == global0.x), any(vec4<bool>(any(global4.c), true, u_input.a < -2147483647i, all(global4.c.zx)))));
    let var_1 = abs(_wgslsmith_sub_i32(-1i, -_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, -2147483647i), ~u_input.a)));
    let var_2 = _wgslsmith_f_op_f32(-global4.a);
    return ~reverseBits(vec4<u32>(global4.b.x, abs(1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(19485u, global2.b.x, 4294967295u), ~u_input.d), abs(1u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> i32 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(abs(firstLeadingBit(global2.b.yyz)), ~firstLeadingBit(u_input.d)), 1u, 92248u) & max(global2.b.zwz, vec3<u32>(~arg_1.b.b.x ^ ~global4.b.x, global4.b.x, _wgslsmith_dot_vec2_u32(arg_1.a.b.xz, vec2<u32>(global2.b.x, u_input.c)) >> ((4913u >> (global2.b.x % 32u)) % 32u)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4.a, arg_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -558f)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b.b.x ^ 32557u, abs(0u), arg_1.d.x, ~966u), func_2()), !(!arg_1.b.c)), Struct_1(_wgslsmith_f_op_f32(floor(975f)), _wgslsmith_sub_vec4_u32(global2.b, _wgslsmith_add_vec4_u32(global4.b, vec4<u32>(u_input.c, arg_1.a.b.x, u_input.c, 0u))), !(!arg_1.a.c)), _wgslsmith_dot_vec2_i32(abs(-select(vec2<i32>(-20470i, 10594i), vec2<i32>(u_input.a, arg_1.c), false)), abs(~vec2<i32>(arg_1.c, -1i)) | ~(-vec2<i32>(34062i, 11561i))), _wgslsmith_sub_vec3_u32(min(vec3<u32>(1u, global4.b.x, ~var_0.x), ~vec3<u32>(80174u, global4.b.x, var_0.x) ^ (u_input.d | global4.b.yyy)), ~firstLeadingBit(~vec3<u32>(62080u, var_0.x, global2.b.x))));
    global2 = Struct_3(global4.c.x, firstTrailingBit(vec4<u32>(u_input.c, ~arg_1.a.b.x, u_input.c, 26515u)));
    let var_2 = min(var_1.c, 1i) & -1i;
    return _wgslsmith_sub_i32(countOneBits(-min(u_input.a, 1i)), arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(func_1(global0.yzz, Struct_2(Struct_1(global0.x, vec4<u32>(1549u, 4294967295u, global4.b.x, 1u), global4.c), Struct_1(308f, vec4<u32>(u_input.d.x, 4294967295u, global2.b.x, u_input.c), vec4<bool>(true, global2.a, global4.c.x, global4.c.x)), u_input.a, global2.b.yyx)), _wgslsmith_div_i32(-1i, u_input.a), countOneBits(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(8442i, -1i, u_input.a, 0i), vec4<i32>(u_input.a, -9345i, -8799i, u_input.a)))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, 1i, -1i), vec4<i32>(u_input.a, -2147483647i, 61635i, u_input.a)) << (~firstLeadingBit(global4.b) % vec4<u32>(32u))), u_input.a);
    global2 = Struct_3(global2.a, vec4<u32>(global2.b.x & func_2().x, ~(~12289u) >> (_wgslsmith_mod_u32(global4.b.x & global4.b.x, ~global4.b.x) % 32u), ~func_3() << (~u_input.c % 32u), 4294967295u));
    var var_1 = 16945u;
    var var_2 = true;
    var_0 = _wgslsmith_mod_i32(1i >> (firstTrailingBit(4294967295u) % 32u), ~_wgslsmith_add_i32(-1i, -28196i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a & (~_wgslsmith_div_i32(u_input.a, u_input.a) << (_wgslsmith_clamp_u32(global4.b.x, 1u, 8293u) % 32u)), vec4<i32>(34903i, -10479i, _wgslsmith_mod_i32(-u_input.a ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -35478i), vec2<i32>(-30848i, u_input.a)), countOneBits(~u_input.a)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-6749i, u_input.a), -vec2<i32>(31588i, -1i)), select(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), true))), vec3<i32>(1i, u_input.a, i32(-1i) * -13563i), func_2());
}

