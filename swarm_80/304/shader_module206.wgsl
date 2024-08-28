struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_3,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, true, false);

var<private> global1: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -199f);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-579f)))), global1.c.c.b, Struct_2(global1.c.b.a, Struct_1(690f, global1.c.b.b ^ abs(vec2<i32>(u_input.b, u_input.b)), -global1.a, _wgslsmith_add_i32(global1.e.x, _wgslsmith_mod_i32(u_input.a, global1.a)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, 1u, 84518u, 4294967295u)), vec4<u32>(u_input.c, 78339u, 71994u, 27510u) ^ vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c))), _wgslsmith_f_op_f32(func_3(max(-vec4<i32>(73134i, -2147483647i, u_input.d.x, u_input.a), -vec4<i32>(global1.a, -11940i, 0i, 2147483647i))))));
    let var_1 = select(vec3<i32>(~(_wgslsmith_clamp_i32(44164i, -2662i, -21408i) << (~global1.b % 32u)), _wgslsmith_clamp_i32(~0i, 1i, -(~u_input.a)), ~(i32(-1i) * -16591i)), -abs(vec3<i32>(-var_0.c.b.b.x, -1i, 1i)), true);
    var var_2 = Struct_4(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-55743i, -2147483647i, var_1.x, 2147483647i), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(var_1.x, 1i, var_1.x, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_0.b.d, global1.c.c.b.b.x, 0i), vec4<i32>(u_input.b, var_1.x, 1i, global1.a)))), reverseBits(vec4<i32>(-u_input.b, _wgslsmith_add_i32(var_1.x, 1i), -2147483647i, -1i | var_0.c.b.b.x))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 4294967295u)), abs(vec2<u32>(var_0.c.b.e, ~5054u))), Struct_3(402f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-322f, -146f)) - _wgslsmith_f_op_f32(trunc(var_0.a))), abs(_wgslsmith_add_vec2_i32(var_1.xy, global1.e)), 1i, -var_0.b.c, firstLeadingBit(max(u_input.c, global1.b))), global1.c.c), true, vec2<i32>(_wgslsmith_div_i32(var_1.x, _wgslsmith_mult_i32(-24339i, select(u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.c, 3u)]))), firstTrailingBit(u_input.d.x)));
    var var_3 = var_0.c;
    var_2 = Struct_4(abs(-1i), ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(70051u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_3.b.e, var_3.b.e), vec3<u32>(15836u, var_0.b.e, var_2.c.b.e))), ~49623u), var_2.c, true, abs(var_0.b.b));
    return Struct_4(_wgslsmith_clamp_i32(abs(~(-var_0.b.b.x)), min(1i, u_input.a >> (max(var_3.b.e, 18080u) % 32u)), firstLeadingBit(-u_input.b << (var_0.b.e % 32u))), var_3.b.e, global1.c, true, var_3.b.b);
}

fn func_1() -> Struct_4 {
    global1 = func_2();
    var var_0 = Struct_1(global1.c.c.b.a, _wgslsmith_mult_vec2_i32(~u_input.d, vec2<i32>(6059i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1.a, -2147483647i, global1.a), -vec4<i32>(u_input.a, -28318i, u_input.b, -12183i)))), ~global1.e.x, -1i, 4294967295u);
    var var_1 = global1.c;
    var_0 = func_2().c.b;
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(func_2().c.b.e, var_0.e)), var_0.e), _wgslsmith_mult_vec3_u32(~select(vec3<u32>(8942u, var_1.c.b.e, 1u) ^ vec3<u32>(4294967295u, var_1.b.e, var_1.b.e), abs(vec3<u32>(global1.c.c.b.e, 0u, 0u)), any(vec2<bool>(true, false))), _wgslsmith_div_vec3_u32(~vec3<u32>(39597u, var_0.e, global1.c.b.e), ~vec3<u32>(81186u, 74500u, u_input.c)) << (vec3<u32>(1u, u_input.c, ~var_1.c.b.e) % vec3<u32>(32u))));
    return func_2();
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> u32 {
    global0 = array<bool, 3>();
    global1 = arg_1;
    let var_0 = ~(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(global1.c.b.e, arg_1.b, 23565u)), vec3<u32>(585u, u_input.c, global1.b)) ^ ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, global1.c.b.e, u_input.c), vec3<u32>(arg_1.b, u_input.c, 38269u))) | ~vec3<u32>(countOneBits(u_input.c), arg_1.c.c.b.e, arg_1.c.c.b.e);
    let var_1 = _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(2147483647i, ~(-1i) ^ select(u_input.b, 1i, true), abs(_wgslsmith_mod_i32(global1.c.b.c, arg_1.a)))), min(vec3<i32>(u_input.a, i32(-1i) * -1i, ~(-arg_1.a)), reverseBits(firstTrailingBit(countOneBits(vec3<i32>(arg_1.c.b.c, global1.c.b.b.x, u_input.b))))));
    let var_2 = func_2().c;
    return arg_1.c.c.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(40550u, func_4(true, func_1())) | global1.b;
    var var_1 = min(167843u, select(global1.b, u_input.c, !global1.d));
    global0 = array<bool, 3>();
    var_1 = 31089u << (((3399u | ~global1.c.b.e) << (27572u % 32u)) % 32u);
    let var_2 = func_1().c.b;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(974f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_2.e >> (var_2.e % 32u))), abs(-1i));
}

