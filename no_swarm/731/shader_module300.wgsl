struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(true, false, false, true, true, false, false, false, false, true, false, false, true, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, true, true, false);

var<private> global1: array<f32, 31> = array<f32, 31>(1505f, 410f, -500f, -431f, -773f, -549f, -1300f, -264f, -1000f, -1964f, -1066f, -145f, 103f, 165f, 2381f, 1790f, 473f, -357f, -258f, -1713f, 3257f, -302f, -112f, 2253f, -1566f, 532f, 128f, 706f, 1388f, -1059f, 546f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    return Struct_3(Struct_1(-7188i, u_input.a), -u_input.d);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_4 {
    var var_0 = min(-22876i, -1i);
    global0 = array<bool, 31>();
    var_0 = -1i;
    global0 = array<bool, 31>();
    global1 = array<f32, 31>();
    return Struct_4(global0[_wgslsmith_index_u32(~4294967295u, 31u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) * 1000f) * _wgslsmith_f_op_f32(floor(1471f))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_1 {
    global1 = array<f32, 31>();
    var var_0 = Struct_1(_wgslsmith_sub_i32(~u_input.b, _wgslsmith_sub_i32(max(-1i, arg_0.a.a), firstTrailingBit(-arg_0.b))), _wgslsmith_mult_u32(select(arg_0.a.b, arg_1.x, false), _wgslsmith_dot_vec3_u32(~(~arg_1), arg_1 >> (arg_1 % vec3<u32>(32u)))));
    var var_1 = arg_0.a;
    var var_2 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 31u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(arg_0.a.b, 31u)])))) + global1[_wgslsmith_index_u32(~abs(~1u), 31u)]), -vec2<i32>(~(-2147483647i), -2147483647i), Struct_3(Struct_1(var_1.a, 91038u), reverseBits(var_1.a)), func_2(-1894f));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(210f, global1[_wgslsmith_index_u32(0u, 31u)])))));
    return Struct_1(var_1.a, _wgslsmith_mod_u32(var_0.b, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, firstLeadingBit(arg_1.xy)), vec2<u32>(625u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4329u, u_input.c.x, var_0.b), vec4<u32>(16702u, 0u, arg_1.x, var_1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_3(Struct_1(u_input.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(59103u, u_input.c.x, u_input.c.x, u_input.a), vec4<u32>(1u, u_input.c.x, 66461u, u_input.c.x)), ~4393u)), -u_input.b), vec3<u32>(u_input.a, u_input.a, ~(~_wgslsmith_mod_u32(u_input.a, 0u))));
    let var_1 = func_3(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), -firstLeadingBit(-vec2<i32>(var_0.a, 1i)), func_2(-1213f), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b, 31u)])))));
    let var_2 = global0[_wgslsmith_index_u32(4294967295u ^ ~firstTrailingBit(var_0.b), 31u)];
    global0 = array<bool, 31>();
    var var_3 = all(select(select(!(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_0.b, 31u)], false)), select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.b, 31u)], true, false), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.c.x, 31u)], true), true), var_0.b > 27231u), select(vec4<bool>(true, any(vec2<bool>(true, false)), !var_1.a, true), select(!vec4<bool>(false, var_1.a, true, false), !vec4<bool>(false, true, var_1.a, false), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(var_0.b, 31u)])), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(24339u, 31u)], false, true), vec4<bool>(false, var_1.a, global0[_wgslsmith_index_u32(var_0.b, 31u)], false), vec4<bool>(true, false, false, false))), !(!(!global0[_wgslsmith_index_u32(u_input.c.x, 31u)]))));
    var var_4 = true;
    var var_5 = _wgslsmith_mult_i32(-12010i, countOneBits(14466i) << (~func_1(func_2(-2048f), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.c.x, 1u), vec3<u32>(var_0.b, var_0.b, 48938u))).b % 32u));
    var var_6 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1761f + 964f), _wgslsmith_f_op_f32(trunc(1040f))), var_1.b)));
    var var_7 = var_6.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(var_6.a.b, var_7.b), var_0.b, var_7.b), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(min(~8926u, ~(~39369u)), 31u)]), 2147483647i);
}

