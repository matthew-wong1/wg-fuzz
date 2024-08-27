struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: bool;

var<private> global3: array<vec3<bool>, 17>;

var<private> global4: Struct_2;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = -754f;
    let var_1 = !(~firstLeadingBit(~(-3197i)) != max(select(2147483647i, arg_3.a.x, arg_3.b.a.x) ^ global4.e, i32(-1i) * -1i));
    var var_2 = vec3<bool>(!any(vec3<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(true, var_1)), false)), var_1, true | (false && any(select(arg_0.b.a.xz, vec2<bool>(true, false), var_1))));
    global3 = array<vec3<bool>, 17>();
    var var_3 = u_input.a.x;
    return ~_wgslsmith_div_vec2_i32(vec2<i32>(countOneBits(firstLeadingBit(u_input.b.x)), global4.e), global4.d);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(abs(7839u), 22u)];
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), -_wgslsmith_mult_vec2_i32(~global4.c.yz, global4.d));
    global4 = Struct_2(-114f, Struct_1(select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(36819u, u_input.a.x, 28491u) << (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), 17u)], select(!global4.b.a, global3[_wgslsmith_index_u32(~u_input.a.x, 17u)], vec3<bool>(false, arg_0.x, var_0.a.x)), var_0.a)), _wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 23195u), u_input.a.x), 20u)], max(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], abs(global0[_wgslsmith_index_u32(u_input.a.x, 20u)]))), u_input.b.zz, -2147483647i);
    var_1 = 0i;
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1453f, 229f) * _wgslsmith_div_f32(528f, -444f))), Struct_1(arg_1.a), select(firstLeadingBit(vec4<i32>(-2147483647i, u_input.b.x, 37214i, -64403i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global4.e, global4.c.x, 24810i, global4.e), max(vec4<i32>(0i, -1404i, u_input.b.x, 2147483647i), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -9984i))), !select(vec4<bool>(false, true, var_0.a.x, true), vec4<bool>(global4.b.a.x, global4.b.a.x, true, true), var_0.a.x)), func_3(Struct_2(_wgslsmith_f_op_f32(-global4.a), arg_1, reverseBits(vec4<i32>(5004i, -1i, -55288i, global4.c.x)), vec2<i32>(-7391i, u_input.b.x) & vec2<i32>(1i, -2147483647i), firstTrailingBit(30657i)), Struct_1(select(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], arg_1.a, false)), global0[_wgslsmith_index_u32(u_input.a.x, 20u)], Struct_3(vec3<i32>(-42985i, u_input.b.x, 1i), global1[_wgslsmith_index_u32(abs(u_input.a.x), 22u)])), 1i), ~(~(u_input.a.x | 57063u)), -(-37682i >> (abs(1u) % 32u)), Struct_3(vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(2147483647i, func_3(Struct_2(-442f, Struct_1(vec3<bool>(arg_2, var_0.a.x, arg_0.x)), global0[_wgslsmith_index_u32(u_input.a.x, 20u)], vec2<i32>(0i, u_input.b.x), 16391i), Struct_1(global4.b.a), global0[_wgslsmith_index_u32(u_input.a.x, 20u)], Struct_3(vec3<i32>(-2001i, global4.c.x, -1301i), global4.b)).x), ~1i), global4.b));
    return vec4<i32>(var_2.d.a.x, -abs(_wgslsmith_add_i32(-2147483647i, -u_input.b.x)), _wgslsmith_dot_vec3_i32(abs(var_2.d.a), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(global4.d.x, global4.d.x, 61122i), global4.c.zyy), _wgslsmith_mod_vec3_i32(global4.c.zyw, vec3<i32>(-70781i, -32218i, 1i))) & _wgslsmith_mult_vec3_i32(vec3<i32>(29024i, -1633i, 32401i), vec3<i32>(2147483647i, 43403i, global4.c.x))), ~var_2.a.c.x & -global4.c.x);
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(435f * _wgslsmith_f_op_f32(sign(global4.a)))), Struct_1(select(global4.b.a, vec3<bool>(global4.b.a.x, true, true), true)), abs(func_2(vec2<bool>(global4.b.a.x, true), Struct_1(vec3<bool>(false, true, global4.b.a.x)), !global4.b.a.x)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(global4.c.ww, vec2<i32>(5374i, global4.d.x)) | (vec2<i32>(u_input.b.x, 0i) << (u_input.a.zz % vec2<u32>(32u))), global4.d), func_2(vec2<bool>(true, true), global1[_wgslsmith_index_u32(~0u, 22u)], global4.b.a.x).x), 31121u >> ((u_input.a.x & 0u) % 32u), 0i, Struct_3(_wgslsmith_add_vec3_i32(~global4.c.wwy, -vec3<i32>(0i, -39718i, 9681i)), Struct_1(!vec3<bool>(global4.b.a.x, false, global4.b.a.x))));
    global0 = array<vec4<i32>, 20>();
    global4 = Struct_2(global4.a, Struct_1(select(select(!global4.b.a, select(vec3<bool>(true, global4.b.a.x, false), vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(var_0.b, 17u)]), var_0.a.b.a.x), vec3<bool>(!var_0.a.b.a.x, true, all(var_0.d.b.a.xz)), vec3<bool>(select(var_0.d.b.a.x, global4.b.a.x, global4.b.a.x), true, any(global4.b.a)))), vec4<i32>(abs(-1i), 1i, _wgslsmith_add_i32(56081i, -(3305i | global4.d.x)), global4.e), -vec2<i32>(_wgslsmith_add_i32(select(57691i, 0i, global4.b.a.x), abs(u_input.b.x)), _wgslsmith_div_i32(0i, _wgslsmith_sub_i32(var_0.d.a.x, u_input.b.x))), _wgslsmith_mult_i32(var_0.c, -2147483647i));
    var var_1 = true;
    let var_2 = var_0.a;
    return !(!select(!(!vec4<bool>(global4.b.a.x, false, false, true)), vec4<bool>(true, any(vec4<bool>(true, var_0.a.b.a.x, false, true)), global4.b.a.x & global4.b.a.x, true), (var_0.a.b.a.x || true) && true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.b;
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1151f)), global4.a) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -332f)))))), Struct_1(!vec3<bool>(var_1.x, true, var_0.a.x && false)), vec4<i32>(func_3(Struct_2(global4.a, Struct_1(global4.b.a), global0[_wgslsmith_index_u32(32776u, 20u)], vec2<i32>(u_input.b.x, u_input.b.x), global4.c.x), Struct_1(global3[_wgslsmith_index_u32(u_input.a.x, 17u)]), _wgslsmith_clamp_vec4_i32(global4.c, global4.c, vec4<i32>(-1i, 0i, global4.e, global4.e)), Struct_3(global4.c.xzx, Struct_1(vec3<bool>(var_0.a.x, var_1.x, var_1.x)))).x, _wgslsmith_sub_i32(u_input.b.x >> (u_input.a.x % 32u), ~u_input.b.x), i32(-1i) * -u_input.b.x, max(global4.e, _wgslsmith_mod_i32(38074i, -18588i))) ^ countOneBits(vec4<i32>(select(2452i, 19879i, var_0.a.x), func_3(Struct_2(489f, global4.b, vec4<i32>(1i, 2147483647i, u_input.b.x, global4.d.x), u_input.b.zz, u_input.b.x), Struct_1(vec3<bool>(true, global4.b.a.x, global4.b.a.x)), vec4<i32>(14888i, u_input.b.x, -2147483647i, u_input.b.x), Struct_3(vec3<i32>(u_input.b.x, -1i, global4.d.x), Struct_1(var_0.a))).x, 1i, 62196i)), max(u_input.b.yx, u_input.b.zx), ~func_3(Struct_2(global4.a, Struct_1(global4.b.a), vec4<i32>(-15017i, global4.e, u_input.b.x, global4.e), u_input.b.yy, _wgslsmith_add_i32(u_input.b.x, global4.d.x)), Struct_1(select(vec3<bool>(global4.b.a.x, false, true), vec3<bool>(var_1.x, false, var_1.x), true)), _wgslsmith_mult_vec4_i32(vec4<i32>(global4.e, u_input.b.x, 14563i, global4.c.x), global4.c) & _wgslsmith_div_vec4_i32(global4.c, vec4<i32>(u_input.b.x, -1995i, global4.d.x, -2147483647i)), Struct_3(vec3<i32>(u_input.b.x, 1i, 0i), Struct_1(global3[_wgslsmith_index_u32(u_input.a.x, 17u)]))).x);
    var var_4 = select(~vec3<u32>(65240u, u_input.a.x, _wgslsmith_dot_vec2_u32(max(u_input.a.xy, u_input.a.zx), _wgslsmith_clamp_vec2_u32(u_input.a.zz, u_input.a.xx, u_input.a.zz))), u_input.a, select(var_1.zyy, vec3<bool>(false, any(select(vec4<bool>(false, var_1.x, true, global4.b.a.x), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), var_1.x), vec3<bool>(any(vec4<bool>(true, true, true, true)), func_1().x, all(var_1.yy))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x << (0u % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1016f, global4.a)), -(i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(-595f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -940f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global4.a, global4.a))))));
}

