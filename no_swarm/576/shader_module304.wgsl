struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(2546u, 953u, 33403u));

var<private> global1: bool = false;

var<private> global2: Struct_5;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> bool {
    let var_0 = -195f;
    global0 = array<vec3<u32>, 1>();
    global2 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-369f * global2.b.a), _wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(-199f * var_0), var_0)), global2.d.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_0.b, arg_1.b, global2.c, 6360i), -u_input.c, vec4<i32>(arg_0.b, 23195i, global2.c, u_input.a.x)), ~select(u_input.c, u_input.c, arg_0.a)), -6072i), global2.d);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2.b.a), 0u, global2.d.b.c, ~firstTrailingBit(~vec4<u32>(u_input.b, 46820u, 18481u, global2.d.a.d.x)), select(vec2<bool>(global2.d.b.e.x, arg_1.a.x), global2.b.e, global2.b.e.x | arg_0.a.x)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + 182f) + _wgslsmith_f_op_f32(var_0 - var_0)))), ~(~(24797u ^ global2.d.a.b)), !select(!vec4<bool>(arg_1.a.x, true, true, arg_0.a.x), global2.d.b.c, select(vec4<bool>(arg_0.a.x, true, false, false), global2.b.c, arg_1.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(93926u, 1u, global2.d.b.d.x, 16777u), ~vec4<u32>(u_input.b, 15392u, 78219u, 113839u)), select(vec2<bool>(any(arg_0.a.zzz), false || arg_1.a.x), vec2<bool>(false, any(arg_1.a)), select(global2.d.a.e, arg_0.a.yy, true && arg_1.a.x))));
    var_1 = global2.d;
    return !select(any(var_1.a.c.yw), true & arg_0.a.x, any(vec4<bool>(global2.d.a.a <= 518f, !var_1.b.e.x, true, true)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: f32) -> bool {
    global2 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b.a, arg_1.a.a, 101f, 1238f), global2.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1160f, global2.b.a, arg_3, global2.d.a.a)))))), Struct_1(1260f, u_input.b, !arg_0.a, abs(vec4<u32>(4294967295u, global2.b.b, arg_1.b.b, 1u) >> (global2.d.b.d % vec4<u32>(32u))) | ~(vec4<u32>(0u, 23955u, arg_1.a.b, arg_1.b.b) >> (global2.b.d % vec4<u32>(32u))), arg_1.b.e), _wgslsmith_mod_i32(-u_input.c.x, (~(-32560i) | _wgslsmith_dot_vec2_i32(vec2<i32>(43934i, global2.c), vec2<i32>(-2147483647i, -39318i))) << ((u_input.b >> (_wgslsmith_mult_u32(58588u, 26923u) % 32u)) % 32u)), Struct_2(global2.d.b, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1189f), _wgslsmith_f_op_f32(arg_3 - 773f))), global2.b.d.x, select(select(arg_0.a, vec4<bool>(false, arg_1.a.e.x, false, true), arg_0.a), !arg_0.a, all(vec4<bool>(arg_0.a.x, global2.b.c.x, global2.d.a.e.x, true))), vec4<u32>(u_input.b, max(14531u, global2.b.d.x), firstLeadingBit(5569u), arg_1.a.d.x), select(select(arg_1.b.c.xz, vec2<bool>(true, true), false), vec2<bool>(false, true), true))));
    let var_0 = Struct_3(65606u, arg_1, global2.a.www);
    var var_1 = Struct_3(0u, global2.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global2.a.wxw)))));
    var var_2 = var_0;
    var var_3 = Struct_1(arg_1.a.a, ~39164u << (abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_1.a), countOneBits(var_2.b.a.d.zy))) % 32u), !(!(!arg_0.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_sub_u32(arg_1.a.d.x, 21122u), u_input.b, 56336u << (1u % 32u)) & vec4<u32>(var_1.b.b.d.x, var_2.b.a.d.x, abs(37596u), min(var_1.a, u_input.b)), ~abs(abs(vec4<u32>(u_input.b, 1u, 0u, 4294967295u)))), vec2<bool>(true, !all(select(vec3<bool>(false, var_2.b.b.c.x, false), vec3<bool>(var_2.b.b.c.x, arg_0.a.x, arg_0.a.x), true))));
    return all(!vec2<bool>(var_3.c.x, true));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> bool {
    var var_0 = -1116f;
    var var_1 = Struct_4(vec4<bool>(!all(vec3<bool>(false, false, false)), true, any(vec2<bool>(false, arg_1.b.a.e.x)) == all(!arg_1.b.b.e), !global2.b.e.x), u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(569f, arg_1.b.b.a) + 726f);
    let var_3 = arg_1.b.a;
    let var_4 = arg_1;
    return func_4(Struct_4(vec4<bool>(true, func_3(Struct_4(arg_1.b.b.c, arg_0), Struct_4(vec4<bool>(false, var_4.b.a.e.x, false, var_3.e.x), -14159i)), true, arg_1.b.b.c.x), global2.c), global2.d, abs(vec3<i32>(-1i) * -vec3<i32>(-5883i, arg_0, var_1.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1215f)))))) | func_3(Struct_4(vec4<bool>(true, arg_2, select(false, var_3.c.x, var_1.a.x), func_3(Struct_4(var_4.b.a.c, 62974i), Struct_4(global2.d.a.c, -6286i))), -1i), Struct_4(vec4<bool>(false, true, global2.c < 27717i, var_3.e.x), _wgslsmith_add_i32(arg_0, -global2.c)));
}

fn func_1(arg_0: Struct_5) -> vec3<i32> {
    global1 = global2.b.c.x;
    global1 = any(select(vec2<bool>(!global2.b.e.x, arg_0.b.c.x), vec2<bool>(func_2(u_input.a.x, Struct_3(0u, global2.d, global2.a.xyy), arg_0.b.c.x), false), true || global2.d.b.e.x));
    var var_0 = min(arg_0.d.b.d.yzx, max(vec3<u32>(_wgslsmith_clamp_u32(arg_0.d.a.d.x, 77433u, 17096u), min(global2.b.d.x, 1u), 47742u), reverseBits(select(global0[_wgslsmith_index_u32(0u, 1u)], arg_0.b.d.yyz, vec3<bool>(true, false, global2.b.e.x))))) ^ vec3<u32>(countOneBits(_wgslsmith_mod_u32(~arg_0.b.d.x, max(1u, 3963u))), 4294967295u, u_input.b);
    var var_1 = global2.d;
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(arg_0.a.zw));
    return ~vec3<i32>(i32(-1i) * -2147483647i, -11140i, -1i);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_4(arg_2.b.a.c, u_input.c.x);
    global0 = array<vec3<u32>, 1>();
    var var_1 = !(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, global2.d.a.c.x, var_0.a.x, arg_0.x), select(var_0.a, var_0.a, vec4<bool>(var_0.a.x, false, global2.b.e.x, var_0.a.x)))) || !global2.d.a.c.x);
    global2 = Struct_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1765f, global2.a.x, arg_2.c.x, 1475f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a))), vec4<f32>(global2.b.a, _wgslsmith_f_op_f32(ceil(404f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-384f, global2.a.x) * _wgslsmith_f_op_f32(floor(693f))), global2.d.b.a)), global2.b, -26612i, global2.d);
    var var_2 = var_0;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b & _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(u_input.b, 1u)], vec3<u32>(11407u, 0u, u_input.b)), 22727u | (global2.b.d.x | 35993u), ~18716u, 1u), ~vec4<u32>(func_5(select(vec3<bool>(true, true, global2.b.c.x), vec3<bool>(global2.b.c.x, global2.b.c.x, true), vec3<bool>(global2.b.c.x, true, true)), func_1(Struct_5(vec4<f32>(-1199f, -715f, global2.a.x, global2.b.a), global2.d.b, global2.c, Struct_2(global2.d.b, global2.d.a))), Struct_3(u_input.b, Struct_2(global2.b, global2.b), global2.a.yzw)), ~_wgslsmith_mod_u32(global2.b.b, u_input.b), abs(1u), abs(4294967295u)), ~(~reverseBits(vec4<u32>(23402u, 1u, 1u, 24364u))) & select(vec4<u32>(_wgslsmith_div_u32(21569u, 114401u), 81880u, _wgslsmith_mult_u32(38895u, 62555u), max(1u, 0u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 35384u, u_input.b), vec4<u32>(global2.d.a.b, 0u, 4294967295u, 13650u), global2.d.a.d), select(!vec4<bool>(global2.b.e.x, global2.d.a.e.x, false, true), vec4<bool>(false, global2.d.b.c.x, global2.d.a.e.x, global2.b.c.x), global2.d.b.e.x)));
    var var_1 = Struct_2(global2.d.b, Struct_1(_wgslsmith_f_op_f32(floor(global2.b.a)), u_input.b, global2.b.c, reverseBits(min(~vec4<u32>(global2.b.b, 3295u, 1u, var_0.x), _wgslsmith_mult_vec4_u32(var_0, vec4<u32>(86693u, u_input.b, global2.b.b, var_0.x)))), vec2<bool>(_wgslsmith_div_f32(-1264f, -621f) != _wgslsmith_f_op_f32(step(-218f, global2.d.a.a)), true)));
    var var_2 = Struct_3(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(51104u, 0u), u_input.b >> (global2.d.b.b % 32u)) | _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(83618u, var_1.a.b, 27092u, var_0.x)), _wgslsmith_div_vec4_u32(~var_1.a.d, select(var_1.a.d, var_0, global2.d.b.e.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(260f, -368f) + 785f), _wgslsmith_add_u32(~2840u, 1u), var_1.b.c, _wgslsmith_mod_vec4_u32(var_1.a.d, global2.d.a.d), !select(vec2<bool>(false, var_1.b.e.x), vec2<bool>(global2.b.c.x, global2.b.e.x), global2.d.a.c.yx)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2817f, -451f, true)) * global2.a.x), 27743u, !var_1.a.c, var_1.b.d, vec2<bool>(any(vec4<bool>(global2.b.e.x, true, true, global2.d.a.e.x)), func_4(Struct_4(global2.b.c, 33582i), Struct_2(global2.d.b, global2.b), u_input.c.wwz, var_1.a.a)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(global2.a.xwy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.zzx) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(640f, global2.d.a.a, var_1.a.a), global2.a.yxy, global2.b.c.x))))))));
    var_2 = Struct_3(_wgslsmith_div_u32(u_input.b | ~_wgslsmith_sub_u32(0u, 0u), global2.d.b.d.x), var_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.b.a, -1572f, 1040f)))) * vec3<f32>(613f, _wgslsmith_f_op_f32(950f - -409f), var_2.c.x)) * vec3<f32>(-1642f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.a, var_1.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.b.b.a, -606f)) - _wgslsmith_f_op_f32(ceil(426f))) + 495f), select(~(~var_0.xyz) >> ((min(global2.b.d.xzy, var_2.b.a.d.zxx) | ~var_2.b.b.d.yww) % vec3<u32>(32u)), vec3<u32>(u_input.b, ~max(u_input.b, 4294967295u), ~(~9953u)), func_2(_wgslsmith_mult_i32(-3587i, ~8484i), Struct_3(_wgslsmith_sub_u32(global2.b.b, var_1.b.d.x), var_2.b, vec3<f32>(var_2.c.x, 2635f, var_1.b.a)), true)));
}

