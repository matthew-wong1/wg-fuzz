struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(-1000f, -219f, 0i, vec3<bool>(true, true, true), false), Struct_2(377f, 810f, 2147483647i, vec3<bool>(true, true, false), false), Struct_2(627f, 213f, 2147483647i, vec3<bool>(true, true, true), false), Struct_2(887f, 309f, 2147483647i, vec3<bool>(false, false, true), false), Struct_2(675f, -680f, -26022i, vec3<bool>(true, true, true), true), Struct_2(-870f, 517f, -1i, vec3<bool>(true, true, true), false), Struct_2(1000f, 383f, 2147483647i, vec3<bool>(false, false, true), false), Struct_2(1357f, -881f, 1i, vec3<bool>(false, true, false), true), Struct_2(-1531f, 1000f, 15304i, vec3<bool>(false, false, true), true), Struct_2(848f, 377f, 2147483647i, vec3<bool>(true, true, false), true), Struct_2(622f, -1382f, 0i, vec3<bool>(false, true, false), true), Struct_2(-2668f, 1000f, -1i, vec3<bool>(true, true, true), false), Struct_2(-591f, 293f, 1628i, vec3<bool>(false, false, true), true), Struct_2(669f, 290f, -57498i, vec3<bool>(false, true, true), false), Struct_2(2147f, -497f, 10929i, vec3<bool>(false, false, false), false), Struct_2(-821f, 1000f, -3990i, vec3<bool>(false, true, false), false), Struct_2(-1230f, -717f, 12076i, vec3<bool>(false, true, true), false), Struct_2(-2300f, 318f, 42999i, vec3<bool>(false, false, true), true), Struct_2(-1000f, -1000f, -49351i, vec3<bool>(true, false, false), false), Struct_2(898f, 1000f, -1077i, vec3<bool>(false, false, false), false), Struct_2(-119f, 1000f, 6491i, vec3<bool>(true, false, false), false), Struct_2(1489f, 1000f, 8097i, vec3<bool>(true, false, true), true), Struct_2(-803f, 341f, -57516i, vec3<bool>(true, true, false), true), Struct_2(-944f, 646f, -8469i, vec3<bool>(true, true, false), false), Struct_2(1253f, -1464f, -20632i, vec3<bool>(true, true, true), false), Struct_2(-1029f, 1660f, -35914i, vec3<bool>(false, true, false), true), Struct_2(796f, 1017f, 4426i, vec3<bool>(false, true, true), true), Struct_2(-1108f, -136f, 1i, vec3<bool>(true, true, false), true), Struct_2(-1206f, 1536f, 0i, vec3<bool>(true, false, true), true));

var<private> global3: array<vec4<i32>, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: Struct_2) -> f32 {
    global0 = global2[_wgslsmith_index_u32(2911u, 29u)];
    global2 = array<Struct_2, 29>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(round(1426f)), _wgslsmith_f_op_f32(step(-178f, 510f)), _wgslsmith_f_op_f32(ceil(260f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(min(1185f, arg_3.b)), 1329f))), arg_2.b, arg_3.a == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * -916f))), 162f);
    let var_1 = min(abs(1u), 28126u);
    global0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -356f), arg_3.b)), _wgslsmith_f_op_f32(round(-120f)), countOneBits(reverseBits(arg_3.c) ^ countOneBits(reverseBits(arg_0.c))), arg_3.d, select(true, any(!(!vec4<bool>(true, true, arg_3.e, global1.x))), arg_3.e));
    return 1f;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_4(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1156f - 1705f), 264f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec2<f32>(-297f, global0.b), vec3<f32>(681f, arg_0, arg_0), u_input.b, true, global1.x), u_input.a.www, Struct_4(vec3<f32>(arg_0, -259f, 1000f), vec3<i32>(global0.c, u_input.b, 14112i), global1.x, 432f), global2[_wgslsmith_index_u32(36391u, 29u)])), _wgslsmith_f_op_f32(-arg_0)), 226f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0)))), countOneBits(~vec3<i32>(1i, -24333i & global0.c, countOneBits(u_input.b))), ~u_input.a.x >= ~_wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a), _wgslsmith_f_op_f32(abs(-1000f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(370f, _wgslsmith_f_op_f32(step(1915f, global0.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    return global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.d, abs(u_input.a.x)), 4294967295u)), 29u)];
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3) -> u32 {
    global2 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_1.c, -global0.c), -global0.c);
    var var_1 = 31327i | _wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(~1i, var_0) >> ((vec2<u32>(69532u, 1u) & vec2<u32>(13247u, u_input.d)) % vec2<u32>(32u)));
    global0 = func_2(_wgslsmith_f_op_f32(abs(1f)));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(abs(u_input.d), ~(~(~func_1(vec2<i32>(global0.c, global0.c), Struct_3(vec2<f32>(750f, global0.a), vec3<f32>(global0.a, -473f, global0.b), -1i, global0.e, true)))));
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-1232f - global0.a))), global0.a, min(global0.c, 2147483647i), vec3<bool>(true && global1.x, true, global0.d.x && all(select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(true, global0.d.x, true, global0.d.x), vec4<bool>(false, true, false, global0.d.x)))), func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, -1000f) * 2441f)))).e);
    var var_1 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(vec2<f32>(global0.a, 404f), vec3<f32>(global0.a, global0.b, 529f), -1i, var_1.x, true), u_input.a.xwz, Struct_4(vec3<f32>(global0.b, global0.a, -637f), vec3<i32>(-23928i, -34287i, u_input.c), global0.d.x, global0.b), global2[_wgslsmith_index_u32(30322u, 29u)])), _wgslsmith_f_op_f32(-global0.b), 555f, global0.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1658f, -762f, -635f, global0.b))))));
}

