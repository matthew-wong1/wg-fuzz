struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: vec3<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec3<i32> {
    let var_0 = select(vec3<u32>(~37101u, select(19483u, min(max(global0[_wgslsmith_index_u32(u_input.c, 20u)], 72573u), ~global0[_wgslsmith_index_u32(4294967295u, 20u)]), any(vec4<bool>(false, true, false, true))), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(12480u, 39564u, u_input.c), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 20u)], 20u)])), 1u), ~(~vec3<u32>(49205u, global0[_wgslsmith_index_u32(u_input.c, 20u)], global0[_wgslsmith_index_u32(81319u, 20u)])))), select(~_wgslsmith_sub_vec3_u32(vec3<u32>(34654u, u_input.c, global0[_wgslsmith_index_u32(63259u, 20u)]), vec3<u32>(4294967295u, 1u, 1u)), _wgslsmith_mult_vec3_u32(abs(select(vec3<u32>(u_input.c, 7509u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 20u)], 20u)], 60991u, 29959u), true)), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, 0u, global0[_wgslsmith_index_u32(0u, 20u)]), firstTrailingBit(vec3<u32>(52307u, u_input.c, 2082u)))), true), !(!vec3<bool>(true, any(vec2<bool>(true, true)), all(vec4<bool>(true, true, false, true)))));
    var var_1 = -vec2<i32>(u_input.a, 2147483647i);
    return ~vec3<i32>(-31836i, 0i, ~1i);
}

fn func_3() -> i32 {
    global0 = array<u32, 20>();
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~global0[_wgslsmith_index_u32(1u, 20u)] & ~u_input.c), 13744u, ~(max(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 20u)], 20u)]) | 4294967295u)), ~firstTrailingBit(~vec3<u32>(1u, 70469u, 11157u)));
    let var_1 = Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~78413u, 20u)], 20u)], ~(~(~global0[_wgslsmith_index_u32(u_input.c, 20u)])), 7663u << ((~4294967295u | global0[_wgslsmith_index_u32(~1912u, 20u)]) % 32u)), vec3<bool>(any(vec4<bool>(any(vec4<bool>(false, false, false, false)), true, any(vec4<bool>(false, false, true, false)), true)), _wgslsmith_f_op_f32(-549f * _wgslsmith_f_op_f32(210f - 1000f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-728f, 1690f)))), all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), true))), !(u_input.b >= -_wgslsmith_add_i32(44196i, u_input.b)));
    var_0 = _wgslsmith_add_u32(countOneBits(var_1.a.x), _wgslsmith_clamp_u32(~111236u, ~4294967295u, 108594u));
    var var_2 = Struct_1(vec3<u32>(~select(12329u, var_1.a.x, var_1.b.x) >> ((var_1.a.x ^ firstTrailingBit(4294967295u)) % 32u), u_input.c, 4294967295u), vec3<bool>(false, ~countOneBits(1u) >= (~u_input.c | _wgslsmith_dot_vec3_u32(var_1.a, var_1.a)), var_1.b.x), true);
    return u_input.b;
}

fn func_1() -> Struct_1 {
    global1 = ~(~vec3<i32>(-2147483647i, 1i, -42235i)) ^ _wgslsmith_clamp_vec3_i32(select(func_2(), abs(-vec3<i32>(global1.x, global1.x, u_input.b)), vec3<bool>(any(vec3<bool>(false, false, false)), false, true)), _wgslsmith_add_vec3_i32(-vec3<i32>(1i, u_input.a, 2147483647i), ~vec3<i32>(u_input.a, u_input.a, u_input.a)) ^ vec3<i32>(~global1.x, 11503i << (u_input.c % 32u), func_3()), (~vec3<i32>(u_input.b, u_input.a, -131i) << (countOneBits(vec3<u32>(74688u, 0u, u_input.c)) % vec3<u32>(32u))) & abs(_wgslsmith_add_vec3_i32(vec3<i32>(global1.x, 2147483647i, u_input.a), vec3<i32>(u_input.b, u_input.a, -2147483647i))));
    let var_0 = Struct_1(min(~(vec3<u32>(u_input.c, 26871u, global0[_wgslsmith_index_u32(1u, 20u)]) | vec3<u32>(4294967295u, 0u, u_input.c)) ^ min(vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(25420u, 20u)], 1u), vec3<u32>(4294967295u, 0u, u_input.c) << (vec3<u32>(u_input.c, 1u, u_input.c) % vec3<u32>(32u))), vec3<u32>(abs(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15928u, 20u)], 20u)], u_input.c)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(3438u ^ u_input.c, firstTrailingBit(10537u)), 20u)], global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 20u)])), vec3<bool>(true, all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)) | any(vec4<bool>(true, true, true, true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)) && all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    var var_1 = vec2<bool>(var_0.c, select(any(vec3<bool>(var_0.c, false, true)), !select(true, true, var_0.b.x), var_0.b.x));
    let var_2 = var_0.b.xy;
    global1 = vec3<i32>(global1.x, abs(2146i), 71427i);
    return Struct_1(var_0.a, var_0.b, _wgslsmith_add_u32(~(19222u ^ u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, 1u), ~var_0.a)) >= ~0u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(50950u, ~84004u), _wgslsmith_sub_vec2_u32(arg_0.a.yy, countOneBits(arg_0.a.xz))), ~u_input.c, _wgslsmith_mod_u32(13236u, min(~67822u, _wgslsmith_mod_u32(75642u, 4294967295u)))), vec3<bool>(false, select(!arg_0.c, false, select(arg_0.c, -45557i < u_input.b, false)), true), true);
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    let var_1 = arg_1.x;
    var var_2 = 1i >> (global0[_wgslsmith_index_u32(u_input.c >> (_wgslsmith_div_u32((u_input.c >> (4294967295u % 32u)) ^ 47333u, ~0u) % 32u), 20u)] % 32u);
    return Struct_1(vec3<u32>(u_input.c, ~_wgslsmith_dot_vec2_u32(var_0.a.zx, arg_0.a.xz), ~1u), select(select(!arg_0.b, !vec3<bool>(arg_0.b.x, var_0.c, var_0.b.x), var_0.b), !(!select(vec3<bool>(arg_0.b.x, arg_0.c, var_0.b.x), var_0.b, true)), arg_0.b), 2147483647i > _wgslsmith_add_i32(-28820i, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-672f * 1603f))));
    let var_1 = _wgslsmith_div_vec2_u32(var_0.a.yy, vec2<u32>(abs(1u), 0u));
    global0 = array<u32, 20>();
    var var_2 = var_0;
    let var_3 = var_0;
    global0 = array<u32, 20>();
    global1 = abs(select(vec3<i32>(-28067i, u_input.a, -2147483647i) >> (~var_2.a % vec3<u32>(32u)), vec3<i32>(~u_input.a, ~global1.x, ~0i), !var_0.b)) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.a, global1.x), vec4<i32>(u_input.a, global1.x, u_input.a, global1.x), vec4<i32>(global1.x, 8794i, -21144i, -8491i)), _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, u_input.a, -49536i, global1.x), vec4<i32>(u_input.b, u_input.b, global1.x, u_input.a))), -global1.x ^ ~2147483647i, _wgslsmith_div_i32(31439i, global1.x) ^ global1.x), ~abs(vec3<i32>(u_input.a, 24018i, -62669i)) >> (var_0.a % vec3<u32>(32u)), -_wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, 11660i, 63285i), max(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(global1.x, 294i, u_input.b))));
    var var_4 = Struct_1(min(var_3.a ^ _wgslsmith_div_vec3_u32(~var_3.a, var_3.a), ~vec3<u32>(var_2.a.x, 1u >> (var_3.a.x % 32u), reverseBits(4294967295u))), func_4(Struct_1(vec3<u32>(abs(1u), u_input.c, u_input.c), vec3<bool>(true, false, var_2.c), true), vec2<f32>(1f, 1f)).b, true);
    var var_5 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b ^ countOneBits(u_input.b), global1.x, 0i, 84i), vec4<i32>(-_wgslsmith_mult_i32(global1.x, global1.x), _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(25492i, u_input.b)), -global1.x, ~global1.x)), ~vec3<u32>(~16465u, countOneBits(20980u >> (var_4.a.x % 32u)), var_0.a.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-943f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(654f, -1877f) * -900f) - -211f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-609f, -133f) + -1718f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, -960f), _wgslsmith_f_op_f32(floor(-838f))) * _wgslsmith_f_op_f32(f32(-1f) * -248f))), reverseBits(_wgslsmith_mult_vec2_i32(global1.yx, global1.yx)), global1.x << (reverseBits(4294967295u) % 32u));
}

