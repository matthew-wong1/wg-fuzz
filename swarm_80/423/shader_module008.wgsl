struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false));

var<private> global1: array<u32, 22>;

var<private> global2: Struct_1 = Struct_1(true, vec4<i32>(43629i, -9071i, 31365i, 49672i), true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> u32 {
    global0 = array<vec4<bool>, 29>();
    let var_0 = Struct_2(arg_1, Struct_1(abs(firstTrailingBit(0i)) == arg_1.b.x, arg_1.b, ~0u == ~_wgslsmith_sub_u32(arg_2, 12616u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, reverseBits(0i), firstTrailingBit(2147483647i), global2.b.x), global2.b), vec2<u32>(~(arg_2 | 2311u) ^ 37149u, global1[_wgslsmith_index_u32(min(~(~global1[_wgslsmith_index_u32(arg_2, 22u)]), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, 6948u, global1[_wgslsmith_index_u32(4027u, 22u)]), 22u)]), 22u)]));
    global1 = array<u32, 22>();
    var var_1 = select(!select(select(vec2<bool>(global2.c, arg_1.a), select(vec2<bool>(false, true), vec2<bool>(var_0.b.c, false), vec2<bool>(var_0.a.a, true)), vec2<bool>(arg_1.c, true)), select(vec2<bool>(true, true), select(vec2<bool>(var_0.a.c, arg_1.c), vec2<bool>(var_0.b.c, var_0.a.c), vec2<bool>(true, arg_1.c)), select(vec2<bool>(true, true), vec2<bool>(false, arg_1.c), vec2<bool>(true, false))), vec2<bool>(any(vec4<bool>(true, true, false, true)), arg_1.a)), vec2<bool>(false, arg_1.c), select(vec2<bool>(true, true), vec2<bool>((true && var_0.b.a) != select(true, true, true), !select(false, true, arg_1.c)), vec2<bool>(!all(vec2<bool>(global2.a, arg_1.c)), var_0.a.c)));
    var var_2 = var_0;
    return ~14558u;
}

fn func_2() -> Struct_2 {
    global2 = Struct_1(all(select(vec2<bool>(global2.c, all(vec2<bool>(global2.c, false))), select(!vec2<bool>(global2.a, true), vec2<bool>(global2.a, false), vec2<bool>(true, true)), !select(vec2<bool>(global2.a, global2.c), vec2<bool>(global2.c, true), vec2<bool>(global2.a, false)))), global2.b, global2.c & true);
    global2 = Struct_1(!(_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], ~4294967295u) <= (~0u & func_3(139f, Struct_1(global2.c, vec4<i32>(79444i, u_input.a, global2.b.x, -2147483647i), false), 0u, -1385f))), abs(vec4<i32>(min(2147483647i, u_input.a), _wgslsmith_dot_vec4_i32(global2.b, global2.b) | 3959i, u_input.a & u_input.a, -81318i)), false);
    global2 = Struct_1(global2.c, max(_wgslsmith_mod_vec4_i32(global2.b, _wgslsmith_clamp_vec4_i32(~vec4<i32>(-11214i, 1i, u_input.a, 16412i), global2.b | vec4<i32>(u_input.a, u_input.a, -21368i, u_input.a), firstTrailingBit(global2.b))), firstTrailingBit(~(vec4<i32>(u_input.a, global2.b.x, -31311i, u_input.a) | vec4<i32>(global2.b.x, u_input.a, -2147483647i, -885i)))), all(select(vec2<bool>(true, global2.a), vec2<bool>(true, all(global0[_wgslsmith_index_u32(4294967295u, 29u)])), !any(vec4<bool>(true, global2.c, global2.a, global2.a)))));
    return Struct_2(Struct_1(false, _wgslsmith_sub_vec4_i32(firstTrailingBit(~global2.b), global2.b), _wgslsmith_f_op_f32(step(-1386f, _wgslsmith_f_op_f32(sign(1735f)))) > _wgslsmith_f_op_f32(sign(1f))), Struct_1(global2.a & select(true, all(vec3<bool>(global2.a, false, true)), global2.a), global2.b, any(vec3<bool>(all(vec2<bool>(true, global2.a)), any(vec2<bool>(true, global2.a)), global2.a))), ~(global2.b.x & -25093i), vec2<u32>(_wgslsmith_mult_u32(41887u, reverseBits(global1[_wgslsmith_index_u32(42028u, 22u)])) ^ global1[_wgslsmith_index_u32(abs(func_3(673f, Struct_1(false, vec4<i32>(0i, global2.b.x, u_input.a, u_input.a), true), 16166u, -1268f)), 22u)], _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(39160u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], 31936u), _wgslsmith_dot_vec2_u32(vec2<u32>(5u, 1u), vec2<u32>(33899u, 4294967295u))), 22u)], 1u)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = true;
    global0 = array<vec4<bool>, 29>();
    let var_1 = global2.c;
    let var_2 = func_2();
    var var_3 = arg_0;
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-113f, _wgslsmith_div_f32(-302f, 1f)));
    global0 = array<vec4<bool>, 29>();
    global2 = func_1(func_1(arg_2.b));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 110f)) * _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(112f))) - _wgslsmith_f_op_f32(ceil(-1164f))))));
    var var_2 = _wgslsmith_dot_vec2_u32(arg_2.d, _wgslsmith_add_vec2_u32(countOneBits(select(arg_2.d, vec2<u32>(0u, arg_2.d.x), arg_2.a.a)), vec2<u32>(0u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27653u, 22u)], 22u)], 93830u))) | (vec2<u32>(4294967295u >> (1u % 32u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8705u, 22u)], 22u)] ^ arg_2.d.x, 22u)]) >> (vec2<u32>(~global1[_wgslsmith_index_u32(35804u, 22u)], arg_2.d.x & global1[_wgslsmith_index_u32(17948u, 22u)]) % vec2<u32>(32u))));
    return -44261i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mod_vec3_u32(~(vec3<u32>(25497u, 4294967295u, 0u) << (vec3<u32>(3657u, 1u, global1[_wgslsmith_index_u32(5789u, 22u)]) % vec3<u32>(32u))) << (select(firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(26028u, 22u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23035u, 22u)], 22u)], 22u)], 22u)])), vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65561u, 22u)], 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)]), !global2.a) % vec3<u32>(32u)), ~(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(105170u, 22u)], 22u)], 22u)], 22u)], 22u)], 28068u) | ~vec3<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2703u, 22u)], 22u)]))));
    let var_1 = -func_4(global2.a, ~vec2<i32>(u_input.a, 2147483647i), Struct_2(func_1(Struct_1(global2.a, vec4<i32>(0i, -2147483647i, global2.b.x, u_input.a), global2.c)), Struct_1(true, vec4<i32>(global2.b.x, u_input.a, -1i, u_input.a), false), abs(global2.b.x), vec2<u32>(27415u, global1[_wgslsmith_index_u32(var_0.x, 22u)]) << (var_0.xy % vec2<u32>(32u))), select(!vec2<bool>(global2.c, false), vec2<bool>(true, true), select(vec2<bool>(true, global2.c), vec2<bool>(global2.a, global2.a), false))) << (func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-790f - 1559f) * _wgslsmith_f_op_f32(f32(-1f) * -1121f)), Struct_1(func_1(func_1(Struct_1(true, vec4<i32>(u_input.a, 0i, -26237i, 40277i), false))).a, global2.b, var_0.x <= _wgslsmith_mult_u32(8749u, var_0.x)), 0u >> (1u % 32u), -374f) % 32u);
    var_0 = ~reverseBits(select(vec3<u32>(_wgslsmith_div_u32(var_0.x, 0u), ~0u, ~26237u), vec3<u32>(select(4294967295u, 45438u, false), func_2().d.x, global1[_wgslsmith_index_u32(1u, 22u)]), vec3<bool>(global2.c, any(vec2<bool>(global2.a, true)), !global2.c)));
    let var_2 = Struct_2(Struct_1(global2.c || global2.c, abs(-_wgslsmith_div_vec4_i32(vec4<i32>(global2.b.x, u_input.a, var_1, global2.b.x), vec4<i32>(u_input.a, 1i, 37729i, global2.b.x))), any(!select(vec4<bool>(global2.a, global2.c, global2.c, false), vec4<bool>(global2.a, global2.a, global2.a, true), global2.a))), Struct_1(global2.c, _wgslsmith_mult_vec4_i32(reverseBits(countOneBits(vec4<i32>(global2.b.x, 1i, global2.b.x, -2147483647i))), vec4<i32>(func_1(Struct_1(false, global2.b, global2.a)).b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2.b.x, u_input.a, -46136i), global2.b), 1i >> (var_0.x % 32u), -30426i)), -u_input.a > ~select(u_input.a, var_1, global2.c)), -2147483647i, _wgslsmith_sub_vec2_u32(select(firstLeadingBit(var_0.yx) ^ firstTrailingBit(var_0.xz), _wgslsmith_div_vec2_u32(abs(vec2<u32>(15907u, var_0.x)), ~var_0.yy), !all(vec2<bool>(false, true))), ~(~vec2<u32>(global1[_wgslsmith_index_u32(1u, 22u)], 46342u)) >> (var_0.zz % vec2<u32>(32u))));
    global1 = array<u32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(393f)), -1079f) + 1f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(121f + _wgslsmith_div_f32(736f, 1689f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(731f))))), -1658f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-668f)))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global2.b.x, -2147483647i), global2.b.yyz), countOneBits(2147483647i)), min(~u_input.a, firstLeadingBit(-2147483647i))) & 1i);
}

