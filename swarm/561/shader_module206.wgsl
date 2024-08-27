struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16>;

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(0u, 4294967295u, 70791u, 70945u), vec4<u32>(53929u, 4294967295u, 1u, 1u), vec4<u32>(45716u, 107778u, 4294967295u, 46066u), vec4<u32>(1u, 0u, 79642u, 58962u));

var<private> global3: array<f32, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<bool> {
    var var_0 = select(select(vec3<bool>(true, true, true), !vec3<bool>(false, true, select(false, false, false)), true), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), true);
    let var_1 = -2058f;
    var var_2 = 943f;
    let var_3 = ~(u_input.e << ((abs(~u_input.c) & u_input.c) % vec4<u32>(32u)));
    let var_4 = -u_input.a;
    return !(!select(vec3<bool>(any(vec3<bool>(var_0.x, false, false)), var_0.x, any(vec4<bool>(var_0.x, true, true, true))), !vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(!var_0.x, any(vec2<bool>(true, false)), true)));
}

fn func_2() -> Struct_2 {
    global1 = vec2<f32>(1070f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 3u)] - 265f) * _wgslsmith_f_op_f32(global1.x + 229f)) * global1.x), _wgslsmith_f_op_f32(697f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.c.x, 3u)], global3[_wgslsmith_index_u32(1u, 3u)])))));
    var var_0 = global1.x;
    var var_1 = -20437i;
    let var_2 = select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), func_3()), func_3().x), vec3<bool>(any(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)))), !(true || (u_input.c.x != 21608u)), false), !(true & all(vec2<bool>(false, true))));
    var var_3 = select(true, any(var_2.zy), true);
    return Struct_2(Struct_1(1471f, !(!(!vec3<bool>(var_2.x, false, var_2.x))), vec4<bool>(firstTrailingBit(4294967295u) > ~54631u, true, any(vec4<bool>(false, var_2.x, var_2.x, true)), var_2.x)), Struct_1(1f, vec3<bool>((false | var_2.x) && any(vec2<bool>(var_2.x, false)), func_3().x || (var_2.x && var_2.x), !var_2.x), vec4<bool>(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.c.x, 4u)], vec4<u32>(4294967295u, u_input.c.x, 71731u, u_input.c.x)) < _wgslsmith_sub_u32(0u, 0u), true, _wgslsmith_clamp_i32(38836i, u_input.e.x, u_input.d) > u_input.a, !any(vec3<bool>(var_2.x, var_2.x, var_2.x)))), Struct_1(_wgslsmith_f_op_f32(1570f - global3[_wgslsmith_index_u32(~(~u_input.c.x), 3u)]), select(var_2, !vec3<bool>(var_2.x, true, var_2.x), !(!var_2.x)), !select(select(vec4<bool>(false, false, true, var_2.x), vec4<bool>(var_2.x, false, true, true), var_2.x), !vec4<bool>(true, var_2.x, false, false), false)));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<bool>, arg_3: f32) -> Struct_2 {
    let var_0 = func_2();
    global0 = array<vec3<f32>, 16>();
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-385f, _wgslsmith_div_f32(arg_3, 218f)))) + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) + var_0.b.a));
    var var_1 = reverseBits(~arg_0.yz);
    var var_2 = Struct_3(_wgslsmith_div_u32(62518u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 4294967295u), max(52255u, u_input.c.x))) ^ (~_wgslsmith_mod_u32(arg_0.x, var_1.x) << (arg_0.x % 32u)), Struct_2(Struct_1(arg_3, vec3<bool>(var_0.b.b.x, u_input.c.x <= var_1.x, true), var_0.b.c), var_0.c, Struct_1(836f, !vec3<bool>(true, arg_1, arg_2.x), var_0.c.c)));
    return Struct_2(func_2().c, var_0.a, var_2.b.c);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1.x), arg_0.b.b.c.wyx, vec4<bool>(true, !(arg_0.b.c.c.x && arg_0.b.b.c.x), true, select(false, false & arg_0.b.a.b.x, true))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(559f, arg_0.b.c.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-494f)))), func_3(), vec4<bool>(true, true, !(u_input.a >= u_input.e.x), arg_0.b.b.b.x)), func_1(u_input.c, arg_0.b.a.b.x, vec3<bool>(!func_3().x, !arg_0.b.c.b.x, !func_2().c.c.x), -809f).b);
    let var_1 = arg_0.a;
    global0 = array<vec3<f32>, 16>();
    global1 = vec2<f32>(var_0.c.a, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-502f, 1324f))))));
    global2 = array<vec4<u32>, 4>();
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(116f)) + _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(u_input.c.x, 3u)]))), -1000f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(53857u, 3u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 3u)], global3[_wgslsmith_index_u32(u_input.c.x, 3u)]), vec2<f32>(1000f, -929f), vec2<bool>(false, true)))), vec2<bool>(0u <= u_input.c.x, true)))), _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -1409f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), vec2<f32>(843f, 1233f)))))), true));
    let var_0 = vec4<bool>(true, true, any(select(vec2<bool>(-1000f <= global3[_wgslsmith_index_u32(u_input.c.x, 3u)], false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), true)), !all(vec3<bool>(true, false, any(vec4<bool>(false, true, true, true)))));
    var var_1 = func_4(Struct_3(countOneBits(~min(u_input.c.x, 4294967295u)), func_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 41879u, u_input.c.x, 76734u), vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x)), true, select(select(vec3<bool>(var_0.x, var_0.x, false), var_0.zxy, vec3<bool>(false, true, false)), select(var_0.xwy, vec3<bool>(true, false, var_0.x), vec3<bool>(true, var_0.x, false)), var_0.ywz), global3[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 3u)])));
    var_1 = Struct_2(func_1(u_input.c, ~u_input.d > u_input.d, !(!vec3<bool>(true, var_1.b.b.x, var_1.a.c.x)), _wgslsmith_f_op_f32(-1034f * global1.x)).c, func_2().a, Struct_1(global1.x, !var_0.xxx, var_1.b.c));
    global0 = array<vec3<f32>, 16>();
    var var_2 = _wgslsmith_f_op_f32(-global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.c), 338f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, -1062f))) - vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 3u)]), _wgslsmith_f_op_f32(abs(-303f)))) + vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.c.a)))), _wgslsmith_f_op_f32(ceil(1f)))), abs(_wgslsmith_sub_vec3_u32(u_input.c.wyx, _wgslsmith_sub_vec3_u32(vec3<u32>(18430u, 11320u, 4294967295u), u_input.c.wxx))));
}

