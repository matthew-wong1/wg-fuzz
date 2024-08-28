struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(0u, 4294967295u, 1u), 6245u, vec4<bool>(false, true, false, true), -816f, vec2<bool>(true, true));

var<private> global1: u32 = 1u;

var<private> global2: vec2<bool>;

var<private> global3: array<i32, 27> = array<i32, 27>(1i, -1i, 1i, 0i, 1i, -9840i, -1i, i32(-2147483648), -15018i, 2147483647i, 2147483647i, 20769i, 1i, 6037i, 21095i, -43118i, -1i, 0i, -1i, -1738i, -16938i, 0i, i32(-2147483648), 2147483647i, 3234i, 27383i, i32(-2147483648));

var<private> global4: array<u32, 15>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0.d)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))));
    global3 = array<i32, 27>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, -531f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, -760f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(global0.d * -1500f))));
    let var_2 = 1252f;
    let var_3 = Struct_1(~global0.a, global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(global0.a, global0.a >> (global0.a % vec3<u32>(32u)))), 15u)], !vec4<bool>(!global0.c.x, global0.e.x, false, all(global0.c.xxx)), -1651f, global0.c.yy);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_2) + 203f))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = Struct_2(arg_1.d, Struct_1(global0.a, _wgslsmith_clamp_u32(~(~4294967295u), _wgslsmith_mod_u32(~1u, global0.b), global0.b), select(vec4<bool>(any(vec3<bool>(arg_0.x, true, true)), !arg_0.x, global0.e.x, !global2.x), !(!vec4<bool>(arg_1.d.c.x, true, global2.x, global0.c.x)), false), _wgslsmith_f_op_f32(func_3()), vec2<bool>(_wgslsmith_f_op_f32(sign(global0.d)) < arg_1.d.d, false)));
    let var_1 = var_0.a.d;
    var var_2 = var_0.a.d;
    let var_3 = _wgslsmith_add_u32(1u, ~(1u >> (~arg_2 % 32u)));
    global2 = !select(var_0.a.c.zw, select(select(vec2<bool>(false, arg_0.x), vec2<bool>(global0.c.x, false), global2.x && false), !select(vec2<bool>(var_0.a.c.x, arg_0.x), vec2<bool>(true, true), vec2<bool>(global0.e.x, var_0.b.c.x)), vec2<bool>(var_0.a.e.x, !arg_1.d.e.x)), var_0.a.e.x);
    return global0.d;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    let var_0 = abs(firstLeadingBit(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, min(1u, 38236u), min(global4[_wgslsmith_index_u32(global0.a.x, 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.a.x, 15u)], 15u)], 15u)]), 48229u), vec4<u32>(22779u, 0u, 16132u, arg_1.b.b) << (vec4<u32>(4294967295u, arg_1.a.b, global4[_wgslsmith_index_u32(arg_1.b.a.x, 15u)], arg_1.a.a.x) % vec4<u32>(32u))), 15u)]));
    var var_1 = ~1i;
    var var_2 = abs(_wgslsmith_clamp_i32(~(-1i), u_input.a.x, ~global3[_wgslsmith_index_u32(arg_1.b.b, 27u)] | -global3[_wgslsmith_index_u32(28204u, 27u)]) & -1i);
    var var_3 = Struct_2(arg_1.a, arg_1.a);
    let var_4 = countOneBits(_wgslsmith_add_i32(countOneBits(global3[_wgslsmith_index_u32(countOneBits(~global0.a.x), 27u)]), global3[_wgslsmith_index_u32(~12020u, 27u)]));
    return Struct_2(arg_1.b, arg_1.a);
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(global0.e.x, false), Struct_3(0i, global0.a.yy, vec2<f32>(global0.d, global0.d), Struct_1(vec3<u32>(global0.b, 16248u, global4[_wgslsmith_index_u32(30114u, 15u)]), 0u, vec4<bool>(global0.e.x, global2.x, false, true), global0.d, global0.e)), global4[_wgslsmith_index_u32(arg_0, 15u)], global0.d)), global0.d), -276f)), Struct_2(Struct_1(vec3<u32>(4294967295u, ~arg_0, global4[_wgslsmith_index_u32(0u, 15u)]), global0.b, !global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d - global0.d) + _wgslsmith_f_op_f32(-global0.d)), vec2<bool>(true, false)), Struct_1(~vec3<u32>(0u, 50688u, arg_0) >> (~vec3<u32>(4294967295u, 0u, arg_0) % vec3<u32>(32u)), firstLeadingBit(global0.b) & 4294967295u, select(global0.c, !global0.c, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 1000f)), global0.e)), false);
    var var_1 = var_0.b.c;
    global1 = global4[_wgslsmith_index_u32(firstTrailingBit(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(_wgslsmith_add_u32(global0.a.x, _wgslsmith_add_u32(var_0.a.b, 43289u))), global0.a.x & _wgslsmith_sub_u32(83346u, _wgslsmith_add_u32(4684u, 0u))), 15u)]), 15u)];
    var var_2 = Struct_5(func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-439f))), global0.d), Struct_2(func_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.d, arg_1))), Struct_2(Struct_1(vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 15u)], arg_0, 1u), var_0.a.b, vec4<bool>(var_0.a.c.x, false, false, global0.e.x), arg_1, global0.e), var_0.a), true).a, Struct_1(~var_0.b.a, 15666u, var_0.a.c, 1f, var_1.xx)), var_0.a.c.x), global4[_wgslsmith_index_u32(arg_0, 15u)], firstLeadingBit(i32(-1i) * -1i) | u_input.a.x, (_wgslsmith_f_op_f32(func_3()) <= -1755f) & any(vec3<bool>(true, u_input.a.x > 1i, true)));
    let var_3 = countOneBits(_wgslsmith_div_vec2_i32(u_input.a, ~u_input.a));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(max(global0.b << (countOneBits(61367u) % 32u), ~22132u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * _wgslsmith_f_op_f32(-global0.d)))));
    let var_0 = _wgslsmith_div_f32(-303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1909f - _wgslsmith_f_op_f32(global0.d - 379f))));
    global2 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.d)) - var_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0.d))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, var_0) * vec2<f32>(global0.d, var_0))))))), Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(global0.a, vec3<u32>(global0.b, 72096u, global0.b)), abs(~53017u), vec4<bool>(u_input.a.x < -46106i, global2.x, false, true), func_1(select(global0.b, global4[_wgslsmith_index_u32(global0.a.x, 15u)], false), -1091f).d, !select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, true), false)), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-580f, -409f)) - vec2<f32>(-518f, var_0)), Struct_2(Struct_1(global0.a, global0.a.x, vec4<bool>(global0.e.x, global2.x, global0.c.x, global2.x), global0.d, vec2<bool>(global2.x, false)), Struct_1(global0.a, global4[_wgslsmith_index_u32(66364u, 15u)], vec4<bool>(true, true, global2.x, true), var_0, vec2<bool>(global0.e.x, false))), !any(global0.e)).b), global2.x).b.e;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(func_1(global0.b, func_4(vec2<f32>(var_0, var_0), Struct_2(Struct_1(vec3<u32>(1u, 58519u, global4[_wgslsmith_index_u32(1u, 15u)]), global4[_wgslsmith_index_u32(global0.a.x, 15u)], vec4<bool>(false, false, false, false), -2153f, vec2<bool>(global2.x, global0.c.x)), Struct_1(global0.a, global0.b, global0.c, 578f, global0.e)), global2.x).a.d).d, _wgslsmith_f_op_f32(ceil(149f))), var_0) - _wgslsmith_div_f32(func_1(50085u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-753f)))).d, 653f));
    var var_2 = vec2<bool>(any(vec2<bool>(true, true)), global0.e.x != (_wgslsmith_add_i32(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a.x), 1385i) == _wgslsmith_mod_i32(u_input.a.x, -2147483647i)));
    var var_3 = select(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(~(~1u)), ~_wgslsmith_dot_vec2_u32(firstLeadingBit(global0.a.zy), _wgslsmith_div_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global0.a.x, 15u)], global0.b), vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 15u)]))), 1u), 27u)], 1i, func_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(214f, var_1)), func_4(vec2<f32>(181f, global0.d), Struct_2(Struct_1(global0.a, global0.b, vec4<bool>(global0.c.x, global2.x, true, global2.x), 2213f, vec2<bool>(true, true)), Struct_1(global0.a, global0.b, global0.c, 1000f, vec2<bool>(var_2.x, global2.x))), true), global2.x).b, Struct_1(countOneBits(vec3<u32>(global0.b, 1u, 63590u)), global0.a.x, global0.c, _wgslsmith_f_op_f32(-var_1), select(global0.e, vec2<bool>(true, false), global0.c.ww))), true).a.e.x);
    let var_4 = Struct_5(Struct_2(func_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1116f, 1069f)))), Struct_2(Struct_1(global0.a, 72826u, vec4<bool>(global0.e.x, true, var_2.x, false), 1391f, vec2<bool>(global0.c.x, true)), Struct_1(global0.a, global0.a.x, global0.c, 1000f, vec2<bool>(true, var_2.x))), true).b, Struct_1(~(~global0.a), firstLeadingBit(~0u), global0.c, _wgslsmith_f_op_f32(-global0.d), global0.e)), 72892u, u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0.c.xy, Struct_3(-1i, global0.a.xy, vec2<f32>(-194f, var_1), Struct_1(vec3<u32>(global4[_wgslsmith_index_u32(global0.a.x, 15u)], global0.b, 0u), global0.a.x, vec4<bool>(true, global2.x, false, true), 654f, global0.e)), 1u, 1036f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_0))) < 819f);
    let var_5 = ~global3[_wgslsmith_index_u32(global0.b, 27u)];
    var_3 = global3[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, var_1)))), func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a.b.d, global0.d) - vec2<f32>(-1357f, var_4.a.a.d)))), var_4.a, var_2.x), _wgslsmith_div_i32(1i, select(var_4.c, global3[_wgslsmith_index_u32(65118u, 27u)], false)) < reverseBits(~var_4.c)).a.a.x, 27u)] << (func_1(max(var_4.a.a.a.x, 0u), 821f).a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(999f - _wgslsmith_f_op_f32(abs(var_0))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.a.b.d)))))), global4[_wgslsmith_index_u32(~abs(global0.a.x), 15u)], countOneBits(~global4[_wgslsmith_index_u32(firstLeadingBit(global4[_wgslsmith_index_u32(38865u, 15u)] << (52303u % 32u)), 15u)]), _wgslsmith_f_op_f32(-159f - -896f));
}

