struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1000f, 26281i, true, 4294967295u, 1u);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(718f, 47190i, false, 0u, 1u), Struct_1(-333f, -66823i, false, 4294967295u, 0u), Struct_1(-198f, 1i, true, 978u, 0u), Struct_1(997f, -1i, true, 4294967295u, 0u), Struct_1(1548f, -22712i, true, 4294967295u, 68366u), Struct_1(831f, -1i, true, 0u, 1u), Struct_1(2020f, 2147483647i, false, 1u, 68479u), Struct_1(-1000f, -28638i, false, 76406u, 59002u), Struct_1(-1550f, -1i, true, 3535u, 20009u), Struct_1(-655f, 1i, true, 4294967295u, 4294967295u), Struct_1(-827f, -30926i, false, 7011u, 4294967295u), Struct_1(-1518f, 29062i, true, 1u, 8474u), Struct_1(550f, -19153i, false, 1002u, 4294967295u), Struct_1(391f, 2222i, true, 4294967295u, 65035u), Struct_1(-195f, i32(-2147483648), false, 0u, 5464u));

var<private> global2: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(821f, -827f, -184f, -1362f), vec4<f32>(-641f, -898f, 199f, 940f), vec4<f32>(1000f, -1593f, 1698f, -869f), vec4<f32>(404f, 1382f, -847f, -973f), vec4<f32>(354f, 736f, 1000f, 757f), vec4<f32>(396f, 536f, -522f, 243f), vec4<f32>(-427f, 283f, -800f, -715f), vec4<f32>(-568f, 125f, 325f, 1651f), vec4<f32>(462f, 1000f, -189f, 964f), vec4<f32>(1128f, -1258f, 276f, 426f), vec4<f32>(-1132f, 118f, 1000f, -1445f), vec4<f32>(-1282f, 1000f, 239f, 1604f), vec4<f32>(-1000f, 1320f, 978f, 1730f), vec4<f32>(1581f, 1578f, 2085f, -1295f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global2[_wgslsmith_index_u32(4294967295u, 14u)])) + vec4<f32>(arg_1.a, global0.a, -1780f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(619f + -819f))))));
    global2 = array<vec4<f32>, 14>();
    global2 = array<vec4<f32>, 14>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(554f)) * arg_1.a), u_input.a, false, arg_0, ~1u);
    var_1 = Struct_1(-1000f, i32(-1i) * -1i, true, abs(~(~countOneBits(arg_1.e))), 2007u);
    return ~arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec3<i32>) -> u32 {
    global0 = arg_0;
    let var_0 = arg_0;
    let var_1 = false;
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(22383i, abs(abs(~u_input.b.x)), var_0.b), vec3<i32>(u_input.a, firstLeadingBit(arg_3.x), countOneBits(-1i)) ^ u_input.b);
    var var_3 = arg_0.b;
    return abs(~(~arg_1.c));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = vec3<bool>(arg_2.c, select(arg_0.x, global0.e <= 1u, true), true);
    var var_1 = false;
    var var_2 = vec2<i32>(2147483647i, global0.b & (-min(u_input.b.x, -17957i) ^ global0.b));
    let var_3 = Struct_2(arg_1.x, _wgslsmith_sub_u32(select(4294967295u, ~(arg_2.d << (0u % 32u)), any(vec4<bool>(arg_2.c, true, true, false))), arg_2.d), func_4(global1[_wgslsmith_index_u32(reverseBits(~115743u ^ arg_2.e), 15u)], Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f)), ~func_3(26662u, Struct_1(arg_2.a, u_input.b.x, global0.c, 24787u, 4294967295u)), arg_2.d), -945f, -vec3<i32>(2147483647i | var_2.x, 2147483647i, global0.b)));
    let var_4 = true;
    return var_3;
}

fn func_5(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = arg_0;
    global1 = array<Struct_1, 15>();
    var var_1 = -max(i32(-1i) * -u_input.b.x, global0.b);
    let var_2 = u_input.b.yx;
    global1 = array<Struct_1, 15>();
    return ~abs(vec2<u32>(0u, ~firstTrailingBit(arg_0.b)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(~(~vec2<u32>(arg_0.b, arg_0.b)), func_5(func_2(vec2<bool>(global0.c, global0.c), vec2<f32>(-779f, -1475f), Struct_1(global0.a, u_input.b.x, false, 29178u, 12371u))), global0.c) << (vec2<u32>(arg_0.b, 1u) % vec2<u32>(32u)), min(abs(~firstLeadingBit(vec2<u32>(4294967295u, global0.e))), select(~vec2<u32>(arg_0.c, 12388u), abs(vec2<u32>(1u, 1u)), any(!vec3<bool>(true, false, global0.c))))), 15u)];
    let var_1 = select(_wgslsmith_sub_i32(~(~(~u_input.b.x)), select(-(0i >> (arg_0.b % 32u)), _wgslsmith_sub_i32(0i, u_input.b.x), var_0.c)), -2147483647i, var_0.c);
    global0 = global1[_wgslsmith_index_u32(min(4294967295u, func_2(select(!select(vec2<bool>(true, global0.c), vec2<bool>(global0.c, false), false), !(!vec2<bool>(var_0.c, var_0.c)), all(!vec2<bool>(global0.c, false))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, var_0.a)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -1802f))))))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.e, var_0.d), 1u), arg_0.c, arg_0.b), 15u)]).c), 15u)];
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 14>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(global0.a, global0.d, global0.d), vec4<i32>(-32436i, -47489i, 23353i, global0.b))) - -735f), _wgslsmith_f_op_f32(global0.a * 408f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(831f)))), 1010f) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(global2[_wgslsmith_index_u32(firstTrailingBit(6890u), 14u)])), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(0u, 14u)] + global2[_wgslsmith_index_u32(10945u, 14u)])))))));
    let var_1 = !select(select(vec3<bool>(true, true, any(vec4<bool>(global0.c, true, global0.c, global0.c))), !vec3<bool>(global0.c, global0.c, false), !(!global0.c)), !vec3<bool>(global0.c, all(vec2<bool>(global0.c, global0.c)), false), vec3<bool>((global0.c || false) && global0.c, all(vec3<bool>(false, true, global0.c)), any(select(vec4<bool>(false, global0.c, global0.c, global0.c), vec4<bool>(false, global0.c, global0.c, global0.c), true))));
    global2 = array<vec4<f32>, 14>();
    let var_2 = func_2(select(!var_1.yy, select(!select(vec2<bool>(var_1.x, global0.c), vec2<bool>(global0.c, false), false), !vec2<bool>(false, var_1.x), vec2<bool>(global0.c, global0.c)), var_1.zx), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-607f - -938f)))), _wgslsmith_f_op_f32(sign(-1048f))), Struct_1(-180f, 0i, var_1.x, 73561u, max(global0.e, func_4(Struct_1(var_0.x, 0i, true, global0.e, 3372u), func_2(vec2<bool>(var_1.x, global0.c), vec2<f32>(global0.a, 1000f), global1[_wgslsmith_index_u32(global0.d, 15u)]), -874f, -vec3<i32>(global0.b, 1i, -28066i)))));
    var var_3 = all(!var_1.xz);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(f32(-1f) * -965f)))))), global0.a, 3115f, _wgslsmith_f_op_f32(-func_2(var_1.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.wy - vec2<f32>(-1591f, 1510f)) * var_0.zx), Struct_1(-1000f, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), false, var_2.b, 1u)).a));
    var var_5 = max(~abs(vec2<u32>(27200u, ~15066u)), vec2<u32>(_wgslsmith_mod_u32(var_2.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, var_2.c), vec2<u32>(65230u, 1u))), min(global0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, var_2.b, 4294967295u, global0.e), vec4<u32>(4294967295u, 0u, global0.d, var_2.b)) & global0.d)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

