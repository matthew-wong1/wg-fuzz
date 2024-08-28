struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: vec2<i32> = vec2<i32>(-40487i, 21181i);

var<private> global2: bool;

var<private> global3: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(0u, 47929u), vec2<u32>(1u, 1u), vec2<u32>(28050u, 92858u), vec2<u32>(76116u, 4294967295u), vec2<u32>(1u, 61306u), vec2<u32>(41970u, 15118u), vec2<u32>(45178u, 28639u), vec2<u32>(65219u, 48768u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(81005u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(52106u, 34096u), vec2<u32>(57063u, 60351u), vec2<u32>(1u, 4294967295u), vec2<u32>(10375u, 56932u), vec2<u32>(1u, 32334u));

var<private> global4: Struct_2;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> bool {
    let var_0 = countOneBits(arg_0);
    var var_1 = select(select(!vec4<bool>(false, global4.d.c && global4.d.a, global4.d.a, arg_1.d.a), vec4<bool>(any(vec3<bool>(global4.d.c, global4.d.c, true)), all(vec3<bool>(false, false, true)) || (arg_1.d.d.x <= arg_1.d.b), false, false), vec4<bool>(true, !(arg_1.d.a | false), true, true & !arg_1.d.a)), vec4<bool>(arg_1.d.a, !(global4.a.x < _wgslsmith_f_op_f32(622f * arg_1.d.d.x)), any(vec3<bool>(any(vec2<bool>(true, false)), false, true)), global4.d.a), select(vec4<bool>(global4.d.a, (global4.d.c && true) | arg_1.d.c, all(vec4<bool>(arg_1.d.a, true, arg_1.d.a, false)), true), !select(select(vec4<bool>(arg_1.d.a, global4.d.c, false, true), vec4<bool>(false, arg_1.d.c, false, arg_1.d.c), global4.d.a), select(vec4<bool>(arg_1.d.a, global4.d.c, global4.d.a, false), vec4<bool>(global4.d.c, arg_1.d.a, arg_1.d.c, global4.d.a), vec4<bool>(true, false, true, global4.d.a)), true), !vec4<bool>(true, true, global4.d.c, arg_1.d.c || false)));
    let var_2 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-394f * global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_0, 7521u), 13u)])), all(vec3<bool>(select(any(vec3<bool>(true, false, true)), select(arg_1.d.c, false, true), true), true, any(!vec4<bool>(global4.d.c, var_1.x, false, false)))), global4.d.d);
    let var_3 = ~arg_0;
    let var_4 = arg_1;
    return false || (-398f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * var_2.d.x)));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> Struct_3 {
    return Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1681f), _wgslsmith_div_f32(338f, 822f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(11111u, 13u)])))), global4.b, 1u, Struct_1(select(true, false, any(arg_0.zw)), -611f, func_3(_wgslsmith_clamp_u32(4294967295u, u_input.b, 5798u), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(0u, 13u)], -915f, 1575f), vec4<i32>(-1i, -20478i, -1i, 0i), 66137u, Struct_1(true, global4.a.x, true, global4.a))), global4.d.d)), Struct_1(!arg_0.x, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(global4.c, 13u)])), true, global4.a), -global4.b, Struct_1(all(arg_0.yy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(31001u, 13u)] + -161f))) - _wgslsmith_f_op_f32(-global4.d.d.x)), all(arg_0), vec3<f32>(_wgslsmith_f_op_f32(sign(-244f)), -1606f, _wgslsmith_f_op_f32(f32(-1f) * -861f))), func_3(0u, Struct_2(global4.a, vec4<i32>(38678i, reverseBits(2147483647i), _wgslsmith_dot_vec4_i32(global4.b, vec4<i32>(2147483647i, global1.x, global4.b.x, global4.b.x)), -1457i), ~u_input.c ^ 72093u, Struct_1(false, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 13u)] * -798f), true, _wgslsmith_f_op_vec3_f32(floor(global4.d.d))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    global4 = arg_3.a;
    let var_0 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(2127u, 1u), vec2<u32>(arg_3.a.c, u_input.b))), global3[_wgslsmith_index_u32(~countOneBits(global4.c), 17u)]);
    let var_1 = func_2(select(select(select(vec4<bool>(true, true, arg_2, arg_3.b.c), vec4<bool>(arg_2, false, true, global4.d.c), false), select(vec4<bool>(arg_2, false, arg_2, global4.d.a), vec4<bool>(true, true, false, arg_3.d.c), global4.d.c || false), true && arg_3.a.d.a), vec4<bool>(!any(vec2<bool>(false, false)), select(false, global4.d.c, any(vec2<bool>(arg_2, true))), arg_3.e, !any(vec2<bool>(global4.d.a, global4.d.a))), !select(vec4<bool>(arg_3.e, global4.d.c, global4.d.c, false), vec4<bool>(true, true, false, arg_2), vec4<bool>(true, arg_2, true, true))), false).a;
    var var_2 = arg_0.x;
    let var_3 = vec4<bool>(1304i <= ~(arg_0.x ^ -global4.b.x), any(vec3<bool>(!(!arg_3.d.a), var_0.x >= 1u, !(!arg_3.b.a))), !any(vec3<bool>(false, !arg_3.b.a, true)), !global4.d.c);
    return func_2(!var_3, func_2(var_3, any(select(var_3, var_3, select(vec4<bool>(var_1.d.c, arg_3.b.c, false, arg_2), vec4<bool>(arg_3.b.c, arg_3.a.d.c, true, false), vec4<bool>(true, true, true, var_3.x))))).d.a).b;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(687f))), func_2(vec4<bool>(true, all(!vec4<bool>(arg_1.c, true, arg_1.c, true)), any(vec4<bool>(global4.d.a, true, true, false)), global4.d.a), false).d.c, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.d.b, _wgslsmith_f_op_f32(-global4.d.b), 1000f))));
    var var_1 = arg_1.b;
    global4 = func_2(vec4<bool>(global4.a.x != arg_1.d.x, global4.d.c, !var_0.c, all(!select(vec4<bool>(arg_1.c, false, true, true), vec4<bool>(arg_1.a, var_0.c, arg_1.c, true), global4.d.a))), any(!(!select(vec4<bool>(false, true, false, global4.d.a), vec4<bool>(true, var_0.c, var_0.a, global4.d.a), vec4<bool>(global4.d.c, arg_1.c, true, false))))).a;
    global4 = func_2(vec4<bool>(func_2(!(!vec4<bool>(global4.d.a, var_0.a, arg_1.a, var_0.a)), true).b.c, global4.d.a, func_4(~firstLeadingBit(vec3<i32>(24313i, 31360i, -6791i)), -730f, func_3(~global4.c, Struct_2(global4.d.d, vec4<i32>(global1.x, 10390i, -2147483647i, u_input.d), u_input.b, Struct_1(false, -624f, global4.d.c, var_0.d))), Struct_3(func_2(vec4<bool>(true, var_0.c, global4.d.a, var_0.c), global4.d.c).a, Struct_1(arg_1.a, 736f, false, global4.a), vec4<i32>(global1.x, 66862i, 0i, global1.x), func_4(global4.b.yxx, arg_1.b, true, Struct_3(Struct_2(vec3<f32>(global4.d.b, global4.d.b, global4.d.d.x), global4.b, global4.c, arg_1), Struct_1(true, 1010f, false, arg_1.d), vec4<i32>(-2147483647i, -32193i, -49181i, -1i), arg_1, true)), false)).a, arg_1.c & all(vec4<bool>(global4.d.a, global4.d.a, true, false))), var_0.c).a;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(740f, 1036f))))), var_0.d.xz);
    return reverseBits(~select(~global3[_wgslsmith_index_u32(37337u, 17u)], ~arg_0, func_2(!vec4<bool>(arg_1.a, global4.d.c, true, true), !global4.d.c).e));
}

fn func_6(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = arg_2.x;
    var var_1 = func_2(select(!(!(!vec4<bool>(false, global4.d.c, true, true))), vec4<bool>(!func_2(vec4<bool>(global4.d.a, global4.d.a, arg_2.x, true), arg_2.x).e, arg_2.x, false || all(arg_2), -global1.x >= (i32(-1i) * -6201i)), false), all(select(vec2<bool>(false, true), !select(vec2<bool>(true, arg_2.x), vec2<bool>(arg_2.x, false), arg_2), arg_2))).a;
    var var_2 = Struct_3(Struct_2(global4.d.d, vec4<i32>(u_input.d, reverseBits(arg_1.x), select(~global1.x, ~12967i, true), -(i32(-1i) * -1i)), ~arg_3.x, func_4(~(~var_1.b.xxx), _wgslsmith_f_op_f32(_wgslsmith_div_f32(131f, arg_0) - _wgslsmith_f_op_f32(var_1.d.b * global4.d.b)), true, Struct_3(Struct_2(vec3<f32>(-871f, -1015f, -386f), global4.b, arg_3.x, var_1.d), var_1.d, reverseBits(global4.b), func_4(global4.b.wzw, 309f, var_1.d.c, Struct_3(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(global4.c, 13u)], -375f, -2655f), global4.b, var_1.c, global4.d), var_1.d, global4.b, global4.d, global4.d.c)), true))), Struct_1(true, -997f, !any(!vec4<bool>(true, global4.d.a, true, false)), _wgslsmith_f_op_vec3_f32(-var_1.a)), -var_1.b, Struct_1(false, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.d.b)), _wgslsmith_f_op_f32(var_1.a.x + global4.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.d.b)))), all(!vec3<bool>(false, var_1.d.c, true)) || true, vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_3.x, 13u)] + -678f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.d.x)))), func_2(!vec4<bool>(false & arg_2.x, any(vec2<bool>(global4.d.c, arg_2.x)), true, select(true, global4.d.c, false)), var_1.d.c).e);
    var_0 = global4.d.a;
    var var_3 = func_2(select(vec4<bool>(true, global4.d.c, all(!vec3<bool>(arg_2.x, arg_2.x, true)), (arg_2.x & arg_2.x) && var_2.d.a), select(select(select(vec4<bool>(arg_2.x, false, true, arg_2.x), vec4<bool>(var_2.b.c, false, arg_2.x, true), vec4<bool>(var_1.d.c, false, false, global4.d.a)), vec4<bool>(true, false, true, false), !vec4<bool>(false, arg_2.x, false, arg_2.x)), select(vec4<bool>(arg_2.x, true, arg_2.x, true), !vec4<bool>(arg_2.x, true, arg_2.x, var_2.b.c), !vec4<bool>(false, false, global4.d.a, true)), arg_2.x & var_1.d.a), !all(vec2<bool>(arg_2.x, false))), arg_2.x).d;
    return Struct_1((var_2.a.c | _wgslsmith_clamp_u32(49755u << (1u % 32u), var_1.c, 1u)) > firstLeadingBit(~arg_3.x << (~1u % 32u)), -1403f, !(func_4(reverseBits(vec3<i32>(60817i, -1i, global1.x)), 438f, true, func_2(vec4<bool>(true, false, var_3.a, true), var_3.c)).a && (true == (var_1.d.a & var_1.d.c))), var_3.d);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = 0u;
    return func_6(global4.d.d.x, global4.b, arg_0.xw, func_5(vec2<u32>(_wgslsmith_add_u32(1u, 19160u), global4.c) & abs(vec2<u32>(u_input.b, global4.c) | vec2<u32>(1u, 0u)), func_4(-global4.b.yzw, _wgslsmith_div_f32(_wgslsmith_div_f32(-258f, global4.d.b), -1377f), any(vec3<bool>(arg_0.x, arg_1.x, arg_0.x)), func_2(select(vec4<bool>(false, true, true, true), arg_0, true), all(vec3<bool>(true, arg_1.x, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<bool>(all(select(vec2<bool>(global4.d.a, global4.d.a), vec2<bool>(true, true), vec2<bool>(global4.d.a, false))), global4.d.a, false, any(select(select(vec4<bool>(true, global4.d.a, global4.d.c, true), vec4<bool>(true, false, global4.d.a, true), vec4<bool>(global4.d.a, false, false, true)), vec4<bool>(true, true, true, true), !vec4<bool>(true, false, global4.d.a, global4.d.a)))), !(!select(vec3<bool>(true, true, true), !vec3<bool>(global4.d.a, global4.d.a, global4.d.a), !vec3<bool>(global4.d.c, global4.d.a, false))));
    global0 = array<f32, 13>();
    var var_1 = global4.d.d.x;
    var_1 = _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(abs(~32825u), 13u)]));
    global2 = func_1(!vec4<bool>(global4.d.c, true, false, !(var_0.a || false)), !vec3<bool>(var_0.c, !var_0.a == var_0.a, false)).a;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d)), -((vec4<i32>(-1i) * -vec4<i32>(global4.b.x, 1i, global1.x, global1.x)) | vec4<i32>(global4.b.x, _wgslsmith_div_i32(27569i, global1.x), ~u_input.d, min(u_input.d, -13220i))), func_5(abs(global3[_wgslsmith_index_u32(global4.c, 17u)]) & global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 17005u), vec2<u32>(u_input.b, global4.c), global3[_wgslsmith_index_u32(u_input.b, 17u)]), firstLeadingBit(vec2<u32>(global4.c, global4.c))), 17u)], global4.d).x, global4.d);
    var var_3 = var_2.b.yy;
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, firstLeadingBit(global3[_wgslsmith_index_u32(~var_2.c, 17u)]), _wgslsmith_f_op_vec2_f32(-func_1(!(!vec4<bool>(false, false, var_0.c, false)), !(!vec3<bool>(var_2.d.a, false, true))).d.xy), var_2.b);
}

