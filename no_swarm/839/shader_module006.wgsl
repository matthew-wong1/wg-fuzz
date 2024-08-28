struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 12>;

var<private> global2: f32;

var<private> global3: Struct_2 = Struct_2(vec3<f32>(-940f, 1000f, 721f), Struct_1(vec3<i32>(-1i, -3925i, 2147483647i), 71926u, vec2<bool>(false, true)), 2147483647i, Struct_1(vec3<i32>(1i, 2147483647i, 0i), 16548u, vec2<bool>(false, true)), Struct_1(vec3<i32>(i32(-2147483648), 17039i, 1i), 0u, vec2<bool>(true, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1668f, _wgslsmith_f_op_f32(max(global3.a.x, global3.a.x))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global3.a.x)), 787f, arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(341f - global3.a.x), _wgslsmith_f_op_f32(global3.a.x - -352f)))));
    let var_0 = !vec2<bool>(global3.b.c.x, !global3.e.c.x);
    var var_1 = Struct_3(u_input.a, 1648f, global3.d.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-831f, _wgslsmith_f_op_f32(-1133f + global3.a.x))) * global3.a.x), global3.a.x)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(global3.a, global1[_wgslsmith_index_u32(u_input.b, 12u)], false)), _wgslsmith_f_op_vec3_f32(select(global3.a, vec3<f32>(global3.a.x, global3.a.x, 426f), vec3<bool>(true, false, arg_0.x)))))), Struct_1(~(-vec3<i32>(global3.d.a.x, u_input.d, 226i)), max(4294967295u, firstLeadingBit(4294967295u)), vec2<bool>(true, any(vec4<bool>(true, arg_0.x, var_0.x, var_0.x)))), abs(-u_input.c.x) | 1i, global3.e, Struct_1(min(-global3.e.a, u_input.c), ~30037u, select(!vec2<bool>(arg_0.x, false), arg_0, !vec2<bool>(var_0.x, false)))));
    var var_2 = var_1.e;
    let var_3 = !(!(!vec4<bool>(!var_0.x, all(vec3<bool>(false, true, global3.e.c.x)), false, !arg_0.x)));
    return 10518u;
}

fn func_2() -> vec4<f32> {
    let var_0 = global3.a.x;
    let var_1 = ~_wgslsmith_clamp_vec4_u32(abs(max(vec4<u32>(0u, 4294967295u, 1u, u_input.b), vec4<u32>(16522u, global3.e.b, global3.b.b, global3.d.b))), vec4<u32>(global3.b.b, u_input.a.x, func_3(global3.d.c), 100341u) >> (((vec4<u32>(67029u, global3.d.b, 0u, u_input.b) ^ vec4<u32>(1u, 1u, global3.b.b, 21937u)) ^ max(vec4<u32>(u_input.a.x, u_input.b, 51035u, u_input.a.x), vec4<u32>(u_input.a.x, global3.d.b, global3.b.b, u_input.a.x))) % vec4<u32>(32u)), ~(~(vec4<u32>(u_input.b, 1u, u_input.a.x, 4294967295u) | vec4<u32>(1u, u_input.b, 4294967295u, u_input.a.x))));
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(global1[_wgslsmith_index_u32(19879u, 12u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, global3.a.x, global3.a.x)))))))), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(-global3.b.a.xx, u_input.c.zz), ~(-69065i), 0i), _wgslsmith_add_u32(_wgslsmith_mod_u32(firstLeadingBit(global3.d.b), _wgslsmith_dot_vec4_u32(var_1, var_1)), ~(0u ^ global3.d.b)), global3.d.c), -508i, global3.b, Struct_1(global3.e.a, countOneBits(select(4294967295u, ~var_1.x, all(vec4<bool>(false, false, global3.d.c.x, global3.d.c.x)))), vec2<bool>(_wgslsmith_mod_i32(global3.e.a.x, 1179i) <= ~global3.d.a.x, select(true, !global3.e.c.x, global3.d.c.x))));
    var var_2 = Struct_3(vec3<u32>(0u, ~(~0u), 768u), 1079f, ~var_1.x, global3.a.x, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1139f)), _wgslsmith_f_op_f32(sign(-724f)), _wgslsmith_f_op_f32(exp2(global3.a.x)))), global3.b, global3.b.a.x << ((max(var_1.x, var_1.x) >> (countOneBits(43684u) % 32u)) % 32u), global3.b, global3.e));
    var var_3 = Struct_3(max(vec3<u32>(97301u, func_3(!vec2<bool>(global3.e.c.x, var_2.e.d.c.x)), 11504u), vec3<u32>(~_wgslsmith_add_u32(44768u, var_1.x), var_2.c, ~(~var_1.x))), -1000f, _wgslsmith_sub_u32(~28001u, func_3(global3.d.c)), var_2.e.a.x, var_2.e);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(-993f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.d + var_3.d), -201f)), -862f, global3.a.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1777f, var_3.b, var_3.e.a.x, var_3.d))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(376f, -428f, var_3.d, 1427f) - vec4<f32>(var_2.b, global3.a.x, global3.a.x, 741f)))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec4<f32>) -> i32 {
    let var_0 = vec4<i32>(global3.d.a.x, max(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.b.a.x, -2147483647i, -4188i, -2147483647i), vec4<i32>(-5977i, -2147483647i, 1i, -2147483647i) >> (vec4<u32>(global3.b.b, 1u, arg_0.x, global3.d.b) % vec4<u32>(32u))), -_wgslsmith_mod_i32(1i, -1i)), _wgslsmith_mult_i32(min(global3.c, -1i), firstLeadingBit(-u_input.c.x)), max(-12120i, 42083i)) & (countOneBits(vec4<i32>(-2147483647i, 0i, global3.c, -2147483647i)) >> (vec4<u32>(reverseBits(global3.e.b), 30980u, ~_wgslsmith_mult_u32(0u, u_input.a.x), 0u) % vec4<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x));
    var var_1 = ~(~countOneBits(_wgslsmith_mult_vec2_u32(u_input.a.yz, vec2<u32>(global3.e.b, arg_0.x))) ^ (reverseBits(arg_0.xy) | u_input.a.xx));
    let var_2 = Struct_4(!global3.e.c, Struct_2(vec3<f32>(_wgslsmith_div_f32(global3.a.x, _wgslsmith_f_op_f32(floor(1772f))), _wgslsmith_f_op_f32(global3.a.x - arg_3.x), _wgslsmith_f_op_vec4_f32(func_2()).x), Struct_1(abs(var_0.yyz), _wgslsmith_sub_u32(max(var_1.x, arg_0.x), 0u), global3.e.c), max(0i, (global3.e.a.x ^ var_0.x) >> (0u % 32u)), global3.e, global3.b));
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1186f * -161f)));
    return u_input.c.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_add_i32(func_4(abs(_wgslsmith_add_vec3_u32(vec3<u32>(9024u, 0u, 40071u), u_input.a)), select(vec3<bool>(true, !global3.b.c.x, !global3.d.c.x), vec3<bool>(global3.b.c.x, select(global3.d.c.x, global3.d.c.x, global3.d.c.x), true), !vec3<bool>(true, global3.d.c.x, global3.d.c.x)), false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global3.a.x, global3.a.x, global3.a.x)), _wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_f32(trunc(-412f)) < _wgslsmith_f_op_f32(min(arg_0.x, -388f))))), _wgslsmith_mod_i32(~(~u_input.d) ^ u_input.c.x, ~(-49882i)));
    global2 = 1002f;
    var var_1 = Struct_4(global3.e.c, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, -1107f, global3.a.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1593f, -1000f, arg_0.x) * vec3<f32>(arg_0.x, -2260f, 969f)))), Struct_1(abs(u_input.c), arg_1, !global3.e.c), i32(-1i) * -max(0i, 0i), Struct_1(~select(global3.b.a, u_input.c, vec3<bool>(global3.d.c.x, false, global3.e.c.x)), 1u ^ abs(arg_1), select(vec2<bool>(false, global3.d.c.x), global3.b.c, true)), Struct_1(vec3<i32>(select(u_input.d, -15914i, global3.b.c.x), u_input.d, -2147483647i), _wgslsmith_div_u32(1u, global3.d.b) | global3.e.b, select(vec2<bool>(false, global3.d.c.x), global3.b.c, global3.d.c.x))));
    let var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3.a, _wgslsmith_f_op_vec3_f32(exp2(global3.a)), !vec3<bool>(true, var_1.b.b.c.x, var_1.b.e.c.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.wxz)), vec3<f32>(-129f, -282f, -452f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(566f, 953f, true)), _wgslsmith_f_op_f32(-var_1.b.a.x), _wgslsmith_f_op_f32(min(-753f, global3.a.x))))), Struct_1(vec3<i32>(-2147483647i, _wgslsmith_mod_i32(var_1.b.b.a.x, var_1.b.b.a.x >> (global3.d.b % 32u)), -var_1.b.b.a.x), 0u, vec2<bool>(!global3.e.c.x, -553f <= arg_0.x)), _wgslsmith_clamp_i32(max(-var_0 >> (1u % 32u), (-2147483647i << (global3.d.b % 32u)) & _wgslsmith_sub_i32(-40666i, 22677i)), (u_input.d & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.c.x, -70957i, -1i), vec4<i32>(-1i, -1i, global3.c, -56829i))) >> (max(1u, arg_1 & 1u) % 32u), -1i), Struct_1(vec3<i32>(~(-13931i), abs(1i), -2147483647i), ~global3.b.b, vec2<bool>(true || (18612i != u_input.d), select(var_1.b.e.c.x, true, global3.e.c.x))), Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c & var_1.b.b.a, u_input.c), vec3<i32>(global3.e.a.x, -16514i, -var_1.b.c)), ~u_input.b, var_1.a));
    let var_3 = arg_0.x;
    return vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(18950u, countOneBits(~var_1.b.d.b)), 1u), 11714u);
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = select(!select(vec4<bool>(true, all(vec3<bool>(arg_0, true, global3.e.c.x)), global3.e.c.x != true, true), !vec4<bool>(true, global3.b.c.x, true, arg_0), (arg_1.x == -2147483647i) & arg_0), !select(vec4<bool>(select(global3.e.c.x, true, arg_0), !arg_0, true, !arg_0), vec4<bool>(any(vec3<bool>(global3.b.c.x, true, global3.b.c.x)), any(vec3<bool>(true, global3.e.c.x, true)), true, true), vec4<bool>(true, arg_0, any(vec2<bool>(arg_0, false)), false)), select(!vec4<bool>(true, global3.e.c.x, select(arg_0, global3.e.c.x, global3.e.c.x), false), !vec4<bool>(false, all(vec3<bool>(false, global3.b.c.x, arg_0)), 608f <= global3.a.x, any(vec3<bool>(false, arg_0, global3.e.c.x))), !(!(!vec4<bool>(true, global3.b.c.x, arg_0, false)))));
    var var_1 = select(!vec4<bool>(true && any(var_0.zyy), any(select(vec4<bool>(global3.b.c.x, arg_0, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, false), vec4<bool>(false, arg_0, global3.e.c.x, arg_0))), !any(var_0.zyx), arg_0), vec4<bool>(false, true, arg_0, true && !(arg_0 || false)), !(!(!(!vec4<bool>(true, var_0.x, true, true)))));
    var var_2 = _wgslsmith_sub_u32(1u, ~_wgslsmith_mod_u32(~(global3.d.b ^ global3.d.b), global3.d.b));
    return Struct_1(vec3<i32>(_wgslsmith_div_i32(-2347i, 84213i), (-2147483647i | (u_input.d | arg_1.x)) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.b, u_input.b, 7186u, 19895u), vec4<u32>(global3.d.b, global3.e.b, 1u, 17022u)) ^ _wgslsmith_div_u32(10863u, 51138u)) % 32u), -23799i), firstTrailingBit(_wgslsmith_sub_u32(~(global3.b.b | 27570u), global3.e.b)), vec2<bool>(!(827f != _wgslsmith_f_op_f32(ceil(-395f))), all(var_1.yyw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = global3.d;
    var var_2 = func_5(false, global3.e.a << (u_input.a % vec3<u32>(32u)), ~func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1348f, 327f, global3.a.x, -228f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(180f, global3.a.x, global3.a.x, global3.a.x)))), u_input.b));
    var_2 = Struct_1(select(select(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, global3.b.a.x), vec3<i32>(1i, global3.b.a.x, var_2.a.x)), var_1.a, true), ~global3.d.a, !(!vec3<bool>(var_0, true, false))) & ~global3.b.a, 10957u, func_5(true, vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(-1i, global3.b.a.x)) ^ 2147483647i, countOneBits(-1i), firstLeadingBit(-var_2.a.x)), vec2<u32>(50026u, var_2.b)).c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(func_3(vec2<bool>(false, true)), 46082u), var_1.b, _wgslsmith_dot_vec2_u32(reverseBits(u_input.a.xx), vec2<u32>(global3.b.b, 62844u) >> (vec2<u32>(1u, 17575u) % vec2<u32>(32u))), 4294967295u) & _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_1.b, u_input.b, u_input.a.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(21906u, u_input.b, 63502u, 49717u), countOneBits(vec4<u32>(4294967295u, u_input.b, 0u, global3.d.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-949f + -840f), global3.a.x), -1i, reverseBits(11758u));
}

