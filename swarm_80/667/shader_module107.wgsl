struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: array<vec4<bool>, 10>;

var<private> global2: array<f32, 1> = array<f32, 1>(295f);

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: Struct_2 = Struct_2(Struct_1(4294967295u, vec3<i32>(1i, 7084i, 4576i), -54483i, 0i), true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec3<u32>) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(~(~global4.a.a << (~17721u % 32u)), vec3<i32>(0i, ~u_input.e, -1i) | vec3<i32>(_wgslsmith_div_i32(arg_0.x, 71989i), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.a.d, arg_2.a.b.x), global4.a.b.xy), i32(-1i) * -64685i), ~_wgslsmith_add_i32(arg_2.c, global4.a.b.x), arg_2.c), arg_3.x > u_input.b);
    global3 = select(vec2<bool>(!(!any(vec2<bool>(false, global4.b))), false), vec2<bool>(!arg_2.d, arg_2.d), select(vec2<bool>(!var_0.b | (global2[_wgslsmith_index_u32(var_0.a.a, 1u)] > -116f), !(!global3.x)), select(vec2<bool>(global4.b | var_0.b, select(true, global4.b, var_0.b)), !vec2<bool>(false, var_0.b), !select(vec2<bool>(true, false), vec2<bool>(false, true), arg_2.d)), !global4.b));
    global0 = array<f32, 32>();
    var var_1 = var_0.a.a;
    let var_2 = true;
    return ~arg_3 << (~(vec3<u32>(global4.a.a, arg_2.a.a, 74327u) ^ ((vec3<u32>(global4.a.a, 9161u, arg_2.a.a) | arg_3) | _wgslsmith_mod_vec3_u32(arg_3, vec3<u32>(var_0.a.a, global4.a.a, arg_2.a.a)))) % vec3<u32>(32u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>) -> u32 {
    global3 = select(!select(vec2<bool>(all(vec4<bool>(false, true, true, arg_1.d)), global4.b), select(select(vec2<bool>(true, global4.b), vec2<bool>(arg_1.d, arg_1.d), vec2<bool>(false, arg_1.d)), !vec2<bool>(global4.b, global4.b), vec2<bool>(arg_1.d, false)), vec2<bool>(false, global3.x)), !select(vec2<bool>(true, all(vec3<bool>(false, global3.x, false))), vec2<bool>(true | global3.x, all(vec3<bool>(false, true, false))), !select(vec2<bool>(global4.b, global4.b), vec2<bool>(true, global4.b), false)), !select(select(select(vec2<bool>(global4.b, false), vec2<bool>(global4.b, global4.b), vec2<bool>(true, true)), select(vec2<bool>(true, global3.x), vec2<bool>(global4.b, true), vec2<bool>(arg_1.d, global3.x)), !vec2<bool>(global3.x, global4.b)), select(vec2<bool>(global3.x, false), select(vec2<bool>(global3.x, false), vec2<bool>(arg_1.d, global3.x), global3.x), all(vec2<bool>(arg_1.d, global4.b))), !any(global1[_wgslsmith_index_u32(25364u, 10u)])));
    var var_0 = Struct_3(Struct_1(min(abs(arg_0.a), u_input.a.x | u_input.a.x) << (~_wgslsmith_sub_u32(32498u, u_input.a.x) % 32u), ~_wgslsmith_add_vec3_i32(arg_1.a.b, vec3<i32>(2147483647i, arg_0.b.x, arg_1.c)) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, global4.a.a, 1u), select(vec3<u32>(4294967295u, arg_0.a, 26598u), vec3<u32>(0u, arg_0.a, 63163u), global4.b), select(vec3<u32>(91116u, 59892u, 40486u), vec3<u32>(0u, 43303u, 4294967295u), vec3<bool>(false, true, false))) % vec3<u32>(32u)), 7873i, _wgslsmith_div_i32(~(-1i), -u_input.c.x | ~0i)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1727f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(864f, -492f, true))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), arg_2.x), arg_2.xw))), 1i, !any(select(vec2<bool>(true, true), !vec2<bool>(true, global3.x), vec2<bool>(false, global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~2520u, 32u)]))));
    global2 = array<f32, 1>();
    global4 = Struct_2(Struct_1(1u, firstTrailingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, -2147483647i, 6645i), var_0.a.b), select(var_0.a.b, arg_0.b, var_0.d))), u_input.e, _wgslsmith_sub_i32(abs(global4.a.d), -14574i) & _wgslsmith_div_i32(arg_1.a.d, -32569i)), global4.b);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 1u)] * global2[_wgslsmith_index_u32(72406u, 1u)])) * arg_2.x), -1205f)), arg_1.e));
    return firstLeadingBit(1u);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: bool, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 1u)] * 198f), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 1u)], -1000f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(arg_1, 32u)]))))))));
    let var_1 = Struct_2(global4.a, !all(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(arg_3, false), global4.b), true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_0);
    let var_3 = 3953u;
    let var_4 = ~_wgslsmith_mod_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 69173u, global4.a.a), vec3<u32>(var_3, var_1.a.a, 1u), vec3<u32>(var_1.a.a, 45314u, 4294967295u))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, global4.a.a, u_input.b), vec3<u32>(var_3, 0u, 22707u), vec3<u32>(arg_1, arg_1, 27912u)), vec3<u32>(4294967295u, 4294967295u, global4.a.a))) << (reverseBits(_wgslsmith_clamp_vec3_u32(select(func_2(var_1.a.b.xy, vec4<f32>(-2397f, -2836f, -813f, -1069f), Struct_3(global4.a, var_0, u_input.c.x, true, global2[_wgslsmith_index_u32(var_3, 1u)]), vec3<u32>(var_3, var_1.a.a, 8454u)), vec3<u32>(var_1.a.a, 0u, u_input.a.x), arg_3), vec3<u32>(1u, ~var_1.a.a, func_3(Struct_1(0u, u_input.c.wyx, 1i, var_1.a.b.x), Struct_3(Struct_1(17503u, vec3<i32>(global4.a.b.x, u_input.c.x, 0i), -2147483647i, -2147483647i), var_0, 2147483647i, arg_3, var_0.x), vec4<f32>(618f, 365f, 240f, -1318f))), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.a, arg_1, 8761u), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)) << (vec3<u32>(var_1.a.a, 1u, global4.a.a) % vec3<u32>(32u)))) % vec3<u32>(32u));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (8203u << (func_1(vec3<i32>(-2147483647i, -4621i, -u_input.e), 0u, !(!global4.b), all(global1[_wgslsmith_index_u32(u_input.b, 10u)])) % 32u)) & global4.a.a;
    let var_1 = global4.a;
    var var_2 = u_input.e;
    global3 = select(vec2<bool>(global4.b, any(select(vec3<bool>(false, false, global4.b), !vec3<bool>(false, global3.x, true), true))), !select(!vec2<bool>(false, global4.b), !select(vec2<bool>(global4.b, global3.x), vec2<bool>(true, true), vec2<bool>(global4.b, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global4.b, true)), select(vec2<bool>(global3.x, true), vec2<bool>(global3.x, global4.b), vec2<bool>(true, global4.b)), true || global4.b)), vec2<bool>(!((24167u >> (global4.a.a % 32u)) > var_1.a), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 32u)])) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 32u)] - 326f), -839f)));
    global1 = array<vec4<bool>, 10>();
    var var_3 = global1[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, global4.a.a), 1u, max(global4.a.a, 1u)) & u_input.b) | _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_1.a ^ u_input.a.x, abs(1u)) & u_input.a.x, (max(global4.a.a, var_1.a) ^ global4.a.a) >> (33490u % 32u), var_1.a), 10u)];
    var var_4 = Struct_2(Struct_1(var_1.a, reverseBits(vec3<i32>(var_1.b.x >> (4294967295u % 32u), -var_1.c, 0i)), u_input.d, var_1.d), true);
    var var_5 = select(vec4<bool>(!(!select(global4.b, var_4.b, var_4.b)), true, !((var_1.c ^ var_1.c) == ~var_1.c), global4.b & var_3.x), select(global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_add_u32(52689u, 0u)), 10u)], !(!global1[_wgslsmith_index_u32(1u, 10u)]), global1[_wgslsmith_index_u32(var_1.a, 10u)]), vec4<bool>(false, !(_wgslsmith_mod_u32(var_1.a, 0u) <= countOneBits(0u)), false, global4.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec3<i32>(_wgslsmith_sub_i32(u_input.e, 0i), _wgslsmith_mod_i32(var_4.a.b.x, 0i), ~1i)), 0u, global2[_wgslsmith_index_u32(~(~48526u), 1u)], _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1925f, global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(1u, 1u)]), vec3<f32>(-1492f, -306f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]))), vec3<f32>(global2[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(var_4.a.a, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)]), vec3<bool>(false, true, var_4.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(20564u, 1u)], -582f, global0[_wgslsmith_index_u32(28837u, 32u)]) - vec3<f32>(global0[_wgslsmith_index_u32(global4.a.a, 32u)], global2[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(46757u, 32u)])) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-672f, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], -1000f))))), !var_3.x)));
}

