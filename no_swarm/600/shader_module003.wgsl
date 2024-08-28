struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<u32, 18> = array<u32, 18>(20571u, 1u, 0u, 21304u, 23468u, 15404u, 52628u, 49231u, 31953u, 70640u, 1u, 81759u, 7521u, 1u, 1u, 25045u, 0u, 1u);

var<private> global1: array<f32, 9>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec4<f32>, arg_3: i32) -> vec3<i32> {
    global1 = array<f32, 9>();
    global1 = array<f32, 9>();
    global0 = array<u32, 18>();
    var var_0 = Struct_4(vec4<i32>(abs(u_input.b), -_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(arg_3, -41973i)), vec2<i32>(arg_0.c.x, -2147483647i)), 34475i, _wgslsmith_mod_i32(-34129i, arg_3)), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1190f)) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1738f), -754f)), all(vec4<bool>(arg_0.a, true, arg_0.a, false)), min(vec2<i32>(arg_3, min(arg_0.c.x, u_input.b)), firstTrailingBit(vec2<i32>(arg_0.c.x, 0i)) << (u_input.a.yz % vec2<u32>(32u))), -730f));
    global1 = array<f32, 9>();
    return _wgslsmith_add_vec3_i32(arg_0.c, vec3<i32>(-1i) * -firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, arg_0.c.x), var_0.a.xxw)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_4) -> vec4<i32> {
    var var_0 = _wgslsmith_add_vec4_i32(select(-(~vec4<i32>(-12203i, u_input.b, -89184i, -1i)) >> (abs(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], 7725u, 11336u)) % vec4<u32>(32u)), vec4<i32>(u_input.b, -32993i, select(firstLeadingBit(18916i), ~1i, true), arg_0), arg_2.b.b), vec4<i32>(~_wgslsmith_dot_vec3_i32(arg_2.a.yxw, func_3(Struct_1(arg_2.b.b, arg_1, arg_2.a.wzx), Struct_5(vec3<bool>(arg_2.b.b, arg_2.b.b, true), true), vec4<f32>(arg_1.x, arg_2.b.a.x, -333f, -1186f), arg_0)), 0i, _wgslsmith_sub_i32(2147483647i, 0i), _wgslsmith_mod_i32(-10635i, 1i)));
    var var_1 = arg_2.a.yyz;
    var var_2 = false;
    var var_3 = Struct_1(!(_wgslsmith_sub_i32(-var_1.x, -2147483647i ^ var_1.x) >= arg_0), vec2<f32>(-298f, 1000f), var_0.zxw);
    let var_4 = !select(!(!vec4<bool>(true, true, false, var_3.a)), !select(select(vec4<bool>(false, arg_2.b.b, arg_2.b.b, true), vec4<bool>(true, arg_2.b.b, true, false), vec4<bool>(false, false, true, arg_2.b.b)), !vec4<bool>(var_3.a, true, arg_2.b.b, arg_2.b.b), vec4<bool>(arg_2.b.b, var_3.a, var_3.a, false)), vec4<bool>(!var_3.a & true, global0[_wgslsmith_index_u32(49632u, 18u)] == _wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], u_input.d), all(select(vec4<bool>(var_3.a, var_3.a, false, true), vec4<bool>(true, var_3.a, var_3.a, true), vec4<bool>(true, arg_2.b.b, var_3.a, true))), !arg_2.b.b));
    return ~vec4<i32>(-2147483647i, -19144i, ~max(_wgslsmith_dot_vec2_i32(var_0.xy, var_1.zz), -11210i), _wgslsmith_div_i32(-34391i, max(27866i, 2606i)) & ~u_input.b);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = arg_2.a.a;
    var var_1 = arg_1.a;
    let var_2 = Struct_5(vec3<bool>(arg_0.c.x > _wgslsmith_dot_vec2_i32(func_4(vec4<i32>(arg_3.x, arg_1.c.x, arg_3.x, arg_0.c.x), vec3<bool>(false, arg_0.a, false), arg_0).c.xy, -arg_3), false, all(vec3<bool>(53111u <= global0[_wgslsmith_index_u32(94170u, 18u)], var_0, select(arg_2.a.a, false, arg_1.b)))), true);
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(arg_2.a.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1087f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1899u, 18u)], 9u)]) - func_4(vec4<i32>(-10087i, arg_1.c.x, u_input.b, -50595i), var_2.a, Struct_1(true, arg_2.a.b, arg_0.c)).b)))), true, func_3(arg_0, Struct_5(!select(vec3<bool>(arg_2.a.a, var_0, false), vec3<bool>(true, false, arg_0.a), vec3<bool>(arg_2.a.a, var_0, true)), arg_0.b.x > arg_2.a.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d, 9u)], arg_2.a.b.x, arg_2.a.b.x, arg_0.b.x) + vec4<f32>(var_1.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 9u)], -778f, -722f))))), -1i).xy, _wgslsmith_f_op_f32(-659f + _wgslsmith_f_op_f32(sign(arg_0.b.x))));
    global1 = array<f32, 9>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d, 206f) * vec2<f32>(arg_0.b.x, 593f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(418f, 351f) + arg_1.a))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1551f, -1450f)))), all(vec2<bool>((arg_3.x & arg_2.a.c.x) > _wgslsmith_div_i32(u_input.b, arg_0.c.x), !arg_2.a.a)), arg_0.c.yy, global1[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(~(_wgslsmith_add_u32(25412u, 1u) >> (u_input.c % 32u)), 18u)]), 9u)]);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> vec4<i32> {
    let var_0 = ~1i;
    var var_1 = Struct_4(arg_1, func_5(func_4(select(func_2(arg_1.x, vec2<f32>(-1470f, global1[_wgslsmith_index_u32(u_input.c, 9u)]), Struct_4(vec4<i32>(var_0, -14702i, -41523i, 1i), Struct_3(vec2<f32>(-1844f, global1[_wgslsmith_index_u32(0u, 9u)]), arg_0.x, arg_1.wz, global1[_wgslsmith_index_u32(1u, 9u)]))), min(arg_1, arg_1), vec4<bool>(arg_3, true, arg_0.x, arg_3)), select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, arg_3, false), select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(true, arg_3, arg_3), vec3<bool>(true, arg_3, true))), Struct_1(false, vec2<f32>(1f, 1f), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, 0i, 2147483647i), vec3<i32>(41992i, u_input.b, arg_1.x)))), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(765f, global1[_wgslsmith_index_u32(4294967295u, 9u)]) * vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2, 18u)], 18u)], 9u)], 203f)), true, _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_1.x), arg_1.xw), arg_1.xz), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 18u)], 18u)], 9u)])), Struct_2(func_4(-arg_1, vec3<bool>(arg_0.x, arg_3, true), func_4(vec4<i32>(0i, -16827i, u_input.b, 1i), vec3<bool>(false, arg_3, arg_0.x), Struct_1(arg_3, vec2<f32>(-1758f, global1[_wgslsmith_index_u32(1u, 9u)]), arg_1.zzx)))), max(reverseBits(-arg_1.yw), ~firstLeadingBit(vec2<i32>(26014i, var_0)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(77189u, global0[_wgslsmith_index_u32(u_input.d, 18u)], arg_2, 62398u)), 4294967295u), 9u)], global1[_wgslsmith_index_u32(u_input.d, 9u)]) * vec2<f32>(2416f, global1[_wgslsmith_index_u32(26583u, 9u)]));
    var var_3 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(78665u, select(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(4274u, 18u)]), 1u, true)), ~4294967295u), 9u)] - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(func_5(Struct_1(true, var_1.b.a, var_1.a.yxy), Struct_3(var_1.b.a, false, vec2<i32>(1i, var_1.a.x), -1450f), Struct_2(Struct_1(arg_3, vec2<f32>(global1[_wgslsmith_index_u32(arg_2, 9u)], 229f), arg_1.zwx)), vec2<i32>(u_input.b, 2147483647i)).a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(arg_2, 9u)], global1[_wgslsmith_index_u32(arg_2, 9u)])), _wgslsmith_div_f32(var_2.x, 722f))))));
    global0 = array<u32, 18>();
    return vec4<i32>(~var_1.a.x, var_0, -2147483647i, ~var_0 << (max(_wgslsmith_mod_u32(26455u, arg_2 & arg_2), 1u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-24752i, min(-_wgslsmith_dot_vec4_i32(func_1(vec2<bool>(true, true), vec4<i32>(69103i, u_input.b, 0i, u_input.b), 0u, true), min(vec4<i32>(u_input.b, -22327i, 0i, -2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i))), -38174i), min(~(u_input.b ^ 36624i), func_4(abs(vec4<i32>(u_input.b, 1i, u_input.b, u_input.b)) ^ firstLeadingBit(vec4<i32>(0i, 1i, u_input.b, 0i)), vec3<bool>(true, true, true), Struct_1(2147483647i > u_input.b, func_4(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), vec3<bool>(false, true, false), Struct_1(false, vec2<f32>(722f, 958f), vec3<i32>(u_input.b, -2147483647i, u_input.b))).b, select(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<bool>(true, true, true)))).c.x), 59210i);
    global0 = array<u32, 18>();
    global1 = array<f32, 9>();
    global1 = array<f32, 9>();
    let var_1 = vec3<bool>(!all(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), ((func_4(var_0, vec3<bool>(false, true, true), Struct_1(false, vec2<f32>(global1[_wgslsmith_index_u32(28803u, 9u)], 940f), var_0.zwy)).b.x == _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 18u)], 9u)])) | true) | false, true);
    let var_2 = Struct_1(!(var_1.x || (_wgslsmith_f_op_f32(min(-1095f, global1[_wgslsmith_index_u32(64459u, 9u)])) > global1[_wgslsmith_index_u32(~u_input.a.x, 9u)])), vec2<f32>(-1743f, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(~countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)]), 9u)]))), _wgslsmith_sub_vec3_i32(reverseBits(-(~var_0.xyx)), _wgslsmith_div_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 50459i, -2123i), var_0.zyx), firstTrailingBit(var_0.ywy), select(vec3<bool>(true, var_1.x, false), var_1, var_1)), vec3<i32>(reverseBits(var_0.x), firstTrailingBit(u_input.b), u_input.b))));
    var var_3 = u_input.a.x;
    let var_4 = true;
    let var_5 = Struct_2(Struct_1(!var_4, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(943f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 9u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, global1[_wgslsmith_index_u32(4294967295u, 9u)]))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 9u)], 350f) * vec2<f32>(224f, -1295f))))), var_0.wxz));
    let x = u_input.a;
    s_output = StorageBuffer((~select(u_input.a.x, global0[_wgslsmith_index_u32(u_input.c, 18u)], var_4) & ~(~u_input.d)) | u_input.d);
}

