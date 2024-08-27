struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14>;

var<private> global1: bool = false;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: i32) -> Struct_4 {
    global0 = array<vec2<i32>, 14>();
    var var_0 = Struct_3(!vec4<bool>(all(vec3<bool>(false, true, true)), all(vec3<bool>(true, false, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), all(vec3<bool>(true, true, true))));
    let var_1 = Struct_3(var_0.a);
    let var_2 = (arg_2 << (~37594u % 32u)) & 2147483647i;
    let var_3 = Struct_1(~abs(vec3<u32>(~1u, 1u, _wgslsmith_mod_u32(12663u, 71964u))), countOneBits(u_input.a.xx), vec4<bool>(var_1.a.x, true, true, !var_1.a.x));
    return Struct_4(!vec4<bool>(true, -var_3.b.x < 2147483647i, (false & var_0.a.x) | true, all(vec3<bool>(var_3.c.x, false, var_0.a.x))));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec3<f32> {
    var var_0 = 2147483647i;
    let var_1 = arg_0;
    var var_2 = 237f;
    var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)))))), var_1));
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -442f), _wgslsmith_f_op_f32(var_1 + arg_0))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 - 1325f))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1096f))), any(vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_f32(-var_1))));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1380f, 1120f, -124f), vec3<f32>(arg_0, var_3.x, var_3.x))))))));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: bool, arg_3: Struct_5) -> vec3<u32> {
    let var_0 = vec2<u32>(arg_3.e, ~(~1u));
    let var_1 = 1i;
    var var_2 = _wgslsmith_clamp_vec2_i32((~vec2<i32>(u_input.a.x, var_1) << (var_0 % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-91184i, 2147483647i), -2147483647i), _wgslsmith_mod_vec2_i32(~vec2<i32>(arg_3.a.b.x, -26086i), ~vec2<i32>(-38008i, 2147483647i))), vec2<i32>(0i, _wgslsmith_add_i32(1i | u_input.a.x, _wgslsmith_div_i32(firstTrailingBit(var_1), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, arg_3.d.x), arg_3.d)))), vec2<i32>(-1i, ~0i));
    var var_3 = !arg_3.a.c;
    var var_4 = select(select(arg_0.a.wy, vec2<bool>(var_3.x, _wgslsmith_f_op_f32(step(arg_3.c.x, -1632f)) <= _wgslsmith_f_op_f32(sign(arg_1))), !vec2<bool>(any(var_3.wz), !arg_0.a.x)), vec2<bool>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.x, 35572u, var_0.x), min(var_0.x, arg_3.e)) < ~_wgslsmith_sub_u32(var_0.x, 4294967295u), arg_2), all(vec2<bool>(false | any(arg_3.a.c.yxy), true)));
    return arg_3.a.a;
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1973f, 1f, true)) - _wgslsmith_f_op_f32(trunc(-517f))), ~(-abs(34995i)), 2147483647i | _wgslsmith_sub_i32(arg_0.b.x, _wgslsmith_clamp_i32(-18377i, arg_0.b.x, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), arg_0.c.x, Struct_5(arg_0, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1701f)), -1222f, arg_0.c.x)), arg_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -138f) * _wgslsmith_f_op_f32(f32(-1f) * -2116f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-404f)), -1106f)), 1122f, 1f), (vec3<i32>(-2147483647i, 1i, u_input.a.x) & countOneBits(u_input.a)) & ~vec3<i32>(2147483647i, -1i, arg_0.b.x), 16186u));
    global1 = !select(true, any(vec4<bool>(arg_0.c.x, true, func_2(646f, arg_0.b.x, 2147483647i).a.x, u_input.a.x != -9911i)), any(vec3<bool>(arg_0.a.x != 1u, arg_0.c.x, true)));
    global0 = array<vec2<i32>, 14>();
    var var_1 = arg_0.c;
    global0 = array<vec2<i32>, 14>();
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-983f, 616f, arg_0.c.x)))))), 9009i, u_input.a.x).a.zy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !all(select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), func_1(Struct_1(vec3<u32>(16343u, 1u, 41087u), global0[_wgslsmith_index_u32(56878u, 14u)], vec4<bool>(false, false, true, false)))), vec2<bool>(true, true), func_2(-677f, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, -7704i, u_input.a.x)), ~u_input.a.x).a.zx));
    var var_0 = Struct_3(func_2(-1283f, _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), vec4<i32>(u_input.a.x, 0i, 12999i, 58564i), vec4<i32>(u_input.a.x, 2147483647i, -36650i, 2147483647i)), ~vec4<i32>(73811i, 0i, u_input.a.x, -18611i)), u_input.a.x).a);
    var var_1 = Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(1948u, ~_wgslsmith_mod_u32(38294u, 49091u), ~1u)), ((reverseBits(vec2<i32>(2147483647i, -26233i)) & abs(global0[_wgslsmith_index_u32(1u, 14u)])) ^ (vec2<i32>(-1i) * -vec2<i32>(-59222i, 78287i))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), func_2(1457f, -u_input.a.x, u_input.a.x).a);
    var var_2 = (~_wgslsmith_add_u32(firstLeadingBit(16770u), 1u) >> (var_1.a.x % 32u)) == 36193u;
    var var_3 = Struct_2(var_1.a.x & 7928u, var_1.a.x);
    var var_4 = !(!func_2(-347f, abs(-40584i), u_input.a.x).a.ww);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + _wgslsmith_f_op_f32(abs(1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(165f * -659f), _wgslsmith_f_op_f32(min(-624f, 894f))) + _wgslsmith_div_f32(-490f, _wgslsmith_f_op_f32(f32(-1f) * -912f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2028f * -199f) + 1131f) - 1711f)), var_1.a.xz, ~abs(1u));
}

