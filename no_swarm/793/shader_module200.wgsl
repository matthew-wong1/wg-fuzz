struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: Struct_1 = Struct_1(true);

var<private> global3: u32 = 74627u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -(u_input.a.x >> (_wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(~4294967295u, _wgslsmith_add_u32(0u, 14589u)), 6655u) % 32u));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(~59931u), 1u), 11u)];
    var var_1 = vec2<bool>(global1.x, all(select(vec4<bool>(true, global2.a, false, false), !vec4<bool>(global2.a, false, true, global2.a), arg_1.a)) || true);
    let var_2 = vec4<bool>(global1.x, select(true, true, true), true, arg_1.a);
    var var_3 = global0[_wgslsmith_index_u32(1u, 11u)];
    return Struct_1(var_3.a);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-(~(-1i)), i32(-1i) * -67709i, _wgslsmith_mult_i32(~(-1i), -2147483647i) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.b), -1i, -u_input.b), -vec3<i32>(u_input.a.x, u_input.b, -1i))), vec4<i32>(-1i) * -vec4<i32>(select(u_input.b, 1i, false), 10939i, -11826i, 1i));
    var var_1 = arg_0.xw;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 1198f))))))), _wgslsmith_f_op_vec3_f32(sign(arg_0.www)));
    var var_3 = vec3<bool>(!(~(-u_input.a.x) <= -min(-5446i, 1i)), !(!global2.a), !(!(true || (arg_1.x || true))));
    var var_4 = func_2(_wgslsmith_sub_vec3_i32(var_0.wzx, var_0.xyz), arg_2);
    return var_1.x;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global2 = arg_2;
    var var_0 = select(select(select(vec3<bool>(true, global1.x, 352f >= arg_1), !select(vec3<bool>(false, arg_2.a, true), vec3<bool>(true, arg_0.a, global1.x), true), true), !(!vec3<bool>(true, global1.x, true)), vec3<bool>(all(!vec4<bool>(true, true, arg_0.a, global2.a)), arg_0.a, all(!global1.zy))), !select(select(vec3<bool>(true, arg_0.a, global1.x), select(vec3<bool>(global2.a, true, arg_0.a), vec3<bool>(false, arg_0.a, true), vec3<bool>(true, false, false)), select(vec3<bool>(arg_2.a, true, arg_0.a), vec3<bool>(global2.a, arg_0.a, global1.x), global2.a)), select(vec3<bool>(false, arg_0.a, false), select(vec3<bool>(global1.x, false, global2.a), vec3<bool>(true, true, global2.a), true), !vec3<bool>(arg_0.a, arg_2.a, true)), vec3<bool>(false, global2.a, true)), select(!vec3<bool>(true, false != global1.x, !arg_0.a), vec3<bool>(any(!vec4<bool>(true, true, global2.a, false)), -1000f >= _wgslsmith_f_op_f32(arg_3 - arg_3), arg_0.a), any(vec3<bool>(arg_3 < -353f, true, all(global1.yz)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_3), vec2<f32>(-2011f, 724f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1454f, arg_3)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_1))));
    let var_2 = abs(~select(~vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(8000u, 0u, 0u, 29030u), _wgslsmith_div_vec4_u32(vec4<u32>(20645u, 44024u, 4294967295u, 71399u), vec4<u32>(56665u, 56803u, 1u, 4294967295u))), vec4<bool>(true, false, all(global1.yy), true)));
    let var_3 = select(vec3<bool>(any(select(vec3<bool>(var_0.x, global2.a, true), vec3<bool>(global1.x, true, true), arg_0.a)) || (true | !var_0.x), any(select(!var_0.yx, global1.yz, !var_0.xy)), var_0.x), vec3<bool>(arg_0.a, true, !arg_0.a), arg_0.a);
    return func_2(-(~min(vec3<i32>(0i, 0i, u_input.b) ^ vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-2147483647i, 30925i, u_input.a.x))), Struct_1(!arg_2.a));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1146f))) > 868f, !global2.a);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 408u, arg_0), 11u)];
    var_1 = func_4(func_2(arg_2, arg_3), _wgslsmith_f_op_f32(f32(-1f) * -652f), Struct_1(_wgslsmith_f_op_f32(-538f + _wgslsmith_f_op_f32(1743f * 1727f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(604f, -1000f, -1222f, -1975f), vec4<bool>(arg_3.a, var_1.a, global2.a, var_1.a), arg_3)))), -317f);
    var var_2 = func_4(func_4(func_4(Struct_1(arg_3.a), _wgslsmith_f_op_f32(ceil(-179f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_0, arg_0, arg_0), vec4<u32>(arg_0, arg_0, 18126u, 24314u) >> (vec4<u32>(arg_0, 4294967295u, arg_0, 0u) % vec4<u32>(32u))), 11u)], 1f), _wgslsmith_f_op_f32(step(-147f, 1000f)), Struct_1(!(!var_1.a)), 637f), -1504f, Struct_1(true), -1000f);
    var var_3 = ~(arg_0 & (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), abs(vec3<u32>(32293u, arg_0, arg_0))) & arg_0));
    return ~_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, abs(arg_0)), arg_0), select(4294967295u, arg_0, any(vec4<bool>(false, true, arg_3.a, global2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(1u, 1u, 1u, 1u));
    var_0 = vec4<u32>(1u >> (~func_1(var_0.x, 17818i, vec3<i32>(-25419i, u_input.a.x, u_input.a.x) >> (var_0.zxy % vec3<u32>(32u)), Struct_1(true)) % 32u), func_1(10142u, select(u_input.b, ~_wgslsmith_mult_i32(u_input.b, u_input.a.x), true), vec3<i32>(~(-2147483647i), -2147483647i, ~max(u_input.a.x, u_input.b)), func_2(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(0i, 7946i, u_input.b), vec3<i32>(65273i, 10848i, u_input.b), false), vec3<i32>(u_input.a.x, 7876i, u_input.b), ~vec3<i32>(51235i, 1i, 0i)), Struct_1(!global2.a))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, reverseBits(~var_0.x), max(~33433u, ~0u)), select(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(25060u, var_0.x, 4294967295u, var_0.x), vec4<u32>(34001u, var_0.x, 38361u, 9152u), vec4<u32>(4294967295u, 89441u, 1u, var_0.x)), countOneBits(vec4<u32>(4294967295u, 103465u, 20950u, var_0.x))), vec4<u32>(16819u, var_0.x, var_0.x ^ 28894u, reverseBits(1u)), true)), _wgslsmith_dot_vec3_u32(var_0.xyz, select(_wgslsmith_div_vec3_u32(var_0.wyy, var_0.zwx) ^ (var_0.zxy & vec3<u32>(64608u, 40458u, var_0.x)), vec3<u32>(var_0.x, 4294967295u, ~88487u), global2.a)));
    var var_1 = Struct_1(u_input.a.x > -(~u_input.a.x));
    let var_2 = u_input.b;
    var var_3 = global0[_wgslsmith_index_u32(var_0.x, 11u)];
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(970f, 139f))) - _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(189f, -1000f)))));
    var var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-892f, 442f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2097f, -122f))), vec2<f32>(_wgslsmith_f_op_f32(864f - 1353f), _wgslsmith_f_op_f32(trunc(-1491f))))))));
}

