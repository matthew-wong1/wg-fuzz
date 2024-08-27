struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

var<private> global1: array<bool, 17>;

var<private> global2: vec2<u32> = vec2<u32>(56947u, 0u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - 601f);
    global0 = array<vec3<u32>, 25>();
    return _wgslsmith_dot_vec3_i32(vec3<i32>(abs(~14903i), firstTrailingBit(u_input.a | _wgslsmith_sub_i32(arg_2.x, arg_1.d.x)), _wgslsmith_mult_i32(arg_2.x, countOneBits(u_input.a)) << (26716u % 32u)), arg_1.d.wyx);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1380f, 1000f, 1615f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-335f, -650f, 920f), vec3<f32>(102f, -1978f, -425f), vec3<bool>(global1[_wgslsmith_index_u32(33254u, 17u)], global1[_wgslsmith_index_u32(5281u, 17u)], global1[_wgslsmith_index_u32(global2.x, 17u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(481f, 1284f, 277f))))), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, -2147483647i, firstTrailingBit(u_input.a), firstLeadingBit(u_input.a)) & vec4<i32>(28773i, arg_0, 0i, -17574i), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, -18284i, arg_0, 1i), vec4<i32>(-51755i, -2147483647i, -12748i, u_input.a)) & vec4<i32>(-9057i, _wgslsmith_add_i32(52652i, 41178i), _wgslsmith_sub_i32(arg_0, u_input.a), arg_0)), _wgslsmith_f_op_f32(max(-549f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(2982f))) - _wgslsmith_f_op_f32(f32(-1f) * -1201f)))), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), arg_0 ^ -65532i, min(1i, u_input.a)) ^ u_input.a, func_3(30690u, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1222f, 184f, 1000f)), -vec4<i32>(1i, arg_0, arg_0, -6455i), _wgslsmith_div_f32(-464f, -966f), vec4<i32>(28436i, -1i, u_input.a, 5492i) | vec4<i32>(arg_0, -1i, u_input.a, 38756i)), reverseBits(-vec2<i32>(arg_0, 2147483647i)), _wgslsmith_f_op_f32(step(158f, -797f)) < -916f), firstLeadingBit(firstLeadingBit(~arg_0)), countOneBits(-50422i)));
    let var_1 = ~min(vec2<u32>(1u, _wgslsmith_div_u32(global2.x, global2.x) ^ (global2.x << (global2.x % 32u))), countOneBits(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, global2.x), vec2<u32>(global2.x, 32102u))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * var_0.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-591f))));
    global0 = array<vec3<u32>, 25>();
    var var_3 = var_0;
    return var_0;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(42277i);
    var var_1 = min(select(var_0.b, var_0.d, select(select(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 17u)], true), select(vec4<bool>(global1[_wgslsmith_index_u32(25330u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(12272u, 17u)], false), vec4<bool>(global1[_wgslsmith_index_u32(39468u, 17u)], global1[_wgslsmith_index_u32(global2.x, 17u)], global1[_wgslsmith_index_u32(13370u, 17u)], false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(global2.x, 17u)])), global1[_wgslsmith_index_u32(global2.x, 17u)] & true), select(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], false, global1[_wgslsmith_index_u32(4294967295u, 17u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 17u)], true, false), true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(global2.x, 17u)], global1[_wgslsmith_index_u32(global2.x, 17u)], global1[_wgslsmith_index_u32(global2.x, 17u)]), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.x, 4294967295u, 1u), 17u)]), vec4<bool>(4294967295u <= global2.x, all(vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 17u)], global1[_wgslsmith_index_u32(global2.x, 17u)], global1[_wgslsmith_index_u32(99764u, 17u)])), true, global1[_wgslsmith_index_u32(1u, 17u)]))), var_0.b);
    let var_2 = var_0.b;
    let var_3 = var_0;
    let var_4 = var_0.a;
    return var_3;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = array<vec3<u32>, 25>();
    var var_0 = arg_3;
    let var_1 = min(~global2.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(~global2.x, 25u)], global0[_wgslsmith_index_u32(0u, 25u)] << (~global0[_wgslsmith_index_u32(0u, 25u)] % vec3<u32>(32u))), vec3<u32>(~_wgslsmith_sub_u32(global2.x, 0u), _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.x, global2.x, 0u), 25u)], global0[_wgslsmith_index_u32(global2.x, 25u)] << (global0[_wgslsmith_index_u32(global2.x, 25u)] % vec3<u32>(32u))), reverseBits(1u))));
    let var_2 = 0i;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.a.x, arg_3.c)))), 1040f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-476f, arg_2.c)))) * _wgslsmith_f_op_f32(1972f * _wgslsmith_div_f32(arg_2.a.x, var_0.c))), arg_3.c)), 527f);
    return -1046f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = Struct_1(vec3<f32>(1100f, _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_i32(vec4<i32>(-78041i, var_0, var_0, var_0), _wgslsmith_div_vec4_i32(vec4<i32>(38175i, u_input.a, u_input.a, u_input.a), vec4<i32>(-6894i, var_0, -24998i, 1i))), !(!vec3<bool>(global1[_wgslsmith_index_u32(15345u, 17u)], global1[_wgslsmith_index_u32(global2.x, 17u)], global1[_wgslsmith_index_u32(126154u, 17u)])), func_1(), func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1092f * _wgslsmith_f_op_f32(f32(-1f) * -151f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f)))), vec4<i32>(~var_0, 60939i, var_0, u_input.a) | vec4<i32>(abs(~(-16522i)), -2147483647i, var_0, _wgslsmith_dot_vec3_i32(~vec3<i32>(-15446i, var_0, 35879i), ~vec3<i32>(1i, 1i, -1i))), 2540f, ~(~vec4<i32>(var_0, var_0, var_0, u_input.a) >> (vec4<u32>(~global2.x, ~43236u, global2.x, 1u) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_add_vec2_u32(~((~vec2<u32>(global2.x, global2.x) & ~vec2<u32>(0u, global2.x)) | _wgslsmith_div_vec2_u32(vec2<u32>(global2.x, 1u) ^ vec2<u32>(global2.x, 2211u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, global2.x), vec2<u32>(global2.x, 1u)))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(global2.x, global2.x)) | ~(vec2<u32>(global2.x, 4294967295u) ^ vec2<u32>(global2.x, 0u)), firstTrailingBit(vec2<u32>(1u, 0u)) | abs(~vec2<u32>(global2.x, global2.x))));
    let var_3 = ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(var_2.x, 0u)), ~vec2<u32>(global2.x, 139741u)) | firstLeadingBit(select(~vec2<u32>(21381u, global2.x) | ~vec2<u32>(var_2.x, 25331u), ~vec2<u32>(0u, global2.x), select(vec2<bool>(false, global1[_wgslsmith_index_u32(global2.x, 17u)]), select(vec2<bool>(true, global1[_wgslsmith_index_u32(32846u, 17u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], true), global1[_wgslsmith_index_u32(52727u, 17u)]), any(vec3<bool>(global1[_wgslsmith_index_u32(var_2.x, 17u)], false, global1[_wgslsmith_index_u32(4294967295u, 17u)])))));
    global2 = var_3;
    let var_4 = _wgslsmith_clamp_vec3_i32((firstLeadingBit(vec3<i32>(31624i, var_1.b.x, var_1.b.x)) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(34958u, 25u)], vec3<u32>(4294967295u, 1u, 15422u)), ~var_3.x, 68741u << (var_2.x % 32u)) % vec3<u32>(32u))) >> (global0[_wgslsmith_index_u32(~(~(~33089u)), 25u)] % vec3<u32>(32u)), max(vec3<i32>(-u_input.a | -8844i, func_1().b.x, var_1.b.x), reverseBits(var_1.d.zxw)), func_1().b.zxz << (firstTrailingBit(abs(vec3<u32>(1u, 30039u, var_3.x))) % vec3<u32>(32u)));
    let var_5 = select(abs(abs(countOneBits(~vec4<u32>(var_3.x, 0u, var_2.x, 33930u)))), ~(firstLeadingBit(min(vec4<u32>(1u, 15333u, 4294967295u, 0u), vec4<u32>(55934u, var_3.x, 1u, 65085u))) ^ ~abs(vec4<u32>(121910u, var_3.x, 7547u, var_2.x))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 17u)], false, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 17u)], global1[_wgslsmith_index_u32(57494u, 17u)], global1[_wgslsmith_index_u32(93213u, 17u)], true), global1[_wgslsmith_index_u32(23113u, 17u)])), vec4<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(21512u, 17u)], global1[_wgslsmith_index_u32(80723u, 17u)], true)), global1[_wgslsmith_index_u32(var_2.x << (var_2.x % 32u), 17u)], global1[_wgslsmith_index_u32(~global2.x, 17u)], all(vec3<bool>(global1[_wgslsmith_index_u32(var_3.x, 17u)], global1[_wgslsmith_index_u32(var_3.x, 17u)], false))), vec4<bool>(global1[_wgslsmith_index_u32(reverseBits(var_2.x), 17u)], global1[_wgslsmith_index_u32(17336u, 17u)], true, true)));
    global2 = _wgslsmith_mod_vec2_u32(~var_5.zw, vec2<u32>(~var_3.x, 1u >> (_wgslsmith_add_u32(var_3.x, 2372u << (var_3.x % 32u)) % 32u)));
    let var_6 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(global2.x, 4294967295u)), ~vec2<u32>(global2.x, _wgslsmith_dot_vec2_u32(var_5.xx, var_3 ^ vec2<u32>(var_5.x, 44366u))), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(var_5.wz), _wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, 1u), vec2<u32>(1u, var_5.x))), _wgslsmith_sub_u32(global2.x, global2.x)), _wgslsmith_clamp_vec2_u32(~(var_3 ^ vec2<u32>(0u, var_2.x)), var_5.wx, _wgslsmith_mult_vec2_u32(var_3, vec2<u32>(global2.x, 0u)) | ~vec2<u32>(global2.x, var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -1000f))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c, 574f), var_1.a.zy)))))), vec4<i32>(reverseBits(1i), ~(~(var_4.x << (4294967295u % 32u))), _wgslsmith_mult_i32(select(2147483647i, var_4.x, global1[_wgslsmith_index_u32(4294967295u, 17u)]) ^ -var_4.x, var_0), var_0), ~var_3.x, var_1.c);
}

