struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> bool {
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    let var_0 = Struct_2(_wgslsmith_div_i32(reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -1i, u_input.d, u_input.c), vec4<i32>(-2147483647i, u_input.d, u_input.c, 15069i)), vec4<i32>(-66228i, u_input.c, u_input.c, 32509i))), -11398i ^ _wgslsmith_div_i32(reverseBits(u_input.c), u_input.d)));
    return false;
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = firstTrailingBit(vec3<i32>(u_input.d, -15099i, u_input.d));
    global0 = array<u32, 5>();
    var var_1 = Struct_4(~countOneBits(~u_input.b.zx << (~vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 5u)]) % vec2<u32>(32u))), Struct_3(false));
    var var_2 = u_input.b.xy;
    var_1 = Struct_4(_wgslsmith_sub_vec2_u32(~var_1.a & (vec2<u32>(65270u, 10929u) << (vec2<u32>(121767u, global0[_wgslsmith_index_u32(4294967295u, 5u)]) % vec2<u32>(32u))), var_1.a), var_1.b);
    return true;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = -1000f;
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1098f, 337f), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-717f * 1237f), 1f)))));
    var var_2 = 1u >> (select(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~1u, 5u)], min(_wgslsmith_mult_u32(20229u, 4488u), _wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(83496u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], 5u)]))), ~(~global0[_wgslsmith_index_u32(reverseBits(39874u), 5u)]), true) % 32u);
    global0 = array<u32, 5>();
    let var_3 = ~0i;
    return select(vec4<bool>(arg_1.a.x, !all(arg_1.a), true, true), arg_1.a, var_1.x != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>) -> bool {
    var var_0 = Struct_1(func_4(526f, Struct_1(vec4<bool>(true, func_2(), all(vec3<bool>(true, true, false)), func_3(459f)), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), true))), !vec3<bool>(!any(vec4<bool>(false, true, false, false)), true, false));
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, ~(-1i), u_input.d), select(~_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(5075i, u_input.c, u_input.d)), ~vec3<i32>(u_input.d, u_input.d, -33424i), vec3<i32>(-54677i, u_input.c, -2147483647i)), vec3<i32>(~u_input.c, -(u_input.d >> (u_input.b.x % 32u)), u_input.c), (~global0[_wgslsmith_index_u32(53603u, 5u)] << (~12165u % 32u)) < 57650u));
    let var_2 = Struct_2(abs(-1i));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1179f, 177f, -1124f), vec3<f32>(124f, 1000f, 596f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1469f, 1011f, -1478f)))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-877f, 117f, 753f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-694f, 385f, 921f)))))), !var_0.a.wxz))));
    var var_4 = var_0.a.zx;
    return all(var_0.a.wz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 5>();
    let var_0 = Struct_2(_wgslsmith_add_i32(abs(1i), u_input.d) & u_input.c);
    var var_1 = firstTrailingBit(_wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, var_0.a, var_0.a, 14949i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.c, u_input.c, u_input.c), vec4<i32>(-41427i, var_0.a, 2147483647i, -3189i)))), ~max(vec4<i32>(u_input.c, -2147483647i, var_0.a, -501i), vec4<i32>(u_input.c, 50028i, var_0.a, var_0.a))));
    var_1 = -min(vec4<i32>(var_0.a, var_1.x, u_input.d, u_input.d), vec4<i32>(_wgslsmith_div_i32(9773i, -2147483647i), -(~0i), -_wgslsmith_mult_i32(var_1.x, var_0.a), ~2147483647i));
    var var_2 = vec4<u32>(u_input.a, ~(~u_input.b.x), u_input.b.x, ~(~((u_input.b.x & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)]) << (_wgslsmith_add_u32(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 5u)]) % 32u))));
    let var_3 = Struct_3(true || !func_1(abs(var_2.zz), select(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<u32>(var_2.x, 54265u), vec2<bool>(false, true))));
    var_1 = _wgslsmith_clamp_vec4_i32(min(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_1.x, -8423i), var_0.a, ~var_0.a, u_input.c << (50421u % 32u)), countOneBits(vec4<i32>(-35703i, 0i, var_1.x, 0i)) ^ -vec4<i32>(var_1.x, u_input.d, 44740i, var_1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(31226i & var_1.x, var_0.a << (1u % 32u), -29739i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(32366i, var_1.x, -15844i, u_input.c) & vec4<i32>(-1i, u_input.d, u_input.d, var_1.x), ~vec4<i32>(5856i, var_1.x, u_input.d, -1i)), ~(vec4<i32>(var_1.x, u_input.c, u_input.d, 965i) >> (vec4<u32>(62580u, 12289u, global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.x, 5u)], 5u)]) % vec4<u32>(32u))))), vec4<i32>(26015i, var_0.a ^ 0i, _wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(var_1.x, 0i, 0i, u_input.d)), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(1i, 17355i, u_input.d, var_0.a)), -vec4<i32>(2147483647i, var_1.x, 14059i, 13796i))), var_1.x), firstLeadingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c, var_0.a, 1176i, var_0.a), firstTrailingBit(vec4<i32>(u_input.d, var_0.a, var_1.x, -2147483647i))), max(countOneBits(vec4<i32>(-20456i, -73078i, -1i, 0i)), ~vec4<i32>(-2147483647i, 0i, -2147483647i, 27084i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-295f, 1637f))) - _wgslsmith_f_op_f32(f32(-1f) * -849f)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(528f, -2204f))), _wgslsmith_div_f32(565f, _wgslsmith_f_op_f32(f32(-1f) * -400f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -472f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1796f, 1f, _wgslsmith_f_op_f32(ceil(-572f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(3535f)))), 0u);
}

