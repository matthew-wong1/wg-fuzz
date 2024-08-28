struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 11> = array<i32, 11>(-34017i, 0i, 2147483647i, 29442i, 1861i, 2147483647i, 40132i, 13216i, 11114i, 7934i, 12021i);

var<private> global2: vec2<f32> = vec2<f32>(-1161f, -241f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    global1 = array<i32, 11>();
    let var_0 = Struct_1(any(!(!vec2<bool>(true, arg_0.b.a))), _wgslsmith_add_u32(1u, 1u), select(_wgslsmith_mult_i32(u_input.a, 0i), select(1i, _wgslsmith_sub_i32(arg_0.a.c, u_input.d), all(vec2<bool>(false, true))), any(vec3<bool>(true, false, false))) ^ -1i, ~(~arg_0.a.d), firstLeadingBit(4294967295u));
    global1 = array<i32, 11>();
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-938f, -1000f) + vec2<f32>(global2.x, -430f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 820f))) - vec2<f32>(-970f, _wgslsmith_f_op_f32(select(-1167f, global2.x, true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-983f, 392f))) - vec2<f32>(global2.x, -210f)))) - vec2<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x));
    global2 = _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1055f, 456f))));
    return vec2<i32>(_wgslsmith_mod_i32(min(~(~(-1i)), -arg_0.a.c), i32(-1i) * -(~68468i)), 11762i);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<f32>) -> f32 {
    global0 = reverseBits(_wgslsmith_mod_vec2_i32(~firstTrailingBit(~vec2<i32>(-7362i, global0.x)), func_3(Struct_2(arg_0.a, Struct_1(arg_0.b.a, arg_0.b.b, 4335i, arg_0.a.d, arg_0.a.b)))));
    let var_0 = max(-37744i, ~(-18619i));
    global2 = _wgslsmith_f_op_vec2_f32(-arg_2);
    var var_1 = arg_0.b;
    global0 = vec2<i32>(_wgslsmith_add_i32(-45661i, abs(_wgslsmith_add_i32(~0i, 4414i))), -(_wgslsmith_mult_i32(-23013i ^ global1[_wgslsmith_index_u32(32512u, 11u)], global0.x) | -2147483647i));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, -1326f) - 1f);
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: u32, arg_3: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_1(true, 10359u, -1i, _wgslsmith_mod_vec2_u32(vec2<u32>(~arg_2, _wgslsmith_add_u32(arg_2, ~arg_2)), abs(_wgslsmith_mult_vec2_u32(min(vec2<u32>(88888u, arg_2), vec2<u32>(16268u, arg_2)), vec2<u32>(14819u, arg_2)))), ~(~(~1u)) >> (countOneBits(arg_2) % 32u));
    let var_1 = _wgslsmith_f_op_f32(-global2.x);
    global1 = array<i32, 11>();
    var var_2 = Struct_2(Struct_1(all(select(vec4<bool>(var_0.a, true, arg_3.x, arg_3.x), vec4<bool>(false, false, var_0.a, false), any(vec4<bool>(arg_3.x, true, true, arg_3.x)))), _wgslsmith_dot_vec2_u32(vec2<u32>(min(1u, arg_2), _wgslsmith_div_u32(var_0.b, var_0.e)), ~vec2<u32>(var_0.d.x, var_0.d.x)), -32344i, var_0.d, var_0.b), Struct_1(arg_3.x, ~(var_0.e << (~4294967295u % 32u)), firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 2166i, global1[_wgslsmith_index_u32(0u, 11u)], -63108i), vec4<i32>(-1i, 0i, global0.x, u_input.c)), vec4<i32>(var_0.c, var_0.c, var_0.c, var_0.c) >> (vec4<u32>(42229u, 723u, var_0.d.x, arg_2) % vec4<u32>(32u)))), var_0.d, 1u));
    var var_3 = arg_2;
    return u_input.b;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    global0 = arg_0;
    let var_0 = Struct_2(arg_2, Struct_1(arg_1.x, arg_2.e, -arg_2.c, arg_2.d, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_2.d.x, 20370u, 38815u, arg_2.d.x) | vec4<u32>(59207u, arg_2.e, arg_2.e, arg_2.e)), ~(~vec4<u32>(91724u, 4294967295u, 48499u, arg_2.b)))));
    let var_1 = vec4<i32>(select(min(-19193i, global0.x), var_0.a.c, false), countOneBits(9069i ^ ~(arg_2.c << (arg_2.d.x % 32u))), 15348i, reverseBits(arg_2.c));
    let var_2 = arg_1.x;
    let var_3 = var_0.b;
    return arg_2;
}

fn func_1() -> vec4<u32> {
    var var_0 = global2.x;
    var var_1 = Struct_2(func_5(func_4(-u_input.b, _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(false, 10755u, -2147483647i, vec2<u32>(16437u, 11681u), 4294967295u), Struct_1(true, 0u, -2147483647i, vec2<u32>(0u, 12382u), 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -723f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1753f, 1056f) - vec2<f32>(global2.x, global2.x)))), ~4294967295u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 76400u), vec3<u32>(21179u, 4294967295u, 9010u)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec4<bool>(false, false, false, false)))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true), false & any(vec3<bool>(false, true, true))), Struct_1(true, 1u, _wgslsmith_dot_vec4_i32(min(vec4<i32>(global1[_wgslsmith_index_u32(0u, 11u)], 47020i, global1[_wgslsmith_index_u32(6225u, 11u)], global0.x), vec4<i32>(1i, u_input.d, global0.x, global0.x)), vec4<i32>(2147483647i, 5089i, 46730i, global1[_wgslsmith_index_u32(4294967295u, 11u)])), abs(vec2<u32>(4294967295u, 30830u)), 1u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(692f + global2.x) + _wgslsmith_f_op_f32(floor(-667f))), _wgslsmith_f_op_f32(sign(768f)), global2.x)), Struct_1(true, _wgslsmith_dot_vec2_u32(~select(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 70122u), vec2<bool>(true, true)), ~(~vec2<u32>(0u, 0u))), ~1i, ~func_5(_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(-40123i, -1i)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), func_5(vec2<i32>(-2147483647i, -33263i), vec3<bool>(true, false, false), Struct_1(true, 15930u, -2147483647i, vec2<u32>(14282u, 20195u), 79941u), vec3<f32>(global2.x, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) - vec3<f32>(global2.x, global2.x, global2.x))).d, ~(~(~4294967295u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, -199f, -227f))) * vec3<f32>(-270f, 738f, global2.x)), vec3<f32>(_wgslsmith_div_f32(global2.x, global2.x), 1584f, global2.x), vec3<bool>(var_1.b.a, all(vec3<bool>(var_1.a.a, false, true)), true))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)))))));
    var var_3 = var_1.b;
    let var_4 = !var_1.a.a;
    return ~(~vec4<u32>(~var_1.a.b, ~var_3.e, max(_wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_add_u32(0u, 0u)), 76572u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), func_1()) & ~vec4<u32>(max(668u, 4294967295u), _wgslsmith_add_u32(10521u, 60544u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(57683u, 23897u, 0u)), 1u));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(-global2.x))));
    global0 = u_input.b;
    global0 = vec2<i32>(abs((i32(-1i) * -2147483647i) ^ global1[_wgslsmith_index_u32(0u, 11u)]), func_4(~(u_input.b >> (~var_0.zw % vec2<u32>(32u))), _wgslsmith_f_op_f32(-var_1.x), min(_wgslsmith_mod_u32(var_0.x, min(var_0.x, var_0.x)), var_0.x), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))).x);
    var var_2 = min(vec4<u32>(~(~_wgslsmith_sub_u32(1928u, var_0.x)), ~94260u, reverseBits(~49479u), 63678u), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, 23285i, ~global0.x, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(~(-20584i), 0i, -1i, i32(-1i) * -2147483647i), vec4<i32>(u_input.a, -22322i, -3660i, 0i) << (~var_0 % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(-vec4<i32>(1i, -62374i, -2147483647i, 6788i), vec4<i32>(1i, u_input.d, -1i, global0.x) << (vec4<u32>(0u, 52098u, var_0.x, var_0.x) % vec4<u32>(32u))) & vec4<i32>(0i, select(global0.x, global1[_wgslsmith_index_u32(34955u, 11u)], false), ~1i, 0i)), -504f);
}

