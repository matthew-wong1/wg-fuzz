struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true));

var<private> global2: array<i32, 5> = array<i32, 5>(1i, 35375i, -26217i, 2147483647i, -19737i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_1(arg_3.c.yz, !select(u_input.c == ~(-18781i), !any(vec3<bool>(arg_0, false, arg_0)), (-42342i | global2[_wgslsmith_index_u32(arg_2.x, 5u)]) >= firstTrailingBit(global2[_wgslsmith_index_u32(1u, 5u)])), vec4<bool>(select(u_input.b, u_input.b, true) >= (firstTrailingBit(-1i) >> (31716u % 32u)), true, true, !all(select(vec3<bool>(arg_1, false, true), vec3<bool>(true, false, arg_1), arg_1))), all(vec4<bool>(arg_0, !(!arg_1), (global2[_wgslsmith_index_u32(arg_2.x, 5u)] <= u_input.b) | true, u_input.e.x <= _wgslsmith_mult_u32(1u, 0u))), _wgslsmith_mult_i32(firstTrailingBit(-2147483647i), min(u_input.b, _wgslsmith_clamp_i32(abs(u_input.c), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, arg_3.a.x), 5u)], _wgslsmith_div_i32(2147483647i, -1i)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(var_0.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.a.x) * arg_3.c.wy)), _wgslsmith_f_op_vec2_f32(-arg_3.b.zy))), vec2<bool>(false, true))), !(any(vec2<bool>(false, false)) || true), select(var_0.c, select(vec4<bool>(arg_0, any(var_0.c.yz), !arg_0, any(var_0.c)), select(!vec4<bool>(arg_0, true, true, true), select(global1[_wgslsmith_index_u32(0u, 23u)], vec4<bool>(arg_0, true, var_0.b, arg_0), false), !arg_0), true), !(!arg_0)), arg_1, _wgslsmith_mod_i32(-(~firstLeadingBit(2147483647i)), _wgslsmith_clamp_i32(reverseBits(-6364i), _wgslsmith_clamp_i32(firstLeadingBit(1i), var_0.e, -9574i | global2[_wgslsmith_index_u32(615u, 5u)]), ~(-u_input.b))));
    var var_1 = arg_3.a.x;
    let var_2 = -(~(-abs(abs(var_0.e))));
    var var_3 = arg_3;
    return 19767i;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_i32(select(-vec3<i32>(_wgslsmith_mult_i32(1i, global2[_wgslsmith_index_u32(u_input.e.x, 5u)]), -2147483647i, -33596i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-12185i, -60768i & global2[_wgslsmith_index_u32(u_input.e.x, 5u)], func_3(true, false, vec4<u32>(u_input.e.x, u_input.e.x, 24852u, u_input.d), Struct_3(u_input.e.zwx, vec4<f32>(-743f, -1399f, 1692f, -303f), vec4<f32>(878f, -1802f, 394f, -1332f), -557f))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(global2[_wgslsmith_index_u32(21066u, 5u)], -31584i, 14794i), -vec3<i32>(0i, -2147483647i, 6892i), vec3<i32>(global2[_wgslsmith_index_u32(73378u, 5u)], u_input.a, -21123i)), ~(~vec3<i32>(-64894i, u_input.b, u_input.c))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))), ~(-(firstLeadingBit(vec3<i32>(u_input.a, 1i, 28260i)) & -vec3<i32>(2147483647i, -1i, u_input.c))));
    global2 = array<i32, 5>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -571f, -1180f, -351f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1318f, 667f, -183f, -689f), vec4<f32>(-958f, 134f, -522f, 736f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2203f, 516f, 614f, -1558f) - vec4<f32>(1457f, -1165f, 519f, -2150f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-633f, 925f, -3191f, -676f) - vec4<f32>(886f, 1109f, -1668f, -1826f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(740f, 1195f, 375f, -198f))))), vec4<bool>(true, true, true, true))), !select(!global1[_wgslsmith_index_u32(49988u, 23u)], vec4<bool>(true, false, false, false), 29108i == global2[_wgslsmith_index_u32(u_input.e.x, 5u)]))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1670f, -1707f)), true, !(!select(global1[_wgslsmith_index_u32(u_input.d, 23u)], vec4<bool>(true, true, true, true), true)), false, _wgslsmith_dot_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, u_input.c, global2[_wgslsmith_index_u32(u_input.d, 5u)], var_0), vec4<i32>(global2[_wgslsmith_index_u32(u_input.e.x, 5u)], var_0, global2[_wgslsmith_index_u32(u_input.d, 5u)], -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-3755i, 31873i, global2[_wgslsmith_index_u32(28202u, 5u)], 0i), vec4<i32>(var_0, -30794i, 0i, -77640i)), global1[_wgslsmith_index_u32(u_input.e.x, 23u)]), _wgslsmith_add_vec4_i32(abs(vec4<i32>(2147483647i, 2147483647i, var_0, global2[_wgslsmith_index_u32(u_input.e.x, 5u)])), vec4<i32>(var_0, var_0, u_input.a, -2147483647i) >> (u_input.e % vec4<u32>(32u))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(495f - -557f), _wgslsmith_f_op_f32(-1068f + _wgslsmith_f_op_f32(f32(-1f) * -140f))), false, select(global1[_wgslsmith_index_u32(countOneBits(max(4294967295u, 41759u)), 23u)], vec4<bool>(false, select(true, false, false), all(vec3<bool>(false, false, true)), true), true), _wgslsmith_f_op_f32(f32(-1f) * -834f) <= _wgslsmith_f_op_f32(step(-1128f, _wgslsmith_f_op_f32(f32(-1f) * -142f))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a << (u_input.d % 32u), _wgslsmith_mult_i32(var_0, var_0), _wgslsmith_add_i32(2115i, var_0)), countOneBits(select(vec3<i32>(global2[_wgslsmith_index_u32(u_input.e.x, 5u)], var_0, global2[_wgslsmith_index_u32(u_input.e.x, 5u)]), vec3<i32>(u_input.b, 6289i, var_0), false)))), var_0 < global2[_wgslsmith_index_u32(~(~30165u), 5u)], Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(392f, -932f) + vec2<f32>(1465f, -127f))))), any(vec3<bool>(any(vec2<bool>(true, true)), select(false, true, true), true)), select(select(vec4<bool>(true, true, true, true), !global1[_wgslsmith_index_u32(4294967295u, 23u)], select(true, true, true)), select(vec4<bool>(false, false, false, false), global1[_wgslsmith_index_u32(4294967295u | u_input.d, 23u)], select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), vec4<bool>(select(false, false, true), true, true, -40592i == var_0)), !any(vec2<bool>(true, true)), _wgslsmith_clamp_i32(0i, 15558i, abs(global2[_wgslsmith_index_u32(~4294967295u, 5u)]))));
    var var_2 = Struct_3(~(~u_input.e.wzz >> (vec3<u32>(u_input.d, u_input.d, u_input.d) % vec3<u32>(32u))) >> (vec3<u32>(u_input.e.x, ~(~29763u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.d, u_input.e.x, 56130u), ~3706u)) % vec3<u32>(32u)), vec4<f32>(var_1.b.a.x, _wgslsmith_f_op_f32(-var_1.e.a.x), 1f, var_1.c.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a.x)));
    let var_3 = Struct_2(var_1.a, Struct_1(var_1.a.zz, any(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.d, var_1.e.c.x, var_1.c.b, var_1.d), global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 23u)])), vec4<bool>(var_1.e.d & var_1.e.b, any(global1[_wgslsmith_index_u32(0u << (u_input.e.x % 32u), 23u)]), true, all(var_1.c.c.zxy)), -1000f >= var_1.e.a.x, 1i), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.yx), _wgslsmith_f_op_vec2_f32(var_1.b.a * _wgslsmith_div_vec2_f32(var_1.c.a, var_2.b.yx))), !all(vec4<bool>(true, var_1.c.c.x, var_1.b.b, true)) || true, global1[_wgslsmith_index_u32(var_2.a.x, 23u)], all(!select(var_1.c.c, global1[_wgslsmith_index_u32(u_input.e.x, 23u)], true)), var_0), true, var_1.e);
    return var_1.e;
}

fn func_4(arg_0: Struct_1) -> f32 {
    global0 = _wgslsmith_sub_u32(~reverseBits(u_input.d) >> (7348u % 32u), u_input.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + arg_0.a.x);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    global1 = array<vec4<bool>, 23>();
    global1 = array<vec4<bool>, 23>();
    let var_0 = !all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - -248f) - _wgslsmith_f_op_f32(func_4(func_2())));
    return _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mult_vec3_u32(~u_input.e.ywx, u_input.e.xxw)), vec3<u32>(u_input.d, 24168u, ~25184u));
}

fn func_5(arg_0: i32) -> vec4<bool> {
    let var_0 = select(vec2<bool>(!select(true, 2147483647i >= arg_0, true), all(vec4<bool>(true, true, true, true))), vec2<bool>(any(select(!global1[_wgslsmith_index_u32(1u, 23u)], func_2().c, select(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], vec4<bool>(false, false, true, true)))), !select(true, select(false, true, true), true)), func_2().c.yz);
    let var_1 = firstLeadingBit(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(~(~1u) >> (~_wgslsmith_mult_u32(u_input.d, u_input.d) % 32u), 5u)], _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(1u, 5u)], 2147483647i, -23039i), vec4<i32>(-1i, u_input.c, 0i, 1i)), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, -1i, -45646i, u_input.a), vec4<i32>(u_input.b, 41915i, -43049i, arg_0)))), global2[_wgslsmith_index_u32(u_input.d, 5u)]));
    global0 = 94815u;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(849f, -2275f), _wgslsmith_f_op_f32(f32(-1f) * -1135f), select(var_0.x, var_0.x, true))), _wgslsmith_f_op_f32(-1106f * _wgslsmith_f_op_f32(sign(419f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(440f, 1084f)), -892f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-742f, 1375f, false)), -324f, -525f, _wgslsmith_div_f32(363f, -487f))), var_0.x | true)), func_2(), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(func_2().a, vec2<f32>(-441f, 130f))), !(!(!var_0.x)), !(!global1[_wgslsmith_index_u32(~u_input.e.x, 23u)]), var_0.x, _wgslsmith_div_i32(reverseBits(-21923i), arg_0)), true == !(false && !var_0.x), Struct_1(vec2<f32>(-189f, -1094f), var_0.x, global1[_wgslsmith_index_u32((abs(u_input.d) << (~1u % 32u)) ^ u_input.d, 23u)], false, _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(-28560i, u_input.a, -4565i, 81673i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_1, var_1, arg_0), ~vec4<i32>(-2147483647i, u_input.c, -8671i, 5187i)))));
    return vec4<bool>(var_2.c.d, var_0.x, var_0.x, var_2.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = !(true | (true && (17705u == _wgslsmith_mult_u32(45665u, u_input.d))));
    let var_1 = select(select(func_5(global2[_wgslsmith_index_u32(func_1(~u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1751f, 424f, -1351f))), 5u)]), func_5(67794i), true), vec4<bool>(~u_input.d > _wgslsmith_dot_vec4_u32(~u_input.e, u_input.e), true, !(!all(vec2<bool>(false, true))), -u_input.c != ~global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d, u_input.e.x, u_input.e.x), 5u)]), true);
    let var_2 = Struct_3(abs(~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(53022u, u_input.e.x, 44762u), u_input.e.wyw, u_input.e.yyy), ~vec3<u32>(0u, u_input.e.x, 1u), var_1.x && var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -419f, -1000f, 300f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-216f, 1234f, 411f, -1113f) * vec4<f32>(934f, -102f, -123f, 1000f)))) * vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1338f, 1f) + -1653f), _wgslsmith_f_op_f32(func_4(func_2()))));
    global0 = max(u_input.d, ~var_2.a.x);
    global2 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.e.xx & vec2<u32>(1u, u_input.e.x), u_input.e.zx | vec2<u32>(4544u, u_input.d)), var_2.a.xz), firstTrailingBit(~u_input.e), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b.yyz - var_2.c.yxy)), vec3<f32>(1f, var_2.d, var_2.c.x)), var_2.c.wzx)), max(0i, reverseBits(-reverseBits(u_input.b))), u_input.c);
}

