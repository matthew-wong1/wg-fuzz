struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30>;

var<private> global1: u32;

var<private> global2: bool = true;

var<private> global3: array<vec3<u32>, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec3<u32> {
    global3 = array<vec3<u32>, 1>();
    var var_0 = _wgslsmith_f_op_f32(273f - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1081f * _wgslsmith_f_op_f32(f32(-1f) * -350f)), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -988f)))))));
    var var_1 = ~countOneBits(50274u);
    var var_2 = global0[_wgslsmith_index_u32(~1u, 30u)];
    var var_3 = 4294967295u;
    return global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(9130u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(13549u, 50422u)), vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), reverseBits(vec2<u32>(1u, 1u))))), 1u)];
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1304f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1405f))) - -1907f);
    let var_1 = Struct_2(arg_0, func_2());
    var var_2 = 1u;
    var var_3 = Struct_2(_wgslsmith_mod_u32(~min(func_2().x, 4294967295u), ~reverseBits(18472u)), ~(var_1.b & countOneBits(~global3[_wgslsmith_index_u32(1u, 1u)])));
    let var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1654f + -570f)), 556f, -352f, -119f)))));
    return Struct_1(_wgslsmith_mult_u32((_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 9969u), vec2<u32>(20997u, 55172u)) << ((arg_0 >> (1u % 32u)) % 32u)) << (~var_3.a % 32u), 61021u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_4.yy, vec2<f32>(_wgslsmith_f_op_f32(711f * 219f), _wgslsmith_f_op_f32(-var_4.x))))));
}

fn func_3(arg_0: Struct_3) -> Struct_1 {
    let var_0 = vec2<bool>(!all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), false);
    global2 = true;
    var var_1 = u_input.a;
    var var_2 = 71715i;
    global0 = array<vec4<bool>, 30>();
    return Struct_1(~1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.zz - vec2<f32>(_wgslsmith_f_op_f32(select(295f, arg_0.a.b.x, var_0.x)), _wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.b.x)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(809f, _wgslsmith_f_op_f32(floor(-799f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(102f, arg_0.b.x)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<vec4<bool>, 30>();
    var var_0 = vec3<f32>(_wgslsmith_div_f32(-851f, _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(-arg_1.b.x), 959f);
    global1 = arg_1.a;
    global3 = array<vec3<u32>, 1>();
    let var_1 = Struct_3(func_3(Struct_3(Struct_1(_wgslsmith_mod_u32(0u, arg_1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, -792f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1745f, 424f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1922f, _wgslsmith_f_op_f32(arg_1.b.x - 1000f)))));
    return vec2<bool>(false, arg_0);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec2<bool>) -> Struct_2 {
    global2 = false | any(select(!vec3<bool>(true, arg_1.x, arg_3.x), vec3<bool>(true, any(arg_1.zy), arg_1.x), all(select(arg_1.zy, arg_1.yz, true))));
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(func_1(_wgslsmith_div_u32(~74665u, select(4294967295u, 4294967295u, arg_1.x))).b.x))));
    global0 = array<vec4<bool>, 30>();
    global0 = array<vec4<bool>, 30>();
    global1 = ~(30303u >> (1u % 32u));
    return Struct_2(max(19408u, 1u), vec3<u32>(_wgslsmith_clamp_u32(abs(6847u), ~1u, ~(63194u << (0u % 32u))), countOneBits(0u), min(0u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(211f + -1728f))), 937f, 1807f), !select(vec3<bool>(true, select(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, true, false)), true, true)), !(1f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(755f, -1019f, false)))), func_4(true, func_3(Struct_3(func_1(4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1449f, 3200f, 967f) + vec3<f32>(862f, -515f, 150f))))));
    var var_1 = ~countOneBits(global3[_wgslsmith_index_u32(~(~(~var_0.b.x)), 1u)]);
    var var_2 = vec4<i32>(77293i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x & -25604i, 1i, -8549i, -u_input.a.x)), firstLeadingBit(vec4<i32>(2147483647i >> (var_0.a % 32u), ~u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -18239i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))))), u_input.a.x, ~2147483647i);
    var var_3 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~56652u, ~11544u, var_0.a), ~(global3[_wgslsmith_index_u32(4294967295u, 1u)] ^ vec3<u32>(var_0.a, 0u, var_1.x))), ~(~0u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-554f, _wgslsmith_f_op_f32(f32(-1f) * -207f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -206f))))));
    var var_4 = Struct_3(Struct_1(~(~(var_1.x << (160u % 32u))), _wgslsmith_f_op_vec2_f32(exp2(var_3.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.b.x, 624f, var_3.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, -637f, var_3.b.x))) + vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_div_f32(1050f, var_3.b.x)))));
    var var_5 = select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(66845u, var_3.a, var_0.a, 43541u)), vec4<u32>(var_3.a ^ 36492u, ~4812u, var_1.x, min(var_1.x, 0u))) >> (((var_0.a & var_4.a.a) ^ _wgslsmith_div_u32(var_0.b.x, ~54015u)) % 32u), 30u)], !vec4<bool>(false, true, any(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false)), any(!global0[_wgslsmith_index_u32(76942u, 30u)]), true, ~var_2.x <= u_input.a.x), -2147483647i > var_2.x));
    global0 = array<vec4<bool>, 30>();
    let var_6 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(max(var_3.b.x, -1334f)), var_4.a.b.x)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 939f, var_4.a.b.x))))), var_5.wwz, var_5.x, vec2<bool>(var_5.x || (u_input.a.x == 2147483647i), -23419i > var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.b.xz);
}

