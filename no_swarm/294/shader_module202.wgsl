struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 0i, 0i);

var<private> global1: array<bool, 17> = array<bool, 17>(true, true, false, false, false, true, true, true, false, true, false, false, false, true, true, false, true);

var<private> global2: array<f32, 20>;

var<private> global3: array<u32, 3> = array<u32, 3>(1u, 4294967295u, 26474u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> u32 {
    global2 = array<f32, 20>();
    var var_0 = !vec2<bool>(!select(true, all(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.e, 17u)], global1[_wgslsmith_index_u32(86839u, 17u)])), true || global1[_wgslsmith_index_u32(u_input.e, 17u)]), true);
    var var_1 = -15742i;
    let var_2 = firstTrailingBit(~(~vec2<u32>(1u, 30477u) ^ ~(~vec2<u32>(4082u, u_input.c))));
    global0 = vec3<i32>(9098i, ~reverseBits(select(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0.x, u_input.b), vec3<i32>(global0.x, 7339i, global0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -35199i, -28009i), vec3<i32>(global0.x, u_input.b, 22410i)), true)), _wgslsmith_dot_vec3_i32(~vec3<i32>(~(-43845i), firstLeadingBit(u_input.a), ~2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(abs(1362i), _wgslsmith_div_i32(global0.x, 41505i), 1i), -(vec3<i32>(global0.x, u_input.d, global0.x) | vec3<i32>(0i, global0.x, u_input.a)))));
    return 4158u;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<u32>) -> vec3<u32> {
    let var_0 = arg_1;
    let var_1 = max(~(~vec4<u32>(_wgslsmith_div_u32(0u, 41390u), ~93411u, 0u, 67943u)), vec4<u32>(arg_3.x, ~(arg_3.x >> (0u % 32u)), ~29848u, global3[_wgslsmith_index_u32(max(arg_3.x | 13973u, ~9134u), 3u)]) >> (vec4<u32>(1u, 16011u, _wgslsmith_mod_u32(1u, ~40229u), _wgslsmith_mult_u32(u_input.c, 8313u)) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_mult_vec4_i32(-max(~vec4<i32>(global0.x, -26068i, u_input.d, u_input.a), abs(abs(vec4<i32>(-12776i, u_input.b, arg_2.x, 1i)))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-50522i, u_input.a, u_input.a, u_input.b), vec4<i32>(76372i, u_input.b, u_input.d, 1788i)), -15492i, abs(0i)), vec4<i32>(2147483647i, _wgslsmith_add_i32(68241i, 22431i), select(~65839i, select(arg_2.x, global0.x, arg_0), all(vec3<bool>(false, arg_0, arg_0))), abs(26681i))));
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(firstTrailingBit(arg_3.x & _wgslsmith_add_u32(1u, arg_3.x)), firstTrailingBit(~_wgslsmith_mult_u32(0u, 4294967295u))), u_input.c, arg_3.x & 46726u);
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-497f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(401f)))))), global2[_wgslsmith_index_u32(var_3, 20u)]));
    return var_1.yzx;
}

fn func_1() -> vec3<bool> {
    global0 = reverseBits(-(countOneBits(min(vec3<i32>(global0.x, 27239i, 56119i), vec3<i32>(45876i, 1i, u_input.d))) << (~(vec3<u32>(87231u, global3[_wgslsmith_index_u32(86161u, 3u)], u_input.c) | vec3<u32>(u_input.e, u_input.c, 1u)) % vec3<u32>(32u))));
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(1u, global3[_wgslsmith_index_u32(u_input.e, 3u)]), _wgslsmith_dot_vec3_u32(select(select(vec3<u32>(u_input.c, 24042u, 4294967295u), vec3<u32>(0u, global3[_wgslsmith_index_u32(1u, 3u)], 4294967295u), false), _wgslsmith_mod_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 3u)], 3u)], 1u, u_input.c), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 3u)], 3u)], u_input.e, 1u)), select(vec3<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30940u, 3u)], 17u)], global1[_wgslsmith_index_u32(u_input.c, 17u)], true), vec3<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 3u)], 3u)], 17u)], true, global1[_wgslsmith_index_u32(31655u, 17u)]), global1[_wgslsmith_index_u32(35469u, 17u)])), min(min(vec3<u32>(1u, global3[_wgslsmith_index_u32(1u, 3u)], 58478u), vec3<u32>(1u, 10937u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, u_input.e, u_input.c)))), ~1u), reverseBits(vec3<u32>(4294967295u, 1u, u_input.c)) >> (vec3<u32>(u_input.c, func_2(), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 3u)]), ~vec3<u32>(126139u, 29940u, u_input.e))) % vec3<u32>(32u)), func_3(true, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(34663u, 20u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 3u)], 20u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 20u)]))), _wgslsmith_sub_vec2_i32(~(global0.zz ^ global0.zz), vec2<i32>(_wgslsmith_clamp_i32(-1i, u_input.a, u_input.a), abs(-27557i))), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e, 0u) & vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.c, 33066u), vec2<u32>(20024u, 0u)), vec2<u32>(1u, 1u) >> (abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u)))));
    let var_1 = vec3<u32>(0u, var_0.x, 1u) >> (~firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(u_input.c, global3[_wgslsmith_index_u32(4294967295u, 3u)]), 67509u, _wgslsmith_div_u32(var_0.x, global3[_wgslsmith_index_u32(var_0.x, 3u)]))) % vec3<u32>(32u));
    global1 = array<bool, 17>();
    global3 = array<u32, 3>();
    return !(!select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], any(vec2<bool>(global1[_wgslsmith_index_u32(45779u, 17u)], false)), global1[_wgslsmith_index_u32(var_1.x, 17u)] | global1[_wgslsmith_index_u32(var_0.x, 17u)]), !(!vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 17u)], true)), vec3<bool>(global1[_wgslsmith_index_u32(5429u, 17u)] & true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~1u, 3u)], 17u)], !((global2[_wgslsmith_index_u32(2292u, 20u)] < -647f) && global1[_wgslsmith_index_u32(1u, 17u)]), select(abs(-11112i), u_input.d, !global1[_wgslsmith_index_u32(u_input.e, 17u)]) != _wgslsmith_div_i32(u_input.a, -4960i)), select(vec3<bool>(any(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(u_input.e, 17u)], global1[_wgslsmith_index_u32(u_input.c, 17u)], global1[_wgslsmith_index_u32(u_input.c, 17u)])), firstLeadingBit(-24699i) > (global0.x >> (global3[_wgslsmith_index_u32(u_input.c, 3u)] % 32u)), true), vec3<bool>((global0.x <= 1i) || global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3[_wgslsmith_index_u32(12508u, 3u)], 0u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 3u)], 3u)], global3[_wgslsmith_index_u32(u_input.c, 3u)], 4294967295u)), 17u)], true, false), !vec3<bool>(!global1[_wgslsmith_index_u32(23511u, 17u)], all(vec3<bool>(false, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 3u)], 3u)], 17u)], global1[_wgslsmith_index_u32(u_input.e, 17u)])), true)), func_1());
    global0 = firstLeadingBit(-vec3<i32>(-62238i, global0.x, -reverseBits(u_input.a)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13169u, 3u)], 3u)], 20u)] * -1000f) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 20u)])) * global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e ^ 15301u, ~4294967295u, func_2()), 20u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e ^ 79784u, 20u)]))), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~1u), 3u)], 20u)]));
    global2 = array<f32, 20>();
    var var_2 = global0.x;
    let var_3 = ~vec3<i32>(global0.x, 2147483647i, -51823i ^ firstTrailingBit(_wgslsmith_mod_i32(-16550i, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.d, _wgslsmith_add_i32(abs(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-6796i, 0i, 40543i, -2147483647i), -vec4<i32>(global0.x, var_3.x, u_input.d, -1i)))), _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(u_input.e, 3u)], 1u), ~_wgslsmith_clamp_vec3_u32(~select(vec3<u32>(22236u, u_input.c, u_input.e), vec3<u32>(global3[_wgslsmith_index_u32(60578u, 3u)], 6496u, global3[_wgslsmith_index_u32(3120u, 3u)]), var_0), abs(~vec3<u32>(0u, global3[_wgslsmith_index_u32(0u, 3u)], 29940u)), ~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 3u)], u_input.c, u_input.c)), _wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1879f - -1257f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(43710u, 20u)]), 1733f))));
}

