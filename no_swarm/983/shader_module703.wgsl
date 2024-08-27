struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: u32;

var<private> global2: array<u32, 1> = array<u32, 1>(33578u);

var<private> global3: vec2<i32> = vec2<i32>(15451i, 0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -583f) * _wgslsmith_f_op_f32(-1001f - 907f)) - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-313f, -749f), _wgslsmith_f_op_f32(f32(-1f) * -1859f))) + _wgslsmith_f_op_f32(1383f - 265f)) + 365f), -930f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-224f, _wgslsmith_f_op_f32(117f - -423f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-149f)), -245f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1047f)), -1324f)))));
    global1 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_1.d.x, arg_1.d.x), 1u)] | (global2[_wgslsmith_index_u32(~u_input.c.x, 1u)] >> (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~arg_1.d.yz, countOneBits(u_input.b.ww)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(2455u, arg_1.d.x, arg_1.d.x), vec3<u32>(arg_1.d.x, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 1u)])), ~global2[_wgslsmith_index_u32(4294967295u, 1u)])) % 32u));
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: bool) -> f32 {
    global1 = ~20570u;
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec4<bool>(arg_1.x, true, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(81404u, 1u)], 14u)]), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3411u, 1u)], 14u)], false, true, arg_3), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], arg_3, arg_3, global0[_wgslsmith_index_u32(arg_0, 14u)]), vec4<bool>(false, arg_1.x, true, arg_3), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 4294967295u, 33345u))))))) + -745f), 993f);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(arg_2.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 1518f)))))));
    global0 = array<bool, 14>();
    var var_1 = Struct_1(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_3, arg_1.x, arg_1.x, arg_3), vec4<bool>(arg_3, true, true, arg_3), vec4<bool>(arg_3, arg_1.x, true, arg_1.x)), false), vec4<bool>(true, any(vec3<bool>(arg_3, arg_3, false)), false, !arg_3), vec4<bool>(true, any(vec4<bool>(true, arg_1.x, true, true)), -945f <= arg_2.x, all(vec2<bool>(true, false)))), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 14u)], arg_1.x, true, false), select(vec4<bool>(arg_1.x, true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(118864u, 14u)], true, arg_3, arg_3), true), !vec4<bool>(arg_1.x, true, false, global0[_wgslsmith_index_u32(37687u, 14u)])), !vec4<bool>(all(vec4<bool>(true, arg_1.x, false, arg_1.x)), true, arg_0 < 4294967295u, arg_3 != false)), select(!vec4<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 14u)], false, arg_3, false), !vec4<bool>(arg_1.x, true, global0[_wgslsmith_index_u32(~arg_0, 14u)], true), global0[_wgslsmith_index_u32(u_input.c.x, 14u)]), vec4<bool>(all(!(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 14u)], false, arg_3))), false, global0[_wgslsmith_index_u32(22516u, 14u)], !(global0[_wgslsmith_index_u32(u_input.b.x, 14u)] | arg_1.x)), u_input.b.xzx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))))));
}

fn func_1(arg_0: Struct_2) -> vec2<u32> {
    global0 = array<bool, 14>();
    var var_0 = reverseBits(_wgslsmith_dot_vec3_u32(~arg_0.c, vec3<u32>(9975u, 1u, ~global2[_wgslsmith_index_u32(~4294967295u, 1u)])));
    let var_1 = ~(~_wgslsmith_div_vec3_u32(arg_0.c, arg_0.c) ^ arg_0.d.d);
    var_0 = ~(~(~255u));
    let var_2 = vec3<f32>(906f, arg_0.b.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_mod_u32(22462u, 60332u), !vec2<bool>(true, u_input.b.x >= arg_0.d.d.x), arg_0.b, (-399f < _wgslsmith_f_op_f32(-arg_0.b.x)) & false)));
    return vec2<u32>(44469u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_div_u32(4294967295u, 8202u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(20202u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)])), vec3<u32>(u_input.b.x, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 1u)]))), 14u)], global0[_wgslsmith_index_u32(~4294967295u, 14u)] | (-u_input.d.x > 53823i));
    let var_1 = false;
    var var_2 = ~u_input.b.xy & (vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], 1u)], abs(1u)), 1u)], u_input.c.x) >> (func_1(Struct_2(var_0.wzw, _wgslsmith_div_vec3_f32(vec3<f32>(-1302f, -339f, -252f), vec3<f32>(663f, -458f, -1945f)), firstLeadingBit(u_input.b.zxx), Struct_1(vec4<bool>(var_0.x, false, var_0.x, var_1), vec4<bool>(var_1, global0[_wgslsmith_index_u32(1u, 14u)], var_0.x, global0[_wgslsmith_index_u32(4294967295u, 14u)]), vec4<bool>(var_0.x, false, false, true), vec3<u32>(17921u, u_input.c.x, u_input.c.x)))) % vec2<u32>(32u)));
    let var_3 = var_0.x;
    global2 = array<u32, 1>();
    var var_4 = var_0.wyz;
    var var_5 = ~u_input.d.wwy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(113275u, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(~u_input.b.x, 4294967295u), abs(_wgslsmith_add_u32(1u, 7055u))), 1u)]), 2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1378f) + -1924f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1042f, 103f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-977f * 659f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-506f, -1490f, -1003f), vec3<f32>(959f, 436f, 1062f)) + vec3<f32>(819f, -1099f, 105f)) + vec3<f32>(-444f, _wgslsmith_div_f32(-1565f, -964f), _wgslsmith_f_op_f32(trunc(665f))))));
}

