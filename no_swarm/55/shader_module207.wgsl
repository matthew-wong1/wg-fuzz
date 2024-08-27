struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 6052i;

var<private> global1: array<f32, 17> = array<f32, 17>(445f, -574f, -483f, -522f, 1496f, -658f, -1194f, 359f, -351f, 1294f, 1055f, 1216f, -571f, 675f, -492f, 389f, -325f);

var<private> global2: u32 = 54076u;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(1099f - _wgslsmith_f_op_f32(select(-958f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-843f + 270f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(32734u, 17u)], arg_2.d)))), any(!vec4<bool>(false, arg_2.d, arg_2.d, false)))));
    let var_1 = -(~u_input.e.x);
    let var_2 = arg_2;
    global2 = arg_0.x;
    global1 = array<f32, 17>();
    return -(~(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1, var_1, var_1), vec4<i32>(var_2.a.x, u_input.e.x, -18183i, 2147483647i)))));
}

fn func_3() -> u32 {
    var var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 3218u), u_input.b.wx) == 1u), vec2<bool>(!any(vec2<bool>(false, false)), true), vec2<bool>(true, true));
    return 0u;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> u32 {
    global1 = array<f32, 17>();
    var var_0 = max(_wgslsmith_mult_i32(max(func_2(~vec4<u32>(arg_0.a, 55975u, arg_0.a, 6873u), Struct_1(0u), Struct_3(vec2<i32>(arg_1, arg_1), -605f, Struct_2(arg_0.a), true), _wgslsmith_div_u32(0u, arg_0.a)), 1i), -(~u_input.e.x)), u_input.e.x);
    global0 = u_input.e.x;
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global1[_wgslsmith_index_u32(46473u, 17u)]) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-521f, global1[_wgslsmith_index_u32(arg_0.a, 17u)]) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 17u)] - 590f))) <= -1481f, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 17u)]) * -1190f))) > -665f);
    global0 = ~arg_1;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(func_3(), firstTrailingBit(arg_0.a)), u_input.a ^ 1u), ~countOneBits(~vec2<u32>(97731u, arg_0.a))) >> (1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(true, true));
    var var_1 = u_input.b.yz;
    let var_2 = _wgslsmith_mult_u32(1u, var_1.x);
    var var_3 = firstLeadingBit(u_input.b.yzw) << ((_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(min(u_input.b.wwy, u_input.b.xww), vec3<u32>(u_input.b.x, var_2, 25064u) >> (vec3<u32>(80275u, 28545u, 0u) % vec3<u32>(32u))), firstTrailingBit(~u_input.b.xyw), ~u_input.b.wxx) ^ ~u_input.b.zww) % vec3<u32>(32u));
    let var_4 = Struct_1((firstLeadingBit(func_1(Struct_2(u_input.a), u_input.e.x)) >> (~(~var_1.x) % 32u)) | var_1.x);
    let var_5 = vec2<bool>(all(vec3<bool>(true, true, true)), !(!(-2147483647i >= _wgslsmith_mult_i32(u_input.e.x, u_input.e.x))));
    let var_6 = Struct_2(var_1.x);
    var var_7 = select(~(~vec3<u32>(u_input.d << (var_6.a % 32u), 10059u, var_2)), ~(~firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_6.a, var_3.x), vec3<u32>(var_1.x, var_3.x, 6870u), vec3<u32>(20348u, 1u, var_1.x)))), select(!vec3<bool>(true, any(vec4<bool>(false, var_5.x, var_5.x, false)), true), vec3<bool>(var_4.a >= var_2, any(!vec3<bool>(var_5.x, var_5.x, false)), false), !(!vec3<bool>(var_5.x, false, var_5.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~reverseBits(~(-11149i))), vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(select(u_input.b, u_input.b, vec4<bool>(var_5.x, true, true, var_5.x))), ~_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(var_4.a, u_input.a, 1u, 8337u), vec4<u32>(var_4.a, var_7.x, 4294967295u, 1u))), min(var_7.x, 4294967295u)), ~vec2<i32>(24211i, 10514i), u_input.e.x, _wgslsmith_clamp_vec3_i32(abs(_wgslsmith_mod_vec3_i32(u_input.e, vec3<i32>(-15954i, 19075i, -10889i))), u_input.e ^ u_input.e, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, 3761i, u_input.e.x), abs(u_input.e))) ^ u_input.e);
}

