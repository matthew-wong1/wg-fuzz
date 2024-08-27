struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_3) -> vec3<bool> {
    global0 = array<Struct_2, 28>();
    var var_0 = -807f;
    var var_1 = arg_2;
    var var_2 = global0[_wgslsmith_index_u32(~(~(~(~var_1.a)) & abs(_wgslsmith_add_u32(var_1.a, 1u) >> (117007u % 32u))), 28u)];
    let var_3 = 4294967295u;
    return vec3<bool>(_wgslsmith_f_op_f32(-var_2.b.a) < var_2.b.c, !var_2.a.d.x, true && arg_1.x);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> f32 {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    let var_0 = global0[_wgslsmith_index_u32(51598u, 28u)];
    global0 = array<Struct_2, 28>();
    var var_1 = select(vec2<bool>(arg_0, var_0.b.e.x), !select(vec2<bool>(true, true), var_0.c.yx, select(vec2<bool>(true, true), !var_0.a.b.zx, vec2<bool>(true, true))), var_0.a.b.zz);
    return 670f;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -122f))), !func_2(1i, vec2<bool>(true, true), Struct_3(_wgslsmith_mod_u32(20431u, u_input.a), 15352u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, Struct_3(36783u, u_input.a), 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-244f)), _wgslsmith_f_op_f32(f32(-1f) * -208f), all(vec4<bool>(false, true, false, false))))))), select(vec3<bool>(true, false, 31431i <= firstTrailingBit(40971i)), !select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), true), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-592f + var_0.a))), !func_2(max(0i, 13388i) << (firstTrailingBit(u_input.a) % 32u), vec2<bool>(any(vec4<bool>(false, var_0.e.x, var_0.b.x, var_0.e.x)), true), Struct_3(1u & u_input.a, ~18992u)), var_0.a, vec3<bool>(!(var_0.b.x & true), true, select(false, any(func_2(2147483647i, vec2<bool>(var_0.b.x, false), Struct_3(u_input.a, u_input.a)).zy), true | all(vec3<bool>(var_0.e.x, true, false)))), !(!select(!var_0.e, select(vec4<bool>(false, false, var_0.d.x, var_0.d.x), var_0.e, var_0.e), select(vec4<bool>(false, var_0.e.x, false, var_0.b.x), vec4<bool>(false, false, var_0.e.x, var_0.d.x), vec4<bool>(var_0.e.x, var_0.b.x, var_0.b.x, true)))));
    let var_2 = _wgslsmith_div_i32(countOneBits(~26284i) >> (u_input.a % 32u), -_wgslsmith_add_i32(select(1i, 1964i, var_1.e.x), _wgslsmith_mod_i32(-8185i, -2147483647i)));
    var var_3 = u_input.a > (_wgslsmith_div_u32(~(~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(7841u, u_input.a, 5682u, u_input.a) << (vec4<u32>(40165u, u_input.a, 1u, u_input.a) % vec4<u32>(32u)))) >> (_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), ~vec4<u32>(u_input.a, 11893u, u_input.a, u_input.a)) % 32u));
    var_0 = var_1;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.a, _wgslsmith_mod_u32(func_1() ^ 7292u, ~u_input.a));
    var var_1 = ~((~1u >> (var_0.a % 32u)) | 9623u);
    let var_2 = vec4<f32>(2132f, _wgslsmith_div_f32(-1651f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-392f, -432f)) * _wgslsmith_f_op_f32(f32(-1f) * -512f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(847f))))) * _wgslsmith_f_op_f32(-820f + _wgslsmith_f_op_f32(sign(1342f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(256f)))));
    var_1 = min(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, 0u, var_0.b, 4294967295u), vec4<u32>(var_0.b, 1u, var_0.b, 5247u)), vec4<u32>(4294967295u, var_0.b, 0u, 0u))), _wgslsmith_mod_u32(u_input.a, 1u));
    let var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1974f)) - _wgslsmith_f_op_f32(-var_2.x)), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), reverseBits(vec2<i32>(var_3, var_3))) | countOneBits(_wgslsmith_sub_i32(var_3, var_3)), -2147483647i), -countOneBits(var_3 & (-1i >> (var_0.b % 32u))), 1362f);
}

