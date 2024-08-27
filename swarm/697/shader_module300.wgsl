struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, true, true));

var<private> global2: f32 = -2396f;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: u32) -> u32 {
    let var_0 = vec2<bool>(!arg_2, false);
    var var_1 = any(vec3<bool>(any(select(!var_0, var_0, select(var_0, vec2<bool>(arg_0.a.x, true), vec2<bool>(false, false)))), global1.a.x, arg_2));
    var var_2 = global1.a.ww;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 24u)], global0[_wgslsmith_index_u32(arg_3, 24u)], global0[_wgslsmith_index_u32(arg_3, 24u)])), vec3<f32>(-1000f, -323f, -651f)))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(41943u, 24u)] * 1835f), global0[_wgslsmith_index_u32(u_input.b, 24u)])), _wgslsmith_f_op_f32(abs(1901f)), 1f)), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3, 24u)]), -512f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(690f - global0[_wgslsmith_index_u32(1u, 24u)]))))), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.a.x, var_0.x, true), global1.a.zyy, false), select(vec3<bool>(global1.a.x, var_2.x, global1.a.x), vec3<bool>(false, true, false), vec3<bool>(var_0.x, true, true))))));
    global4 = vec2<bool>(all(!var_0), all(arg_0.a.wyy));
    return 13378u;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = firstTrailingBit(func_3(Struct_1(global1.a), min(~u_input.e.x, 24125u >> (0u % 32u)), global3.x, u_input.a.x)) & u_input.e.x;
    global1 = Struct_1(select(vec4<bool>(global1.a.x, any(global1.a.xyx), global4.x, any(vec3<bool>(true, false, global4.x))), global1.a, select(select(select(global1.a, vec4<bool>(false, global1.a.x, false, global1.a.x), global1.a), vec4<bool>(true, false, global3.x, global1.a.x), select(vec4<bool>(true, false, global1.a.x, true), global1.a, true)), select(vec4<bool>(global1.a.x, true, true, global3.x), select(vec4<bool>(false, true, global3.x, false), global1.a, global1.a.x), global3.x), select(vec4<bool>(global1.a.x, true, false, global3.x), select(vec4<bool>(true, true, false, false), global1.a, global4.x), select(global1.a, vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x), vec4<bool>(false, false, false, true))))));
    global3 = global1.a.yy;
    global3 = vec2<bool>(arg_0.x < 26766i, false);
    var var_1 = firstTrailingBit(u_input.a.xz | abs(u_input.e.yx));
    return Struct_1(!(!select(vec4<bool>(global4.x, true, true, global3.x), !global1.a, false | global3.x)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool) -> Struct_1 {
    global4 = !select(global1.a.xz, vec2<bool>(any(global1.a.wwy), global1.a.x & any(vec3<bool>(false, global3.x, false))), !(!vec2<bool>(arg_0, arg_2)));
    var var_0 = func_2(~vec4<i32>(u_input.d.x, _wgslsmith_add_i32(-2147483647i, u_input.d.x) ^ ~u_input.d.x, -u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, -45028i), vec3<i32>(u_input.d.x, 0i, u_input.d.x)) ^ abs(u_input.d.x)));
    global1 = Struct_1(!vec4<bool>(any(!vec4<bool>(arg_0, arg_0, global3.x, arg_2)), global4.x, global1.a.x, true));
    var var_1 = 0i <= reverseBits(abs(~u_input.d.x));
    let var_2 = _wgslsmith_mod_u32(~(~4052u), 4294967295u);
    return func_2(vec4<i32>(-1i) * -(~vec4<i32>(1i, -16961i, u_input.d.x, u_input.d.x) >> ((u_input.e << (vec4<u32>(arg_1, arg_1, var_2, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> bool {
    global3 = vec2<bool>(!(0i != ~(~u_input.d.x)), true);
    global4 = !arg_1.a.zy;
    let var_0 = arg_0.a.zy;
    let var_1 = func_1(all(select(select(func_2(vec4<i32>(u_input.d.x, u_input.d.x, -6608i, 2147483647i)).a, !arg_1.a, global1.a), select(func_1(global1.a.x, 1u, global1.a.x).a, !arg_0.a, global1.a.x), func_2(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)).a.x)), ~(~43832u), firstLeadingBit(-u_input.d.x) <= u_input.d.x);
    var var_2 = vec4<u32>(66791u >> (_wgslsmith_sub_u32(u_input.a.x, ~u_input.c.x) % 32u), ~select(u_input.b, u_input.b, true), 1u, _wgslsmith_clamp_u32(u_input.a.x, 0u, ~16287u));
    return !(func_2(-reverseBits(vec4<i32>(2147483647i, -36435i, u_input.d.x, u_input.d.x))).a.x && all(select(var_0, vec2<bool>(global1.a.x, global4.x), arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!vec4<bool>(func_4(func_1(global4.x, u_input.a.x, global3.x), func_2(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -58781i)), true, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 24u)])), global4.x, true, true));
    global1 = func_2(vec4<i32>(-1i, 1i | abs(u_input.d.x), u_input.d.x, 0i));
    var var_1 = vec3<u32>(34914u, u_input.e.x, ~(countOneBits(_wgslsmith_mod_u32(28410u, u_input.e.x)) << (41509u % 32u)));
    global4 = var_0.a.yw;
    var var_2 = Struct_1(vec4<bool>(all(vec2<bool>(global3.x, -2147483647i <= u_input.d.x)), -(~1i) >= min(2147483647i, _wgslsmith_div_i32(u_input.d.x, -25652i)), true, false));
    var_0 = Struct_1(vec4<bool>(any(var_0.a.xxw), var_2.a.x, !global3.x, var_0.a.x));
    var_0 = Struct_1(!(!select(vec4<bool>(var_2.a.x, true, global3.x, var_0.a.x), global1.a, func_2(vec4<i32>(u_input.d.x, u_input.d.x, 653i, 37042i)).a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1401f + _wgslsmith_f_op_f32(f32(-1f) * -1174f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 24u)] + global0[_wgslsmith_index_u32(37680u, 24u)]), global0[_wgslsmith_index_u32(u_input.e.x, 24u)])))));
}

