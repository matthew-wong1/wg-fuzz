struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<u32>(44017u, 1u), 0u, 0u, false), Struct_1(vec2<u32>(1u, 54791u), 15917u, 0u, false), Struct_1(vec2<u32>(1u, 59437u), 65114u, 95342u, true), Struct_1(vec2<u32>(0u, 22798u), 1514u, 0u, true), Struct_1(vec2<u32>(22329u, 1u), 0u, 17940u, true), Struct_1(vec2<u32>(10338u, 23413u), 0u, 22037u, false), Struct_1(vec2<u32>(1u, 4294967295u), 4294967295u, 112643u, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = arg_0;
    global1 = array<Struct_1, 7>();
    var var_0 = any(select(!(!select(vec3<bool>(true, false, arg_0.d), vec3<bool>(true, true, false), vec3<bool>(true, arg_0.d, true))), !vec3<bool>(true, all(vec2<bool>(arg_0.d, global0.d)), global0.d & false), false));
    var var_1 = true;
    let var_2 = vec3<i32>(u_input.b, 0i, u_input.b);
    return false | any(select(!vec2<bool>(arg_0.d, global0.d), vec2<bool>(all(vec2<bool>(arg_0.d, false)), !arg_0.d), vec2<bool>(!global0.d, global0.d)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -u_input.b, ~u_input.b, countOneBits(u_input.b)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -35615i, u_input.d.x, u_input.b), vec4<i32>(u_input.b, u_input.d.x, -2147483647i, u_input.d.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(269f)))), -558f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(632f, 944f, 190f) - vec3<f32>(352f, -334f, -727f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1328f, -1129f, -121f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(964f, -1190f, -654f) - vec3<f32>(101f, -287f, -1000f))), vec3<f32>(1451f, 1326f, 231f)), !vec3<bool>(global0.d, true, func_3(Struct_1(global0.a, global0.b, global0.a.x, global0.d))))), select(!vec4<bool>(func_3(global1[_wgslsmith_index_u32(u_input.c, 7u)]), true, false, !global0.d), select(select(select(vec4<bool>(global0.d, true, false, true), vec4<bool>(global0.d, false, global0.d, false), global0.d), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, global0.d, global0.d), global0.d), !vec4<bool>(false, true, true, global0.d)), !(!vec4<bool>(global0.d, true, global0.d, global0.d)), select(select(vec4<bool>(false, global0.d, true, global0.d), vec4<bool>(global0.d, false, global0.d, global0.d), global0.d), select(vec4<bool>(false, false, false, global0.d), vec4<bool>(global0.d, global0.d, global0.d, global0.d), vec4<bool>(global0.d, false, false, global0.d)), vec4<bool>(true, true, false, global0.d))), global0.b > global0.c));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1696f))))), var_0.b, var_0.b, var_0.b);
    global1 = array<Struct_1, 7>();
    let var_2 = false;
    let var_3 = ~reverseBits(global0.a.x);
    return Struct_1(vec2<u32>(reverseBits(_wgslsmith_div_u32(max(4294967295u, var_3), var_3)), 1u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(min(32580u, 50193u), firstTrailingBit(var_3), 4294967295u)), firstTrailingBit(vec3<u32>(firstTrailingBit(var_3), var_3, 4294967295u))), ~57095u, global0.d);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = any(!(!vec2<bool>(!arg_1.x, global0.d)));
    var var_1 = Struct_3(_wgslsmith_sub_u32(abs(_wgslsmith_div_u32(firstLeadingBit(u_input.c), global0.a.x)), ~reverseBits(~0u)), Struct_1(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 0u), global0.a, max(~vec2<u32>(arg_0.c, global0.a.x), select(global0.a, global0.a, arg_1.xy))), ~(~(~0u)), ~select(180860u, 4294967295u, func_3(arg_0)), arg_0.d));
    global0 = Struct_1(abs(arg_0.a), ~(~31621u), _wgslsmith_div_u32(49551u, 28595u), !(true == all(!vec4<bool>(arg_0.d, false, arg_0.d, false))));
    var var_2 = var_0;
    var var_3 = Struct_2(func_2());
    return Struct_1(~(var_1.b.a | vec2<u32>(~var_1.a, 88424u)), ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 40119u, 1u, 1u), vec4<u32>(44301u, 47695u, 1u, var_3.a.b)), u_input.a), arg_0.c, all(select(arg_1.yx, arg_1.zy, !arg_1.xz)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = !select(vec2<bool>(true, true), !vec2<bool>(any(vec2<bool>(true, true)), false), vec2<bool>(arg_0.b.d, true));
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    var var_1 = arg_0.a;
    global0 = func_4(func_2(), !select(vec3<bool>(true, true, var_0.x), select(!vec3<bool>(arg_0.b.d, false, false), !vec3<bool>(global0.d, global0.d, false), vec3<bool>(true, global0.d, true)), false), arg_1.xy, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f) + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1728f, -1181f) * vec2<f32>(1498f, 448f)), vec2<f32>(1780f, 1000f))))))));
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(abs(1u), firstLeadingBit(u_input.c), true) >> (~arg_0.a % 32u), 0u) >> (global0.a.x % 32u), 7u)];
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = false && global0.d;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(2096f, -639f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -266f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-433f, 1028f, 884f) + vec3<f32>(801f, -1000f, -685f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2049f, -732f, 282f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1588f, 226f, -1081f), vec3<f32>(125f, 2018f, -942f))), func_2().d))));
    global0 = Struct_1(global0.a >> (_wgslsmith_add_vec2_u32(vec2<u32>(global0.b, arg_1.a), firstTrailingBit(arg_1.b.a)) % vec2<u32>(32u)), ~(func_2().c << ((func_2().b & 21573u) % 32u)), _wgslsmith_div_u32(1u, 1u) & firstTrailingBit(~(1u ^ u_input.c)), func_4(Struct_1(vec2<u32>(u_input.a, 0u) & ~arg_1.b.a, max(_wgslsmith_sub_u32(33584u, 23096u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, 42740u, global0.c, 0u), vec4<u32>(global0.a.x, u_input.c, 64338u, u_input.e))), _wgslsmith_add_u32(~arg_1.a, 4163u), !(!arg_3.x)), select(vec3<bool>(false, true, arg_1.b.d), vec3<bool>(false, any(vec3<bool>(arg_0.x, false, true)), any(vec4<bool>(false, false, arg_1.b.d, arg_3.x))), true), _wgslsmith_sub_vec2_i32(select(select(vec2<i32>(-8009i, -1761i), vec2<i32>(9554i, u_input.d.x), arg_1.b.d), vec2<i32>(u_input.b, 23079i), all(vec2<bool>(arg_0.x, true))), select(vec2<i32>(u_input.d.x, u_input.b), u_input.d, all(vec3<bool>(true, true, global0.d)))), vec2<f32>(_wgslsmith_f_op_f32(round(861f)), var_1.x)).d);
    let var_2 = u_input.d.x;
    global1 = array<Struct_1, 7>();
    return Struct_2(func_1(arg_1, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, -40747i, -404i), ~vec3<i32>(var_2, -25861i, -14797i)) | (vec3<i32>(15695i, -85399i, -2147483647i) >> (~vec3<u32>(arg_1.a, 13859u, arg_1.a) % vec3<u32>(32u))), 2147483647i & -arg_2));
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: Struct_4, arg_3: Struct_2) -> Struct_2 {
    var var_0 = abs(func_5(!arg_2.d.xx, Struct_3(~_wgslsmith_mod_u32(arg_3.a.a.x, global0.a.x), global1[_wgslsmith_index_u32(global0.b, 7u)]), 1i, select(select(vec2<bool>(true, true), vec2<bool>(false, global0.d), vec2<bool>(arg_3.a.d, false)), arg_2.d.zz, vec2<bool>(arg_3.a.d, false))).a.a);
    let var_1 = Struct_1(arg_3.a.a, 0u, global0.b, arg_2.d.x);
    var var_2 = Struct_3(4294967295u, func_1(Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.c, u_input.e, arg_0, var_1.b), vec4<u32>(4294967295u, 0u, u_input.c, 75303u) >> (vec4<u32>(arg_0, arg_0, var_1.a.x, var_0.x) % vec4<u32>(32u))), var_1), vec3<i32>(-1i) * -vec3<i32>(arg_2.a, 2147483647i, -1i), arg_1));
    let var_3 = Struct_2(func_2());
    var_2 = Struct_3(abs(arg_0), func_2());
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    let var_0 = func_6(42341u, u_input.b, Struct_4(_wgslsmith_mod_i32(~reverseBits(u_input.d.x), u_input.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1633f, 1041f), _wgslsmith_f_op_f32(abs(-414f))))), vec3<f32>(768f, _wgslsmith_f_op_f32(f32(-1f) * -1397f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1376f) + -453f)), !vec4<bool>(!global0.d, true, true, true)), func_5(select(vec2<bool>(false, true), vec2<bool>(any(vec4<bool>(false, global0.d, global0.d, global0.d)), true), all(!vec4<bool>(false, global0.d, global0.d, true))), Struct_3(u_input.c, func_1(Struct_3(55732u, global1[_wgslsmith_index_u32(global0.c, 7u)]), select(vec3<i32>(u_input.d.x, u_input.d.x, u_input.b), vec3<i32>(u_input.d.x, 0i, u_input.b), global0.d), u_input.b << (u_input.e % 32u))), abs(i32(-1i) * -26055i), !vec2<bool>(global0.d & false, !global0.d)));
    global1 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1563f, 767f), vec2<f32>(910f, 1234f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1036f, 930f) * vec2<f32>(-635f, 248f))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1022f, 1054f))))))));
    let var_2 = Struct_4(-_wgslsmith_add_i32(u_input.b, -u_input.d.x) ^ 1i, -1232f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(var_1.x, var_1.x, var_1.x))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(-706f, -525f)), _wgslsmith_f_op_f32(1153f + var_1.x), _wgslsmith_f_op_f32(abs(-308f))))), var_0.a.d)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(!var_0.a.d, all(vec3<bool>(true, var_0.a.d, global0.d)), false, global0.d), func_1(Struct_3(27940u, global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<i32>(u_input.d.x, 1i, 12496i) >> (vec3<u32>(global0.c, u_input.a, global0.b) % vec3<u32>(32u)), 0i).d), !vec4<bool>(!global0.d, global0.d || false, false, var_0.a.d), select(any(select(vec4<bool>(true, true, false, global0.d), vec4<bool>(global0.d, var_0.a.d, global0.d, true), vec4<bool>(global0.d, false, false, true))), !(var_1.x >= var_1.x), var_0.a.d)));
    var var_3 = _wgslsmith_clamp_vec4_u32(max(vec4<u32>(_wgslsmith_add_u32(~26759u, 0u), 1u, ~func_2().a.x, func_2().c), vec4<u32>(firstLeadingBit(16858u), ~(~4294967295u), _wgslsmith_sub_u32(abs(global0.b), func_2().a.x), ~global0.b)), vec4<u32>((_wgslsmith_mult_u32(u_input.c, 0u) & var_0.a.a.x) | abs(24999u), reverseBits(abs(~global0.b)), _wgslsmith_sub_u32(u_input.a, 367u), ~u_input.c), abs(abs(vec4<u32>(1u, 1u, u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(27390u, 50496u, 103601u, 32613u), vec4<u32>(27794u, global0.b, 0u, var_0.a.a.x))))));
    var_1 = vec2<f32>(var_2.b, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(14703i, -_wgslsmith_clamp_vec3_i32(countOneBits(-vec3<i32>(var_2.a, var_2.a, u_input.d.x)), firstLeadingBit(vec3<i32>(u_input.d.x, var_2.a, 1i) ^ vec3<i32>(u_input.d.x, -2157i, u_input.d.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.a, var_2.a, 44172i) ^ vec3<i32>(38787i, u_input.b, 0i), vec3<i32>(u_input.b, 1i, u_input.b))), 23365u, _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(-_wgslsmith_add_i32(var_2.a, var_2.a), firstLeadingBit(-var_2.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1158f, 912f, 865f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.c), _wgslsmith_f_op_vec3_f32(var_2.c * var_2.c), select(vec3<bool>(true, global0.d, var_0.a.d), var_2.d.zyy, global0.d))))));
}

