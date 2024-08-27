struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<Struct_4, 8>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: vec3<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-global3.x);
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-117f)))), _wgslsmith_f_op_f32(f32(-1f) * -364f), -2283f));
    let var_1 = Struct_2(global3.yz);
    let var_2 = arg_3.x;
    var_0 = arg_3.x;
    return any(select(!select(select(vec4<bool>(arg_0.x, true, false, true), vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, false, arg_0.x, false)), select(vec4<bool>(true, true, arg_0.x, true), vec4<bool>(false, arg_0.x, false, arg_0.x), arg_0.x), !vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), select(!(!vec4<bool>(arg_0.x, false, false, false)), select(vec4<bool>(arg_0.x, true, true, arg_0.x), !vec4<bool>(arg_0.x, true, true, arg_0.x), select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), select(vec4<bool>(false, arg_0.x, true, arg_0.x), select(vec4<bool>(arg_0.x, true, true, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), true), any(vec4<bool>(true, arg_0.x, arg_0.x, false)))), !vec4<bool>(!arg_0.x, arg_0.x, !arg_0.x, any(vec4<bool>(arg_0.x, false, true, arg_0.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = vec2<bool>(arg_2, !any(vec4<bool>(true, func_3(vec3<bool>(true, false, arg_2), u_input.d.wzy, u_input.d, vec2<f32>(arg_1, -1956f)), false, !arg_2)));
    global3 = arg_0.b.yyy;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1157f, -1783f))))), arg_0.b.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(sign(-682f)), _wgslsmith_f_op_f32(-arg_3.b), arg_3.b))) * _wgslsmith_f_op_vec3_f32(min(arg_0.b.www, _wgslsmith_f_op_vec3_f32(-arg_0.b.xyz)))));
    global0 = array<Struct_1, 25>();
    global3 = arg_0.b.zzy;
    return arg_2;
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: u32) -> u32 {
    let var_0 = 13273u;
    let var_1 = select(-2147483647i, 738i, false);
    var var_2 = select(vec2<bool>(arg_0.b, !func_4(Struct_5(1i, vec4<f32>(-2524f, -1447f, arg_0.a, global3.x)), arg_0.a, func_3(vec3<bool>(arg_0.b, true, false), vec3<i32>(var_1, 35316i, -8153i), u_input.d, global3.xy), Struct_1(vec2<u32>(67778u, u_input.e.x), global3.x, u_input.a, u_input.d.wwx))), !select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, true), var_1 <= 26044i), vec2<bool>(arg_0.b, true)), !(!(!vec2<bool>(arg_0.b, arg_0.b))));
    var var_3 = firstLeadingBit(u_input.d.yw);
    let var_4 = ~vec2<i32>(u_input.d.x | var_3.x, _wgslsmith_div_i32(1i, u_input.d.x) ^ 1i) << (select(vec2<u32>(20550u, ~64330u), vec2<u32>(u_input.a.x, 4294967295u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x))) <= 1152f) % vec2<u32>(32u));
    return u_input.a.x;
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = firstTrailingBit(vec3<u32>(abs(func_2(global1[_wgslsmith_index_u32(34643u, 8u)], 0u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, 4294967295u, 0u)))), u_input.c, _wgslsmith_mod_u32(min(~4294967295u, arg_0), firstLeadingBit(reverseBits(u_input.e.x)))));
    global0 = array<Struct_1, 25>();
    let var_1 = 27640u;
    let var_2 = -1i;
    var var_3 = ~(~var_2) ^ -u_input.d.x;
    return Struct_3(select(!vec2<bool>(func_3(vec3<bool>(false, false, true), u_input.d.wyy, u_input.d, global3.xx), func_3(vec3<bool>(true, true, true), vec3<i32>(5381i, var_2, u_input.d.x), vec4<i32>(-4446i, u_input.d.x, 4415i, -31195i), global3.xy)), !vec2<bool>(-2147483647i <= u_input.b, true), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(0u);
    var var_1 = select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -798f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), var_0.a.x, true, var_0.a.x), !select(vec4<bool>(!var_0.a.x, 0u > u_input.e.x, 0i < u_input.d.x, !var_0.a.x), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), select(vec4<bool>(true, var_0.a.x, false, true), vec4<bool>(var_0.a.x, var_0.a.x, true, true), vec4<bool>(var_0.a.x, true, true, var_0.a.x)), var_0.a.x), all(vec3<bool>(var_0.a.x, var_0.a.x, false))), all(select(var_0.a, var_0.a, var_0.a)) | func_4(Struct_5(41795i, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, 1083f, -752f, 113f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global3.x, 1224f)), _wgslsmith_f_op_f32(global3.x + global3.x))), true, Struct_1(select(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e, var_0.a.x), 1f, u_input.a, -u_input.d.zxy)));
    var var_2 = true;
    var var_3 = u_input.c;
    global1 = array<Struct_4, 8>();
    global2 = ~abs(2631i);
    let var_4 = _wgslsmith_div_vec2_u32(firstLeadingBit(~u_input.e) & vec2<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.e.x), u_input.a.zy)), u_input.c), vec2<u32>(u_input.a.x, 2791u));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x))));
    var_1 = !(!select(!(!vec4<bool>(var_0.a.x, false, true, var_1.x)), vec4<bool>(func_4(Struct_5(u_input.b, vec4<f32>(global3.x, global3.x, 171f, 1294f)), 104f, false, Struct_1(var_4, global3.x, u_input.a, u_input.d.xwz)), var_0.a.x, var_0.a.x & var_0.a.x, var_0.a.x), var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.d.x), ~(~countOneBits(min(var_4.x, 8217u))), global3.x);
}

