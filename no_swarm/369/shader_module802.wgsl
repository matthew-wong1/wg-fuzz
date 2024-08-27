struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_3(vec3<bool>(false, false, false), vec3<u32>(1u, 16233u, 1u), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false), vec3<i32>(1i, 0i, 1i), vec3<u32>(0u, 0u, 0u), false), -1i, Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false), vec3<i32>(-29979i, 7684i, -21965i), vec3<u32>(17534u, 3388u, 77522u), true)), vec3<f32>(677f, 1235f, 500f), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, true), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<u32>(36498u, 13485u, 0u), false), 8101i, Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false), vec3<i32>(2147483647i, 72433i, 1i), vec3<u32>(39106u, 10025u, 1u), false))), vec4<u32>(26942u, 23713u, 1u, 4294967295u), false, Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, false), vec3<i32>(-41939i, -13085i, -23693i), vec3<u32>(12355u, 4289u, 1u), true), vec4<bool>(true, false, false, true)));

var<private> global2: array<vec2<u32>, 13>;

var<private> global3: array<vec3<bool>, 2>;

var<private> global4: vec4<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global4 = !vec4<bool>(true, any(global4.xw), !(4294967295u >= ~global0.x), all(vec2<bool>(true, all(global3[_wgslsmith_index_u32(0u, 2u)]))));
    let var_0 = Struct_1(vec3<bool>(!global4.x, true, global4.x), vec2<bool>(true, true), min(vec3<i32>(1i, min(u_input.a.x, u_input.a.x), -16643i), ~vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, 31913u, global0.x), global0.x, global0.x), _wgslsmith_div_vec3_u32(vec3<u32>(global0.x & global0.x, ~29813u, _wgslsmith_div_u32(15971u, global0.x)), ~vec3<u32>(global0.x, global0.x, 56307u) & countOneBits(vec3<u32>(global0.x, global0.x, global0.x))), _wgslsmith_div_vec3_u32(max(~vec3<u32>(4294967295u, 4294967295u, 4900u), min(vec3<u32>(global0.x, global0.x, 62974u), vec3<u32>(3306u, global0.x, global0.x))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 22187u, global0.x, 1u), vec4<u32>(0u, 0u, global0.x, global0.x)), 4294967295u, global0.x))), false);
    return global4.x;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> f32 {
    global1 = array<Struct_4, 1>();
    global0 = vec3<u32>(_wgslsmith_clamp_u32(global0.x, _wgslsmith_dot_vec4_u32(~(arg_0.b | arg_0.b), ~_wgslsmith_add_vec4_u32(arg_0.b, arg_0.b)), arg_1.a.d.x), 1u, min(global0.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_0.b, vec4<u32>(42117u, 24627u, global0.x, arg_0.d.d.x)), 1u)));
    global4 = !(!arg_0.e);
    global2 = array<vec2<u32>, 13>();
    var var_0 = countOneBits(abs(vec3<u32>(arg_1.a.d.x, 33779u, ~38252u) ^ ~arg_1.a.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(189f, 1015f)))));
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.d.x, arg_0.a.d.x, global4.x))) + arg_0.a.d.x), 1091f)));
    global4 = vec4<bool>(global4.x && (~(~arg_0.b.x) != arg_0.a.e.c.d.x), !select(true, true, arg_0.a.c.c.b.x), global4.x && arg_0.e.x, false);
    var var_1 = ~(i32(-1i) * -_wgslsmith_div_i32(u_input.a.x, arg_0.d.c.x)) >> (global0.x % 32u);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + arg_0.a.d.x), _wgslsmith_f_op_f32(func_4(Struct_4(Struct_3(arg_0.d.a, firstTrailingBit(vec3<u32>(global0.x, global0.x, 0u)), arg_0.a.c, _wgslsmith_f_op_vec3_f32(arg_0.a.d * vec3<f32>(arg_0.a.d.x, 541f, -2489f)), arg_0.a.c), ~vec4<u32>(2884u, global0.x, 68338u, arg_0.a.e.c.d.x), global4.x, arg_0.d, select(vec4<bool>(arg_0.c, true, arg_0.e.x, false), select(vec4<bool>(true, arg_0.a.c.a.b.x, false, true), vec4<bool>(false, true, false, global4.x), true), !global4.x)), arg_0.a.c, !(!func_3()), arg_0.e)));
    var var_3 = arg_0.a.e.b;
    return Struct_4(arg_0.a, select(~arg_0.b >> (~(vec4<u32>(4294967295u, 11797u, arg_0.b.x, 4294967295u) | arg_0.b) % vec4<u32>(32u)), arg_0.b, arg_0.e.x), arg_0.d.a.x, Struct_1(arg_0.e.wzz, global4.zx, vec3<i32>(_wgslsmith_clamp_i32(0i, firstTrailingBit(61529i), max(-3144i, 17889i)), arg_0.d.c.x, arg_0.d.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d.d.x, 337u, _wgslsmith_mod_u32(1u, global0.x)), vec3<u32>(_wgslsmith_mod_u32(arg_0.b.x, arg_0.d.d.x), _wgslsmith_mult_u32(37848u, arg_0.b.x), global0.x)), func_3()), select(vec4<bool>(!(arg_0.a.d.x >= var_2.x), global4.x && true, global4.x, _wgslsmith_div_f32(var_0, -262f) < _wgslsmith_f_op_f32(round(704f))), select(!select(vec4<bool>(arg_0.c, arg_0.d.a.x, false, global4.x), vec4<bool>(global4.x, arg_0.a.a.x, global4.x, true), true), vec4<bool>(true, func_3(), all(vec4<bool>(true, true, global4.x, global4.x)), false), select(arg_0.e, arg_0.e, false)), true));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: u32) -> vec4<u32> {
    let var_0 = Struct_2(arg_1.d, 48679i, func_2(Struct_4(Struct_3(global3[_wgslsmith_index_u32(arg_3, 2u)], func_2(Struct_4(arg_1.a, vec4<u32>(34707u, arg_1.d.d.x, 18006u, arg_2.x), global4.x, Struct_1(vec3<bool>(global4.x, arg_1.d.e, arg_1.a.a.x), global4.wy, arg_1.d.c, arg_2.xwy, true), vec4<bool>(true, false, false, global4.x))).b.yzy, Struct_2(arg_1.d, u_input.a.x, arg_1.d), arg_1.a.d, func_2(Struct_4(Struct_3(vec3<bool>(false, false, arg_1.e.x), vec3<u32>(1u, arg_1.b.x, 0u), Struct_2(arg_1.a.c.c, -741i, arg_1.a.e.a), arg_1.a.d, Struct_2(Struct_1(vec3<bool>(global4.x, true, global4.x), global4.xz, arg_1.d.c, arg_2.zzw, true), -2147483647i, arg_1.d)), arg_1.b, true, Struct_1(arg_1.e.wwy, vec2<bool>(false, global4.x), arg_1.a.e.a.c, vec3<u32>(23977u, global0.x, arg_2.x), global4.x), vec4<bool>(arg_1.d.a.x, arg_1.c, true, false))).a.e), vec4<u32>(65841u, arg_2.x, 64629u | arg_2.x, _wgslsmith_sub_u32(arg_3, arg_3)), global4.x, Struct_1(!vec3<bool>(arg_1.c, false, true), select(arg_1.a.c.c.a.yx, arg_1.a.c.c.a.yx, false), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, arg_3, arg_2.x), !global4.x), !(!vec4<bool>(arg_1.d.a.x, global4.x, global4.x, arg_1.c)))).a.e.a);
    let var_1 = Struct_2(func_2(Struct_4(arg_1.a, ~vec4<u32>(global0.x, global0.x, 4294967295u, arg_3), arg_1.c, Struct_1(global3[_wgslsmith_index_u32(arg_3, 2u)], arg_1.e.wx, vec3<i32>(-3331i, 19753i, 1i), ~arg_1.a.e.a.d, 1i != u_input.a.x), !(!arg_1.e))).a.e.c, var_0.b, Struct_1(vec3<bool>(true, false, var_0.a.e), select(func_2(func_2(global1[_wgslsmith_index_u32(37372u, 1u)])).d.b, !vec2<bool>(arg_1.e.x, arg_1.a.c.c.b.x), true), var_0.c.c, _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(arg_3, 4294967295u, arg_1.b.x)), ~_wgslsmith_sub_vec3_u32(arg_1.a.c.c.d, vec3<u32>(4294967295u, var_0.a.d.x, arg_2.x))), !(true & (arg_0.x == arg_0.x))));
    var var_2 = Struct_4(arg_1.a, vec4<u32>(4294967295u, _wgslsmith_div_u32(~(~arg_1.a.c.a.d.x), var_0.c.d.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(71062u, 10590u, var_1.c.d.x, 45885u), _wgslsmith_mod_vec4_u32(vec4<u32>(16347u, 1u, arg_1.b.x, 2457u), vec4<u32>(arg_2.x, 0u, 4294967295u, 9103u))), ~arg_1.b), var_0.a.d.x), global4.x, var_0.c, vec4<bool>(any(global4.zw), var_1.c.b.x, select(global4.x, !(!var_0.a.a.x), global4.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1460f, -109f))) < arg_1.a.d.x));
    var var_3 = false;
    var var_4 = max(select(~vec2<u32>(firstLeadingBit(arg_3), _wgslsmith_mod_u32(59971u, arg_2.x)), _wgslsmith_clamp_vec2_u32(var_2.d.d.xy, ~vec2<u32>(var_2.d.d.x, arg_3), ~max(vec2<u32>(15563u, var_0.a.d.x), vec2<u32>(global0.x, 139322u))), !(!vec2<bool>(var_2.e.x, var_1.a.a.x))), (~max(vec2<u32>(arg_2.x, 42423u), arg_1.a.e.c.d.yx) & vec2<u32>(var_1.a.d.x, 1u)) ^ var_0.c.d.yy);
    return ~countOneBits(vec4<u32>(4294967295u, 116852u, 4294967295u, arg_1.d.d.x) >> (vec4<u32>(var_1.a.d.x, 19977u, 26757u, func_2(global1[_wgslsmith_index_u32(arg_2.x, 1u)]).a.e.a.d.x) % vec4<u32>(32u)));
}

fn func_1() -> vec2<bool> {
    let var_0 = ~_wgslsmith_div_u32(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.x) ^ ~global2[_wgslsmith_index_u32(global0.x, 13u)], select(~global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(global0.x, 13u)], vec2<bool>(false, global4.x))));
    var var_1 = global0.x;
    let var_2 = ~(~(~countOneBits(vec4<u32>(44330u, 29777u, global0.x, 90683u)))) | ~abs(func_5(~u_input.a, func_2(Struct_4(Struct_3(global4.xzy, vec3<u32>(92089u, global0.x, 59876u), Struct_2(Struct_1(global3[_wgslsmith_index_u32(global0.x, 2u)], global4.zy, vec3<i32>(25997i, 18283i, 18350i), vec3<u32>(28088u, global0.x, 1u), global4.x), u_input.a.x, Struct_1(global3[_wgslsmith_index_u32(23799u, 2u)], vec2<bool>(true, true), vec3<i32>(0i, u_input.a.x, 0i), vec3<u32>(global0.x, 0u, 66065u), global4.x)), vec3<f32>(558f, -251f, 947f), Struct_2(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 2u)], vec2<bool>(true, true), vec3<i32>(u_input.a.x, u_input.a.x, 14641i), vec3<u32>(global0.x, var_0, var_0), global4.x), u_input.a.x, Struct_1(vec3<bool>(global4.x, false, false), global4.yx, vec3<i32>(73138i, u_input.a.x, 41266i), vec3<u32>(var_0, global0.x, 4294967295u), global4.x))), vec4<u32>(global0.x, var_0, 0u, 25859u), global4.x, Struct_1(vec3<bool>(global4.x, global4.x, global4.x), global4.xx, vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<u32>(1u, var_0, 21534u), global4.x), vec4<bool>(false, false, true, true))), vec4<u32>(global0.x, 62725u, 4294967295u, 4294967295u), select(0u, 30488u, global4.x)));
    global4 = vec4<bool>(global4.x || true, !(global4.x | !(global4.x | false)), true, true);
    var var_3 = all(!vec2<bool>(global4.x, true)) & (_wgslsmith_mod_u32(var_2.x, _wgslsmith_dot_vec3_u32(countOneBits(var_2.xxx), ~vec3<u32>(global0.x, 1u, var_2.x))) <= ~(firstLeadingBit(var_2.x) << (1u % 32u)));
    return !(!(!select(vec2<bool>(true, true), vec2<bool>(false, global4.x), !vec2<bool>(global4.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec4<bool>(!global4.x, global4.x, global4.x, global4.x), !select(!vec4<bool>(true, global4.x, global4.x, global4.x), vec4<bool>(global4.x, false, false, global4.x), true), vec4<bool>(true, global4.x != global4.x, true, any(func_1()))));
    global3 = array<vec3<bool>, 2>();
    var var_1 = func_2(func_2(func_2(func_2(Struct_4(Struct_3(vec3<bool>(global4.x, global4.x, global4.x), vec3<u32>(64846u, 1u, 1u), Struct_2(Struct_1(vec3<bool>(true, var_0, global4.x), vec2<bool>(false, false), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 36081u, 34550u), false), -2147483647i, Struct_1(global3[_wgslsmith_index_u32(global0.x, 2u)], global4.yx, vec3<i32>(u_input.a.x, -12041i, 2147483647i), vec3<u32>(global0.x, 0u, global0.x), true)), vec3<f32>(213f, 1000f, -983f), Struct_2(Struct_1(global4.wwy, vec2<bool>(var_0, global4.x), vec3<i32>(-13935i, -2147483647i, 0i), vec3<u32>(7492u, global0.x, global0.x), false), 2147483647i, Struct_1(global4.wxz, vec2<bool>(false, false), vec3<i32>(21513i, u_input.a.x, 46082i), vec3<u32>(global0.x, 4294967295u, 38071u), global4.x))), vec4<u32>(28126u, 4294967295u, 8361u, 29785u), false, Struct_1(global4.xxx, global4.yz, vec3<i32>(-2147483647i, -2147483647i, -18444i), vec3<u32>(0u, 1u, 1u), var_0), vec4<bool>(false, global4.x, false, false)))))).e;
    let var_2 = func_2(func_2(func_2(func_2(func_2(global1[_wgslsmith_index_u32(global0.x, 1u)])))));
    var var_3 = global4.x | true;
    var var_4 = _wgslsmith_f_op_f32(func_2(var_2).a.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(681f, _wgslsmith_f_op_f32(f32(-1f) * -1742f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1269f + _wgslsmith_f_op_f32(step(-808f, 1000f))), -234f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global0.x, ~(13265u & global0.x), ~global0.x));
}

