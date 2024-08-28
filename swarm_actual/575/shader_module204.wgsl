struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<vec2<u32>, 27>;

var<private> global2: Struct_2;

var<private> global3: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(2147483647i, -1i, -8197i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(-34293i, 2147483647i, 2147483647i), vec3<i32>(0i, -24898i, -24159i), vec3<i32>(-13467i, 15494i, 1i), vec3<i32>(i32(-2147483648), i32(-2147483648), -13726i), vec3<i32>(-1i, -36520i, 0i), vec3<i32>(-23754i, 9197i, -18372i), vec3<i32>(2147483647i, 2147483647i, -60780i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> vec3<f32> {
    let var_0 = u_input.b;
    let var_1 = (vec2<i32>(-1i) * -(~vec2<i32>(-76309i, 1i))) & ~select(u_input.b, vec2<i32>(-var_0.x, u_input.e), select(vec2<bool>(arg_0.x, arg_0.x), global0.xz, true));
    var var_2 = 1u;
    var var_3 = Struct_1(u_input.e, ~_wgslsmith_add_vec3_u32(global2.a.zyx, max(vec3<u32>(u_input.a.x, 16791u, u_input.d), countOneBits(global2.a.yyy))), ~29069u);
    let var_4 = arg_0;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-911f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-288f)), 1000f, any(vec3<bool>(true, global0.x, true)))))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-430f - -1091f))))));
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = Struct_3(global2.a.x, global0.x, arg_0, -635f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, 1700f, var_0.d)) * _wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(false, false, var_0.b, global0.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, var_0.d) + vec3<f32>(var_0.d, var_0.d, -834f)) * vec3<f32>(634f, -526f, var_0.d)))));
    var var_2 = vec3<bool>(true, global0.x, true);
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-859f, 1000f, false)) * 558f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-919f, -1000f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -947f)))));
    var var_1 = global0.x;
    var var_2 = vec3<bool>(true, all(select(vec3<bool>(!global0.x, global0.x, true), vec3<bool>(any(vec3<bool>(global0.x, global0.x, arg_2)), true, false), vec3<bool>(func_2(Struct_2(vec4<u32>(arg_0.a.x, global2.a.x, global2.a.x, arg_0.a.x))), true, false))), all(vec3<bool>(!(global0.x | arg_2), 4294967295u >= _wgslsmith_div_u32(u_input.a.x, 0u), arg_2)));
    var var_3 = Struct_1(17370i, _wgslsmith_sub_vec3_u32(~vec3<u32>(global2.a.x, arg_0.a.x, 1u), arg_0.a.zww), global2.a.x);
    var var_4 = vec4<bool>(true, false, !global0.x, !(arg_0.a.x == 58563u));
    return Struct_1(u_input.c.x, var_3.b, 1u);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global1 = array<vec2<u32>, 27>();
    var var_0 = arg_2.b.x;
    global0 = select(vec3<bool>(true, true, false), select(vec3<bool>(false, true && (global2.a.x != 1u), select(true, false, any(vec4<bool>(global0.x, true, false, false)))), select(vec3<bool>(!global0.x, select(false, true, true), all(global0.yx)), !select(vec3<bool>(false, false, true), vec3<bool>(global0.x, true, global0.x), true), !vec3<bool>(global0.x, false, true)), vec3<bool>(true, all(!vec4<bool>(false, global0.x, global0.x, global0.x)), any(select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, true, global0.x, global0.x), false)))), !select(!select(vec3<bool>(global0.x, false, false), vec3<bool>(false, true, global0.x), global0.x), !(!vec3<bool>(true, global0.x, global0.x)), select(!vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(global0.x, true, global0.x), true)));
    var_0 = 41381u;
    var var_1 = 0i;
    return all(!(!global0.zy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<bool>(false, global0.x || func_4(vec4<i32>(u_input.c.x, 1i, 17826i, u_input.b.x), ~vec4<u32>(global2.a.x, u_input.d, global2.a.x, 65623u), func_1(Struct_2(vec4<u32>(5976u, global2.a.x, 39295u, 0u)), -2208i, global0.x, u_input.b), func_1(Struct_2(global2.a), u_input.c.x, true, u_input.b)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(687f))) >= _wgslsmith_f_op_f32(floor(1f))), select(select(!vec3<bool>(global0.x, false, true), vec3<bool>(true, true, global0.x), !(!vec3<bool>(global0.x, global0.x, global0.x))), vec3<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(global0.x, true, global0.x, global0.x), false)), false, !(u_input.e < u_input.c.x)), vec3<bool>(!all(vec4<bool>(true, false, true, true)), global0.x, true)), !all(select(!global0.xx, vec2<bool>(true, true), select(global0.xx, global0.yz, false))));
    var var_0 = Struct_3(0u, global0.x, Struct_2(~_wgslsmith_sub_vec4_u32(~global2.a, countOneBits(vec4<u32>(0u, 1u, 2243u, u_input.d)))), -770f);
    var var_1 = Struct_3(u_input.d, true, var_0.c, var_0.d);
    let var_2 = vec2<i32>(2147483647i, -_wgslsmith_add_i32(1i, max(-2147483647i, ~2147483647i)));
    var var_3 = !var_1.b;
    var var_4 = _wgslsmith_f_op_f32(-1276f - _wgslsmith_f_op_f32(-405f * var_0.d));
    global0 = !vec3<bool>(!any(vec3<bool>(false, var_0.b, var_1.b)), var_0.b, true);
    var var_5 = Struct_1(_wgslsmith_dot_vec4_i32(~min(vec4<i32>(-2147483647i, 0i, var_2.x, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -14065i, var_2.x, 44421i), vec4<i32>(var_2.x, u_input.b.x, u_input.e, u_input.e), vec4<i32>(u_input.b.x, 15563i, 2147483647i, u_input.b.x))), firstLeadingBit(~min(vec4<i32>(var_2.x, u_input.c.x, u_input.e, var_2.x), vec4<i32>(u_input.e, 1i, -1i, var_2.x)))), ~var_1.c.a.ywz, var_1.c.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_5.b.x, ~0u, u_input.a.x, _wgslsmith_add_u32(var_0.c.a.x | (116875u << (1u % 32u)), 0u)), vec4<f32>(_wgslsmith_f_op_f32(-211f - _wgslsmith_f_op_f32(f32(-1f) * -1705f)), -289f, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d - var_0.d))) * _wgslsmith_f_op_vec3_f32(func_3(!vec4<bool>(false, false, true, var_1.b))).x)), _wgslsmith_clamp_vec4_i32(select(select(vec4<i32>(-20775i, var_5.a, -17097i, var_2.x), vec4<i32>(var_2.x, u_input.b.x, u_input.e, u_input.e), var_1.b), vec4<i32>(1i, u_input.b.x, var_5.a, var_5.a) << (global2.a % vec4<u32>(32u)), select(vec4<bool>(true, true, var_0.b, var_1.b), vec4<bool>(false, true, true, var_1.b), true)) << (min(vec4<u32>(u_input.d, 51387u, var_0.c.a.x, global2.a.x) & var_0.c.a, max(vec4<u32>(50753u, 0u, 9123u, var_1.c.a.x), vec4<u32>(u_input.d, 7750u, u_input.d, 19688u))) % vec4<u32>(32u)), select(reverseBits(vec4<i32>(0i, 2147483647i, 19368i, var_2.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 0i, var_5.a, -39716i), vec4<i32>(-1i, var_2.x, u_input.c.x, 42843i), vec4<i32>(2147483647i, -5568i, var_5.a, -1i)) << (~global2.a % vec4<u32>(32u)), global0.x), vec4<i32>(~(-52488i) >> (firstLeadingBit(var_5.b.x) % 32u), _wgslsmith_mod_i32(select(var_5.a, -1i, var_1.b), -86417i), -var_2.x, _wgslsmith_clamp_i32(~30236i, select(var_2.x, -10262i, var_1.b), i32(-1i) * -2147483647i))), _wgslsmith_dot_vec2_u32(firstLeadingBit(func_1(Struct_2(vec4<u32>(4294967295u, var_1.a, 29771u, var_5.b.x)), u_input.c.x, global0.x || false, _wgslsmith_div_vec2_i32(vec2<i32>(-24785i, var_5.a), vec2<i32>(39483i, -2147483647i))).b.yy), max(~vec2<u32>(var_1.a, var_0.a) | var_0.c.a.yx, vec2<u32>(var_1.a & var_5.c, ~12855u))), ~(vec4<u32>(countOneBits(var_0.a), _wgslsmith_clamp_u32(global2.a.x, u_input.d, 1u), u_input.a.x, _wgslsmith_div_u32(4294967295u, global2.a.x)) ^ vec4<u32>(var_1.a, ~40689u, 9407u, global2.a.x)));
}

