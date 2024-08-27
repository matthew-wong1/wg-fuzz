struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22>;

var<private> global1: array<vec4<i32>, 19>;

var<private> global2: array<f32, 16>;

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    global3 = select(select(select(!vec4<bool>(true, global3.x, false, true), !(!vec4<bool>(false, global3.x, false, false)), !select(vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(global3.x, global3.x, true, true), vec4<bool>(false, global3.x, false, true))), vec4<bool>(global2[_wgslsmith_index_u32(~u_input.c.x, 16u)] != _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(36267u, 16u)] * global2[_wgslsmith_index_u32(38367u, 16u)]), true, all(global3.wxz), !select(global3.x, true, true)), global3.x), select(select(!vec4<bool>(global3.x, false, global3.x, global3.x), !select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(global3.x, true, global3.x, global3.x), vec4<bool>(global3.x, global3.x, false, global3.x)), !vec4<bool>(false, global3.x, global3.x, global3.x)), !select(vec4<bool>(false, global3.x, global3.x, global3.x), vec4<bool>(false, false, global3.x, true), global3.x), any(select(select(global3.yz, vec2<bool>(false, true), vec2<bool>(global3.x, false)), !vec2<bool>(true, global3.x), select(global3.xz, global3.wy, false)))), any(select(select(!vec2<bool>(global3.x, global3.x), global3.zz, all(vec2<bool>(global3.x, global3.x))), vec2<bool>(false, all(global3.zx)), select(select(global3.yz, vec2<bool>(false, true), global3.x), select(global3.xz, vec2<bool>(true, global3.x), global3.x), !global3.yy))));
    global2 = array<f32, 16>();
    var var_0 = Struct_2(any(!global3.zwx), Struct_1(1i, !global3.x, ~0u, _wgslsmith_mult_i32(firstTrailingBit(u_input.a), u_input.a), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.a, u_input.b.x, -16534i, -1i)), -(vec4<i32>(-2147483647i, u_input.b.x, 1i, u_input.a) << (vec4<u32>(47119u, u_input.c.x, 79042u, 4294967295u) % vec4<u32>(32u))))), Struct_1(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b.x, ~25337i, -u_input.b.x), 1i), global3.x, ~59686u, min(21424i, -(~u_input.a)), reverseBits(0i)), _wgslsmith_clamp_i32(min(-firstTrailingBit(u_input.b.x), _wgslsmith_mod_i32(i32(-1i) * -8067i, -1i)), -abs(u_input.b.x >> (u_input.c.x % 32u)), select(_wgslsmith_mult_i32(0i, u_input.a) >> (18760u % 32u), firstTrailingBit(_wgslsmith_mod_i32(-2147483647i, u_input.b.x)), false)), !vec4<bool>(global3.x, true, global3.x, any(!global3.xxx)));
    let var_1 = Struct_2(!((select(global3.x, true, global3.x) != var_0.e.x) & any(!vec3<bool>(false, global3.x, global3.x))), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(global1[_wgslsmith_index_u32(var_0.b.c, 19u)], vec4<i32>(-2147483647i, -2147483647i, 1i, -2147483647i), var_0.a), vec4<i32>(3839i, var_0.d, var_0.d, var_0.b.a)), vec4<i32>(_wgslsmith_add_i32(u_input.b.x, 2147483647i), firstTrailingBit(var_0.d), 2368i, u_input.b.x)), _wgslsmith_add_u32(~var_0.b.c, u_input.c.x) == ~u_input.c.x, ~var_0.c.c, -13686i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(22724u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)]) ^ select(vec4<i32>(u_input.b.x, u_input.a, var_0.b.a, var_0.b.d), global1[_wgslsmith_index_u32(74298u, 19u)], var_0.e), abs(~vec4<i32>(var_0.b.a, u_input.a, u_input.b.x, 3822i)))), Struct_1(abs(_wgslsmith_clamp_i32(var_0.c.e, var_0.c.e, ~u_input.a)), true, (71281u | ~var_0.c.c) << (u_input.c.x % 32u), _wgslsmith_mult_i32(u_input.a, reverseBits(-16782i)), 21734i), var_0.c.e | 2147483647i, var_0.e);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(251f, global2[_wgslsmith_index_u32(4294967295u, 16u)], 1095f, global2[_wgslsmith_index_u32(12073u, 16u)]), vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(11000u, 16u)], global2[_wgslsmith_index_u32(8961u, 16u)], global2[_wgslsmith_index_u32(0u, 16u)]), var_1.e))) - vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.b.c, 16u)] * -190f), -499f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(34019u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(1u, 16u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(var_0.b.c, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], -727f, 325f))) - vec4<f32>(-621f, global2[_wgslsmith_index_u32(var_1.c.c, 16u)], 2187f, -2078f))), any(select(vec3<bool>(var_1.c.b, global3.x, false), vec3<bool>(false, var_1.e.x, false), true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 696f, global2[_wgslsmith_index_u32(var_0.c.c, 16u)], 1566f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-526f, global2[_wgslsmith_index_u32(0u, 16u)], 698f, global2[_wgslsmith_index_u32(5807u, 16u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(100f, global2[_wgslsmith_index_u32(var_1.b.c, 16u)], global2[_wgslsmith_index_u32(var_0.b.c, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)]) * vec4<f32>(207f, global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 184f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(var_0.b.c, 16u)], -1454f, -399f, -1707f), vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 317f, global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(1u, 16u)])))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-915f, global2[_wgslsmith_index_u32(14609u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 379f)))))));
    return ~_wgslsmith_div_i32(var_1.c.a, _wgslsmith_div_i32(0i, _wgslsmith_mod_i32(-1i, var_1.c.e) ^ _wgslsmith_mod_i32(var_1.b.e, -5028i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: i32, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_2(global3.x, Struct_1(arg_2, true, 24060u, ~(u_input.a >> (~arg_1.x % 32u)), _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_2, -2147483647i, arg_2), ~vec3<i32>(u_input.a, -26793i, u_input.a) | ~vec3<i32>(u_input.a, -1i, arg_2))), Struct_1(_wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, arg_2, 0i), vec3<i32>(arg_2, arg_2, u_input.a), vec3<i32>(arg_2, arg_2, arg_2)), vec3<i32>(arg_2, 1i, u_input.b.x)), global3.x, max(_wgslsmith_add_u32(~arg_0.x, firstTrailingBit(arg_1.x)), u_input.c.x), u_input.a, arg_2), (_wgslsmith_mod_i32(firstTrailingBit(arg_2), func_3()) >> (~_wgslsmith_mult_u32(arg_1.x, 54612u) % 32u)) ^ 1i, vec4<bool>(global3.x, true, false, arg_0.x >= (arg_1.x & ~arg_1.x)));
    let var_1 = arg_3.x;
    var var_2 = false;
    var var_3 = u_input.b;
    global1 = array<vec4<i32>, 19>();
    return Struct_3(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.c.c, 7921u), vec2<u32>(var_0.b.c, var_0.b.c), arg_0.zy), ~vec2<u32>(31036u, u_input.c.x)), select(_wgslsmith_clamp_u32(var_0.b.c, 4294967295u, u_input.c.x), 28688u, !var_0.b.b)) == 38383u, !(!(global3.x || any(global3.zww))), Struct_1(-2147483647i, all(vec2<bool>(true, var_0.b.b)), _wgslsmith_add_u32(1u, ~arg_0.x | (var_0.c.c | 51091u)), i32(-1i) * -_wgslsmith_mult_i32(68207i, arg_2), ~arg_2), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(select(460f, _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(max(var_1, -827f))), (global3.x | true) || !var_0.c.b)))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<f32>) -> vec3<i32> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~103429u, 16u)] - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1528f, 617f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 16u)] * arg_2.x))) * arg_2.x));
    let var_2 = func_2(vec3<u32>(arg_0, arg_0, u_input.c.x), u_input.c.zz, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, reverseBits(abs(u_input.b.x)), u_input.a), abs(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -1i)) >> (u_input.c % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, 437f, -423f, 347f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-975f, global2[_wgslsmith_index_u32(arg_0, 16u)], arg_2.x, -1541f)))))));
    let var_3 = Struct_3(false, true, func_2(u_input.c, global0[_wgslsmith_index_u32(firstTrailingBit(~(4294967295u & var_2.c.c)), 22u)], u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(0u, 16u)], -740f, arg_2.x, var_2.d), vec4<f32>(207f, 1000f, arg_2.x, 442f)))), vec4<f32>(119f, _wgslsmith_f_op_f32(trunc(-254f)), global2[_wgslsmith_index_u32(u_input.c.x, 16u)], arg_2.x))).c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1702f, var_2.d))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_2.d, 583f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(2197f, -315f)), _wgslsmith_f_op_f32(-1880f + arg_2.x)))));
    let var_4 = ~_wgslsmith_add_vec2_u32(vec2<u32>(~0u, 0u), global0[_wgslsmith_index_u32(~(~4294967295u), 22u)]) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(select(0u, ~u_input.c.x, arg_0 < 4294967295u), select(~arg_0, _wgslsmith_div_u32(u_input.c.x, var_3.c.c), true)), vec2<u32>(81324u, _wgslsmith_clamp_u32(func_2(vec3<u32>(arg_0, 17610u, arg_0), vec2<u32>(var_3.c.c, arg_0), var_2.c.e, vec4<f32>(-1505f, -2228f, arg_2.x, var_2.d)).c.c, 4294967295u, var_2.c.c)), vec2<u32>(max(~0u, 9787u ^ var_2.c.c), ~42318u));
    return vec3<i32>(~firstLeadingBit(var_3.c.e), ~u_input.b.x >> (~(~firstLeadingBit(0u)) % 32u), -((2147483647i & -u_input.b.x) ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), u_input.b) ^ _wgslsmith_add_i32(var_2.c.e, -11422i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<i32>) -> vec2<f32> {
    global3 = !select(select(vec4<bool>(all(vec4<bool>(arg_0.b, arg_0.b, true, arg_1.c.b)), arg_1.b, true, arg_1.b), !select(vec4<bool>(arg_0.b, false, global3.x, arg_0.b), vec4<bool>(false, arg_1.c.b, arg_1.a, global3.x), vec4<bool>(arg_0.b, true, arg_0.b, arg_1.b)), !vec4<bool>(arg_1.c.b, global3.x, true, global3.x)), vec4<bool>(arg_1.b, arg_1.b, true, true), vec4<bool>(!arg_1.c.b, arg_0.b, -35416i < arg_2.x, arg_1.b));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, arg_1.d))) * vec2<f32>(_wgslsmith_f_op_f32(max(418f, 677f)), _wgslsmith_f_op_f32(arg_1.d * -1134f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.d + 1000f), -208f), vec2<f32>(global2[_wgslsmith_index_u32(arg_0.c, 16u)], 1000f)))));
    global0 = array<vec2<u32>, 22>();
    let var_1 = Struct_2(!arg_0.b, func_2(vec3<u32>(arg_0.c, abs(_wgslsmith_mod_u32(0u, arg_0.c)), 62271u), ~min(~u_input.c.zy, ~global0[_wgslsmith_index_u32(arg_1.c.c, 22u)]), func_3() ^ ~_wgslsmith_div_i32(arg_0.d, arg_1.c.e), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_1.d, arg_1.d, arg_1.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1621f, -946f, 1360f)))))).c, func_2(max(~_wgslsmith_sub_vec3_u32(u_input.c, u_input.c), u_input.c << (select(vec3<u32>(arg_0.c, u_input.c.x, 14689u), u_input.c, vec3<bool>(false, arg_0.b, arg_1.a)) % vec3<u32>(32u))), abs(_wgslsmith_add_vec2_u32(u_input.c.xy, vec2<u32>(u_input.c.x, arg_0.c))) ^ firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(17715u, 1u), global0[_wgslsmith_index_u32(u_input.c.x, 22u)])), firstTrailingBit(arg_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(618f, global2[_wgslsmith_index_u32(32323u, 16u)], -921f, 804f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-391f, 995f, var_0.x, 197f))))).c, 2147483647i, !(!vec4<bool>(true, arg_0.b, !global3.x, -353f > global2[_wgslsmith_index_u32(arg_1.c.c, 16u)])));
    let var_2 = arg_1.c.b;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(2240u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)]), var_0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(921f, var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 16u)] * global2[_wgslsmith_index_u32(54337u, 16u)]))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(49416u, 16u)])))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_1.d) * _wgslsmith_f_op_vec2_f32(vec2<f32>(146f, global2[_wgslsmith_index_u32(121556u, 16u)]) + vec2<f32>(var_0.x, -281f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2[_wgslsmith_index_u32(7766u, 16u)], global2[_wgslsmith_index_u32(~4294967295u, 16u)]))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 109f) - vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 390f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 16u)] - global2[_wgslsmith_index_u32(u_input.c.x, 16u)])))), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(abs(u_input.a), global3.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4214u, u_input.c.x, 0u), _wgslsmith_div_u32(73639u, 35504u)), -1i, _wgslsmith_dot_vec3_i32(func_1(u_input.c.x, true, vec2<f32>(729f, global2[_wgslsmith_index_u32(112553u, 16u)])), vec3<i32>(u_input.b.x, u_input.b.x, 3461i) | vec3<i32>(-36678i, u_input.a, u_input.a))), func_2(u_input.c, vec2<u32>(4294967295u, u_input.c.x) | abs(u_input.c.yy), -u_input.b.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1577f, global2[_wgslsmith_index_u32(8851u, 16u)], -1753f, global2[_wgslsmith_index_u32(u_input.c.x, 16u)])), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2[_wgslsmith_index_u32(0u, 16u)], 1488f, global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)])))))), firstTrailingBit(firstLeadingBit(vec2<i32>(u_input.a, 2147483647i))) & firstLeadingBit(u_input.b)))));
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(1023f + -431f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2[_wgslsmith_index_u32(147839u, 16u)], 940f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(-305f, var_0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-117f, -1578f) + vec2<f32>(1000f, global2[_wgslsmith_index_u32(23721u, 16u)])))))));
    global3 = !vec4<bool>(global3.x, global3.x || global3.x, !(~u_input.a != u_input.a), true);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 433f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-708f, global2[_wgslsmith_index_u32(u_input.c.x, 16u)]) + vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], var_0.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], var_0.x), vec2<f32>(810f, -1645f))), vec2<f32>(-1201f, -1466f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1087f, global2[_wgslsmith_index_u32(u_input.c.x ^ 89989u, 16u)])), select(select(select(global3.zy, global3.yz, vec2<bool>(false, true)), vec2<bool>(true, global3.x), vec2<bool>(true, true)), !(!vec2<bool>(true, global3.x)), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)] <= var_0.x, global3.x)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<f32>(-1877f, global2[_wgslsmith_index_u32(u_input.c.x, 16u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, -1289f)))))));
    var var_1 = func_2(u_input.c, u_input.c.yx, u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, 3245u)), 16u)])), var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.c.x, 16u)]))) + -113f)));
    var var_2 = var_1.c;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1.d))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-833f, -880f) + vec2<f32>(451f, var_0.x)))) - vec2<f32>(var_0.x, func_2(u_input.c, vec2<u32>(var_1.c.c, 29845u), -6507i, vec4<f32>(-249f, var_0.x, global2[_wgslsmith_index_u32(28461u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)])).d))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(55440u, ~74590u, 0u, 25456u)), vec4<u32>(var_1.c.c, ~4294967295u, 0u, 1u >> (u_input.c.x % 32u)));
}

