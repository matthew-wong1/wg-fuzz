struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1u), Struct_1(0u), Struct_1(20883u), Struct_1(12949u), Struct_1(74767u), Struct_1(1u), Struct_1(0u), Struct_1(125301u), Struct_1(40064u), Struct_1(18717u), Struct_1(0u), Struct_1(83247u), Struct_1(1u), Struct_1(4294967295u), Struct_1(56123u), Struct_1(55649u), Struct_1(15441u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1582f * -2708f))), _wgslsmith_f_op_f32(856f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(850f - 525f)))))));
    let var_1 = Struct_3(var_0, vec2<f32>(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 * var_0))), any(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 16u)], false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1721f, var_0)) + _wgslsmith_f_op_f32(trunc(var_0)))), ~(~abs(16740u)));
    var var_2 = u_input.c.xwz;
    global0 = array<bool, 16>();
    var var_3 = any(vec2<bool>(!any(select(vec4<bool>(true, arg_1, false, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 16u)], true), arg_1)), !all(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d, 16u)]), vec3<bool>(true, arg_1, false), true))));
    return 1u;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> u32 {
    global0 = array<bool, 16>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.a, u_input.d), 17u)];
    var var_1 = arg_2;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_mod_u32(func_3(Struct_1(_wgslsmith_clamp_u32(1u ^ arg_2.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 11565u), vec3<u32>(var_0.a, arg_3, var_0.a)), ~u_input.d)), 11363u <= ~arg_3), 0u);
    return ~50933u;
}

fn func_1() -> vec4<i32> {
    let var_0 = select(vec3<bool>(global0[_wgslsmith_index_u32(func_2(true, false, global1[_wgslsmith_index_u32(14610u, 17u)], 0u) >> (_wgslsmith_mult_u32(10147u, 70186u) % 32u), 16u)] & (-2374i > firstLeadingBit(u_input.a.x)), true, false), vec3<bool>(true, all(select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 16u)], true), select(vec3<bool>(global0[_wgslsmith_index_u32(18979u, 16u)], true, global0[_wgslsmith_index_u32(24618u, 16u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(u_input.d, 16u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 16u)], false)), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 16u)])), true), vec3<bool>(true, true, true));
    global1 = array<Struct_1, 17>();
    var var_1 = Struct_2(Struct_1(4294967295u & ~_wgslsmith_sub_u32(u_input.c.x, 36429u)), Struct_1(1u), Struct_1(4294967295u));
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(var_1.c.a, 17u)], global1[_wgslsmith_index_u32(abs(var_1.a.a), 17u)], global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_mod_u32(u_input.c.x, 4294967295u)), 17u)]);
    let var_3 = _wgslsmith_mod_vec3_u32(~u_input.b, ~vec3<u32>(0u, _wgslsmith_div_u32(96871u << (u_input.d % 32u), 1u), _wgslsmith_mult_u32(~3577u, 0u)));
    return ~vec4<i32>(u_input.a.x, _wgslsmith_div_i32(11889i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 13193i, u_input.a.x, -2147483647i), select(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 1i), vec4<i32>(u_input.a.x, -1i, 2147483647i, u_input.a.x), global0[_wgslsmith_index_u32(var_2.a.a, 16u)]))), ~0i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 17>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(457f)) - _wgslsmith_f_op_f32(904f * -580f)) - 3200f))) * 1398f);
    var var_1 = select(-max(~vec4<i32>(u_input.a.x, -15575i, 14094i, u_input.a.x) & func_1(), ~vec4<i32>(23328i, 2147483647i, u_input.a.x, u_input.a.x)), ~vec4<i32>(2147483647i, _wgslsmith_add_i32(u_input.a.x, u_input.a.x ^ u_input.a.x), -1i, u_input.a.x), false);
    var_1 = vec4<i32>(-(var_1.x ^ ~(~var_1.x)), var_1.x, 1i, -526i);
    var_1 = abs((vec4<i32>(_wgslsmith_add_i32(-2147483647i, var_1.x), _wgslsmith_add_i32(var_1.x, -1i), var_1.x, -u_input.a.x) >> (u_input.c % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(firstTrailingBit(-vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(-30528i, var_1.x, var_1.x, 2147483647i), vec4<i32>(u_input.a.x, var_1.x, u_input.a.x, -1i), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], true, global0[_wgslsmith_index_u32(0u, 16u)], true)), vec4<i32>(-1i, 29208i, 1i, -2147483647i) >> (vec4<u32>(u_input.b.x, 47244u, u_input.b.x, u_input.d) % vec4<u32>(32u)))));
    var_1 = max(vec4<i32>(-(func_1().x & (var_1.x << (u_input.c.x % 32u))), _wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_1.x, 56098i), u_input.a.x, -1i)), reverseBits(i32(-1i) * -u_input.a.x), i32(-1i) * -30152i), _wgslsmith_add_vec4_i32(countOneBits(countOneBits(vec4<i32>(-2147483647i, u_input.a.x, 1i, u_input.a.x))) | vec4<i32>(var_1.x, u_input.a.x, u_input.a.x, firstTrailingBit(-94913i)), _wgslsmith_sub_vec4_i32(abs(~vec4<i32>(var_1.x, var_1.x, 0i, -1i)), vec4<i32>(-37257i, firstTrailingBit(-1331i), 15014i, _wgslsmith_add_i32(var_1.x, var_1.x)))));
    let var_2 = ~(~23408u) >= firstLeadingBit(_wgslsmith_div_u32(reverseBits(u_input.c.x ^ u_input.c.x), abs(1u)));
    global0 = array<bool, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -409f)))), vec2<u32>(~4294967295u, 61488u), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-393f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-830f * _wgslsmith_f_op_f32(495f - 619f)), _wgslsmith_f_op_f32(-603f - 356f)))));
}

