struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(-1i, -1i, -25371i), vec3<i32>(7352i, -22809i, -2884i), vec3<i32>(15136i, -3375i, 12435i), vec3<i32>(i32(-2147483648), 1i, -43139i), vec3<i32>(33420i, -1i, i32(-2147483648)), vec3<i32>(-27174i, 32610i, -47232i), vec3<i32>(0i, 1120i, -1i), vec3<i32>(12265i, 2147483647i, 2147483647i), vec3<i32>(23918i, 2147483647i, 1i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(-1i, i32(-2147483648), -40552i), vec3<i32>(-39295i, 77058i, 2147483647i));

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global3: array<Struct_2, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    global3 = array<Struct_2, 27>();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1839f, _wgslsmith_f_op_f32(min(-819f, global0.x)), -2398f, _wgslsmith_f_op_f32(floor(-658f)))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -201f, global0.x, global0.x))))));
    var var_0 = vec4<i32>(2590i, i32(-1i) * -abs(arg_1), abs(-u_input.c.x), 2147483647i);
    var var_1 = !any(select(global2.yww, vec3<bool>(all(global2.zz), false, all(global2.wy)), vec3<bool>(true, false != global2.x, select(global2.x, false, true))));
    global1 = array<vec3<i32>, 12>();
    return select(vec3<bool>(true, select(any(vec4<bool>(false, false, global2.x, true)), -1015f == global0.x, all(!vec3<bool>(true, global2.x, true))), !all(vec4<bool>(global2.x, false, false, global2.x))), !select(global2.wwz, select(!vec3<bool>(global2.x, global2.x, global2.x), select(vec3<bool>(global2.x, false, false), global2.wzy, vec3<bool>(global2.x, true, false)), true), select(select(vec3<bool>(false, global2.x, false), global2.yww, false), vec3<bool>(true, global2.x, true), global2.x)), global2.wxw);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: bool) -> f32 {
    var var_0 = Struct_1(reverseBits(vec2<i32>(-38983i, u_input.c.x)));
    global3 = array<Struct_2, 27>();
    var var_1 = vec2<u32>(_wgslsmith_div_u32(u_input.e, reverseBits(~_wgslsmith_mult_u32(1u, 1u))), u_input.e);
    let var_2 = func_3(global3[_wgslsmith_index_u32(0u, 27u)], var_0.a.x, Struct_1(vec2<i32>(~u_input.c.x, ~var_0.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 26802u, 4294967295u, var_1.x), vec4<u32>(4294967295u, 1u, 26513u, var_1.x)) % 32u))));
    var var_3 = !(!(!(!vec2<bool>(arg_2, arg_1.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-530f)))) * -104f)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = any(global2.wzz) || (global2.x | global2.x);
    var var_1 = u_input.c.x;
    let var_2 = Struct_2(Struct_1(vec2<i32>(-1i) * -vec2<i32>(0i, -62547i)), 773f, vec3<i32>(arg_0.c.x, 2147483647i, u_input.c.x << (~(~u_input.e) % 32u)), Struct_1(u_input.c));
    let var_3 = Struct_2(Struct_1(vec2<i32>(select(-11129i, 0i, global2.x) | countOneBits(1i), arg_0.d.a.x | 33938i)), global0.x, -arg_0.c, arg_0.a);
    var var_4 = var_2.a;
    return var_2.d;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = false;
    var var_1 = 4294967295u;
    let var_2 = u_input.b;
    var var_3 = func_4(Struct_2(Struct_1(arg_3.zx), _wgslsmith_f_op_f32(func_2(!(!global2.wwz), vec3<bool>(global2.x, global2.x, !var_0), all(!vec4<bool>(global2.x, true, false, true)))), arg_2.wyy, Struct_1(~vec2<i32>(-56716i, arg_2.x))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)))));
    return select(vec4<bool>(any(vec2<bool>(var_0 || var_0, true)), var_0, all(select(!global2.yw, !global2.yz, select(global2.ww, vec2<bool>(var_0, false), true))), true && any(vec3<bool>(var_0, false, false))), vec4<bool>(var_0, !(58500u != u_input.b) || var_0, !(global2.x & true), _wgslsmith_div_f32(451f, _wgslsmith_f_op_f32(min(-1000f, 966f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 12>();
    var var_0 = _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))))));
    global2 = select(!vec4<bool>(global2.x, global2.x, global2.x, false), select(select(!(!vec4<bool>(global2.x, false, global2.x, true)), !select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(false, true, false, global2.x), global2.x), _wgslsmith_div_u32(u_input.a, u_input.d) <= ~u_input.e), select(!(!vec4<bool>(global2.x, true, false, true)), select(func_1(Struct_1(vec2<i32>(u_input.c.x, u_input.c.x)), 2147483647i, vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.c.x), global1[_wgslsmith_index_u32(0u, 12u)]), !vec4<bool>(global2.x, global2.x, global2.x, true), !vec4<bool>(true, global2.x, true, global2.x)), ~1u < u_input.e), false && (true || global2.x)), !select(vec4<bool>(global2.x, any(global2.xw), true, true), !vec4<bool>(false, true, global2.x, global2.x), true));
    var_0 = _wgslsmith_f_op_f32(-global0.x);
    global2 = vec4<bool>(false, global2.x, func_1(func_4(global3[_wgslsmith_index_u32(u_input.a, 27u)]), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.c.x, u_input.c.x, -1i, -19047i)), vec4<i32>(36349i, u_input.c.x, 0i, 1i) & ~vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, -55008i)), ~(-firstTrailingBit(vec4<i32>(1i, 0i, -1i, 0i))), global1[_wgslsmith_index_u32(abs(~4294967295u) >> (_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.d, u_input.e, 72344u), vec3<u32>(u_input.b, u_input.d, u_input.a), global2.zxy), ~vec3<u32>(u_input.a, 14272u, 0u)) % 32u), 12u)]).x, func_3(Struct_2(func_4(Struct_2(Struct_1(vec2<i32>(7961i, u_input.c.x)), -733f, vec3<i32>(u_input.c.x, 0i, -1i), Struct_1(vec2<i32>(-7965i, u_input.c.x)))), global0.x, global1[_wgslsmith_index_u32(u_input.d, 12u)] | (vec3<i32>(-72662i, u_input.c.x, 1i) | global1[_wgslsmith_index_u32(41428u, 12u)]), func_4(global3[_wgslsmith_index_u32(8325u, 27u)])), -_wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, -1i), -2147483647i), func_4(Struct_2(func_4(Struct_2(Struct_1(u_input.c), global0.x, vec3<i32>(41384i, u_input.c.x, -2147483647i), Struct_1(u_input.c))), -1239f, select(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x), global2.x), Struct_1(u_input.c)))).x);
    var var_1 = func_1(Struct_1(vec2<i32>((i32(-1i) * -1i) & u_input.c.x, u_input.c.x)), 1i, -(~(~(~vec4<i32>(u_input.c.x, 2147483647i, 1i, u_input.c.x)))), vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, 1i), countOneBits(u_input.c.x)));
    var var_2 = _wgslsmith_f_op_f32(-global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 532f)) * global0.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1357f - global0.x), _wgslsmith_f_op_f32(2006f * -455f))), _wgslsmith_f_op_f32(select(143f, global0.x, false)), 337f, -400f), vec3<u32>(_wgslsmith_div_u32(~632u, 23590u), 1u, ~(_wgslsmith_clamp_u32(u_input.a, u_input.a, 7405u) << (~1u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1f)))) * global0.x));
}

