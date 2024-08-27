struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, true, vec3<i32>(2147483647i, -31300i, i32(-2147483648)), Struct_1(vec2<bool>(false, false), true, false), 46076i);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: Struct_3;

var<private> global3: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(475f, 1324f, 1718f), vec3<f32>(-357f, 971f, 956f), vec3<f32>(-728f, -1187f, 1206f));

var<private> global4: Struct_5;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<f32> {
    global2 = Struct_3(global2.a, vec2<bool>(true, !(global2.a.e == 0i)), ~(-2147483647i), Struct_2(select(true, global0.a, select(any(vec2<bool>(false, false)), true, false)), all(global2.a.d.a), -(~global2.d.c), global2.d.d, abs(~_wgslsmith_add_i32(global2.c, global0.c.x))), global4.c.x);
    var var_0 = Struct_2(any(vec2<bool>(true, !(!global2.d.a))), any(!(!select(vec4<bool>(global0.a, true, true, false), vec4<bool>(false, global0.a, global2.d.a, global4.b), vec4<bool>(global2.d.d.b, false, false, true)))), global0.c, global2.a.d, 1i);
    var var_1 = false;
    var var_2 = 0i;
    var var_3 = Struct_3(Struct_2(true, all(vec3<bool>(true, all(vec4<bool>(false, true, var_0.b, false)), true)), vec3<i32>(_wgslsmith_sub_i32(global0.c.x << (0u % 32u), global2.a.c.x), ~global0.e | abs(0i), -50116i), Struct_1(!(!vec2<bool>(global4.b, var_0.d.c)), false, select(global2.b.x, global4.a, 109088u >= u_input.a)), countOneBits(firstTrailingBit(_wgslsmith_dot_vec3_i32(var_0.c, global2.a.c)))), select(!(!vec2<bool>(false, global0.b)), global0.d.a, vec2<bool>(true, all(select(vec2<bool>(global0.a, global0.b), vec2<bool>(true, global2.d.d.b), true)))), max(0i, -_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -2147483647i, 34994i, global0.e), vec4<i32>(global0.e, -2147483647i, -18610i, 7759i) >> (vec4<u32>(u_input.b.x, global2.e, global4.c.x, 4294967295u) % vec4<u32>(32u)))), Struct_2(!(!all(vec2<bool>(global2.b.x, true))), -countOneBits(global2.c) > -global0.e, ~var_0.c, var_0.d, _wgslsmith_dot_vec4_i32(select(vec4<i32>(23499i, 2147483647i, 0i, 55538i), vec4<i32>(0i, var_0.e, -2147483647i, -65854i), vec4<bool>(global4.b, true, false, true)), ~vec4<i32>(global2.c, var_0.e, global0.e, 26792i)) & _wgslsmith_mult_i32(select(global2.a.c.x, -1i, true), ~global0.e)), u_input.b.x);
    return vec3<f32>(2631f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) - _wgslsmith_f_op_f32(-150f - _wgslsmith_f_op_f32(sign(-284f)))), -1668f);
}

fn func_2(arg_0: vec2<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(global2.e, 0u)), 3u)])) - vec3<f32>(421f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-648f, 944f)), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1303f) * 1f))));
    var var_1 = u_input.a;
    let var_2 = !global2.d.d.a.x & global4.a;
    global0 = global2.a;
    let var_3 = Struct_4(firstTrailingBit(firstTrailingBit(~global0.e)) >> (_wgslsmith_clamp_u32(~(arg_0.x & 3761u), global4.c.x, global4.c.x) % 32u), Struct_3(global2.a, vec2<bool>(!global2.d.d.b & true, all(select(vec3<bool>(global0.a, global2.d.a, true), vec3<bool>(true, false, global2.d.d.a.x), var_2))), firstTrailingBit(-67201i), global2.a, 0u), Struct_1(vec2<bool>(true, true), !(global2.d.c.x > _wgslsmith_mult_i32(global0.e, global2.c)), !(!all(vec3<bool>(true, false, var_2)))), !(!(!select(vec4<bool>(global4.b, false, false, var_2), vec4<bool>(global0.a, true, true, true), vec4<bool>(true, var_2, global4.b, global0.d.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1064f, var_0.x, var_0.x)));
    return Struct_4(var_3.a, var_3.b, var_3.b.a.d, var_3.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_3.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.e + var_3.e)), vec3<bool>(var_2, any(vec3<bool>(false, global4.a, global2.d.b)), all(vec4<bool>(global4.b, false, false, true)))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(334f, arg_0.e.x, 882f) - func_2(vec2<u32>(global4.c.x, ~(~u_input.b.x))).e);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1361f);
    var var_2 = global4.c;
    var var_3 = Struct_5(all(global0.d.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.e.x)))) > arg_0.e.x, global4.c);
    return arg_0.c;
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    global1 = _wgslsmith_div_i32(-1i | _wgslsmith_add_i32(-41178i, _wgslsmith_mod_i32(global0.c.x, global0.e)), _wgslsmith_add_i32(_wgslsmith_add_i32(~global2.a.c.x, ~(-14608i)), -global0.c.x));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-778f, -1000f, true))))));
    global0 = Struct_2(u_input.a != global4.c.x, select(global0.b, any(!select(global2.a.d.a, arg_0.yx, vec2<bool>(global2.b.x, global2.a.d.b))), all(select(select(vec3<bool>(false, true, false), arg_0, global4.a), arg_0, true))), ~(-vec3<i32>(global0.c.x, 0i & global0.e, global2.d.e)), func_4(func_2(u_input.b.xx), vec2<bool>(true, true)), func_2(u_input.b.yx).a);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-1158f)), -417f, _wgslsmith_f_op_f32(-951f + 1239f), _wgslsmith_f_op_f32(f32(-1f) * -249f));
    global4 = Struct_5(!any(!vec2<bool>(false, global0.a)), false, min(~(~abs(vec3<u32>(0u, 0u, 1u))), _wgslsmith_div_vec3_u32(u_input.b, global4.c)));
    return global2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(countOneBits(global2.d.c));
    let var_1 = vec2<i32>(_wgslsmith_add_i32(global0.c.x, 1i), global0.e);
    global4 = Struct_5(true, !global2.d.b, _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 35143u, 23453u, 39800u), vec4<u32>(1763u, global4.c.x, global2.e, 7898u)))), global4.c << (~global4.c % vec3<u32>(32u))));
    let var_2 = global2.d;
    global0 = func_1(select(select(!select(vec3<bool>(true, global4.a, global4.a), vec3<bool>(var_2.a, true, false), false), select(select(vec3<bool>(true, true, global0.a), vec3<bool>(false, false, var_2.d.b), var_2.b), vec3<bool>(var_2.d.b, global4.b, true), false), true), select(!(!vec3<bool>(false, global4.b, global4.b)), select(select(vec3<bool>(false, true, global4.a), vec3<bool>(false, false, global4.a), global0.a), !vec3<bool>(global4.a, true, false), vec3<bool>(false, global2.b.x, global0.d.c)), select(!vec3<bool>(true, global2.b.x, true), !vec3<bool>(false, global4.b, true), global0.a)), true));
    global3 = array<vec3<f32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~global4.c.xy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(235f, 611f, -2332f, -1000f), vec4<f32>(-1173f, 333f, 987f, -617f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(vec2<u32>(global2.e, 1u)).e.x, _wgslsmith_f_op_f32(1337f - 161f), _wgslsmith_f_op_f32(f32(-1f) * -619f), -238f))), _wgslsmith_mod_u32(u_input.a, reverseBits(~1u) & global4.c.x), 1i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-130f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(365f, 1289f)))) + -1958f));
}

