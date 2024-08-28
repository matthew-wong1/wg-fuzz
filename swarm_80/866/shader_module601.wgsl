struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(387f, -443f, -196f, 921f, -1451f, 262f, 864f, -491f, -1042f, -1228f, -878f, 335f, -420f, -1017f);

var<private> global1: vec3<bool>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> vec2<u32> {
    let var_0 = Struct_1(u_input.b, _wgslsmith_mod_vec4_u32(countOneBits(u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 24582u, ~92866u, abs(10935u)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(8289u, u_input.b.x, u_input.b.x, 18066u)), vec4<u32>(27130u, u_input.a.x, 47615u, 4294967295u)))), max(~reverseBits(u_input.d ^ 15390u), u_input.c.x));
    var var_1 = (abs(~(-1i)) <= select(-_wgslsmith_mod_i32(-30499i, 37238i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-32126i, -1i), 1i), select(global1.x, global1.x, global1.x))) && all(vec3<bool>(global1.x, true, any(vec2<bool>(false, global1.x))));
    let var_2 = vec4<i32>(0i, 2068i, _wgslsmith_div_i32(-4464i >> (firstTrailingBit(var_0.b.x) % 32u), _wgslsmith_add_i32(-79950i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, -23434i)))) | 2147483647i, _wgslsmith_add_i32(i32(-1i) * -2147483647i, ~_wgslsmith_mod_i32(1i, -2147483647i)));
    let var_3 = var_0;
    let var_4 = Struct_1(vec2<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_3.b.wxw, vec3<u32>(0u, var_3.a.x, 24452u)), ~vec3<u32>(4294967295u, var_0.b.x, 130u)), u_input.a.x), vec4<u32>(var_0.a.x, ~_wgslsmith_mod_u32(abs(0u), ~var_0.a.x), ~1u, var_3.c | _wgslsmith_add_u32(u_input.d, countOneBits(1u))), ~var_3.a.x >> (~0u % 32u));
    return vec2<u32>(151971u, var_3.a.x >> (0u % 32u));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = array<f32, 14>();
    let var_0 = _wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(83339u, 4294967295u, 1u, ~(~reverseBits(1u))));
    let var_1 = Struct_1(~(~min(func_3(vec4<f32>(1347f, -160f, arg_0, arg_0), -461f), firstTrailingBit(vec2<u32>(64099u, u_input.d)))), _wgslsmith_clamp_vec4_u32(~reverseBits(u_input.c), u_input.c, var_0), 4294967295u);
    global1 = vec3<bool>(global1.x, false, (true || global1.x) & global1.x);
    var var_2 = arg_0;
    return Struct_2((~countOneBits(vec4<i32>(-1i, -1i, -3534i, 1i)) & _wgslsmith_mod_vec4_i32(select(vec4<i32>(-46288i, 0i, 0i, -15870i), vec4<i32>(0i, 10494i, 0i, 2147483647i), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), -vec4<i32>(33626i, -4463i, -20988i, 1i))) >> (~firstTrailingBit(var_1.b) % vec4<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(-_wgslsmith_mult_i32(0i, 25167i), _wgslsmith_clamp_i32(-1i, -2147483647i, abs(25615i))), -_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 1i), select(vec2<i32>(1i, 25577i), vec2<i32>(2147483647i, 62453i), global1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 14u)]))));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec2<u32> {
    var var_0 = !select(select(!vec3<bool>(global1.x, global1.x, false), select(select(vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, false, true)), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, true), false), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, global1.x, true))), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, true, true), vec3<bool>(global1.x, global1.x, false))), !select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, false, global1.x), global1.x), select(vec3<bool>(true, global1.x, false), vec3<bool>(true, false, global1.x), global1.x), u_input.d <= 26029u), vec3<bool>(select(any(vec3<bool>(global1.x, true, global1.x)), global1.x, true), true, !global1.x));
    var_0 = !select(!select(!vec3<bool>(var_0.x, false, true), !vec3<bool>(true, global1.x, global1.x), any(vec4<bool>(var_0.x, var_0.x, true, false))), select(vec3<bool>(false, true, !global1.x), vec3<bool>(any(vec4<bool>(true, true, false, true)), true, var_0.x), true), !select(!vec3<bool>(var_0.x, global1.x, global1.x), !vec3<bool>(false, global1.x, global1.x), true));
    let var_1 = _wgslsmith_mult_i32(~(~25634i), _wgslsmith_sub_i32(-1i, -77898i));
    global0 = array<f32, 14>();
    let var_2 = ~min(u_input.c.zwy ^ select(vec3<u32>(0u, u_input.a.x, 1u) >> (vec3<u32>(1u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), u_input.c.xyz, global1.x), _wgslsmith_div_vec3_u32(u_input.c.yyy, max(u_input.c.wwx, vec3<u32>(u_input.d, 5817u, u_input.b.x)) ^ (u_input.c.xzw << (vec3<u32>(u_input.c.x, 8500u, 32830u) % vec3<u32>(32u)))));
    return ~(vec2<u32>(u_input.b.x, 65406u) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, u_input.c.x ^ 52201u), _wgslsmith_clamp_vec2_u32(var_2.zx, vec2<u32>(89300u, 38117u), var_2.yx) << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.x, 95405u), u_input.a) % vec2<u32>(32u))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_add_vec2_u32(~countOneBits(u_input.b), func_4(func_2(561f), _wgslsmith_f_op_f32(1293f + global0[_wgslsmith_index_u32(u_input.c.x, 14u)]))), _wgslsmith_div_vec4_u32(firstTrailingBit(u_input.c), u_input.c), ~4294967295u);
    return Struct_2(vec4<i32>(max(-2147483647i >> (var_0.b.x % 32u), -16483i), firstTrailingBit(1i), _wgslsmith_mult_i32(-41746i, 1i), min(~66303i, ~(-1i))) | firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), vec2<i32>(-abs(max(-23491i, -1i)), reverseBits(_wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, -47141i), 2265i << (u_input.b.x % 32u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~18905u, 14u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<f32, 14>();
    let var_1 = 28277i;
    global0 = array<f32, 14>();
    let var_2 = firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -1i, i32(-1i) * -2147483647i), -_wgslsmith_mult_i32(var_1 | var_0.b.x, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~abs(1u), 14u)], abs(firstLeadingBit(u_input.c.ww)), var_0.c, ~(~u_input.c.x));
}

