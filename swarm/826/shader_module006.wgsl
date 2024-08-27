struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 6> = array<u32, 6>(4294967295u, 1u, 4294967295u, 33399u, 7097u, 14147u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<i32> {
    global1 = array<u32, 6>();
    var var_0 = _wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(18699u, 4878u ^ ~arg_0.a.x), 6u)] >> (arg_1 % 32u), arg_1);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(1719f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1746f + _wgslsmith_div_f32(-1401f, -172f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(642f - 550f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) * _wgslsmith_f_op_f32(f32(-1f) * -1362f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-638f)) + _wgslsmith_f_op_f32(-293f * 2552f)))) * _wgslsmith_f_op_f32(f32(-1f) * -907f)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-659f * _wgslsmith_f_op_f32(min(var_1.x, 765f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(round(-834f))))));
    let var_3 = Struct_1(select(arg_2, firstLeadingBit(arg_3.a) ^ vec3<u32>(0u, u_input.b, ~1u), vec3<bool>(arg_1 <= (4294967295u << (global1[_wgslsmith_index_u32(0u, 6u)] % 32u)), select(true, all(vec3<bool>(false, false, true)), true), select(true, true, var_1.x != var_1.x))));
    return vec4<i32>(-25686i, -34641i, u_input.d.x, u_input.d.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>) -> bool {
    let var_0 = 15524i;
    global1 = array<u32, 6>();
    global0 = _wgslsmith_dot_vec4_i32(func_3(Struct_1(vec3<u32>(u_input.a << (u_input.b % 32u), ~u_input.c.x, select(38421u, u_input.b, arg_0.x))), 53301u, vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(40319u, u_input.a, 1u, 4294967295u), vec4<u32>(1u, 1u, u_input.a, global1[_wgslsmith_index_u32(u_input.b, 6u)])), u_input.b, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 1u)), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(14505u, 6u)], u_input.c.x) << (vec3<u32>(0u, global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)]) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], 4294967295u, u_input.a), vec3<u32>(63628u, 28118u, 1u))))), max(abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_0, var_0, u_input.d.x, 37323i) >> (vec4<u32>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 6u)], u_input.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, var_0), vec4<i32>(u_input.d.x, -14186i, 2147483647i, 23334i)))), -select(~vec4<i32>(-2147483647i, u_input.d.x, 0i, var_0), -vec4<i32>(u_input.d.x, -2147483647i, 0i, var_0), true)));
    global0 = func_3(Struct_1(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(2374u, 35242u, 1u), vec3<u32>(4294967295u, u_input.c.x, global1[_wgslsmith_index_u32(40412u, 6u)]), vec3<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)])))), _wgslsmith_div_u32(~u_input.a, global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, 33159u), 1u)), 6u)]), vec3<u32>(74610u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c.x, u_input.b, 4294967295u, 29773u)), ~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], 21463u, 38284u, u_input.a)), reverseBits(39258u)), Struct_1(_wgslsmith_mod_vec3_u32(select(vec3<u32>(global1[_wgslsmith_index_u32(0u, 6u)], u_input.a, global1[_wgslsmith_index_u32(1u, 6u)]), firstLeadingBit(vec3<u32>(15670u, 30548u, 24935u)), true), select(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.b, 6u)], 40304u), ~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(12922u, 6u)], 4294967295u), arg_0.wxz)))).x;
    var var_1 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, u_input.b) & vec4<u32>(4294967295u, 1u, 0u, 5073u), max(vec4<u32>(5472u, 0u, 28295u, 0u), vec4<u32>(1u, u_input.b, u_input.a, u_input.a))), vec4<u32>(_wgslsmith_sub_u32(0u, 0u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(u_input.c.x), 6u)], 6u)], max(global1[_wgslsmith_index_u32(u_input.b, 6u)], u_input.b), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x << (global1[_wgslsmith_index_u32(1u, 6u)] % 32u), 6u)], 6u)])), ~(~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b, ~1u), 6u)]));
    return !arg_0.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(max(_wgslsmith_div_vec3_u32(firstTrailingBit(arg_1.a), select(~vec3<u32>(u_input.b, arg_1.a.x, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 20879u, global1[_wgslsmith_index_u32(u_input.b, 6u)]), vec3<u32>(arg_1.a.x, u_input.b, 4294967295u)), vec3<bool>(arg_0.x, arg_0.x, true))), vec3<u32>(~arg_1.a.x, ~41649u, max(arg_1.a.x, ~arg_1.a.x))));
    var var_1 = ~(~var_0.a.x);
    var var_2 = var_0;
    global0 = _wgslsmith_div_i32(-15605i >> (abs(_wgslsmith_dot_vec2_u32(u_input.c, select(var_0.a.zz, vec2<u32>(0u, var_2.a.x), false))) % 32u), firstLeadingBit(_wgslsmith_sub_i32(firstLeadingBit(u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -2516i, u_input.d.x), -u_input.d))));
    var var_3 = u_input.d.x;
    return firstTrailingBit(u_input.d.x & ~0i);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> vec3<u32> {
    var var_0 = func_4(vec3<bool>(((-229f >= arg_1.x) && (arg_1.x <= arg_1.x)) & func_2(vec4<bool>(true, true, false, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -1000f))), all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), true)), !(!all(vec2<bool>(false, true)))), Struct_1(~(~(~vec3<u32>(global1[_wgslsmith_index_u32(36756u, 6u)], u_input.c.x, global1[_wgslsmith_index_u32(80710u, 6u)])))));
    var_0 = firstLeadingBit(-firstTrailingBit(arg_0));
    let var_1 = _wgslsmith_add_vec2_u32(abs(u_input.c), u_input.c);
    var var_2 = Struct_1(_wgslsmith_mult_vec3_u32(~min(~vec3<u32>(var_1.x, var_1.x, u_input.a), ~vec3<u32>(113825u, var_1.x, 46905u)), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(47836u), 6u)], 6u)], _wgslsmith_clamp_u32(14103u, ~39409u, firstTrailingBit(4294967295u)), _wgslsmith_mult_u32(30080u, global1[_wgslsmith_index_u32(var_1.x, 6u)]) ^ 1u)));
    var_2 = Struct_1(vec3<u32>(27610u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a.x, var_2.a.x, global1[_wgslsmith_index_u32(u_input.a, 6u)]), vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(u_input.c.x, 6u)], 4294967295u)), 30474u), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(var_1.x, 6u)], 1u)));
    return _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(select(var_2.a, vec3<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(28526u, 6u)]), true), _wgslsmith_add_vec3_u32(var_2.a, vec3<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)]))) & var_2.a, ~_wgslsmith_sub_vec3_u32(select(var_2.a, vec3<u32>(global1[_wgslsmith_index_u32(var_1.x, 6u)], var_1.x, 74816u) | var_2.a, vec3<bool>(false, false, false)), ~(vec3<u32>(global1[_wgslsmith_index_u32(1u, 6u)], 1u, 9510u) ^ vec3<u32>(45214u, var_2.a.x, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(324f + -179f) * _wgslsmith_f_op_f32(trunc(1654f))), _wgslsmith_f_op_f32(-1126f - -2181f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -596f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-558f, 185f, -773f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(502f, -1763f, -336f))) * vec3<f32>(_wgslsmith_f_op_f32(-1000f * -1000f), _wgslsmith_f_op_f32(max(810f, 1277f)), _wgslsmith_f_op_f32(f32(-1f) * -544f))))));
    var var_1 = Struct_1((min(func_1(u_input.d.x, vec3<f32>(var_0.x, var_0.x, -815f)), abs(vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36635u, 6u)], 6u)], 0u))) >> (func_1(~u_input.d.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, -1484f)))) % vec3<u32>(32u))) >> (vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.a << (137596u % 32u)), 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)] | (1u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2149u, 6u)], 6u)], 6u)] % 32u)), 4294967295u ^ ~global1[_wgslsmith_index_u32(0u, 6u)]) % vec3<u32>(32u)));
    var_1 = Struct_1(abs(min(vec3<u32>(u_input.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 6u)], 1u), ~var_1.a) << (var_1.a % vec3<u32>(32u))));
    var var_2 = Struct_1(min(~var_1.a << ((vec3<u32>(5934u, global1[_wgslsmith_index_u32(u_input.b, 6u)], 34521u) & vec3<u32>(u_input.b, 0u, 1u)) % vec3<u32>(32u)), var_1.a));
    global1 = array<u32, 6>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-275f, _wgslsmith_f_op_f32(-var_0.x)), -390f)));
    let x = u_input.a;
    s_output = StorageBuffer(~max(-(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, u_input.d.x) | vec4<i32>(68057i, 0i, u_input.d.x, 2147483647i)), vec4<i32>(u_input.d.x, 0i, u_input.d.x, -9453i) << (_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], u_input.c.x, u_input.c.x, var_2.a.x), vec4<u32>(64869u, 4294967295u, var_2.a.x, u_input.a)) % vec4<u32>(32u))), select(vec2<i32>(-1i, u_input.d.x), firstTrailingBit((u_input.d.zz & vec2<i32>(u_input.d.x, u_input.d.x)) << (vec2<u32>(0u, var_1.a.x) % vec2<u32>(32u))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true), true))), -((i32(-1i) * -9778i) << (countOneBits(0u) % 32u)), u_input.d.zy >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u) >> (var_2.a.yz % vec2<u32>(32u)), min(u_input.c, var_2.a.zz), ~var_1.a.zz) % vec2<u32>(32u)), vec4<i32>(u_input.d.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, u_input.d.x), reverseBits(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 7704i))), _wgslsmith_div_i32(14308i, ~u_input.d.x)), _wgslsmith_add_i32(select(u_input.d.x, -16282i, true) << ((var_1.a.x >> (var_2.a.x % 32u)) % 32u), ~15652i), reverseBits(abs(-u_input.d.x))));
}

