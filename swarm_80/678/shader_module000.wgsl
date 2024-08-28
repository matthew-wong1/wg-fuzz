struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 20> = array<bool, 20>(false, false, true, true, true, false, false, false, false, true, true, false, false, true, false, true, true, true, true, true);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<u32>) -> u32 {
    global0 = !arg_0;
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(39989u, ~arg_2.x) << (52024u % 32u), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 4294967295u, 0u, 43094u), vec4<u32>(15608u, u_input.c, 0u, 1u)), 4294967295u), u_input.c) & _wgslsmith_dot_vec2_u32(arg_2, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.x, arg_2.x) & select(arg_2, vec2<u32>(arg_2.x, 144794u), arg_0), _wgslsmith_div_vec2_u32(vec2<u32>(31948u, 33308u), select(arg_2, vec2<u32>(2193u, u_input.c), arg_0)), vec2<u32>(~arg_2.x, u_input.c)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_u32(u_input.a, ~1u) << (arg_2.x % 32u), ~u_input.b.x), Struct_1(arg_2.x, _wgslsmith_sub_i32(u_input.b.x, abs(arg_1))), Struct_1(121976u, abs(-1i) & -_wgslsmith_mult_i32(0i, u_input.b.x)), !vec2<bool>(!any(arg_0), true));
    global0 = select(var_1.d, select(vec2<bool>(u_input.d > ~var_1.b.a, 48578u <= var_0), !arg_0, var_1.d), true & (global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_0, 4294967295u), 20u)] & true));
    return _wgslsmith_dot_vec2_u32(reverseBits(arg_2), _wgslsmith_add_vec2_u32(countOneBits(arg_2), vec2<u32>(var_0, u_input.c)));
}

fn func_2() -> vec2<bool> {
    let var_0 = min(~(firstTrailingBit(u_input.b.x) & -2147483647i), u_input.b.x) << (_wgslsmith_dot_vec2_u32(~(~abs(vec2<u32>(u_input.c, 11787u))), select(vec2<u32>(u_input.c, ~u_input.a), _wgslsmith_div_vec2_u32(abs(vec2<u32>(40314u, u_input.c)), ~vec2<u32>(71234u, u_input.d)), !(u_input.c > u_input.c))) % 32u);
    var var_1 = vec4<u32>(_wgslsmith_clamp_u32(30285u, ~(~u_input.c) ^ firstTrailingBit(u_input.c), ~(~(~u_input.a))), ((_wgslsmith_mult_u32(10371u, 0u) << (_wgslsmith_sub_u32(1u, u_input.d) % 32u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(22140u, 1u) >> (vec2<u32>(u_input.d, 0u) % vec2<u32>(32u)), ~vec2<u32>(u_input.c, 23556u))) & ~(~(~79017u)), u_input.c, abs(countOneBits(44678u)));
    var var_2 = u_input.b.yy << (min(var_1.yx, firstTrailingBit(var_1.zy >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))) % vec2<u32>(32u));
    let var_3 = Struct_2(Struct_1(_wgslsmith_mod_u32(u_input.d, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.x, u_input.c), var_1.x)), var_0), Struct_1(~var_1.x, var_0), Struct_1(~func_3(vec2<bool>(global1[_wgslsmith_index_u32(12556u, 20u)], global0.x), _wgslsmith_add_i32(var_2.x, 2147483647i), vec2<u32>(4294967295u, var_1.x)), _wgslsmith_add_i32(-54585i, var_2.x)), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, (u_input.b.x ^ u_input.b.x) == -42879i), !select(vec2<bool>(true, global0.x), select(vec2<bool>(false, global0.x), vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), !global0.x)));
    var var_4 = 18626i;
    return !var_3.d;
}

fn func_1() -> u32 {
    var var_0 = any(vec3<bool>(global1[_wgslsmith_index_u32(17142u, 20u)], any(func_2()), true));
    var var_1 = Struct_1(abs(abs(80631u ^ u_input.d)), 0i);
    var var_2 = true;
    var_2 = u_input.b.x == var_1.b;
    var_1 = Struct_1(40696u, u_input.b.x);
    return ~(~abs(_wgslsmith_div_u32(_wgslsmith_add_u32(var_1.a, 114348u), reverseBits(6538u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(true, true);
    var var_0 = select(select(vec2<bool>(1u < u_input.c, global1[_wgslsmith_index_u32(4294967295u | u_input.a, 20u)]), vec2<bool>(!(false | global1[_wgslsmith_index_u32(u_input.d, 20u)]), true), (global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(10520u, u_input.d, u_input.c), 20u)] && !global1[_wgslsmith_index_u32(u_input.c, 20u)]) & global0.x), vec2<bool>(global1[_wgslsmith_index_u32(countOneBits(~u_input.d), 20u)] | true, global0.x || false), global0.x);
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_f32(sign(-1000f));
    let var_3 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d << (1u % 32u), ~0u, 0u, ~firstLeadingBit(var_1)), firstTrailingBit(vec4<u32>(0u, ~52904u, func_1(), 0u)));
    var var_4 = select(vec4<bool>(any(vec4<bool>(func_2().x, false, true, true)), !(u_input.b.x >= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, 48404i, -16307i), u_input.b)), any(!vec2<bool>(true, global1[_wgslsmith_index_u32(var_1, 20u)])), var_0.x), select(!select(select(vec4<bool>(true, global0.x, true, var_0.x), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global0.x, global1[_wgslsmith_index_u32(var_3.x, 20u)], true), global0.x), select(vec4<bool>(global1[_wgslsmith_index_u32(var_3.x, 20u)], true, false, true), vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(53745u, 20u)], true, true)), select(global1[_wgslsmith_index_u32(1u, 20u)], true, false)), !select(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], false, false, true), select(vec4<bool>(global0.x, var_0.x, global0.x, global1[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), select(vec4<bool>(global1[_wgslsmith_index_u32(var_3.x, 20u)], var_0.x, global1[_wgslsmith_index_u32(11700u, 20u)], global0.x), vec4<bool>(false, global0.x, global1[_wgslsmith_index_u32(var_1, 20u)], var_0.x), true)), any(vec3<bool>(select(var_0.x, false, global1[_wgslsmith_index_u32(0u, 20u)]), any(vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(u_input.c, 20u)], var_0.x, true)), any(vec3<bool>(var_0.x, true, false))))), !(!vec4<bool>(true, var_0.x, all(vec4<bool>(var_0.x, true, false, false)), any(vec3<bool>(true, false, global0.x)))));
    global0 = !func_2();
    var var_5 = ~u_input.b.yz;
    var_5 = ~((vec2<i32>(u_input.b.x, _wgslsmith_clamp_i32(-1i, var_5.x, u_input.b.x)) ^ -_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.b.x), u_input.b.wz, vec2<i32>(var_5.x, u_input.b.x))) ^ u_input.b.ww);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -735f), _wgslsmith_f_op_f32(max(var_2, -1239f)), _wgslsmith_f_op_f32(max(var_2, var_2)), _wgslsmith_f_op_f32(-265f + var_2)) + vec4<f32>(var_2, _wgslsmith_f_op_f32(ceil(var_2)), _wgslsmith_f_op_f32(round(758f)), _wgslsmith_f_op_f32(-var_2)))), ~firstTrailingBit(vec2<i32>(var_5.x, ~(-1i))));
}

