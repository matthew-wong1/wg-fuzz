struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(4294967295u, 53742u, 1u, 1u, 1u, 7480u, 3127u, 1u, 1u, 25773u, 1u, 93160u, 1u, 1u, 25868u, 0u, 70101u, 3264u, 31336u);

var<private> global1: Struct_3;

var<private> global2: bool = true;

var<private> global3: array<u32, 15> = array<u32, 15>(1u, 1u, 63482u, 1u, 87359u, 4294967295u, 2031u, 1u, 47620u, 16816u, 0u, 4294967295u, 4294967295u, 4294967295u, 11993u);

var<private> global4: i32 = -1i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<u32> {
    var var_0 = abs(global1.a.a);
    global2 = !(!any(global1.c.wy));
    var var_1 = 1071i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(414f, -1821f)) * _wgslsmith_f_op_f32(1000f - -627f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-318f, -1422f, 1050f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1170f, 1000f, 485f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1109f, -558f, -776f) - vec3<f32>(814f, -169f, 881f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-610f, 435f, 596f) + vec3<f32>(-1260f, 495f, -169f))) - vec3<f32>(_wgslsmith_f_op_f32(abs(-545f)), _wgslsmith_div_f32(-618f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1590f)))) - vec3<f32>(1f, 1f, 1f));
    return ~abs(min(select(vec3<u32>(26341u, 9195u, 4294967295u) ^ vec3<u32>(global0[_wgslsmith_index_u32(4453u, 19u)], global0[_wgslsmith_index_u32(global1.e, 19u)], global0[_wgslsmith_index_u32(97136u, 19u)]), vec3<u32>(4294967295u, u_input.a, 1u), !global1.c.xyx), max(vec3<u32>(u_input.b, global3[_wgslsmith_index_u32(24974u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<u32>(global1.e, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63493u, 19u)], 19u)], 47809u)) & vec3<u32>(4294967295u, 54810u, u_input.b)));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_mod_vec3_u32(func_3(), ~(~(~vec3<u32>(0u, global3[_wgslsmith_index_u32(1u, 15u)], 57995u))));
    let var_1 = Struct_3(global1.a, Struct_1(~firstLeadingBit(-vec4<i32>(2529i, global1.a.b, global1.b.a.x, -24961i)), -1i), select(!global1.c, !select(global1.c, global1.c, false & global1.c.x), global0[_wgslsmith_index_u32(var_0.x, 19u)] != ~(~10048u)), false, var_0.x);
    var var_2 = global1.c;
    var var_3 = Struct_2(~4294967295u, Struct_1(vec4<i32>(71797i, var_1.a.b, -global1.a.b & countOneBits(-1i), (var_1.a.a.x & 0i) >> (32971u % 32u)), var_1.a.a.x));
    let var_4 = ~(~select(max(vec3<i32>(23077i, -1i, -1i), var_3.b.a.zyw << (vec3<u32>(global1.e, var_0.x, var_0.x) % vec3<u32>(32u))), firstTrailingBit(-vec3<i32>(1051i, -2147483647i, 43218i)), select(vec3<bool>(true, var_1.d, var_1.d), vec3<bool>(false, true, true), vec3<bool>(global1.c.x, var_2.x, false))));
    return reverseBits(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(19473u, var_3.a), var_0.zz >> (var_0.yz % vec2<u32>(32u)), ~vec2<u32>(0u, var_0.x)) >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 5074u), var_0.xx, vec2<u32>(1u, var_0.x)) % vec2<u32>(32u))));
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = ~vec3<u32>(arg_0.x, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b, 1u & arg_0.x), 30010u, global1.e), 19u)], ~(~(~arg_0.x)));
    global1 = Struct_3(Struct_1(global1.a.a & global1.a.a, _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(global1.a.a.zxz, global1.a.a.xwx), 0i & global1.a.a.x), 2147483647i, reverseBits(16782i) >> (1u % 32u))), global1.b, global1.c, -2035f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-739f, _wgslsmith_f_op_f32(f32(-1f) * -293f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2080f), -1221f)))), ~4969u);
    global4 = select(_wgslsmith_mod_i32(global1.a.a.x | -5080i, global1.b.b), -2147483647i, any(!global1.c.yy)) >> (func_3().x % 32u);
    global1 = Struct_3(global1.a, Struct_1(-global1.a.a, ~_wgslsmith_div_i32(global1.a.b, 0i)), !global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f) - -1000f) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(-645f, -1004f, true)))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-588f * _wgslsmith_f_op_f32(2012f + -169f)))), ~global3[_wgslsmith_index_u32(~(~16545u) << (_wgslsmith_clamp_u32(22839u, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(87469u, 73537u, u_input.b), var_0)) % 32u), 15u)]);
    var var_1 = Struct_1(~(-_wgslsmith_add_vec4_i32(firstTrailingBit(global1.a.a), _wgslsmith_sub_vec4_i32(global1.a.a, vec4<i32>(-2147483647i, global1.a.a.x, 2147483647i, global1.a.b)))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(35277i & global1.b.b, 1i, global1.a.a.x, firstTrailingBit(2147483647i)), ~(~vec4<i32>(global1.b.b, global1.b.b, global1.b.b, -2147483647i)), global1.d), vec4<i32>(_wgslsmith_sub_i32(-24008i, global1.a.b >> (global3[_wgslsmith_index_u32(3888u, 15u)] % 32u)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-61498i, 3094i), 1i, -50214i), -2147483647i, firstTrailingBit(global1.a.b) ^ firstTrailingBit(0i))));
    return Struct_1(-var_1.a, select(~global1.b.b ^ ~(-2147483647i), 82100i, true && global1.d));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = func_4(select(vec2<u32>(global0[_wgslsmith_index_u32(~abs(global0[_wgslsmith_index_u32(4294967295u, 19u)]), 19u)], 0u), func_2(), !any(!vec2<bool>(false, global1.c.x))));
    global0 = array<u32, 19>();
    var var_1 = _wgslsmith_f_op_f32(-1219f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1000f, global1.d))))));
    var var_2 = ~vec4<u32>(~(~48712u >> (min(u_input.b, 0u) % 32u)), global1.e, u_input.b, global3[_wgslsmith_index_u32(global1.e, 15u)]);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1025f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-912f, -1099f))), -781f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(387f, 620f)))));
    return func_4(var_2.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(81403u, func_1(-1i, ~(-global1.a.a.x) ^ -1i, global1.b, ~35949i));
    global0 = array<u32, 19>();
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(-713f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-527f, -668f)), _wgslsmith_f_op_f32(f32(-1f) * -1593f))), -554f)));
    let var_2 = Struct_2(39451u, func_1(~var_0.b.b, var_0.b.a.x, func_1(abs(-var_0.b.a.x), var_0.b.a.x, func_1(~(-14017i), -2147483647i | var_0.b.b, Struct_1(vec4<i32>(global1.b.b, -73236i, -45699i, 77637i), var_0.b.b), -39516i | var_0.b.a.x), ~max(-2147483647i, -15252i)), global1.a.a.x << (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-vec2<i32>(global1.b.a.x, 25821i) & -var_2.b.a.ww, ~var_0.b.a.yw) | -2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -1007f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -106f), -1162f, any(vec4<bool>(global1.d, false, true, global1.c.x))))) - _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f)))), ~(-vec2<i32>(-1i, _wgslsmith_div_i32(63493i, 17330i))), -func_4(vec2<u32>(var_2.a, global3[_wgslsmith_index_u32(14574u, 15u)]) & vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], 0u)).a.xx);
}

