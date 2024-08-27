struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(0u, 1u, 39166u, 0u, 4294967295u, 2285u, 4294967295u, 1u, 4294967295u, 36609u, 3910u, 4294967295u, 1u, 4294967295u, 11974u, 58342u, 1u, 6427u, 1u, 4294967295u);

var<private> global1: array<vec2<u32>, 13>;

var<private> global2: bool;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: array<vec2<f32>, 17>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<u32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-887f, _wgslsmith_f_op_f32(arg_3.x - -427f)), -3107f)), true, arg_0.yy, vec4<i32>(u_input.c, (u_input.c | abs(u_input.c)) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.c, 2147483647i, 16623i), vec4<i32>(2147483647i, 0i, u_input.e, u_input.c)), countOneBits(vec4<i32>(u_input.e, u_input.c, u_input.e, 0i))), -23237i, 0i));
    let var_1 = ~_wgslsmith_add_vec4_u32(arg_2, arg_2);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.a, -799f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-783f)), var_0.a)))), any(arg_0.xz), !select(!select(var_0.c, arg_0.wy, vec2<bool>(false, global3.x)), select(arg_0.xx, arg_0.xw, var_0.c), vec2<bool>(!global3.x, var_0.c.x)), var_0.d);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1320f)) - arg_3.x), any(var_2.c), vec2<bool>(!(!all(vec3<bool>(var_0.b, true, false))), all(arg_0.yzy)), var_2.d);
    let var_4 = Struct_1(arg_3.x, all(select(var_0.c, vec2<bool>(any(arg_0), true), !all(vec3<bool>(false, arg_0.x, false)))), !select(select(select(vec2<bool>(var_0.b, global3.x), var_3.c, var_3.c), select(arg_0.yz, vec2<bool>(false, true), true), select(var_2.c, vec2<bool>(false, global3.x), arg_0.x)), select(!arg_0.yy, var_3.c, global3.x & var_2.b), arg_0.ww), var_2.d);
    return var_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> u32 {
    var var_0 = ~(~(u_input.d ^ arg_2.x));
    var_0 = firstTrailingBit(arg_2.x);
    global4 = array<vec2<f32>, 17>();
    global4 = array<vec2<f32>, 17>();
    global1 = array<vec2<u32>, 13>();
    return _wgslsmith_clamp_u32(func_3(vec4<bool>(select(global3.x, true, true), true, false, -1000f <= arg_0.a), u_input.b.x, vec4<u32>(0u, 1u, 814u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) - global4[_wgslsmith_index_u32(arg_2.x, 17u)]) - global4[_wgslsmith_index_u32(~81660u, 17u)])), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(42073u, u_input.a.x, 43459u, 4294967295u), vec4<u32>(arg_2.x, 11698u, 1u, global0[_wgslsmith_index_u32(arg_2.x, 20u)])), min(~vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 81904u), select(vec4<u32>(51806u, 24081u, 4294967295u, u_input.b.x), vec4<u32>(arg_2.x, 37967u, 52518u, 1u), global3.x))), abs(global0[_wgslsmith_index_u32(arg_2.x, 20u)])) << (abs(~(~1u)) % 32u);
}

fn func_1() -> bool {
    let var_0 = vec2<u32>(func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1014f, 921f)) + _wgslsmith_f_op_f32(-625f - 176f)), true, !vec2<bool>(false, global3.x), abs(select(vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i), vec4<i32>(2147483647i, 0i, -22065i, u_input.c), vec4<bool>(global3.x, false, global3.x, global3.x)))), global3.x, ~firstTrailingBit(~vec3<u32>(global0[_wgslsmith_index_u32(32681u, 20u)], u_input.b.x, global0[_wgslsmith_index_u32(u_input.d, 20u)]))), _wgslsmith_sub_u32(countOneBits(u_input.b.x) >> (_wgslsmith_clamp_u32(0u ^ u_input.a.x, ~4294967295u, 8099u) % 32u), u_input.d));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2097f);
    let var_2 = select(vec3<bool>(any(!vec2<bool>(global3.x, global3.x)), any(!vec2<bool>(global3.x, global3.x)) && false, true & global3.x), !select(select(!vec3<bool>(true, global3.x, false), vec3<bool>(true, global3.x, false), all(vec3<bool>(false, global3.x, global3.x))), vec3<bool>(false, !global3.x, true), vec3<bool>(true, global3.x, true)), !any(vec4<bool>(true, false, false, -27714i > u_input.c)));
    var var_3 = ~(-1i);
    global0 = array<u32, 20>();
    return any(select(!(!select(vec4<bool>(true, true, global3.x, false), vec4<bool>(true, true, global3.x, global3.x), vec4<bool>(true, true, false, global3.x))), select(!select(vec4<bool>(var_2.x, false, false, global3.x), vec4<bool>(var_2.x, global3.x, global3.x, global3.x), true), select(!vec4<bool>(false, global3.x, var_2.x, var_2.x), select(vec4<bool>(true, var_2.x, true, true), vec4<bool>(false, var_2.x, global3.x, global3.x), vec4<bool>(true, global3.x, var_2.x, false)), all(vec2<bool>(global3.x, true))), true), true & !var_2.x));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_2;
    global2 = !all(vec3<bool>(true, select(true, arg_1.c.x, global3.x) || any(vec3<bool>(var_0.c.x, global3.x, false)), true));
    global4 = array<vec2<f32>, 17>();
    let var_1 = global4[_wgslsmith_index_u32(func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f), _wgslsmith_f_op_f32(f32(-1f) * -684f))), true, !(!select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(global3.x, true), vec2<bool>(var_0.b, var_0.b))), reverseBits(arg_1.d)), !global3.x, ~u_input.b), 17u)];
    var var_2 = vec2<u32>(~52620u, 21450u);
    return _wgslsmith_add_vec4_u32(select(vec4<u32>(~global0[_wgslsmith_index_u32(select(41719u, u_input.b.x, true), 20u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)] << (113263u % 32u)), u_input.a.x, ~u_input.a.x << (reverseBits(global0[_wgslsmith_index_u32(0u, 20u)]) % 32u)), reverseBits(~vec4<u32>(4294967295u, var_2.x, u_input.a.x, 1u)), var_0.c.x), ~(~(~(~vec4<u32>(var_2.x, var_2.x, 478u, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~u_input.e, Struct_1(1682f, func_1(), !select(vec2<bool>(global3.x, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(global3.x, global3.x), global3.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c, 1i, -2147483647i, 0i), vec4<i32>(-1i, u_input.e, u_input.e, u_input.c)) >> ((vec4<u32>(4294967295u, u_input.b.x, 4294967295u, u_input.a.x) << (vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], u_input.a.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(419f)), _wgslsmith_f_op_f32(-837f * -513f))), false, vec2<bool>(any(select(vec2<bool>(false, global3.x), vec2<bool>(global3.x, global3.x), vec2<bool>(true, global3.x))), global3.x), countOneBits(vec4<i32>(u_input.e, u_input.c, u_input.e, 1i)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(30915u, 20u)], global0[_wgslsmith_index_u32(39936u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec4<u32>(66868u, u_input.b.x, u_input.a.x, 1u)) | vec4<u32>(61162u, 1u, 4294967295u, 71874u)) % vec4<u32>(32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2116f)) * -1090f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(503f, -1801f))))), any(vec3<bool>(true, true, global3.x)), select(select(select(!vec2<bool>(global3.x, false), select(vec2<bool>(true, global3.x), vec2<bool>(false, true), false), select(vec2<bool>(global3.x, false), vec2<bool>(global3.x, global3.x), false)), vec2<bool>(!global3.x, true), select(select(vec2<bool>(global3.x, global3.x), vec2<bool>(true, false), vec2<bool>(global3.x, true)), !vec2<bool>(global3.x, false), vec2<bool>(false, false))), !vec2<bool>(!global3.x, global3.x), !(!(!vec2<bool>(global3.x, false)))), -countOneBits(vec4<i32>(-2147483647i, -55509i, u_input.e, u_input.c)) | _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(0i, u_input.e, 4776i, 41964i)) ^ (vec4<i32>(u_input.c, -12849i, 40546i, 35203i) >> (vec4<u32>(31906u, 4745u, var_0.x, 4294967295u) % vec4<u32>(32u))), max(~vec4<i32>(-1i, u_input.e, 0i, -1i), vec4<i32>(u_input.e, 2147483647i, 1i, u_input.e))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1197f * -187f)))), var_1.a, _wgslsmith_div_f32(var_1.a, -245f), -126f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), 877f, _wgslsmith_f_op_f32(max(var_1.a, -1303f)), var_1.a), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(263f, var_1.a, var_1.a, 118f))))), _wgslsmith_div_vec4_f32(vec4<f32>(809f, var_1.a, var_1.a, -324f), vec4<f32>(_wgslsmith_f_op_f32(-486f * var_1.a), _wgslsmith_f_op_f32(select(var_1.a, var_1.a, var_1.b)), var_1.a, 574f)))));
    var var_3 = vec4<bool>(var_1.c.x, global3.x, global3.x, true);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-409f, _wgslsmith_f_op_f32(f32(-1f) * -1778f), var_3.x))))), !(-(u_input.e << (u_input.d % 32u)) < _wgslsmith_add_i32(-5817i, ~36137i)), vec2<bool>(!(!var_3.x), ((var_1.d.x & var_1.d.x) == firstTrailingBit(u_input.c)) || false), vec4<i32>(~(-2147483647i), reverseBits(u_input.c), 1i, -u_input.e));
    let var_5 = Struct_1(var_1.a, var_4.c.x, !(!vec2<bool>(false, any(var_3.zx))), var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.d, countOneBits(var_5.d.wxx >> (~(~var_0.yyw) % vec3<u32>(32u))), ~50393u);
}

