struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(86427i, 1i), vec2<i32>(39083i, 28274i), vec2<i32>(-9091i, 30388i), vec2<i32>(-1i, 28123i), vec2<i32>(46156i, i32(-2147483648)));

var<private> global2: f32;

var<private> global3: bool = false;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> bool {
    global1 = array<vec2<i32>, 5>();
    var var_0 = ~_wgslsmith_mod_i32(u_input.e.x, 2147483647i);
    global3 = all(arg_2.a.a);
    var var_1 = -firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.e, u_input.e)) >> (arg_0.c % 32u);
    let var_2 = Struct_1(select(!vec2<bool>(!arg_2.d, any(arg_0.a.a)), arg_2.a.a, all(!(!vec4<bool>(true, false, arg_0.a.c, arg_2.a.c)))), arg_0.a.b, any(!(!(!arg_0.a.a))), 1878f);
    return all(select(select(var_2.a, select(select(var_2.a, arg_2.a.a, var_2.c), arg_0.a.a, var_2.a.x), var_2.a), !arg_2.a.a, any(select(!vec3<bool>(false, arg_2.d, false), select(vec3<bool>(false, arg_0.d, arg_2.a.a.x), vec3<bool>(true, arg_2.d, var_2.a.x), arg_0.d), !vec3<bool>(true, false, arg_0.a.c)))));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = firstTrailingBit(u_input.c);
    let var_1 = !(!vec2<bool>(func_3(Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(arg_1.x, arg_1.x, arg_1.x), arg_0, 729f), 26003u, var_0, arg_0, 951f), -1360f, Struct_2(Struct_1(vec2<bool>(false, arg_0), vec3<f32>(190f, -1000f, -276f), arg_0, -1446f), var_0, global0[_wgslsmith_index_u32(var_0, 1u)], arg_0, arg_1.x)), func_3(Struct_2(Struct_1(vec2<bool>(true, true), arg_1, arg_0, arg_1.x), 4294967295u, 0u, true, 458f), _wgslsmith_f_op_f32(-arg_1.x), Struct_2(Struct_1(vec2<bool>(arg_0, arg_0), arg_1, false, 373f), var_0, u_input.c, true, arg_1.x))));
    let var_2 = Struct_2(Struct_1(vec2<bool>(false, arg_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), 0u < u_input.c, _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) + arg_1.x))), 4294967295u, _wgslsmith_div_u32(abs(62619u), 6921u), all(!select(var_1, !vec2<bool>(arg_0, true), select(var_1, var_1, arg_0))), arg_1.x);
    return Struct_1(vec2<bool>(!arg_0, select(false, any(vec2<bool>(true, arg_0)), true)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_1))) - var_2.a.b))), u_input.b == -30260i, _wgslsmith_f_op_f32(f32(-1f) * -495f));
}

fn func_1() -> vec4<bool> {
    var var_0 = true;
    let var_1 = vec4<u32>(1u, firstTrailingBit(~1241u) ^ ~87637u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u << (u_input.c % 32u), 1u)], global0[_wgslsmith_index_u32(u_input.c, 1u)]), ~(~global0[_wgslsmith_index_u32(0u, 1u)])), global0[_wgslsmith_index_u32(1u, 1u)]) ^ vec4<u32>(u_input.c, min(0u << ((global0[_wgslsmith_index_u32(u_input.c, 1u)] | global0[_wgslsmith_index_u32(4294967295u, 1u)]) % 32u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(16250u, 1u)], 0u, 13893u)), abs(vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 1u)], global0[_wgslsmith_index_u32(u_input.c, 1u)], global0[_wgslsmith_index_u32(37136u, 1u)])))), ~(select(44281u, 4294967295u, false) | ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57120u, 1u)], 1u)]), 87210u);
    var var_2 = Struct_2(func_2(all(vec3<bool>(true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-277f, 1000f)))), _wgslsmith_f_op_f32(sign(-1270f)), _wgslsmith_f_op_f32(399f + 588f))), var_1.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~u_input.c, 1u)], ~4839u), ~(1u << (global0[_wgslsmith_index_u32(u_input.c, 1u)] % 32u))), 0u), 1u)], func_2(!select(true, func_3(Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-979f, -112f, 796f), false, 230f), 4294967295u, var_1.x, true, -693f), 259f, Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(502f, 1000f, -722f), true, 2478f), var_1.x, 4294967295u, true, 681f)), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-887f, -1559f, 491f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 1485f, 219f), vec3<f32>(-793f, 1166f, 924f)))))).a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-889f + -440f))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e, var_2.e))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.e, 220f), _wgslsmith_f_op_vec2_f32(-var_2.a.b.xy)) * var_2.a.b.zx)))));
    var var_4 = countOneBits(vec3<i32>(_wgslsmith_add_i32(u_input.b, u_input.a), abs(_wgslsmith_clamp_i32(-1i, reverseBits(-63798i), 0i)), countOneBits(-6147i)));
    return select(!select(select(select(vec4<bool>(false, true, var_2.d, var_2.d), vec4<bool>(var_2.a.a.x, true, var_2.d, var_2.d), vec4<bool>(var_2.a.c, var_2.a.c, var_2.d, true)), vec4<bool>(true, true, var_2.d, true), all(var_2.a.a)), select(!vec4<bool>(false, var_2.d, var_2.a.a.x, true), vec4<bool>(var_2.a.a.x, false, var_2.a.c, var_2.a.c), !vec4<bool>(var_2.a.c, false, var_2.a.c, var_2.d)), !vec4<bool>(var_2.d, false, var_2.d, var_2.a.c)), select(vec4<bool>(var_2.a.c, var_2.d, var_2.d, var_2.d), !select(vec4<bool>(false, var_2.a.c, true, var_2.a.c), !vec4<bool>(var_2.a.c, true, var_2.d, true), select(vec4<bool>(true, var_2.a.a.x, false, var_2.a.a.x), vec4<bool>(true, true, true, var_2.d), true)), select(vec4<bool>(var_2.a.a.x, any(vec3<bool>(false, false, var_2.a.c)), var_2.a.a.x, true), vec4<bool>(true, any(vec3<bool>(var_2.a.a.x, true, var_2.d)), var_2.e == var_2.a.b.x, global0[_wgslsmith_index_u32(var_1.x, 1u)] <= var_1.x), var_2.d)), vec4<bool>((true & (var_2.a.c | false)) && true, 0u >= (_wgslsmith_mod_u32(62253u, 1u) | max(var_2.c, 4294967295u)), var_2.d, !(!(-69462i > u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(-1525f));
    global2 = -1208f;
    global0 = array<u32, 1>();
    var var_1 = select(select(func_1(), !(!func_1()), true), !select(vec4<bool>(all(vec3<bool>(true, false, true)), true, false, all(vec3<bool>(false, false, false))), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), false), !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true)));
    global0 = array<u32, 1>();
    let var_2 = Struct_2(Struct_1(vec2<bool>(_wgslsmith_mod_i32(u_input.b, 3165i) == -1i, true), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-178f + -2042f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1013f, -1295f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-216f + -1361f)))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-905f - 500f))))), u_input.c, ~global0[_wgslsmith_index_u32(1u, 1u)] << (~(~1u) % 32u), !(!var_1.x & true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1573f * -1000f))))));
    var var_3 = !any(!func_1());
    global3 = false;
    var var_4 = !var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1158f * var_2.a.d)), _wgslsmith_f_op_f32(var_2.e + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_f_op_f32(step(590f, var_2.e)), !var_2.d))), _wgslsmith_f_op_f32(step(330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b.x + 1308f)))), 488f), ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 1u), vec3<u32>(var_2.c, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12179u, 1u)], 1u)])))), vec4<i32>(u_input.b, ~1i, -u_input.e.x, (24615i | (u_input.d | u_input.b)) >> (u_input.c % 32u)));
}

