struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: vec2<f32>;

var<private> global2: array<f32, 22>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: f32) -> vec2<i32> {
    let var_0 = 4294967295u >= u_input.c.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_0 + arg_0);
    global2 = array<f32, 22>();
    global2 = array<f32, 22>();
    let var_2 = Struct_1(!vec4<bool>(select(all(vec4<bool>(false, true, true, var_0)), true & var_0, false), select(u_input.b > u_input.b, var_0 | var_0, all(vec2<bool>(true, var_0))), !any(vec4<bool>(var_0, false, var_0, var_0)), all(!vec4<bool>(var_0, false, false, false))), firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.c.x) & min(vec2<u32>(725u, 10921u), vec2<u32>(0u, 0u)), vec2<u32>(4294967295u, _wgslsmith_sub_u32(4294967295u, arg_1)))));
    return ~vec2<i32>(select(-62497i, 9870i, !(var_2.a.x & false)), _wgslsmith_mult_i32(~5256i, ~u_input.a.x) >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.c.x, arg_1), ~var_2.b) % 32u));
}

fn func_3() -> f32 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(9135u, select(_wgslsmith_mult_u32(u_input.c.x, u_input.b), 1884u, true), ~28472u, select(u_input.b, u_input.c.x, false)), reverseBits(vec4<u32>(~u_input.c.x, ~21474u, 1u, u_input.c.x & 4294967295u)));
    var var_1 = -1370f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-893f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-193f - global1.x) + global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.c.x, 22u)])), _wgslsmith_f_op_f32(f32(-1f) * -373f))), true)) + global2[_wgslsmith_index_u32(u_input.c.x, 22u)]));
    global2 = array<f32, 22>();
    let var_2 = Struct_1(!select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), var_0.x);
    return _wgslsmith_f_op_f32(abs(-474f));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 21u)];
    var var_2 = Struct_2(~_wgslsmith_add_vec4_i32(vec4<i32>(-u_input.d, select(65654i, 0i, var_1.a.x), countOneBits(u_input.a.x), u_input.a.x), ~select(u_input.a, u_input.a, false)), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 0u, var_1.b), vec4<u32>(31268u, u_input.c.x, var_1.b, 0u))), select(vec4<u32>(84430u, var_1.b, u_input.b, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b, u_input.b, 39281u, 44170u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, 0u)), vec4<bool>(true, true, false, var_1.a.x)) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(1159u, var_1.b, u_input.b, var_1.b), vec4<u32>(0u, 47872u, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, var_1.b, 3928u)) ^ vec4<u32>(u_input.b, u_input.b, 9252u, var_1.b)) % vec4<u32>(32u))), Struct_1(select(vec4<bool>(var_1.a.x, any(vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x)), false, all(var_1.a.zy)), vec4<bool>(!var_1.a.x, var_1.a.x, var_1.a.x && var_1.a.x, !var_1.a.x), select(true || var_1.a.x, true, all(var_1.a.wwz))), var_1.b), false, false);
    var var_3 = global0[_wgslsmith_index_u32(var_1.b, 21u)];
    var_1 = Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 22u)] == _wgslsmith_f_op_f32(f32(-1f) * -1377f), any(select(var_1.a, var_1.a, false)) && all(select(var_2.c.a.zwx, vec3<bool>(var_2.d, var_2.c.a.x, false), var_3.a.zxz)), max(37545i, reverseBits(u_input.d)) != (func_1(vec2<f32>(333f, -553f), var_1.b, global2[_wgslsmith_index_u32(u_input.c.x, 22u)]).x & -29596i), true), ~_wgslsmith_sub_u32(u_input.b, abs(44247u)));
    return var_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = firstLeadingBit(countOneBits(19480u));
    global0 = array<Struct_1, 21>();
    let var_1 = arg_0.c;
    global2 = array<f32, 22>();
    global0 = array<Struct_1, 21>();
    return Struct_2(u_input.a, ~(~_wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(arg_2.b, arg_3))), func_2(), !all(!arg_2.a), arg_0.d);
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> StorageBuffer {
    global2 = array<f32, 22>();
    global2 = array<f32, 22>();
    global2 = array<f32, 22>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], 1063f, 1348f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -368f, -424f) - vec3<f32>(352f, global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(28822u, 22u)])))) + vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.c.x, 22u)])), _wgslsmith_f_op_f32(f32(-1f) * -1058f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(234f, arg_0, -172f)))) * vec3<f32>(_wgslsmith_f_op_f32(-global1.x), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 22u)], global2[_wgslsmith_index_u32(firstLeadingBit(arg_1.c.b), 22u)]))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-2925f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(trunc(var_0.x)), true)), 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 22u)]) * _wgslsmith_f_op_f32(floor(arg_0))), 708f)) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 22u)]))), _wgslsmith_f_op_f32(step(908f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -322f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    return StorageBuffer(2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -215f), u_input.a.xzy, countOneBits(u_input.a.x) ^ (i32(-1i) * -37648i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-1622i);
    let var_1 = select(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, false), !vec4<bool>(true, true, true, all(vec3<bool>(true, true, true))), all(vec3<bool>(false, true, true))), !select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true), false), any(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)] == global2[_wgslsmith_index_u32(22933u, 22u)], true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true))));
    let var_2 = ~func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1000f)))), ~u_input.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -409f), _wgslsmith_div_f32(247f, 1916f), false)), -115f));
    let var_3 = _wgslsmith_add_i32(-40038i & _wgslsmith_dot_vec4_i32(vec4<i32>(-12062i, i32(-1i) * -1i, var_2.x, -51374i), select(vec4<i32>(u_input.a.x, -11036i, var_0, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(23791i, var_2.x, -35341i, 1i), vec4<i32>(-1i, 0i, -1i, 2147483647i)), var_1.x | var_1.x)), min(firstLeadingBit(~0i), var_2.x));
    var var_4 = Struct_1(var_1, u_input.c.x);
    let var_5 = var_4.a;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(13456u, 19386u, u_input.b)), 22u)]), func_4(Struct_2(max(-u_input.a, vec4<i32>(63821i, var_2.x, u_input.d, 0i)), 0u, global0[_wgslsmith_index_u32(5389u, 21u)], !(!var_5.x), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 22u)] * global1.x) >= _wgslsmith_f_op_f32(sign(global1.x))), _wgslsmith_add_vec3_u32(max(abs(vec3<u32>(var_4.b, 1594u, var_4.b)), ~vec3<u32>(0u, 4294967295u, 11546u)), u_input.c), func_2(), min(10981u, 1u)));
}

