struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<u32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<Struct_3, 27>;

var<private> global2: vec3<u32>;

var<private> global3: vec3<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -373f))));
    global1 = array<Struct_3, 27>();
    var var_1 = Struct_2(max(u_input.a.x, -2147483647i) << (_wgslsmith_mod_u32(~global3.x, 105677u & _wgslsmith_mult_u32(44464u, u_input.b.x)) % 32u), Struct_1(4294967295u, u_input.a.x), u_input.d);
    var var_2 = _wgslsmith_f_op_f32(-1183f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(1395f * _wgslsmith_f_op_f32(min(var_0, var_0))))));
    let var_3 = countOneBits(abs(~(~(~var_1.c))));
    return ~max(~countOneBits(u_input.a.x & 2147483647i), ~u_input.a.x);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(-40594i, vec3<bool>(true, true, true));
    global1 = array<Struct_3, 27>();
    var var_1 = true;
    let var_2 = -arg_1.b;
    var var_3 = -func_3();
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = func_2(1852u, Struct_1(global2.x, u_input.a.x));
    var var_1 = firstTrailingBit(4294967295u);
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(661f, 737f) + vec2<f32>(-198f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-863f, -353f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(601f, -245f) + vec2<f32>(862f, 181f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-176f, -226f), vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(857f, 542f)))))));
    global1 = array<Struct_3, 27>();
    var var_3 = vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, arg_0), false)), true);
    return vec3<bool>(all(!select(vec4<bool>(false, true, var_3.x, true), select(vec4<bool>(true, false, var_3.x, true), vec4<bool>(var_3.x, arg_0, true, arg_0), false), all(vec3<bool>(true, var_3.x, false)))), !arg_0, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 10>();
    global3 = abs(firstLeadingBit(~vec3<u32>(1u, global3.x, global2.x))) << (vec3<u32>(75431u, ~global2.x, global2.x) % vec3<u32>(32u));
    global0 = array<Struct_1, 10>();
    let var_0 = Struct_1(~(~(global3.x & _wgslsmith_mult_u32(global3.x, 29038u))), reverseBits(43997i));
    let var_1 = ~vec3<u32>(var_0.a, _wgslsmith_sub_u32(global3.x, 4294967295u), ~max(firstLeadingBit(1u), 1u));
    var var_2 = ~(~reverseBits(var_0.a));
    var var_3 = select(select(select(func_1(true, Struct_2(-17751i, Struct_1(var_1.x, -15100i), global3.x), Struct_2(var_0.b, Struct_1(39633u, u_input.a.x), 7120u), Struct_1(91776u, -22156i)), func_1(10652u == var_0.a, Struct_2(659i, Struct_1(1u, 55483i), var_0.a), Struct_2(-22555i, global0[_wgslsmith_index_u32(2525u, 10u)], 39081u), Struct_1(var_0.a, var_0.b)), !func_1(false, Struct_2(-2147483647i, var_0, 29251u), Struct_2(2147483647i, Struct_1(global2.x, -32830i), 4294967295u), Struct_1(30737u, u_input.a.x))), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), !(var_0.a < _wgslsmith_mult_u32(u_input.b.x, global2.x))), vec3<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))) || (_wgslsmith_f_op_f32(floor(699f)) <= _wgslsmith_f_op_f32(sign(-1000f))), any(vec3<bool>(true, true, true))), func_1(!(!any(vec3<bool>(true, false, false))), Struct_2(u_input.a.x, var_0, global3.x), Struct_2(-abs(-2147483647i), Struct_1(select(var_0.a, global2.x, true), u_input.a.x), var_0.a), Struct_1(_wgslsmith_add_u32(global3.x, 41592u), var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.xx, u_input.a.xxw, abs(select(global3.zy, firstTrailingBit(~global3.yx), !var_3.x)), min(vec3<u32>(abs(countOneBits(var_0.a)), ~u_input.c.x, 0u), countOneBits(~var_1) & select(vec3<u32>(var_0.a, var_1.x, var_1.x), ~vec3<u32>(var_1.x, 1u, global3.x), false)));
}

