struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(2506u, 4294967295u);

var<private> global1: f32;

var<private> global2: vec4<i32>;

var<private> global3: array<bool, 18>;

var<private> global4: array<vec3<i32>, 24>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<bool> {
    global2 = vec4<i32>(arg_1, abs(select(-2147483647i, abs(abs(0i)), !select(arg_0.a, true, true))), 2147483647i >> (0u % 32u), -1i);
    var var_0 = Struct_2(_wgslsmith_div_u32(20516u, reverseBits(~31313u)));
    let var_1 = Struct_1(!all(select(select(vec4<bool>(global3[_wgslsmith_index_u32(arg_0.b.x, 18u)], global3[_wgslsmith_index_u32(23921u, 18u)], true, global3[_wgslsmith_index_u32(0u, 18u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(var_0.a, 18u)], false, global3[_wgslsmith_index_u32(93916u, 18u)]), global3[_wgslsmith_index_u32(global0.x, 18u)]), vec4<bool>(arg_0.a, true, global3[_wgslsmith_index_u32(1u, 18u)], arg_0.a), select(vec4<bool>(global3[_wgslsmith_index_u32(57332u, 18u)], arg_0.a, arg_0.a, global3[_wgslsmith_index_u32(global0.x, 18u)]), vec4<bool>(arg_0.a, true, arg_0.a, false), false))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, 1u, 4294967295u), arg_0.b, arg_0.b), vec3<u32>(3530u, u_input.d, 37577u) & vec3<u32>(global0.x, 64684u, global0.x)), _wgslsmith_clamp_vec3_u32(arg_0.b, vec3<u32>(1u, 4294967295u, 0u), arg_0.b) | ~vec3<u32>(u_input.d, arg_0.b.x, var_0.a)));
    var var_2 = Struct_1(!((firstTrailingBit(global0.x) == ~var_0.a) || false), _wgslsmith_clamp_vec3_u32(~(vec3<u32>(var_0.a, u_input.d, 0u) ^ vec3<u32>(16426u, 4294967295u, 66690u)), arg_0.b, _wgslsmith_sub_vec3_u32(arg_0.b, var_1.b)));
    let var_3 = !var_1.a;
    return select(select(select(vec3<bool>(!arg_0.a, var_1.a, true), select(vec3<bool>(true, var_2.a, true), !vec3<bool>(true, false, global3[_wgslsmith_index_u32(var_0.a, 18u)]), !vec3<bool>(var_1.a, var_2.a, var_1.a)), _wgslsmith_f_op_f32(select(-1000f, 1000f, arg_0.a)) == _wgslsmith_f_op_f32(379f + -702f)), select(vec3<bool>(any(vec3<bool>(false, var_1.a, false)), all(vec3<bool>(arg_0.a, true, true)), !var_3), select(vec3<bool>(true, true, true), !vec3<bool>(global3[_wgslsmith_index_u32(0u, 18u)], var_2.a, true), select(vec3<bool>(true, false, var_1.a), vec3<bool>(true, false, true), false)), !vec3<bool>(false, true, var_2.a)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, arg_0.a), vec3<bool>(true, true, true)), vec3<bool>(arg_0.a, true, any(vec2<bool>(var_3, var_1.a))))), !vec3<bool>(~arg_0.b.x >= ~4294967295u, true, all(select(vec3<bool>(false, var_2.a, false), vec3<bool>(arg_0.a, true, true), vec3<bool>(arg_0.a, var_3, arg_0.a)))), vec3<bool>(false, all(vec4<bool>(!var_1.a, true, arg_0.a, var_1.a | var_2.a)), !any(vec4<bool>(arg_0.a, var_3, true, true))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: f32) -> f32 {
    var var_0 = any(select(vec3<bool>(global3[_wgslsmith_index_u32(~global0.x, 18u)] == !global3[_wgslsmith_index_u32(global0.x, 18u)], all(!vec2<bool>(global3[_wgslsmith_index_u32(33255u, 18u)], global3[_wgslsmith_index_u32(6515u, 18u)])), !any(vec2<bool>(global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(97321u, 18u)]))), func_3(Struct_1(select(true, global3[_wgslsmith_index_u32(18806u, 18u)], global3[_wgslsmith_index_u32(0u, 18u)]), abs(vec3<u32>(u_input.d, 0u, 79858u))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -45410i), vec2<i32>(-2587i, global2.x))), true));
    global2 = (vec4<i32>(-1i) * -(~abs(vec4<i32>(-23293i, -9236i, u_input.a.x, global2.x)))) >> (vec4<u32>(_wgslsmith_mod_u32(reverseBits(select(4294967295u, global0.x, global3[_wgslsmith_index_u32(1u, 18u)])), global0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, _wgslsmith_mult_u32(4294967295u, u_input.c)), vec2<u32>(~u_input.c, select(global0.x, 0u, true))), 26505u, 0u) % vec4<u32>(32u));
    var var_1 = vec2<u32>(43692u, u_input.d);
    let var_2 = -_wgslsmith_sub_i32(global2.x, u_input.b);
    global4 = array<vec3<i32>, 24>();
    return -383f;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = !any(!(!(!vec3<bool>(arg_1.a, arg_1.a, arg_1.a))));
    var var_1 = !(!select(!(!vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(arg_1.b.x, 18u)])), !vec3<bool>(arg_1.a, false, true), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1890f, _wgslsmith_f_op_f32(func_2(2583f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f))), vec2<f32>(1f, 1f)));
    var var_3 = arg_0;
    let var_4 = Struct_1(true, firstLeadingBit(_wgslsmith_sub_vec3_u32(arg_1.b, select(arg_1.b ^ vec3<u32>(4294967295u, 1u, arg_1.b.x), arg_1.b, !vec3<bool>(true, arg_1.a, arg_1.a)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(global0.x), Struct_1(global3[_wgslsmith_index_u32(global0.x, 18u)], vec3<u32>(global0.x, 1u, 1u)), Struct_2(4294967295u)))) * _wgslsmith_f_op_f32(select(1036f, -319f, !global3[_wgslsmith_index_u32(1u, 18u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1867f, 500f)), _wgslsmith_f_op_f32(135f - 569f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -178f), _wgslsmith_f_op_f32(step(1971f, 529f))), vec2<f32>(_wgslsmith_f_op_f32(max(-183f, -714f)), 1000f))))), false));
    let var_1 = Struct_2(0u);
    var var_2 = firstTrailingBit(firstTrailingBit(select(vec3<u32>(4294967295u, var_1.a, u_input.d), ~abs(vec3<u32>(44779u, global0.x, 8289u)), select(!vec3<bool>(true, global3[_wgslsmith_index_u32(global0.x, 18u)], true), select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(54433u, 18u)]), vec3<bool>(false, false, global3[_wgslsmith_index_u32(31643u, 18u)]), true), false))));
    let var_3 = _wgslsmith_f_op_f32(func_2(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x)) + var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(floor(var_0.x))), 584f)), var_0.x)));
    let var_4 = var_1;
    var var_5 = ~43080u;
    let var_6 = vec2<u32>(~var_2.x, ~select(_wgslsmith_mult_u32(1u & var_1.a, ~4294967295u), global0.x, func_3(Struct_1(true, vec3<u32>(0u, global0.x, var_2.x)), -40803i).x));
    let var_7 = var_3;
    let var_8 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(abs(var_4.a)), 68523u), 18u)], _wgslsmith_sub_vec3_u32(select(select(reverseBits(vec3<u32>(var_1.a, 0u, 74235u)), vec3<u32>(28258u, 39889u, var_2.x), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, u_input.d, 0u), vec3<u32>(1u, global0.x, var_1.a), vec3<u32>(var_1.a, 0u, 4294967295u)) << (~vec3<u32>(var_6.x, 0u, global0.x) % vec3<u32>(32u)), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 18u)], global3[_wgslsmith_index_u32(var_4.a, 18u)], global3[_wgslsmith_index_u32(7009u, 18u)])), countOneBits(max(vec3<u32>(var_1.a, global0.x, 4294967295u), vec3<u32>(var_6.x, 4294967295u, 18868u)) >> (abs(vec3<u32>(var_6.x, var_1.a, var_4.a)) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

