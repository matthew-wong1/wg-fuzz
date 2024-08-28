struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: array<u32, 16>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<i32>) -> i32 {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(!(_wgslsmith_f_op_f32(-arg_1.d) < _wgslsmith_f_op_f32(-411f * arg_2.d)), true, false), !vec3<bool>(false, any(vec2<bool>(false, false)), true));
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-5080i, u_input.b.x), vec2<i32>(2147483647i, 2147483647i)), 1i), u_input.c), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -arg_2.b.c.yxw, min(firstLeadingBit(vec3<i32>(-1i, arg_2.b.c.x, arg_1.b.c.x)), ~arg_1.b.e.xwy | vec3<i32>(arg_1.b.c.x, 2147483647i, arg_2.b.d.x))), vec3<i32>(3760i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.b.d.x, u_input.c), reverseBits(vec2<i32>(-77834i, 40171i))), arg_1.b.e.x), 6169i));
    let var_2 = 14770i;
    var var_3 = Struct_1(-2147483647i, vec4<u32>(1u, global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(countOneBits(~0u), 16u)]), 16u)], ~abs(_wgslsmith_sub_u32(1u, u_input.d.x)), _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_2.c, 11195u) >> (~1u % 32u), reverseBits(abs(1u)))), vec4<i32>(abs(1i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(max(u_input.d.x, 4294967295u), 31u)], reverseBits(arg_1.b.d.x)), _wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(43690u, 31u)], global0[_wgslsmith_index_u32(46067u, 31u)]), _wgslsmith_mult_i32(u_input.c, countOneBits(13621i))), _wgslsmith_sub_i32(-20786i, _wgslsmith_clamp_i32(-10365i, abs(37336i), _wgslsmith_div_i32(10293i, arg_2.b.e.x))), _wgslsmith_div_i32(arg_1.b.d.x, arg_3.x)), vec2<i32>(-1i, firstTrailingBit(-_wgslsmith_dot_vec3_i32(arg_3, arg_3))), arg_2.b.c >> (((vec4<u32>(u_input.d.x, 4294967295u, 1u, 13813u) | ~arg_2.b.b) & vec4<u32>(arg_0.x << (13390u % 32u), ~4294967295u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, arg_2.c, global1[_wgslsmith_index_u32(5881u, 16u)]), vec3<u32>(arg_0.x, u_input.d.x, u_input.d.x)))) % vec4<u32>(32u)));
    let var_4 = _wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_1.d, 1263f))))))));
    return -reverseBits(arg_1.b.e.x);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    var var_0 = Struct_1(-max(_wgslsmith_add_i32(func_3(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], u_input.d.x), Struct_2(0u, Struct_1(2147483647i, vec4<u32>(u_input.d.x, u_input.d.x, arg_0, u_input.d.x), vec4<i32>(global0[_wgslsmith_index_u32(37459u, 31u)], -1i, global0[_wgslsmith_index_u32(arg_0, 31u)], 4371i), vec2<i32>(u_input.b.x, u_input.b.x), u_input.a), 0u, arg_1.x), Struct_2(arg_0, Struct_1(-14509i, vec4<u32>(global1[_wgslsmith_index_u32(2532u, 16u)], 14533u, 1u, 56484u), vec4<i32>(2147483647i, u_input.b.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.d.x, 31u)]), u_input.a.zw, u_input.a), arg_0, -780f), vec3<i32>(u_input.c, u_input.b.x, -10841i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-71617i, u_input.a.x, global0[_wgslsmith_index_u32(35094u, 31u)], u_input.a.x), vec4<i32>(-5262i, u_input.b.x, -41177i, -1i))), ~(~u_input.c)), vec4<u32>(arg_0, 25572u, abs(_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_sub_u32(91254u, arg_0))), 0u), _wgslsmith_add_vec4_i32(~u_input.a, u_input.a), ~_wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(-16424i), firstTrailingBit(12612i)), vec2<i32>(-2147483647i, func_3(u_input.d.xz, Struct_2(global1[_wgslsmith_index_u32(77627u, 16u)], Struct_1(u_input.a.x, vec4<u32>(65442u, u_input.d.x, global1[_wgslsmith_index_u32(89065u, 16u)], u_input.d.x), vec4<i32>(u_input.b.x, 0i, u_input.a.x, global0[_wgslsmith_index_u32(1u, 31u)]), vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(26514u, 31u)]), u_input.a), 1u, arg_1.x), Struct_2(arg_0, Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], vec4<u32>(global1[_wgslsmith_index_u32(0u, 16u)], 4294967295u, 4294967295u, 5221u), u_input.a, u_input.a.zz, u_input.a), 0u, 918f), vec3<i32>(0i, 1i, global0[_wgslsmith_index_u32(37628u, 31u)])))), vec4<i32>(firstLeadingBit(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(~u_input.d.x, 31u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 16u)], 31u)], global0[_wgslsmith_index_u32(16980u, 31u)] | 1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, -22244i), select(vec2<i32>(57358i, u_input.c), -vec2<i32>(-23664i, -33220i), all(vec2<bool>(false, true)))), max(-2147483647i, (global0[_wgslsmith_index_u32(u_input.d.x, 31u)] << (arg_0 % 32u)) << (~5148u % 32u)), -u_input.c | _wgslsmith_sub_i32(firstLeadingBit(0i), ~62881i)));
    return arg_1.x;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: vec4<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], vec2<f32>(986f, -1206f))), _wgslsmith_div_f32(-797f, -1000f), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(select(-1946f, -2479f, false))), vec4<f32>(_wgslsmith_f_op_f32(floor(-707f)), -374f, _wgslsmith_f_op_f32(floor(-386f)), 817f), vec4<bool>(arg_1.x, arg_1.x || true, true, false)))));
    var var_1 = Struct_2(~global1[_wgslsmith_index_u32(~45016u, 16u)] & _wgslsmith_mult_u32(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.d.x, 16u)]), u_input.d.x), Struct_1(func_3(~_wgslsmith_sub_vec2_u32(vec2<u32>(8118u, u_input.d.x), vec2<u32>(0u, 11842u)), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45792u, 16u)], 16u)]), u_input.d.yzx), 16u)], Struct_1(-22064i, u_input.d, u_input.a, arg_3.zw, vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(18042u, 31u)], 6610i, global0[_wgslsmith_index_u32(76040u, 31u)])), global1[_wgslsmith_index_u32(arg_0, 16u)], var_0.x), Struct_2(abs(1u), Struct_1(-11675i, u_input.d, arg_3, vec2<i32>(-2147483647i, -2147483647i), vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 31u)], 2147483647i, arg_3.x)), 6458u, -1294f), u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.d.x, ~1u, 0u, 3849u), reverseBits(u_input.d)), u_input.a, vec2<i32>(0i, 35182i), u_input.a), 23408u ^ arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-714f)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d - -967f), -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1587f) + _wgslsmith_f_op_f32(round(622f))), _wgslsmith_f_op_f32(min(-960f, -803f))))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = Struct_1(_wgslsmith_clamp_i32(u_input.c, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 0i, u_input.b.x, -2147483647i), func_1(~u_input.d.x, vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.d.x, 31u)], 1i, -25976i))), -countOneBits(u_input.c)), countOneBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 16u)], 923u, 0u, 46269u) >> (_wgslsmith_div_vec4_u32(u_input.d, u_input.d) % vec4<u32>(32u)), u_input.d)), u_input.a, min(-firstTrailingBit(~u_input.a.xx), vec2<i32>(_wgslsmith_sub_i32(func_1(global1[_wgslsmith_index_u32(1u, 16u)], vec3<bool>(false, false, false), vec4<bool>(true, false, true, false), u_input.a).x, global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 31u)]), 1i)), vec4<i32>(9651i, func_3(~vec2<u32>(u_input.d.x, 1u), Struct_2(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.d.x, 16u)], u_input.d.x), Struct_1(u_input.a.x, u_input.d, vec4<i32>(19459i, 0i, 31696i, -1i), vec2<i32>(u_input.c, -1i), u_input.a), _wgslsmith_mod_u32(15597u, 1u), _wgslsmith_div_f32(-1018f, -581f)), Struct_2(~75724u, Struct_1(25904i, u_input.d, vec4<i32>(32950i, 24630i, 0i, -21816i), vec2<i32>(-1i, u_input.b.x), u_input.a), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], _wgslsmith_f_op_f32(f32(-1f) * -2055f)), u_input.b & vec3<i32>(1i, -2147483647i, -2147483647i)), max(reverseBits(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), global0[_wgslsmith_index_u32(4294967295u, 31u)]), 2147483647i));
    let var_2 = !(!vec3<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))));
    var var_3 = select(_wgslsmith_mult_vec2_i32(var_1.e.wy, select(vec2<i32>(0i, ~1i), _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 31u)])), vec2<i32>(var_1.a, 13562i)), var_2.x && true)), vec2<i32>(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_1.e.xy, vec2<i32>(-1i, 3131i)), global0[_wgslsmith_index_u32(~u_input.d.x, 31u)]), ~func_1(1u, !var_2, !vec4<bool>(var_2.x, var_2.x, var_2.x, true), _wgslsmith_div_vec4_i32(vec4<i32>(-16018i, -41605i, var_1.a, u_input.a.x), u_input.a)).x), true);
    let var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-976f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1004f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(274f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-938f - -718f)), true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1041f, 1114f, 1131f)))), vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_div_f32(-660f, 137f), 1366f), any(vec3<bool>(false, var_2.x, var_2.x)))))), !(!(!vec3<bool>(var_2.x, var_2.x, false)))));
    let var_5 = Struct_2(_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(u_input.d.xzx, vec3<u32>(u_input.d.x, 35678u, u_input.d.x)), max(vec3<u32>(235u, 4294967295u, u_input.d.x), vec3<u32>(u_input.d.x, 338u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69040u, 16u)], 16u)], 16u)]))), 16u)], _wgslsmith_mod_u32(var_1.b.x, 0u), ~var_1.b.x), Struct_1(var_1.d.x, ~var_1.b, ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c.x, -1i, 12583i, -2147483647i), max(vec4<i32>(86597i, 38989i, 0i, var_3.x), var_1.e)), vec2<i32>(var_1.d.x, 2147483647i), ~(~(~vec4<i32>(var_3.x, 0i, 28938i, var_3.x)))), ~countOneBits(15447u), 1030f);
    let x = u_input.a;
    s_output = StorageBuffer(~(var_1.b.x | 56081u), countOneBits(-1i), 508f);
}

