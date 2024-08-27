struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: Struct_1 = Struct_1(-45274i, vec3<bool>(true, false, false), -115f);

var<private> global2: Struct_1 = Struct_1(-3841i, vec3<bool>(false, false, true), -423f);

var<private> global3: array<i32, 14>;

var<private> global4: array<f32, 10> = array<f32, 10>(1778f, -803f, -426f, -706f, 146f, 171f, 1361f, -145f, -1308f, -525f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    let var_0 = vec4<u32>(~u_input.a.x >> (_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.yx) % 32u), abs(u_input.d), u_input.d, 49811u);
    var var_1 = Struct_3(vec2<f32>(global4[_wgslsmith_index_u32(~(0u >> (~u_input.a.x % 32u)), 10u)], -932f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2246f, global1.c, -503f) * vec3<f32>(global2.c, 472f, global1.c)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global4[_wgslsmith_index_u32(0u, 10u)], global1.c) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4[_wgslsmith_index_u32(74345u, 10u)], global2.c, global4[_wgslsmith_index_u32(4294967295u, 10u)])))))), global1.b.x);
    let var_2 = !(!select(select(global1.b, vec3<bool>(global2.b.x, var_1.c, true), select(vec3<bool>(false, var_1.c, var_1.c), vec3<bool>(global1.b.x, global1.b.x, false), vec3<bool>(true, false, var_1.c))), vec3<bool>(true, false, true), select(select(vec3<bool>(true, false, true), global1.b, var_1.c), vec3<bool>(false, false, true), u_input.b < 39476i)));
    global3 = array<i32, 14>();
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2087f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1909f))))), var_1.a.x, -868f, _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(u_input.a.x, 10u)]))) + vec4<f32>(_wgslsmith_f_op_f32(floor(1823f)), global1.c, 1f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(max(4294967295u, 28988u), 10u)])));
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_div_i32(min(~144i, min(global2.a, -u_input.c.x)) >> (~_wgslsmith_mod_u32(select(u_input.a.x, u_input.a.x, global2.b.x), ~u_input.a.x) % 32u), 1i);
    var var_1 = Struct_3(arg_0.b.zz, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), 1f, -706f), (countOneBits(u_input.c.x) < ~0i) && arg_0.c);
    var var_2 = global0[_wgslsmith_index_u32(0u, 12u)];
    global1 = Struct_1(i32(-1i) * -2147483647i, select(global2.b, global2.b, vec3<bool>(true, true, true)), global2.c);
    var var_3 = _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(~113551u, 10u)], 1f, any(!select(select(vec4<bool>(true, true, arg_1, global1.b.x), vec4<bool>(true, false, true, true), vec4<bool>(false, global2.b.x, global2.b.x, var_1.c)), vec4<bool>(false, global1.b.x, true, true), !arg_1))));
    return global1.a;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = arg_0;
    global1 = Struct_1(firstTrailingBit(0i), vec3<bool>(true, false, global2.b.x), _wgslsmith_f_op_f32(max(-833f, var_0.x)));
    global0 = array<Struct_2, 12>();
    let var_1 = Struct_1(~func_4(Struct_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, global2.c))), vec3<f32>(arg_0.x, arg_0.x, -883f), true || global1.b.x), func_3()), global1.b, -1000f);
    let var_2 = var_1;
    return Struct_2(global2.a);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> Struct_1 {
    global0 = array<Struct_2, 12>();
    let var_0 = !vec4<bool>(all(select(vec4<bool>(arg_2, true, global2.b.x, global1.b.x), !vec4<bool>(arg_2, global2.b.x, true, false), true)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-731f))) > _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(36932u, 10u)]))), !(global1.c < -1989f));
    global3 = array<i32, 14>();
    var var_1 = 1i;
    var_1 = global1.a << (~firstTrailingBit(~firstLeadingBit(u_input.a.x)) % 32u);
    return Struct_1(0i, !select(vec3<bool>(false, true, !global1.b.x), !vec3<bool>(global2.b.x, true, global1.b.x), global1.b), 829f);
}

fn func_1() -> bool {
    var var_0 = any(!(!vec4<bool>(global1.b.x, true, true, global1.b.x)));
    var_0 = false;
    let var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 12u)];
    let var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 10u)])))), func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1605f), -963f)))), true, -1383f);
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1311f * global2.c), _wgslsmith_f_op_f32(trunc(-771f))), vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_f_op_f32(sign(-451f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1134f, var_2.c, 1578f)) + vec3<f32>(var_2.c, global2.c, 1006f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.c)) * _wgslsmith_f_op_f32(global1.c + 1000f)), -1554f, 129f))), all(!select(select(global2.b.yy, global2.b.yx, vec2<bool>(global1.b.x, global2.b.x)), vec2<bool>(false, true), 2250f > global4[_wgslsmith_index_u32(u_input.a.x, 10u)])));
    return !(!select(u_input.d >= u_input.d, global1.b.x, global2.b.x) | true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_clamp_i32(11666i, 13363i, global1.a)), reverseBits(-2147483647i)), countOneBits(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global2.a, global2.a, -2147483647i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(-17735i, 8455i, 2147483647i, -16529i), vec4<i32>(-37497i, global2.a, global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(0u, 14u)])))), func_1()), select(global2.b, global1.b, !(!global2.b)), global2.c);
    var var_1 = i32(-1i) * -u_input.c.x;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(241f, _wgslsmith_f_op_f32(exp2(global1.c)), any(vec2<bool>(var_0.b.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(u_input.a.x, 10u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-935f, -1489f, -762f))), true);
    global4 = array<f32, 10>();
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(global2.a, vec4<f32>(411f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c))), 600f), -535f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~38683u, 10u)])), ~u_input.d ^ u_input.a.x);
}

