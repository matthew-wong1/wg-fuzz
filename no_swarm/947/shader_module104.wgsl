struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14>;

var<private> global1: array<f32, 7> = array<f32, 7>(1084f, 1599f, 229f, 1000f, 272f, -938f, -681f);

var<private> global2: i32 = -1i;

var<private> global3: vec4<f32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32) -> f32 {
    global3 = vec4<f32>(global3.x, global1[_wgslsmith_index_u32(1u, 7u)], 1532f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 7206u, 1342u), vec3<u32>(arg_0, 20356u, 38913u)), ~u_input.b.x, 44708u), _wgslsmith_add_vec4_u32(max(vec4<u32>(1u, arg_0, u_input.d.x, u_input.b.x), vec4<u32>(u_input.d.x, 0u, arg_0, 1u)), u_input.d)), 7u)], _wgslsmith_f_op_f32(-global3.x)));
    global0 = array<vec2<bool>, 14>();
    var var_0 = global3.yw;
    let var_1 = Struct_1(countOneBits(27508i), vec3<f32>(-1212f, 348f, global1[_wgslsmith_index_u32(~53683u, 7u)]), _wgslsmith_div_u32(abs(~arg_0), ~arg_0), vec4<bool>(true, -29183i >= _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, u_input.a, u_input.c.x)), ~vec3<i32>(0i, u_input.a, -29009i)), true, ((u_input.b.x << (0u % 32u)) > _wgslsmith_mod_u32(arg_0, arg_0)) && (true || (u_input.d.x <= 22065u))), u_input.c);
    global1 = array<f32, 7>();
    return var_1.b.x;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    var var_0 = any(select(select(!select(arg_2.d.zy, vec2<bool>(arg_2.d.x, true), arg_2.d.x), arg_2.d.zx, vec2<bool>(true, true)), !(!(!global0[_wgslsmith_index_u32(1u, 14u)])), vec2<bool>(!(!arg_0), true)));
    let var_1 = arg_2;
    var_0 = arg_0 || var_1.d.x;
    var var_2 = arg_2;
    global1 = array<f32, 7>();
    return select(vec3<bool>(false, var_2.d.x, any(vec4<bool>(arg_2.a > u_input.a, false, var_1.d.x, all(var_1.d)))), select(vec3<bool>(all(select(arg_2.d, var_1.d, arg_2.d.x)), arg_0, all(vec3<bool>(true, var_2.d.x, false))), select(select(vec3<bool>(false, true, var_2.d.x), select(var_1.d.xwx, vec3<bool>(var_2.d.x, arg_2.d.x, var_2.d.x), vec3<bool>(arg_0, true, true)), true), !select(vec3<bool>(true, var_1.d.x, arg_2.d.x), var_1.d.wyz, var_2.d.x), all(select(vec2<bool>(false, var_1.d.x), var_2.d.yx, vec2<bool>(arg_2.d.x, true)))), true), true);
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-global3.x), -624f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -1125f))) - -288f), 683f);
    var var_0 = func_3(arg_0.x, vec2<f32>(_wgslsmith_f_op_f32(-709f + _wgslsmith_f_op_f32(func_2(u_input.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, global3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, global1[_wgslsmith_index_u32(0u, 7u)], true))))), Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1601f), -621f, _wgslsmith_f_op_f32(func_2(u_input.d.x))) - global3.zxz), 1u, arg_0, _wgslsmith_mult_vec2_i32(~u_input.c, -vec2<i32>(-20168i, -13936i)) & vec2<i32>(u_input.a >> (u_input.d.x % 32u), _wgslsmith_mult_i32(-1i, u_input.c.x))), 0u);
    return Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(global3.xzz * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1206u, 7u)], 1000f, global1[_wgslsmith_index_u32(u_input.d.x, 7u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global1[_wgslsmith_index_u32(4294967295u, 7u)], 1000f) * global3.yyw)), _wgslsmith_f_op_vec3_f32(global3.xzx - global3.wxy), arg_0.yxw))), u_input.b.x, select(!select(arg_0, vec4<bool>(var_0.x, var_0.x, arg_0.x, var_0.x), 171f <= global1[_wgslsmith_index_u32(u_input.d.x, 7u)]), !arg_0, vec4<bool>(var_0.x, var_0.x, true, 13944i <= (-58533i | u_input.a))), u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec2<bool>, 14>();
    var var_0 = !(any(vec4<bool>(func_3(arg_1.d.x, vec2<f32>(arg_0.b.x, -1000f), Struct_1(10776i, arg_1.b, 0u, arg_1.d, vec2<i32>(arg_0.e.x, 2147483647i)), arg_1.c).x, global3.x >= arg_1.b.x, func_1(vec4<bool>(false, arg_0.d.x, false, arg_1.d.x)).d.x, func_1(vec4<bool>(true, false, true, true)).d.x)) | any(func_1(func_1(vec4<bool>(arg_1.d.x, true, arg_0.d.x, arg_0.d.x)).d).d.yxw));
    var var_1 = vec3<u32>(max(arg_1.c, u_input.b.x) >> (arg_1.c % 32u), arg_0.c, arg_1.c);
    global2 = _wgslsmith_dot_vec2_i32(-u_input.c << (vec2<u32>(_wgslsmith_mod_u32(30471u, 9293u), 1u) % vec2<u32>(32u)), -u_input.c) | firstLeadingBit(reverseBits(-28385i));
    global0 = array<vec2<bool>, 14>();
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x)));
    global2 = u_input.c.x;
    global2 = min(_wgslsmith_mod_i32(1i << (arg_0.c % 32u), arg_0.a), u_input.a) & -arg_0.a;
    global3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1839f), -1123f, -784f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.b.x)))), -189f))));
    global2 = 7524i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_1(-2147483647i, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -441f), -735f, 218f), u_input.b.x, vec4<bool>(true, true, true, true), vec2<i32>(-3781i, -43814i)), func_1(vec4<bool>(true, true, true, true))), !vec4<bool>(func_4(Struct_1(u_input.a, vec3<f32>(-544f, global3.x, global3.x), u_input.d.x, vec4<bool>(false, true, true, true), u_input.c), func_4(Struct_1(-35436i, vec3<f32>(global3.x, global3.x, 2186f), 108292u, vec4<bool>(true, false, false, true), vec2<i32>(34i, -58859i)), Struct_1(15004i, vec3<f32>(global3.x, -239f, global3.x), 20586u, vec4<bool>(false, true, false, true), vec2<i32>(8630i, u_input.c.x)))).d.x, true, false, all(vec3<bool>(true, true, true))), func_4(func_4(func_4(Struct_1(1i, vec3<f32>(global1[_wgslsmith_index_u32(40773u, 7u)], 393f, global1[_wgslsmith_index_u32(u_input.b.x, 7u)]), 37089u, vec4<bool>(true, false, true, false), u_input.c), func_4(Struct_1(u_input.a, global3.xzw, u_input.b.x, vec4<bool>(true, true, true, true), u_input.c), Struct_1(0i, global3.ywy, 4294967295u, vec4<bool>(true, false, false, true), vec2<i32>(2147483647i, 4613i)))), Struct_1(countOneBits(u_input.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 7u)], global3.x, global3.x)), 48178u, vec4<bool>(true, false, true, true), reverseBits(u_input.c))), Struct_1(_wgslsmith_dot_vec4_i32(max(vec4<i32>(0i, u_input.c.x, 17624i, u_input.c.x), vec4<i32>(u_input.a, 13299i, 1i, -21359i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(26541i, u_input.c.x, u_input.c.x, 14321i), vec4<i32>(u_input.c.x, -37913i, -28613i, u_input.c.x), vec4<i32>(u_input.c.x, -49160i, u_input.a, u_input.a))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global3.yzx), global3.zyz)), max(u_input.b.x, 37851u) >> (_wgslsmith_mod_u32(15846u, u_input.d.x) % 32u), vec4<bool>(true, true, true, true), vec2<i32>(1117i, u_input.a) | (vec2<i32>(1i, u_input.a) ^ u_input.c))).e.x);
    let x = u_input.a;
    s_output = StorageBuffer(global3.ww, u_input.a << (var_0.c % 32u), ~u_input.b.x, var_0.e.x);
}

