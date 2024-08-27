struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)));

var<private> global3: array<Struct_2, 25>;

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: u32) -> bool {
    global2 = array<Struct_1, 3>();
    var var_0 = Struct_2(Struct_1(select(vec3<bool>(global1.x != global1.x, global4.x, global4.x), !(!vec3<bool>(false, global4.x, arg_0)), arg_0)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~min(firstTrailingBit(u_input.a.xxx), u_input.a.yxy), ~(global1.yyw << (vec3<u32>(global1.x, 0u, 18546u) % vec3<u32>(32u)))), 3u)], u_input.a, select(vec3<bool>(!arg_0, !global4.x, select(!arg_0, false, global4.x)), !vec3<bool>(true, global4.x, select(global4.x, false, global4.x)), !select(vec3<bool>(arg_0, arg_0, global4.x), vec3<bool>(arg_0, true, true), !vec3<bool>(true, arg_0, arg_0))), u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-519f)) - _wgslsmith_f_op_f32(3242f * -1000f)), _wgslsmith_div_f32(1000f, arg_1), arg_1, arg_2) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_1, 1311f, -1517f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -811f, -1887f, 690f) - vec4<f32>(330f, arg_2, arg_2, 530f))))));
    var var_2 = max(u_input.b.xw, -_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.yw, vec2<i32>(22328i, 56512i)) << (select(global1.ww, var_0.c.xz, vec2<bool>(var_0.b.a.x, true)) % vec2<u32>(32u)), ~countOneBits(vec2<i32>(var_0.e, 0i))));
    var_1 = vec4<f32>(346f, var_1.x, -1025f, arg_1);
    return (_wgslsmith_mod_i32(var_2.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(54467i, 43779i), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, var_2.x, -2147483647i, -35007i)))) >> (var_0.c.x % 32u)) >= 7746i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(select(vec3<bool>(global4.x, u_input.a.x != 1u, !func_3(global4.x, -861f, 1000f, u_input.a.x)), select(!vec3<bool>(global4.x, true, global4.x), vec3<bool>(true, true, true), any(vec4<bool>(global4.x, global4.x, global4.x, false)) | func_3(global4.x, 2666f, 1330f, u_input.a.x)), global4.x));
    var_0 = Struct_1(select(var_0.a, !(!(!vec3<bool>(global4.x, true, true))), (global1.x == _wgslsmith_clamp_u32(global1.x, 41914u, 41232u)) && !global4.x));
    global4 = select(!select(var_0.a.zz, vec2<bool>(all(vec2<bool>(global4.x, var_0.a.x)), global4.x), all(!var_0.a.zy)), var_0.a.yz, !var_0.a.zx);
    let var_1 = global3[_wgslsmith_index_u32(~(~abs(min(9677u, u_input.a.x) & firstLeadingBit(1u))), 25u)];
    global3 = array<Struct_2, 25>();
    return Struct_1(vec3<bool>(any(var_1.b.a), 1u < global1.x, countOneBits(reverseBits(0i)) > _wgslsmith_div_i32(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, var_1.e))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global3 = array<Struct_2, 25>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f * -548f), _wgslsmith_f_op_f32(max(-798f, -281f)), -235f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-708f, 708f, 928f))) + vec3<f32>(1000f, _wgslsmith_f_op_f32(min(170f, 1022f)), -445f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1218f, -961f, global4.x)))))));
    var var_1 = arg_0.x;
    let var_2 = u_input.b.x;
    let var_3 = func_2();
    return global0[_wgslsmith_index_u32(u_input.a.x, 14u)];
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    global3 = array<Struct_2, 25>();
    let var_0 = -(-select(u_input.b, abs(vec4<i32>(2147483647i, arg_0, -1i, u_input.b.x)), select(vec4<bool>(arg_1.a.a.x, false, true, false), vec4<bool>(arg_1.d.x, arg_2.a.a.x, arg_2.b.a.x, false), vec4<bool>(global4.x, arg_1.a.a.x, arg_1.a.a.x, global4.x))) & abs(vec4<i32>(i32(-1i) * -2147483647i, arg_2.e, arg_2.e, 2147483647i)));
    let var_1 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~reverseBits(32630u), arg_1.c.x), ~_wgslsmith_add_vec2_u32(~arg_1.c.yx, arg_1.c.yx));
    return ~_wgslsmith_dot_vec4_i32(vec4<i32>((arg_2.e | 3938i) ^ arg_1.e, max(_wgslsmith_add_i32(arg_0, arg_2.e), _wgslsmith_mod_i32(19971i, arg_2.e)), arg_0, 1i), select(~(~vec4<i32>(arg_1.e, 1i, var_0.x, arg_1.e)), vec4<i32>(_wgslsmith_div_i32(arg_2.e, -1i), _wgslsmith_div_i32(arg_1.e, arg_2.e), -34230i, -32864i), false));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = select(vec4<bool>(true, global4.x, select(global4.x, select(!global4.x, func_3(global4.x, arg_1, -895f, 4294967295u), global4.x | arg_2.a.x), false), !(arg_0 > -u_input.b.x)), select(vec4<bool>(any(vec3<bool>(true, arg_2.a.x, global4.x)), func_1(!arg_2.a.zz).d.x, 2147483647i > u_input.b.x, true), !select(!vec4<bool>(arg_2.a.x, true, true, arg_2.a.x), select(vec4<bool>(arg_2.a.x, global4.x, arg_2.a.x, global4.x), vec4<bool>(true, arg_2.a.x, arg_2.a.x, false), true), vec4<bool>(false, true, arg_2.a.x, global4.x)), false), select(select(arg_2.a.x, !arg_2.a.x, true | (24115i > arg_0)), any(vec2<bool>(any(arg_2.a), any(vec3<bool>(arg_2.a.x, true, arg_2.a.x)))), true));
    global2 = array<Struct_1, 3>();
    global3 = array<Struct_2, 25>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mod_i32(func_4(abs(u_input.b.x), func_1(vec2<bool>(true, global4.x)), Struct_2(Struct_1(vec3<bool>(global4.x, true, true)), Struct_1(vec3<bool>(false, global4.x, true)), u_input.a, vec3<bool>(false, global4.x, global4.x), -16407i)), u_input.b.x) & func_4(~(-1i), global3[_wgslsmith_index_u32(global1.x, 25u)], func_1(!vec2<bool>(global4.x, true))), 1f, global2[_wgslsmith_index_u32(~(global1.x & reverseBits(1u)), 3u)], u_input.a.yz);
    var var_1 = !select(select(!(!vec4<bool>(true, false, var_0.a.x, true)), select(select(vec4<bool>(false, global4.x, var_0.a.x, global4.x), vec4<bool>(true, global4.x, global4.x, var_0.a.x), vec4<bool>(false, true, global4.x, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, var_0.a.x, global4.x, var_0.a.x), vec4<bool>(true, var_0.a.x, true, true)), vec4<bool>(global4.x, true, var_0.a.x, global4.x)), false), vec4<bool>(var_0.a.x, true, true, false), !(u_input.b.x > (0i >> (0u % 32u))));
    var var_2 = ~(vec4<u32>(global1.x, ~global1.x, countOneBits(15652u), u_input.a.x) | u_input.a);
    var var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.zwz, ~(~vec3<i32>(76077i, u_input.b.x, u_input.b.x))), u_input.b.zwx);
    let var_4 = global3[_wgslsmith_index_u32(countOneBits(50867u), 25u)];
    var var_5 = -_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, 9804i), _wgslsmith_sub_i32(var_3.x, var_4.e));
    let var_6 = ~global1.wyz;
    global4 = select(var_0.a.yy, vec2<bool>((_wgslsmith_add_i32(-1i, u_input.b.x) >> (~4294967295u % 32u)) < u_input.b.x, select(2147483647i >= (u_input.b.x << (var_4.c.x % 32u)), func_5(0i, -352f, Struct_1(vec3<bool>(var_0.a.x, false, true)), vec2<u32>(global1.x, var_4.c.x)).a.x | func_1(vec2<bool>(var_4.b.a.x, true)).d.x, true)), var_4.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, var_4.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 138f), vec2<f32>(537f, -871f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-517f, 1965f) + vec2<f32>(1208f, 1000f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(614f, 1129f) * vec2<f32>(169f, 1134f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1332f - -584f)))));
}

