struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(52569u, 53671u), vec2<u32>(2367u, 29292u), vec2<u32>(64665u, 22424u), vec2<u32>(1u, 1u), vec2<u32>(0u, 48965u), vec2<u32>(17415u, 4294967295u), vec2<u32>(16966u, 0u), vec2<u32>(95561u, 41476u), vec2<u32>(4294967295u, 2660u), vec2<u32>(0u, 22798u), vec2<u32>(4294967295u, 32736u), vec2<u32>(72265u, 1u), vec2<u32>(1u, 35361u), vec2<u32>(0u, 0u), vec2<u32>(0u, 40896u), vec2<u32>(43557u, 4294967295u), vec2<u32>(74054u, 1u), vec2<u32>(38489u, 25013u), vec2<u32>(17419u, 0u), vec2<u32>(1u, 13817u), vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 10168u), vec2<u32>(415u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 18383u), vec2<u32>(44623u, 93021u), vec2<u32>(0u, 0u), vec2<u32>(0u, 0u));

var<private> global1: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1() -> u32 {
    return 1u;
}

fn func_3(arg_0: vec2<i32>) -> vec2<f32> {
    global0 = array<vec2<u32>, 31>();
    let var_0 = firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(u_input.b.x, u_input.d), _wgslsmith_mult_i32(arg_0.x, 2147483647i) | arg_0.x, ~arg_0.x | (-50987i | u_input.b.x)), -47443i, u_input.b.x));
    var var_1 = u_input.c;
    let var_2 = 2147483647i;
    var var_3 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(global1.b.x, _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(global1.a.x, global1.b.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global1.a.xwz, global1.b), global1.a.yzz)) & u_input.a, 97846u);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-621f, _wgslsmith_f_op_f32(1514f * 1000f))))), vec2<f32>(-685f, 703f));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(abs(_wgslsmith_mod_vec2_i32(u_input.b, u_input.b)))).x;
    let var_1 = u_input.b.x;
    var var_2 = -abs(u_input.c);
    let var_3 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(arg_0.a, global1.a), ~(~(~vec4<u32>(4294967295u, 23781u, 34249u, 72486u)))), _wgslsmith_sub_u32(~_wgslsmith_add_u32(~global1.b.x, u_input.a | 0u), ~4294967295u), true && !any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1110f, arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -283f)))))));
    var var_4 = Struct_2((select(~vec4<u32>(arg_2.b.x, 72323u, arg_2.a.x, arg_0.b.x), var_3.a, !var_3.c) << (_wgslsmith_mult_vec4_u32(~var_3.a, vec4<u32>(var_3.b, 63515u, arg_2.a.x, 44317u)) % vec4<u32>(32u))) | vec4<u32>(_wgslsmith_sub_u32(arg_0.a.x & 4294967295u, 2590u), ~arg_2.a.x, 0u, var_3.a.x), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(31221u, 20970u, arg_0.b.x)), arg_2.a.zzw) << (arg_0.b % vec3<u32>(32u)));
    return arg_1.x >= arg_1.x;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = func_4(Struct_2(vec4<u32>(~4294967295u, ~(~arg_3.b), ~(~u_input.a), 30942u), vec3<u32>(~(arg_0 & arg_0), 21911u, 27892u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(u_input.c.x, -2147483647i)))), Struct_2(global1.a, countOneBits(~_wgslsmith_clamp_vec3_u32(arg_3.a.zyw, vec3<u32>(13276u, arg_3.b, u_input.a), vec3<u32>(arg_3.b, arg_3.a.x, arg_3.a.x)))));
    global1 = Struct_2(vec4<u32>(u_input.a, arg_3.a.x, 4294967295u, 33745u), global1.b);
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~u_input.c, vec3<i32>(u_input.d, u_input.d, 0i) >> (vec3<u32>(1u, global1.a.x, 26168u) % vec3<u32>(32u))), vec3<i32>(1i, -15159i, ~u_input.c.x)) >> (countOneBits(~global1.b) % vec3<u32>(32u)), abs(vec3<i32>(u_input.d, -23184i, -reverseBits(u_input.c.x))));
    global0 = array<vec2<u32>, 31>();
    let var_2 = Struct_2(arg_3.a, global1.b);
    return StorageBuffer(1670f, 76521u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let x = u_input.a;
    s_output = func_2(_wgslsmith_mod_u32(_wgslsmith_div_u32(func_1(), countOneBits(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(global1.a.x, 31u)], vec2<u32>(4294967295u, global1.a.x)))), 1u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(464f * -1598f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-730f - -246f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -811f))))), !var_0, Struct_1(global1.a, ~1u, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f) - _wgslsmith_f_op_f32(1353f * 424f)))));
}

