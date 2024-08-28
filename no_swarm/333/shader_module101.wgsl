struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: bool, arg_3: f32) -> bool {
    let var_0 = 36842u;
    let var_1 = vec2<f32>(arg_3, 1052f);
    let var_2 = 1i;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3)))), 1344f));
    let var_4 = arg_0.x;
    return var_4;
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_1(u_input.c, select(arg_0.zwz, select(!select(arg_0.yxz, arg_0.yxy, vec3<bool>(false, arg_0.x, false)), !arg_0.zzw, arg_0.x), !arg_0.x), ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -1i) & vec2<i32>(-63016i, 14028i), vec2<i32>(1i, 1i)) & -select(vec2<i32>(14412i, 0i), max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(global0[_wgslsmith_index_u32(63426u, 26u)], 68219i)), arg_0.x), arg_1, -712f);
    var var_1 = vec3<bool>(((any(vec3<bool>(false, var_0.b.x, false)) & !arg_0.x) && !select(var_0.b.x, true, false)) && any(!arg_0.zyw), !(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_3.x, -132f), -658f, 1u < u_input.c.x)) > 510f), select(true, true, !func_1(vec2<bool>(arg_0.x, arg_0.x), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(var_0.a.x, 26u)], 0i), !arg_0.x, _wgslsmith_div_f32(1494f, arg_3.x))));
    var var_2 = !var_0.b;
    let var_3 = arg_0.x;
    let var_4 = Struct_1(firstLeadingBit(vec4<u32>(~_wgslsmith_clamp_u32(44156u, 39513u, 15130u), firstTrailingBit(1251u), u_input.a.x << (u_input.a.x % 32u), _wgslsmith_mod_u32(21245u ^ u_input.c.x, abs(1u)))), select(vec3<bool>(all(!vec3<bool>(var_1.x, var_0.b.x, var_0.b.x)), true, true), vec3<bool>(arg_0.x != arg_0.x, !(!var_0.b.x), var_0.b.x), false), -vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(22917i, var_0.c.x, 0i, var_0.c.x)), vec4<i32>(var_0.c.x, 28578i, 0i, 1i)), var_0.c.x | select(var_0.c.x, u_input.b, false)), _wgslsmith_f_op_f32(arg_2 + -1064f), _wgslsmith_f_op_f32(arg_2 * 1240f));
    return 1513u;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec2<u32>) -> i32 {
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    var var_0 = Struct_1(abs(u_input.c), !select(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false), arg_1), select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, false, arg_1)), vec3<bool>(true, true, all(vec2<bool>(arg_1, true)))), _wgslsmith_sub_vec2_i32(~(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(25056u, 26u)])), min(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.c.x, 26u)]), ~vec2<i32>(global0[_wgslsmith_index_u32(arg_2.x, 26u)], -864i)), vec2<i32>(~(-17157i), u_input.b))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + 1f));
    var var_1 = ~func_3(select(select(vec4<bool>(false, false, var_0.b.x, var_0.b.x), vec4<bool>(true, arg_1, false, true), any(vec2<bool>(false, var_0.b.x))), vec4<bool>(arg_1, !var_0.b.x, var_0.b.x, arg_1), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * var_0.d))), _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -531f))), -738f, 1032f));
    var var_2 = -(~vec4<i32>(var_0.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 26u)], (global0[_wgslsmith_index_u32(arg_2.x, 26u)] ^ -53229i) | u_input.b, ~var_0.c.x));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.yz;
    let var_1 = true;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(-514f - -1258f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(821f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f)))));
    let var_3 = vec2<bool>(true, func_1(select(!vec2<bool>(var_1, true), vec2<bool>(var_1, any(vec4<bool>(var_1, false, false, var_1))), false), _wgslsmith_mod_i32(_wgslsmith_sub_i32(67227i, global0[_wgslsmith_index_u32(var_0.x, 26u)]) >> (reverseBits(13379u) % 32u), global0[_wgslsmith_index_u32(firstTrailingBit(23156u), 26u)]), var_1, _wgslsmith_f_op_f32(-var_2.x)));
    let var_4 = u_input.a;
    var var_5 = Struct_1(select(~vec4<u32>(abs(13726u), ~0u, 1u, u_input.c.x), ~(~vec4<u32>(0u, 13827u, 5279u, 0u)), select(vec4<bool>(func_1(var_3, -16333i, var_1, 2272f), var_3.x, var_3.x, !var_1), vec4<bool>(all(vec3<bool>(var_3.x, true, var_3.x)), false, var_3.x, !var_3.x), !vec4<bool>(false, true, var_3.x, false))), vec3<bool>(!(_wgslsmith_clamp_i32(u_input.b, 2147483647i, u_input.b) <= func_2(var_2.x, var_3.x, u_input.a.xy)), global0[_wgslsmith_index_u32(~countOneBits(u_input.c.x), 26u)] <= ~firstTrailingBit(-1i), any(!select(vec3<bool>(false, true, var_1), vec3<bool>(var_1, var_1, true), vec3<bool>(var_3.x, var_3.x, var_1)))), _wgslsmith_mult_vec2_i32(~abs(vec2<i32>(u_input.b, -2147483647i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(var_0.x, 26u)]), ~vec2<i32>(0i, -6513i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1259f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))))));
    var var_6 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x + 680f), 1076f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.d))))));
    var var_7 = Struct_1(~(~firstTrailingBit(vec4<u32>(var_4.x, u_input.c.x, var_5.a.x, u_input.a.x))) | ~(~vec4<u32>(46249u, u_input.c.x, 11508u, u_input.c.x) | (vec4<u32>(u_input.c.x, var_4.x, var_5.a.x, var_0.x) & u_input.c)), !(!select(select(vec3<bool>(true, true, var_1), vec3<bool>(true, var_3.x, false), true), !var_5.b, false)), _wgslsmith_div_vec2_i32(var_5.c, var_5.c), _wgslsmith_f_op_f32(-var_5.e), 2452f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_i32(-select(vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 26u)], -34482i, 44340i, global0[_wgslsmith_index_u32(16944u, 26u)]), vec4<i32>(-2147483647i, u_input.b, var_5.c.x, 690i), false), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(1i, 5463i, -53552i, u_input.b)), -vec4<i32>(u_input.b, 1i, 1i, global0[_wgslsmith_index_u32(4294967295u, 26u)]))));
}

