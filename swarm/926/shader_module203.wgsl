struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 30>;

var<private> global1: array<Struct_4, 15>;

var<private> global2: i32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = ~firstTrailingBit(~(~u_input.b.x));
    var var_1 = global0[_wgslsmith_index_u32(~(~firstLeadingBit(~u_input.a)), 30u)];
    var var_2 = vec4<bool>(!(!(any(vec3<bool>(var_1.x, var_1.x, false)) || false)), all(select(vec4<bool>(false, !arg_0, true, var_1.x), select(vec4<bool>(false, false, true, var_1.x), vec4<bool>(var_1.x, false, var_1.x, arg_0), !vec4<bool>(true, var_1.x, var_1.x, var_1.x)), vec4<bool>(all(vec4<bool>(true, var_1.x, arg_0, var_1.x)), true, 0u == u_input.a, !arg_0))), all(vec4<bool>(true, true, all(!var_1.zz), true)), var_1.x);
    var var_3 = !all(select(vec4<bool>(false, false, any(vec3<bool>(true, true, false)), any(var_2.www)), select(!vec4<bool>(var_1.x, var_1.x, true, arg_0), !vec4<bool>(arg_0, false, false, var_1.x), false), vec4<bool>(true, true, var_1.x, true)));
    global2 = -2147483647i;
    return ~(~(firstLeadingBit(~u_input.a) & u_input.b.x));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_1 = -34848i;
    var var_2 = Struct_5(Struct_1(vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.b.x, u_input.b.x), _wgslsmith_div_u32(u_input.b.x, 4294967295u)) >> ((~vec3<u32>(u_input.a, 15601u, 0u) >> (vec3<u32>(u_input.b.x, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<i32>(-(i32(-1i) * -1i), -1i)), Struct_4(countOneBits(max(vec2<i32>(u_input.c, u_input.c), vec2<i32>(61026i, u_input.c) << (u_input.b % vec2<u32>(32u)))), Struct_1(vec3<u32>(u_input.b.x, func_3(true), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(9622u, u_input.b.x))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 0i), _wgslsmith_sub_vec2_i32(vec2<i32>(-53140i, u_input.c), vec2<i32>(-10608i, u_input.c)))), -153i <= min(u_input.c >> (u_input.a % 32u), min(0i, u_input.c)), 1070f, Struct_2(Struct_1(vec3<u32>(28342u, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(0i, -2147483647i))), vec3<i32>(max(u_input.c, -2147483647i), -36133i, ~u_input.c))), vec2<u32>(~(~u_input.b.x), u_input.a) ^ vec2<u32>(u_input.a, countOneBits(0u & u_input.a)));
    var var_3 = !(!select(vec2<bool>(var_2.b.c & false, var_2.b.c), !(!vec2<bool>(false, var_2.b.c)), select(!var_2.b.c, true, any(vec2<bool>(var_2.b.c, false)))));
    let var_4 = vec2<bool>(all(select(!(!vec4<bool>(var_2.b.c, false, var_2.b.c, var_3.x)), !select(vec4<bool>(false, var_2.b.c, true, true), vec4<bool>(false, var_3.x, var_3.x, true), var_3.x), !(!vec4<bool>(false, true, false, var_3.x)))), var_2.b.c);
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(min(firstTrailingBit(vec3<u32>(64262u, 33326u, u_input.b.x)), vec3<u32>(~u_input.a, _wgslsmith_div_u32(16494u, 9922u), u_input.a << (var_2.c.x % 32u))), var_2.a.a), ~var_2.a.a);
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(219f, -690f) * vec2<f32>(arg_0, arg_0)))), vec2<f32>(-1213f, arg_0))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-862f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), select(vec2<bool>(false, true), vec2<bool>(false, true), true)))))));
    global2 = u_input.c;
    var var_1 = Struct_3(func_2(), all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))) | false, u_input.c, vec2<i32>(-u_input.c, select(select(-u_input.c, 0i, true), ~1i, !(0u <= u_input.b.x))));
    global0 = array<vec3<bool>, 30>();
    let var_2 = u_input.c;
    return _wgslsmith_div_i32(~firstLeadingBit(-3698i), _wgslsmith_clamp_i32(var_2, _wgslsmith_div_i32(max(var_1.c, ~var_2), _wgslsmith_dot_vec2_i32(max(var_1.d, vec2<i32>(var_2, 0i)), vec2<i32>(var_1.d.x, -3742i) | vec2<i32>(var_1.c, u_input.c))), var_1.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.c, -31283i, u_input.c ^ u_input.c)), vec3<i32>(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2547f, 439f)))), countOneBits(-2147483647i), -(~abs(u_input.c))));
    global0 = array<vec3<bool>, 30>();
    global1 = array<Struct_4, 15>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1795f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1196f)))))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1034f - -998f), _wgslsmith_f_op_f32(step(-1101f, 559f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-224f * 2315f)) + -713f));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.xx)))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-960f, var_1.x), _wgslsmith_f_op_f32(floor(-1418f)), true)), var_1.x), true)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_1.x, -829f)))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(trunc(306f))), all(vec4<bool>(true, true, false, false)))), var_1.x)));
    var var_3 = 319f;
    var var_4 = Struct_3(u_input.a, all(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)))), ~(-u_input.c), _wgslsmith_add_vec2_i32(vec2<i32>(select(-15022i, -1i, true), _wgslsmith_mult_i32(u_input.c, u_input.c) | _wgslsmith_mod_i32(var_0, var_0)), abs(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(-17165i, var_0)), vec2<i32>(u_input.c, u_input.c) & vec2<i32>(var_0, 63476i)))));
    var_3 = var_2.x;
    global1 = array<Struct_4, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1, var_4.c);
}

