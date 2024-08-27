struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = 39163u;
    var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-168f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(sign(-870f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(242f, 1098f)))))));
    var var_2 = Struct_1(u_input.b, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b.x, arg_0.x, -u_input.b.x, -arg_0.x), abs(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x)) ^ vec4<i32>(-16299i, u_input.b.x, -79774i, -13121i)) != -20929i);
    var_0 = u_input.a.x;
    return arg_0.x;
}

fn func_2() -> f32 {
    var var_0 = true;
    var var_1 = Struct_2(~_wgslsmith_div_vec3_u32(vec3<u32>(abs(u_input.a.x), 1u, u_input.a.x), vec3<u32>(~65921u, u_input.a.x, 28263u)), vec3<bool>(true, true, true), Struct_1(vec2<i32>(_wgslsmith_clamp_i32(countOneBits(u_input.b.x), u_input.b.x, _wgslsmith_mult_i32(-5204i, u_input.b.x)), -2147483647i), u_input.b.x, true), _wgslsmith_clamp_i32(abs(countOneBits(u_input.b.x)), -select(-1i, -1i, true), -53584i) | -u_input.b.x, Struct_1(vec2<i32>(max(u_input.b.x, i32(-1i) * -31797i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -22779i, -1i), vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i) ^ vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), -u_input.b.x, true));
    var var_2 = !vec4<bool>(true, !(!var_1.c.c), true, true);
    let var_3 = u_input.b.x;
    var_1 = Struct_2(u_input.a, !var_1.b, var_1.c, _wgslsmith_mod_i32(firstLeadingBit(var_1.d), var_1.e.a.x), Struct_1(var_1.c.a, -func_3(vec3<i32>(-1i, var_1.c.b, 60680i)) << (~reverseBits(u_input.a.x) % 32u), false));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1307f, -179f)) * 1396f)) + -753f), _wgslsmith_f_op_f32(f32(-1f) * -742f));
}

fn func_1() -> bool {
    var var_0 = select(!select(vec3<bool>(u_input.a.x >= 4294967295u, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)), vec3<bool>(false, false, true), false);
    let var_1 = u_input.a.x ^ 51405u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1462f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(312f, -127f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -751f) + _wgslsmith_f_op_f32(func_2()))))), 1021f);
    var var_3 = Struct_3(1u, 4294967295u, Struct_1(~vec2<i32>(u_input.b.x, u_input.b.x) & u_input.b, 1i, var_0.x));
    let var_4 = reverseBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(-6431i, -1i, var_3.c.a.x, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -29923i, 1i, -35846i), vec4<i32>(-2147483647i, -13890i, 1i, u_input.b.x) >> (vec4<u32>(var_1, var_1, 76348u, 1u) % vec4<u32>(32u))))) ^ 17864i;
    return (_wgslsmith_add_i32(-var_4, reverseBits(var_4) >> (_wgslsmith_div_u32(var_3.b, var_1) % 32u)) & ~u_input.b.x) >= ~min(2147483647i, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!(func_1() | true)));
    let var_1 = ~(~20353u);
    let var_2 = any(vec4<bool>(any(vec3<bool>(true, any(vec3<bool>(true, true, false)), true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !any(vec4<bool>(true, true, true, true)), func_1() & true));
    let var_3 = u_input.a;
    let var_4 = ~1u;
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-258f * 397f), -868f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(276f, 773f), _wgslsmith_div_vec2_f32(vec2<f32>(1059f, 986f), vec2<f32>(-1011f, 123f)))))) - vec2<f32>(_wgslsmith_f_op_f32(-2626f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -931f))), -304f));
    var var_6 = Struct_1(~(~(vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, -1i))), _wgslsmith_div_i32(~(-31571i), func_3(min(vec3<i32>(1i, u_input.b.x, u_input.b.x), vec3<i32>(-3888i, 75101i, 35625i)))) | firstLeadingBit(max(u_input.b.x, -1i)), false);
    var_0 = any(select(!vec3<bool>(true, any(vec3<bool>(true, true, true)), !var_2), select(vec3<bool>(true, var_6.c, true), !vec3<bool>(var_2, true, var_6.c), select(select(vec3<bool>(var_2, true, var_2), vec3<bool>(true, var_6.c, var_2), vec3<bool>(false, var_6.c, var_2)), vec3<bool>(var_2, var_2, true), select(vec3<bool>(true, var_2, false), vec3<bool>(var_2, var_6.c, true), vec3<bool>(true, false, true)))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(9902i, -1i, 2147483647i), vec3<i32>(-41802i, u_input.b.x, var_6.b)), ~vec3<i32>(5318i, var_6.b, 1i)) > 1i));
    var var_7 = all(vec3<bool>(!(!(false && var_6.c)), !any(vec2<bool>(var_6.c, var_2)) & true, !any(!vec4<bool>(var_6.c, var_6.c, false, var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_5.x, var_5.x), vec2<f32>(var_5.x, var_5.x))))))));
}

