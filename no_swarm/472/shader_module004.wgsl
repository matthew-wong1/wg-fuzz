struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-899f, 190f, -1019f, -243f, -148f, 628f);

var<private> global1: array<u32, 18>;

var<private> global2: array<vec3<f32>, 16>;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(726u, 65564u, 71336u));

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>) -> vec2<f32> {
    let var_0 = abs(select(-vec4<i32>(_wgslsmith_sub_i32(0i, u_input.c), u_input.c, u_input.c, select(-2147483647i, 28448i, global4.x)), vec4<i32>(u_input.c, 2147483647i, (u_input.d ^ 37675i) | u_input.c, ~(-u_input.c)), vec4<bool>(global4.x | global4.x, false, !global4.x & (25982u < global3.a.x), arg_0.x == -1286f)));
    global1 = array<u32, 18>();
    let var_1 = _wgslsmith_div_i32(var_0.x, var_0.x);
    global3 = Struct_1(~(~abs(vec3<u32>(u_input.a, 4294967295u, 93431u))));
    var var_2 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(1i, var_0.x), var_1, ~var_1), vec3<i32>(~var_1, _wgslsmith_dot_vec3_i32(var_0.xzw, _wgslsmith_mult_vec3_i32(var_0.yzz, vec3<i32>(2147483647i, var_0.x, var_0.x))), var_1));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c + vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x)))), arg_0.c, vec2<bool>(global4.x, false)));
    let var_1 = abs(arg_1.a);
    var var_2 = arg_0.d;
    let var_3 = !select(vec4<bool>(global4.x, all(vec4<bool>(global4.x, global4.x, false, global4.x)), any(!vec4<bool>(global4.x, true, false, global4.x)), global4.x), select(!vec4<bool>(true, true, global4.x, global4.x), vec4<bool>(any(vec3<bool>(false, false, global4.x)), false, 14238i < arg_0.e.x, false), select(!vec4<bool>(global4.x, false, global4.x, false), vec4<bool>(false, global4.x, true, global4.x), true)), vec4<bool>(any(!vec2<bool>(global4.x, global4.x)), global4.x, false, u_input.d > 1i));
    let var_4 = Struct_3(arg_0.a, select(abs(_wgslsmith_mod_vec2_i32(arg_0.a, -vec2<i32>(-2147483647i, -56424i))), vec2<i32>(arg_0.a.x, reverseBits(select(-16014i, arg_0.a.x, false))), ~(-1045i) != -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.e.x, -1i), arg_0.e)), var_0, Struct_2(-var_2.a), vec2<i32>(reverseBits(select(u_input.d, max(var_2.a, 1i), global4.x)), -1i));
    return firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a, -2147483647i, arg_0.d.a, var_2.a) | vec4<i32>(var_4.e.x, 13427i, var_4.e.x, 2799i), select(vec4<i32>(u_input.c, u_input.c, var_4.b.x, -54830i), vec4<i32>(2147483647i, arg_0.a.x, var_2.a, arg_0.d.a), global4.x), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.e.x, 41929i, arg_0.e.x, 27451i), vec4<i32>(arg_0.e.x, -1i, -9059i, 746i))), min(_wgslsmith_sub_vec4_i32(vec4<i32>(42674i, 0i, -1i, u_input.c), vec4<i32>(u_input.c, arg_0.e.x, var_2.a, 38638i)), vec4<i32>(var_4.e.x, arg_0.b.x, arg_0.b.x, -27109i))), reverseBits(max(firstLeadingBit(vec4<i32>(0i, arg_0.a.x, u_input.d, var_2.a)), vec4<i32>(-3025i, var_2.a, -2147483647i, u_input.c) | vec4<i32>(36224i, var_2.a, -2147483647i, u_input.c)))));
}

fn func_2() -> i32 {
    global3 = Struct_1(_wgslsmith_mult_vec3_u32(global3.a, ~_wgslsmith_clamp_vec3_u32(global3.a, reverseBits(global3.a), global3.a)));
    let var_0 = Struct_2(11782i);
    global0 = array<f32, 6>();
    var var_1 = func_4(Struct_3(~vec2<i32>(2147483647i, _wgslsmith_div_i32(u_input.d, 22006i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c | var_0.a, -32543i), vec2<i32>(-50370i, i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(37941u, 18u)], 5717u, 8298u, global3.a.x), vec4<u32>(22460u, 43164u, 54063u, u_input.a)), 16u)])))), Struct_2(-2147483647i), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, var_0.a)), firstLeadingBit(~vec2<i32>(u_input.d, var_0.a)))), Struct_1(vec3<u32>(firstLeadingBit(0u), _wgslsmith_sub_u32(_wgslsmith_add_u32(global3.a.x, global3.a.x), 4294967295u), ~(~0u))), ~vec4<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global3.a.x, 18u)], 0u), 0u, 2681u, global1[_wgslsmith_index_u32(0u, 18u)]));
    global3 = Struct_1(vec3<u32>(37393u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 25472u), vec2<u32>(global1[_wgslsmith_index_u32(1u, 18u)], global3.a.x)), ~23649u) ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(global3.a.x, 18u)]), 18u)], 18u)], 16840u));
    return ~_wgslsmith_mod_i32(var_0.a, -u_input.c);
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<f32>(global0[_wgslsmith_index_u32(0u, 6u)], 362f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 18u)], 6u)], 1701f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1594f)))));
    global0 = array<f32, 6>();
    let var_1 = reverseBits(func_2() << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 1u, 51392u, u_input.a), vec4<u32>(46775u, 61599u, 56652u, 1u), vec4<bool>(global4.x, global4.x, false, global4.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global3.a.x, 18u)], global3.a.x, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)]), vec4<u32>(0u, global1[_wgslsmith_index_u32(2444u, 18u)], u_input.a, 1u))) % 32u)) > -18840i;
    let var_2 = -vec4<i32>(u_input.d, max(_wgslsmith_div_i32(6427i, -u_input.c), firstTrailingBit(abs(u_input.d))), u_input.d, u_input.c);
    var var_3 = Struct_2(var_2.x);
    return Struct_2(i32(-1i) * -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = min(_wgslsmith_clamp_vec2_u32(~firstTrailingBit(global3.a.xy), global3.a.yz, global3.a.zy), vec2<u32>(min(u_input.a, 9576u) >> (global3.a.x % 32u), u_input.b));
    global2 = array<vec3<f32>, 16>();
    var_1 = global3.a.yz;
    let var_2 = Struct_1(~min(global3.a, global3.a));
    let var_3 = !(!(!(!(0i <= u_input.d))));
    let var_4 = ~(vec3<i32>(select(-u_input.c, -31145i, var_3), var_0.a, var_0.a << (1u % 32u)) >> (vec3<u32>(_wgslsmith_clamp_u32(var_2.a.x, abs(u_input.b), global1[_wgslsmith_index_u32(~100033u, 18u)]), ~50272u, ~1u) % vec3<u32>(32u)));
    var var_5 = vec2<bool>(true, var_3);
    let var_6 = _wgslsmith_add_u32(0u, ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(15016u, 18u)], 7177u, 277u) & vec4<u32>(var_6, 1u, var_1.x, 10863u)), vec4<u32>(4294967295u, 1u, global3.a.x, 4294967295u)), 6u)]);
}

