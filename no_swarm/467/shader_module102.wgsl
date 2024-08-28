struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
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

var<private> global0: f32;

var<private> global1: u32;

var<private> global2: f32;

var<private> global3: array<vec3<bool>, 14>;

var<private> global4: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(1u, 1u, 7695u), vec3<u32>(9972u, 4294967295u, 23100u), vec3<u32>(11499u, 4294967295u, 4294967295u), vec3<u32>(41321u, 1u, 0u), vec3<u32>(7773u, 33406u, 10957u), vec3<u32>(1u, 34889u, 45851u), vec3<u32>(32311u, 1u, 4294967295u), vec3<u32>(47038u, 4294967295u, 0u), vec3<u32>(0u, 14414u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(85466u, 18707u, 18298u), vec3<u32>(4294967295u, 13867u, 0u), vec3<u32>(31733u, 17755u, 12876u), vec3<u32>(38955u, 1u, 29019u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 24206u, 4294967295u), vec3<u32>(0u, 76771u, 0u), vec3<u32>(1u, 23662u, 35920u), vec3<u32>(109203u, 18023u, 35791u), vec3<u32>(0u, 4294967295u, 46571u), vec3<u32>(1u, 34021u, 54332u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    var var_0 = 776f;
    let var_1 = Struct_3(vec2<bool>(all(vec2<bool>(all(vec3<bool>(false, true, true)), all(vec2<bool>(true, true)))), false));
    let var_2 = u_input.b.wy;
    let var_3 = select(!select(vec4<bool>(true, true, all(vec4<bool>(var_1.a.x, true, false, true)), true), vec4<bool>(true, var_1.a.x, true, any(global3[_wgslsmith_index_u32(var_2.x, 14u)])), !(!var_1.a.x)), !(!vec4<bool>(false, any(vec3<bool>(true, var_1.a.x, false)), 2339i >= u_input.a.x, var_1.a.x)), var_1.a.x);
    let var_4 = Struct_4(all(!var_3.wxz));
    return select(var_3.xy, select(select(var_1.a, var_3.yw, !(!var_1.a)), var_1.a, var_1.a), true);
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = 1465f;
    let var_1 = _wgslsmith_add_i32(abs(~u_input.d & _wgslsmith_dot_vec3_i32(u_input.a.zxw, u_input.a.yyy)), u_input.a.x) > (i32(-1i) * -2147483647i);
    global0 = _wgslsmith_f_op_f32(-249f + 1000f);
    var var_2 = Struct_3(select(vec2<bool>(false, var_1), !select(func_3(), !vec2<bool>(var_1, arg_0), vec2<bool>(arg_0, false)), select(!(!vec2<bool>(var_1, arg_0)), vec2<bool>(!var_1, var_1), vec2<bool>(!arg_0, u_input.e != 2147483647i))));
    var var_3 = Struct_3(vec2<bool>(all(vec4<bool>(var_2.a.x, false, var_2.a.x, u_input.c.x == u_input.b.x)), true));
    return Struct_3(var_3.a);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_4 {
    global3 = array<vec3<bool>, 14>();
    let var_0 = u_input.a.zx;
    var var_1 = min(vec2<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(-44011i, 21494i, var_0.x) ^ u_input.a.wzw), u_input.a.wwz), u_input.e), -u_input.a.yx);
    var var_2 = arg_2.x;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(541f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -680f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-875f, 131f) + _wgslsmith_f_op_f32(sign(1202f))), 1000f)));
    return Struct_4(any(select(vec4<bool>(false, false, !arg_0.a.x, false == arg_1), vec4<bool>(func_3().x, true, all(vec2<bool>(true, false)), arg_1 != arg_1), select(select(vec4<bool>(arg_3.a.x, false, true, false), vec4<bool>(true, arg_3.a.x, false, arg_0.a.x), vec4<bool>(false, false, true, arg_3.a.x)), !vec4<bool>(arg_1, arg_3.a.x, false, arg_3.a.x), true))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = u_input.b.xwx;
    let var_1 = ~(~arg_2.x);
    var var_2 = func_4(func_2(true), arg_3.a, _wgslsmith_mod_vec3_u32(vec3<u32>(~(~11712u), 119039u, ~_wgslsmith_add_u32(32302u, arg_0.c)), vec3<u32>(~var_0.x, u_input.c.x, 1u) >> (_wgslsmith_clamp_vec3_u32(var_0 | global4[_wgslsmith_index_u32(75298u, 21u)], var_0 >> (vec3<u32>(1u, u_input.c.x, var_0.x) % vec3<u32>(32u)), var_0) % vec3<u32>(32u))), func_2(arg_3.a));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-arg_0.e.x)) * _wgslsmith_f_op_f32(arg_0.e.x - arg_1)))));
    var var_4 = vec2<bool>(!(firstTrailingBit(countOneBits(arg_0.c)) <= u_input.b.x), all(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, arg_0.c), 14u)]));
    return vec2<bool>(false, var_1 < countOneBits(654i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1071f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1525f * 1774f) * _wgslsmith_div_f32(348f, 216f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1797f)) * 159f))));
    var var_1 = Struct_3(!select(vec2<bool>(select(false, true, false), true), vec2<bool>(true, true), select(func_1(Struct_1(vec3<f32>(318f, 801f, -634f), vec2<f32>(1267f, 197f), u_input.c.x, vec2<i32>(30185i, -1i), vec3<f32>(-360f, 3446f, 517f)), 388f, vec3<i32>(u_input.d, u_input.e, u_input.d), Struct_4(false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false))));
    var var_2 = vec2<bool>(var_1.a.x, any(var_1.a));
    let var_3 = !all(select(func_1(Struct_1(vec3<f32>(1000f, 1028f, -1000f), vec2<f32>(-1463f, -1694f), 36714u, u_input.a.xw, vec3<f32>(-614f, -609f, 802f)), -1569f, vec3<i32>(-7805i, -2147483647i, 2147483647i) | vec3<i32>(u_input.d, -1i, 41010i), func_4(Struct_3(vec2<bool>(var_1.a.x, true)), var_2.x, global4[_wgslsmith_index_u32(31551u, 21u)], Struct_3(var_1.a))), var_1.a, true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

