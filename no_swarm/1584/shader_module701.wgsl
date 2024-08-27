struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: i32 = -68845i;

var<private> global2: array<u32, 14>;

var<private> global3: array<vec3<bool>, 29>;

var<private> global4: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(~u_input.a, _wgslsmith_mod_i32(u_input.e, reverseBits(firstTrailingBit(u_input.e)))), _wgslsmith_mult_i32(-1338i, u_input.e), ~(~(~countOneBits(-15094i))));
    let var_1 = global0[_wgslsmith_index_u32(~u_input.d, 29u)];
    global2 = array<u32, 14>();
    var var_2 = Struct_1(var_1.d.x, ~(0i | var_1.c), (_wgslsmith_add_i32(var_0.x, 27726i) >> (_wgslsmith_add_u32(77263u, ~4294967295u) % 32u)) << (firstLeadingBit(4294967295u) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-843f, var_1.d.x, var_1.a, var_1.e)) - vec4<f32>(-293f, var_1.a, var_1.a, var_1.d.x)) * var_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(215f, _wgslsmith_f_op_f32(min(var_1.a, -1373f))))) + -615f));
    global0 = array<Struct_1, 29>();
    return _wgslsmith_f_op_f32(-var_2.d.x);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-625f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-794f, 593f) * _wgslsmith_f_op_f32(-718f * 1000f))))), u_input.a << ((firstTrailingBit(~u_input.d) | ~(~1u)) % 32u), u_input.a & u_input.e, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(f32(-1f) * -1044f)), -671f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(floor(-976f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, -109f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-850f, -1156f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1372f * 1495f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1435f))))));
    global1 = -2147483647i;
    var var_1 = select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.c), vec3<u32>(u_input.d, _wgslsmith_mult_u32(countOneBits(abs(1u)), 28241u >> (_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 4294967295u, 4294967295u) % 32u)), ~(~40074u)), global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b.x, 5669u), 29u)]);
    global1 = -20631i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(f32(-1f) * -467f)))))), _wgslsmith_div_i32(-var_0.c, -2147483647i), u_input.e, vec4<f32>(_wgslsmith_f_op_f32(-var_0.e), var_0.e, var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f * _wgslsmith_div_f32(var_0.a, var_0.e)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 1496f)))))));
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>) -> i32 {
    global1 = u_input.e;
    global0 = array<Struct_1, 29>();
    global2 = array<u32, 14>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(783f - 400f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-763f * 868f))), true)), max(-u_input.e, u_input.e), reverseBits(16733i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(488f, _wgslsmith_div_f32(1113f, 1094f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-561f, -141f) - _wgslsmith_f_op_f32(trunc(-878f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(268f - -805f) * _wgslsmith_f_op_f32(floor(-1447f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(203f * 2443f)), any(vec3<bool>(false, true, false)))), 636f), 279f);
    let var_1 = u_input.e;
    return max(firstTrailingBit(~var_1), var_1);
}

fn func_1() -> i32 {
    global1 = _wgslsmith_mult_i32(u_input.a, -2147483647i);
    let var_0 = vec2<i32>(func_4(_wgslsmith_dot_vec3_u32(u_input.b.wxw, ~u_input.b.yyy), vec4<u32>(_wgslsmith_div_u32(func_2(), u_input.d), _wgslsmith_sub_u32(0u, u_input.c), _wgslsmith_mod_u32(32227u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 14u)], 14u)], 14u)]), global2[_wgslsmith_index_u32(25394u, 14u)])), 20914i);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2063f)) * _wgslsmith_f_op_f32(f32(-1f) * -879f)))));
    global4 = true && !select(firstTrailingBit(var_0.x) >= 0i, true, true & all(vec4<bool>(true, true, true, true)));
    var var_2 = ~vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) & (1u << (global2[_wgslsmith_index_u32(4126u, 14u)] % 32u)), 14u)] | ~reverseBits(u_input.c), firstLeadingBit(u_input.d), countOneBits(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.d, 14u)], global2[_wgslsmith_index_u32(8892u, 14u)]))));
    return ~countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.e, -2147483647i) ^ (vec3<i32>(1i, var_0.x, u_input.e) << (vec3<u32>(18611u, var_2.x, u_input.d) % vec3<u32>(32u))), vec3<i32>(u_input.e, u_input.a, 0i) >> (~u_input.b.yxw % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = vec4<i32>(1i, u_input.e, u_input.e, func_1());
    var var_2 = var_1.x;
    global3 = array<vec3<bool>, 29>();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(113f, 480f, 1017f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-409f, 244f, -561f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-546f, _wgslsmith_div_f32(-2164f, _wgslsmith_f_op_f32(sign(306f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -958f), 1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1207f, -1344f, 598f))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(365f, 124f, 277f)))))));
    var var_4 = vec4<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(var_3.x - var_3.x))) - var_3.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(min(var_3.x, 774f)))), _wgslsmith_f_op_f32(trunc(1f)))), 490f);
    let var_5 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~(u_input.b.ww << (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)))), vec2<u32>(~(~u_input.d), global2[_wgslsmith_index_u32(func_2(), 14u)])), u_input.b.wx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(func_4(_wgslsmith_div_u32(countOneBits(var_5), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 14u)]), u_input.b), 1i), -2147483647i);
}

