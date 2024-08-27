struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 20>;

var<private> global2: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(2147483647i, 1i, 1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> bool {
    let var_0 = ~(~firstTrailingBit(0u));
    global2 = array<vec3<i32>, 1>();
    global0 = -1752f;
    global1 = array<u32, 20>();
    global2 = array<vec3<i32>, 1>();
    return false;
}

fn func_3(arg_0: u32) -> vec4<i32> {
    var var_0 = select(arg_0, 1u, (_wgslsmith_mod_u32(arg_0, countOneBits(global1[_wgslsmith_index_u32(arg_0, 20u)])) <= _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4294967295u), ~vec2<u32>(arg_0, arg_0))) & false);
    let var_1 = Struct_1(~(~vec3<u32>(40897u, 56646u, arg_0)), vec3<u32>(global1[_wgslsmith_index_u32(min(51937u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 20336u), vec2<u32>(arg_0, 7798u))), 20u)], arg_0, arg_0), select(!vec2<bool>(true, any(vec3<bool>(false, true, true))), vec2<bool>(~u_input.a <= ~15095i, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(true, true)))), ~97683u);
    var var_2 = Struct_3(Struct_1(vec3<u32>(var_1.d, 1u, arg_0 ^ 1u), _wgslsmith_div_vec3_u32(~var_1.b, var_1.a), select(vec2<bool>(var_1.c.x, true), !select(var_1.c, vec2<bool>(false, true), var_1.c), var_1.c.x), _wgslsmith_div_u32(~20595u, 54010u)), vec4<bool>(any(vec2<bool>(var_1.c.x, true)), var_1.c.x, !(!(!var_1.c.x)), true), Struct_2(!select(!vec4<bool>(true, var_1.c.x, true, var_1.c.x), !vec4<bool>(true, false, var_1.c.x, var_1.c.x), select(vec4<bool>(var_1.c.x, false, var_1.c.x, false), vec4<bool>(var_1.c.x, true, var_1.c.x, true), vec4<bool>(false, var_1.c.x, false, var_1.c.x))), select(u_input.a, -_wgslsmith_clamp_i32(-20005i, 2929i, u_input.a), any(var_1.c)), ~u_input.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -705f)), 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2374f, 703f), _wgslsmith_div_f32(1063f, 1025f), any(vec3<bool>(false, true, false))))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(var_1.d, global1[_wgslsmith_index_u32(4294967295u, 20u)], 4294967295u, 87145u)), max(vec4<u32>(global1[_wgslsmith_index_u32(arg_0, 20u)], var_1.d, 1u, 103731u), vec4<u32>(1u, 4294967295u, arg_0, 1u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_0, arg_0, var_1.a.x), vec4<u32>(1u, arg_0, arg_0, 50145u)))), Struct_2(vec4<bool>(select(true, false, any(vec4<bool>(var_1.c.x, true, var_1.c.x, false))), func_2(), false, func_2()), -(~u_input.a), u_input.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1555f, 1000f, -702f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(661f, 883f, -987f) + vec3<f32>(143f, -1000f, -1150f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(2262f, -588f, -440f), vec3<f32>(-1551f, -920f, -1747f))))), vec4<u32>(1u, _wgslsmith_mod_u32(1u, var_1.d), ~global1[_wgslsmith_index_u32(8471u, 20u)], 18598u)), firstTrailingBit(-1i));
    let var_3 = var_2.c;
    global1 = array<u32, 20>();
    return vec4<i32>(var_3.b, -(~(~12548i >> (var_3.e.x % 32u))), min(u_input.a, 1i) & _wgslsmith_dot_vec4_i32(-max(vec4<i32>(-17046i, -15199i, -1i, -1i), vec4<i32>(-16562i, -2147483647i, 46718i, -1i)), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -31272i, 2147483647i, -1i), vec4<i32>(7340i, u_input.a, -10930i, 11858i), vec4<i32>(2147483647i, var_3.c, -22482i, u_input.a)), ~vec4<i32>(1i, u_input.a, u_input.a, 2147483647i))), -18454i);
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_sub_vec4_i32(firstTrailingBit(func_3(max(33352u, ~81422u))), countOneBits(~(vec4<i32>(u_input.a, arg_0.c.b, u_input.a, u_input.a) | vec4<i32>(u_input.a, 0i, -2147483647i, u_input.a)) << (vec4<u32>(~global1[_wgslsmith_index_u32(arg_0.c.e.x, 20u)], 4294967295u, ~17499u, 86953u) % vec4<u32>(32u))));
    global1 = array<u32, 20>();
    var var_2 = _wgslsmith_f_op_f32(-arg_0.d.d.x);
    var var_3 = Struct_2(select(select(arg_0.b, !arg_0.d.a, !arg_0.d.a.x), select(arg_0.c.a, arg_0.d.a, vec4<bool>(all(vec4<bool>(arg_0.b.x, false, false, true)), any(arg_0.c.a), true, true)), !select(arg_0.b, !vec4<bool>(false, true, arg_0.a.c.x, false), arg_0.c.a)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, 1i, -var_1.x), firstLeadingBit(abs(vec3<i32>(2147483647i, 37120i, 28572i))), arg_0.b.zxz), vec3<i32>(u_input.a, -arg_0.c.b, -var_1.x & ~1i)), max(_wgslsmith_add_i32(min(~(-2147483647i), firstLeadingBit(var_1.x)), countOneBits(func_3(40059u).x)), select(countOneBits(-1i), -8164i, u_input.a < max(29365i, u_input.a))), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.d.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.d.d.x, arg_0.d.d.x)) * 102f))), 1167f), reverseBits(vec4<u32>(_wgslsmith_mult_u32(~23681u, min(1u, 19491u)), _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44856u, 20u)], 20u)], 4294967295u), ~(arg_0.a.d >> (0u % 32u)), ~countOneBits(0u))));
    return 20119u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(reverseBits(1i >> (countOneBits(global1[_wgslsmith_index_u32(func_1(Struct_3(Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(56812u, 20u)], 1u, global1[_wgslsmith_index_u32(1u, 20u)]), vec2<bool>(false, true), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)]), vec4<bool>(true, false, true, true), Struct_2(vec4<bool>(false, true, true, false), u_input.a, -1374i, vec3<f32>(1140f, 1000f, -1552f), vec4<u32>(1u, 72175u, 4294967295u, 4294967295u)), Struct_2(vec4<bool>(true, true, false, true), u_input.a, 1i, vec3<f32>(1044f, -1310f, -2039f), vec4<u32>(1u, 2628u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(95379u, 20u)], 20u)], 20u)])), u_input.a)), 20u)]) % 32u)), 0i, u_input.a);
    global1 = array<u32, 20>();
    let var_1 = vec3<bool>(false, true, true);
    let var_2 = Struct_2(vec4<bool>(true, var_1.x, var_1.x, true), firstLeadingBit(u_input.a), func_3(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], 4294967295u), firstTrailingBit(vec3<u32>(35599u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 81140u) >> (vec3<u32>(4294967295u, 47270u, 0u) % vec3<u32>(32u))))).x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1230f, 973f, 388f), vec3<f32>(-434f, -119f, -2021f), var_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(568f, 354f, -2599f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-770f, -2093f, 767f), vec3<f32>(-538f, -694f, -683f), var_1))))), vec4<u32>(global1[_wgslsmith_index_u32(1u, 20u)], 12125u, max(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, 1u), 20u)], _wgslsmith_mod_u32(firstLeadingBit(20500u), global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20413u, 20u)], 20u)], 20u)], 3651u), 20u)])), global1[_wgslsmith_index_u32(firstLeadingBit(~1u), 20u)]));
    let var_3 = -vec2<i32>(_wgslsmith_sub_i32(-var_0.x, -16201i), var_0.x);
    var var_4 = Struct_3(Struct_1(abs(vec3<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(21240u, 20u)]), abs(815u), ~var_2.e.x)), vec3<u32>(1u, var_2.e.x, var_2.e.x), var_1.zx, ~(~global1[_wgslsmith_index_u32(~var_2.e.x, 20u)])), !var_2.a, var_2, var_2, -reverseBits(-36587i));
    var var_5 = var_4.a;
    var_4 = Struct_3(Struct_1(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.e.x, 5352u, global1[_wgslsmith_index_u32(var_2.e.x, 20u)]), var_5.a), 20u)], reverseBits(~0u)), abs(var_5.b), !vec2<bool>(true, any(var_2.a)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(83557u, ~max(var_2.e.x, 45442u)), 20u)], 20u)]), vec4<bool>(false, !select(!var_2.a.x, true, true), !(u_input.a <= (13726i >> (global1[_wgslsmith_index_u32(32052u, 20u)] % 32u))), !(-56756i < _wgslsmith_add_i32(var_3.x, -15159i))), var_4.c, var_4.c, abs(u_input.a));
    var var_6 = vec3<u32>(58785u, ~(~(~0u)), (1u >> (~var_5.b.x % 32u)) | 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.d.x * _wgslsmith_f_op_f32(-var_4.c.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.d.d.x - var_4.c.d.x) * var_2.d.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_4.d.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1814f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)))), vec2<i32>(-_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(var_6.x ^ var_5.a.x, 1u)], vec3<i32>(2147483647i, -33492i, var_2.c) >> (var_5.b % vec3<u32>(32u))), u_input.a), var_2.d.x, vec2<f32>(_wgslsmith_f_op_f32(round(var_4.d.d.x)), var_4.d.d.x));
}

