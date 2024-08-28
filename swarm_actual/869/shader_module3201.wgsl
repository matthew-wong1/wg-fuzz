struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: array<f32, 23>;

var<private> global2: vec4<f32>;

var<private> global3: array<bool, 16>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: f32) -> vec4<bool> {
    let var_0 = ~(-vec3<i32>(firstLeadingBit(reverseBits(arg_1)), -_wgslsmith_sub_i32(arg_1, 16073i), -1565i));
    global1 = array<f32, 23>();
    let var_1 = -2147483647i;
    global1 = array<f32, 23>();
    var var_2 = vec3<bool>(select(select(u_input.c.x < _wgslsmith_div_u32(1u, 42844u), global3[_wgslsmith_index_u32(~66974u, 16u)], any(vec3<bool>(true, false, arg_0)) != true), any(vec4<bool>(true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 23u)], 16u)], global3[_wgslsmith_index_u32(reverseBits(u_input.c.x), 16u)], !global3[_wgslsmith_index_u32(u_input.a, 16u)])), all(!select(vec3<bool>(arg_0, arg_0, global3[_wgslsmith_index_u32(0u, 16u)]), vec3<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 16u)]), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50376u, 23u)], 16u)]))), all(select(vec3<bool>(arg_2, arg_0, arg_2), !(!vec3<bool>(true, arg_0, arg_2)), vec3<bool>(global3[_wgslsmith_index_u32(1u, 16u)], true, true))), any(select(select(vec2<bool>(true, global3[_wgslsmith_index_u32(36634u, 16u)]), vec2<bool>(arg_0, false), select(vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 16u)], arg_0), vec2<bool>(arg_0, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 16u)]))), select(vec2<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], 23u)], 16u)], arg_2), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), false), vec2<bool>(arg_0, arg_0)), !vec2<bool>(arg_2, false))));
    return vec4<bool>(!(!arg_0), false, var_2.x, global3[_wgslsmith_index_u32(~2618u, 16u)]);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(~abs(select(arg_0.a, _wgslsmith_mod_vec2_i32(vec2<i32>(-26640i, 1i), vec2<i32>(arg_0.a.x, u_input.b)), !vec2<bool>(global3[_wgslsmith_index_u32(arg_1, 16u)], global3[_wgslsmith_index_u32(u_input.a, 16u)]))), _wgslsmith_add_u32(~(~0u), ~arg_1 << (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, arg_1, u_input.a, 1u)), arg_2) % 32u)), all(vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 16u)], false, false), false)), true, false)), !(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(749f + global1[_wgslsmith_index_u32(36406u, 23u)]))) <= _wgslsmith_f_op_f32(f32(-1f) * -774f)));
    var var_1 = !vec4<bool>((arg_1 <= 18539u) | var_0.c, any(select(select(vec2<bool>(var_0.d, false), vec2<bool>(var_0.c, arg_0.d), vec2<bool>(var_0.c, arg_0.d)), select(vec2<bool>(arg_0.c, false), vec2<bool>(arg_0.d, global3[_wgslsmith_index_u32(4294967295u, 16u)]), false), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 23u)], 16u)])), ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, arg_0.a.x), var_0.a) >= -(i32(-1i) * -2147483647i), all(select(func_3(arg_0.d, 2147483647i, global3[_wgslsmith_index_u32(arg_0.b, 16u)], -330f), vec4<bool>(var_0.d, true, arg_0.d, false), arg_0.a.x < -1615i)));
    global0 = array<u32, 23>();
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(var_0.a.x, var_0.a.x), arg_0.a.x), abs(0u), any(!select(select(vec3<bool>(global3[_wgslsmith_index_u32(56899u, 16u)], false, true), var_1.xzx, var_1.wyw), var_1.zwx, var_1.x)), true);
    global1 = array<f32, 23>();
    return Struct_1(countOneBits(max(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_2.a.x, var_0.a.x), vec3<i32>(11964i, 0i, u_input.b)), u_input.d), vec2<i32>(-7552i, i32(-1i) * -10586i))), 0u, global3[_wgslsmith_index_u32(0u, 16u)], 0i < ~_wgslsmith_div_i32(-2147483647i, var_2.a.x & 1i));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    var var_0 = true;
    global0 = array<u32, 23>();
    var var_1 = !all(vec2<bool>(true, true)) & func_2(Struct_1(select(vec2<i32>(1i, 0i) << (u_input.c.xz % vec2<u32>(32u)), vec2<i32>(2147483647i, -2523i), func_3(arg_0.c, 1i, global3[_wgslsmith_index_u32(1u, 16u)], -1085f).x), select(arg_0.b, abs(global0[_wgslsmith_index_u32(arg_0.b, 23u)]), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 23u)] | global0[_wgslsmith_index_u32(arg_0.b, 23u)], 16u)]), global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(32360u, 23u)], 23u)] >= _wgslsmith_f_op_f32(step(399f, -534f)), false & (arg_0.b <= u_input.c.x)), ~global0[_wgslsmith_index_u32(arg_0.b, 23u)], _wgslsmith_sub_vec4_u32(~(~vec4<u32>(200u, 37819u, 88192u, 0u)), abs(firstLeadingBit(vec4<u32>(34426u, 0u, global0[_wgslsmith_index_u32(arg_0.b, 23u)], u_input.c.x))))).d;
    let var_2 = func_2(func_2(Struct_1(arg_0.a, _wgslsmith_div_u32(1u, arg_0.b), true, !(u_input.a <= global0[_wgslsmith_index_u32(4294967295u, 23u)])), 69500u, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], 69976u, arg_0.b, arg_0.b), vec4<u32>(arg_0.b, global0[_wgslsmith_index_u32(14748u, 23u)], u_input.a, global0[_wgslsmith_index_u32(4294967295u, 23u)])) << ((vec4<u32>(0u, u_input.c.x, 21088u, arg_0.b) ^ vec4<u32>(4294967295u, 35195u, arg_0.b, 28684u)) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 22690u, arg_0.b, u_input.c.x) >> ((vec4<u32>(global0[_wgslsmith_index_u32(9293u, 23u)], 1u, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]) | vec4<u32>(0u, arg_0.b, 28757u, 78035u)) % vec4<u32>(32u)))), _wgslsmith_sub_u32(arg_0.b, _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(26659u, 23u)], 23u)], _wgslsmith_sub_u32(~arg_0.b, func_2(arg_0, 44574u, vec4<u32>(18538u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], 1u, 0u)).b))), ~min(firstLeadingBit(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], arg_0.b, arg_0.b, arg_0.b))), vec4<u32>(arg_0.b | 4294967295u, 1u, 36862u, reverseBits(u_input.c.x))));
    let var_3 = ~vec3<i32>(var_2.a.x, ~u_input.b >> (global0[_wgslsmith_index_u32(arg_0.b, 23u)] % 32u), ~(~11472i)) << (vec3<u32>(var_2.b, _wgslsmith_mult_u32(76890u, var_2.b), ~global0[_wgslsmith_index_u32(~67977u, 23u)]) % vec3<u32>(32u));
    return select(vec2<bool>((select(global3[_wgslsmith_index_u32(var_2.b, 16u)], true, arg_0.d) | (var_2.a.x != var_2.a.x)) && false, arg_0.d), vec2<bool>(true, false), vec2<bool>(true, all(vec2<bool>(arg_0.c, true))));
}

fn func_1(arg_0: vec2<u32>) -> vec2<i32> {
    var var_0 = func_4(func_2(Struct_1(vec2<i32>(u_input.d, _wgslsmith_clamp_i32(u_input.b, 11941i, u_input.b)), arg_0.x, true, any(vec2<bool>(false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 16u)]))), _wgslsmith_mod_u32(~arg_0.x, _wgslsmith_add_u32(33622u, arg_0.x)) >> (u_input.c.x % 32u), ~vec4<u32>(0u, arg_0.x, reverseBits(0u), _wgslsmith_mult_u32(u_input.c.x, 0u))), global1[_wgslsmith_index_u32(arg_0.x, 23u)]);
    var var_1 = vec4<i32>(func_2(Struct_1(vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53509u, 23u)], 23u)], u_input.c.x) % vec2<u32>(32u)), 1u, false, !global3[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_mod_u32(u_input.a, 1u), vec4<u32>(arg_0.x, ~0u, firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 23u)]), ~4294967295u)).a.x, _wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-59054i, 0i, u_input.b, 1i), vec4<i32>(-10467i, u_input.b, -16438i, 16121i)), -1i), 42737i, -1i) << (max(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 0u, arg_0.x) & ~vec4<u32>(24902u, 13855u, 1u, 1u), vec4<u32>(u_input.c.x, 0u, _wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 23u)]), ~43618u)), ~(~abs(vec4<u32>(arg_0.x, 67226u, global0[_wgslsmith_index_u32(arg_0.x, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)])))) % vec4<u32>(32u));
    var var_2 = firstTrailingBit(firstLeadingBit(reverseBits(vec3<i32>(1i, 2147483647i, u_input.b)))) >> (~u_input.c % vec3<u32>(32u));
    var var_3 = all(vec2<bool>(_wgslsmith_f_op_f32(-1274f + global2.x) == _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.x, global1[_wgslsmith_index_u32(8725u, 23u)]))), false));
    global3 = array<bool, 16>();
    return var_2.xz;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    return Struct_1(vec2<i32>(26219i, -36408i), arg_2.x, u_input.d > reverseBits(0i), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, global1[_wgslsmith_index_u32(6009u, 23u)], -1213f, -1104f))) + vec4<f32>(global2.x, global2.x, global2.x, 542f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, 940f, global2.x, -271f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 23u)], -535f, global2.x, 300f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, global2.x, -944f, 341f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-537f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], -177f, 942f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(937f, 342f, global2.x, 337f))))))));
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, ~25384u), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], 23u)], global0[_wgslsmith_index_u32(50045u, 23u)]), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 23u)], u_input.a)), ~vec3<u32>(u_input.a, u_input.a, 1u)), abs(u_input.c)), u_input.c)), 16u)];
    var var_1 = func_5(Struct_1(abs(func_1(vec2<u32>(u_input.c.x, u_input.c.x) ^ u_input.c.xx)), _wgslsmith_dot_vec4_u32(vec4<u32>(select(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 23u)], global3[_wgslsmith_index_u32(1u, 16u)]), u_input.c.x >> (0u % 32u), 27664u << (1u % 32u), u_input.c.x), (vec4<u32>(8689u, 0u, 1u, u_input.c.x) ^ vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 4294967295u, 4294967295u, u_input.a)) << (abs(vec4<u32>(51438u, u_input.a, global0[_wgslsmith_index_u32(56573u, 23u)], u_input.a)) % vec4<u32>(32u))), any(func_3(true, -2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 12274u, 1u, 71869u), vec4<u32>(1u, 0u, 6826u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 23u)])), 16u)], _wgslsmith_f_op_f32(629f + -2253f))), true), _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-355f - 102f)))), vec4<u32>(firstTrailingBit(~1u), u_input.a, firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, u_input.c.x, u_input.a)), u_input.c)) & select(_wgslsmith_sub_vec4_u32(vec4<u32>(32499u, 0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 23u)]), vec4<u32>(51041u, u_input.a, 74616u, 71185u)) ^ vec4<u32>(40263u, 1u, u_input.a, u_input.c.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a, u_input.a, u_input.c.x), vec4<u32>(global0[_wgslsmith_index_u32(1u, 23u)], 0u, 4294967295u, u_input.c.x)), vec4<bool>(!global3[_wgslsmith_index_u32(0u, 16u)], u_input.d <= 0i, func_4(Struct_1(vec2<i32>(u_input.b, u_input.b), 0u, true, false), global2.x).x, true)));
    let var_2 = func_2(Struct_1(var_1.a, var_1.b, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(var_1.b), 4294967295u), 16u)], select(false, any(func_3(false, u_input.d, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21769u, 23u)], 16u)], -543f).yxz), func_2(func_5(Struct_1(var_1.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], true, true), 129f, vec4<u32>(var_1.b, 19449u, u_input.a, global0[_wgslsmith_index_u32(2830u, 23u)])), 1u, ~vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.b, 23u)], 23u)], global0[_wgslsmith_index_u32(21110u, 23u)], u_input.a)).c)), u_input.a, _wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], 4294967295u, 0u, var_1.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(19450u, ~45090u, _wgslsmith_sub_u32(var_1.b, 17339u), 1u), ~(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(18574u, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.b, 23u)], 23u)], var_1.b) << (vec4<u32>(3522u, 1u, 972u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)]) % vec4<u32>(32u))))));
    let var_3 = !func_3(var_1.d, u_input.d, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(var_1.b), 23u)]) + _wgslsmith_f_op_f32(abs(1f)))).wy;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec4<u32>(var_2.b & _wgslsmith_mult_u32(u_input.a, var_1.b), 4294967295u, ~0u & _wgslsmith_dot_vec2_u32(abs(u_input.c.xy), u_input.c.xx), abs(var_2.b | 26824u) >> (firstLeadingBit(~global0[_wgslsmith_index_u32(u_input.c.x, 23u)]) % 32u)), 383f);
}

