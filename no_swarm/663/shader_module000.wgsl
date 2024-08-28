struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(42458u, 1u, 4294967295u, 0u, 1u, 42575u, 65311u, 4294967295u, 2215u);

var<private> global1: vec4<u32>;

var<private> global2: i32 = 14592i;

var<private> global3: u32 = 1u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<u32>) -> i32 {
    var var_0 = vec4<f32>(1f, 1f, 1f, 1f);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(739f)), 2293f, var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.zxy), _wgslsmith_f_op_vec3_f32(-var_0.zzw))))) + _wgslsmith_f_op_vec3_f32(var_0.wwy + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(exp2(var_0.wyw)), -1450f > var_0.x)) + var_0.yzy)));
    let var_2 = Struct_4(!select(vec4<bool>(true, any(vec2<bool>(false, true)), all(vec3<bool>(true, true, false)), select(true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true)), !any(vec2<bool>(false, true))), -_wgslsmith_mult_i32(max(23522i >> (arg_1.x % 32u), ~2147483647i), 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(856f, var_1.x))), 320f)), _wgslsmith_f_op_f32(sign(1135f))), var_0.x, u_input.a.yy & ~reverseBits(~vec2<u32>(4294967295u, 4294967295u)));
    let var_3 = Struct_3(!(!vec3<bool>(true, var_2.a.x, var_2.a.x)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(reverseBits(1i), var_2.b)), ~vec2<i32>(_wgslsmith_div_i32(6890i, var_2.b), -1i), ~_wgslsmith_mod_vec2_i32(min(vec2<i32>(1i, -30355i), vec2<i32>(var_2.b, -39889i)), -vec2<i32>(var_2.b, var_2.b))), vec2<f32>(var_2.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.x)), -1000f))))));
    return -1i;
}

fn func_2() -> i32 {
    var var_0 = Struct_4(!vec4<bool>(all(vec2<bool>(true, false)), !any(vec2<bool>(false, false)), true, !all(vec4<bool>(false, true, true, true))), -func_3(global1.x, abs(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 53724u), vec3<u32>(0u, global0[_wgslsmith_index_u32(2100u, 9u)], u_input.a.x))), vec4<u32>(4294967295u, min(47428u, u_input.a.x), global1.x, global0[_wgslsmith_index_u32(~4294967295u, 9u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1257f, 428f)) * _wgslsmith_f_op_f32(floor(-638f))))) - -397f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-288f)) * _wgslsmith_f_op_f32(f32(-1f) * -485f)))), select(vec2<u32>(~86976u, 66108u), global1.wy, vec2<bool>(false, any(vec2<bool>(true, true)))));
    let var_1 = Struct_5(vec4<bool>(var_0.a.x, true, var_0.a.x, !any(!vec4<bool>(false, var_0.a.x, false, var_0.a.x))));
    var_0 = Struct_4(var_1.a, _wgslsmith_mult_i32(-1i, 13497i), 444f, -354f, vec2<u32>(~var_0.e.x, 1u));
    var var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b ^ var_0.b, firstTrailingBit(var_0.b)) & select(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b, 16800i), vec2<i32>(-2147483647i, -28556i)), vec2<i32>(-50766i, var_0.b) << (vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 21272u) % vec2<u32>(32u)), var_1.a.xx), ~vec2<i32>(1i, 1i), firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.b, 10983i), vec2<i32>(2147483647i, -1i))) << (vec2<u32>(u_input.a.x, ~u_input.a.x) % vec2<u32>(32u))), abs(-vec2<i32>(var_0.b, -339i)));
    let var_3 = Struct_2(vec4<u32>(global0[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, global1.x) << (~var_0.e.x % 32u)), 9u)], ~(global1.x >> (firstLeadingBit(var_0.e.x) % 32u)), ~4294967295u, u_input.a.x), -(~abs(-vec4<i32>(9871i, 29396i, var_0.b, -2147483647i))), var_0.a.xxx, firstLeadingBit(vec3<i32>(~(-2147483647i), var_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_2.x), vec2<i32>(-1i, var_0.b))) & vec3<i32>(_wgslsmith_mult_i32(var_0.b, 1i), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, 2147483647i), vec2<i32>(17535i, -2147483647i)))), var_0.b);
    return 18535i;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: u32) -> i32 {
    var var_0 = Struct_2(u_input.a, vec4<i32>(-21198i, arg_1, 1i, -func_2()), vec3<bool>(countOneBits(4294967295u) >= global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 4294967295u), _wgslsmith_div_vec3_u32(u_input.a.xwy, global1.yzw)), 9u)], true, arg_0.x), ~vec3<i32>(2147483647i, _wgslsmith_clamp_i32(-82272i, 1i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-25757i, -14546i, -37149i, arg_1), abs(vec4<i32>(-40900i, 2147483647i, arg_1, arg_1)))), _wgslsmith_sub_i32(arg_1, -arg_1 >> (abs(17588u) % 32u)));
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, ~(~1u), max(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~global1.x, 9u)], 4294967295u), 4294967295u)), firstLeadingBit(global1.yzy));
    let var_2 = Struct_2(_wgslsmith_mult_vec4_u32(~(~u_input.a << (~var_0.a % vec4<u32>(32u))), vec4<u32>(0u, var_1.x, _wgslsmith_mult_u32(global1.x, _wgslsmith_add_u32(u_input.a.x, 0u)), ~7999u >> (u_input.a.x % 32u))), var_0.b, select(vec3<bool>(var_0.c.x, !(!arg_0.x), true), !vec3<bool>(!var_0.c.x, true, true), var_0.c.x), var_0.b.wwz, min(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(6196i, var_0.e, -17516i, var_0.d.x)), var_0.b), _wgslsmith_mult_i32(arg_1, func_3(select(12321u, 0u, false), firstTrailingBit(vec3<u32>(var_0.a.x, var_0.a.x, global0[_wgslsmith_index_u32(52700u, 9u)])), ~u_input.a))));
    var var_3 = !(!select(vec4<bool>(var_2.c.x, true, false, arg_0.x), !select(vec4<bool>(arg_0.x, true, var_0.c.x, true), vec4<bool>(false, var_0.c.x, arg_0.x, var_2.c.x), vec4<bool>(arg_0.x, var_0.c.x, false, false)), false));
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-129f))));
    return var_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-_wgslsmith_add_i32(-2147483647i, abs(12146i)), ~countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(18977i, -2147483647i), vec2<i32>(0i, -18781i)))), func_1(select(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), vec2<bool>(true, true), false), 5519i, _wgslsmith_mult_u32(min(firstTrailingBit(global0[_wgslsmith_index_u32(1u, 9u)]), ~global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), 73406u)));
}

