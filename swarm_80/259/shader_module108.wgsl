struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
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

var<private> global0: Struct_2 = Struct_2(0u, 854f, vec4<i32>(-1i, -26189i, i32(-2147483648), 10386i));

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 27>;

var<private> global3: i32 = 9186i;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(max(-1162f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.d.x + _wgslsmith_f_op_f32(347f - 872f)), -1825f)))), ~arg_0, ~reverseBits(~(~u_input.e)), vec2<i32>(17955i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(11802i, 0i, global1.c.x)), global1.c.zzx)));
    let var_1 = Struct_2(~(arg_0.x << ((~4294967295u & _wgslsmith_add_u32(56541u, arg_3.x)) % 32u)), arg_2.d.x, global0.c);
    let var_2 = _wgslsmith_f_op_f32(-504f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_f_op_f32(abs(-1238f))));
    var var_3 = _wgslsmith_f_op_f32(step(-1705f, _wgslsmith_f_op_f32(global1.b + _wgslsmith_div_f32(2338f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1393f) + _wgslsmith_f_op_f32(arg_2.d.x + 741f))))));
    var var_4 = true;
    return ~(~(~(~arg_1.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec2_u32(u_input.e.wz, ~reverseBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.a, arg_0), u_input.e.yy), ~vec2<u32>(71283u, arg_1.a), _wgslsmith_clamp_vec2_u32(u_input.e.yz, vec2<u32>(global1.a, 4441u), vec2<u32>(1u, 1u)))));
    global1 = Struct_2(~u_input.d << (19071u % 32u), 1345f, vec4<i32>(_wgslsmith_mod_i32(arg_1.c.x, _wgslsmith_clamp_i32(~(-1i), ~(-1i), arg_2.x)), global0.c.x, ~global0.c.x, -4204i >> (global1.a % 32u)));
    let var_1 = any(select(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), all(vec2<bool>(true, true))), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, all(vec3<bool>(false, false, false)), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, false, false, false), true), global1.c.x != -48134i), !vec4<bool>(true, all(vec2<bool>(true, false)), true, true)));
    global1 = Struct_2(~(var_0.x | arg_0), _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), vec4<i32>(46911i, global0.c.x, -_wgslsmith_sub_i32(arg_2.x, -u_input.c.x), 17286i));
    var var_2 = Struct_1(~_wgslsmith_sub_vec2_u32(~firstTrailingBit(vec2<u32>(arg_0, global0.a)), _wgslsmith_mult_vec2_u32(min(var_0, u_input.e.wy), var_0)), !select(!select(vec2<bool>(var_1, false), vec2<bool>(false, var_1), true), !select(vec2<bool>(var_1, true), vec2<bool>(true, var_1), var_1), select(!vec2<bool>(true, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), true), vec2<bool>(var_1, var_1))), any(select(vec2<bool>(false | var_1, var_1), select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), var_1), select(vec2<bool>(false, false), vec2<bool>(false, var_1), vec2<bool>(true, var_1)), var_1), select(vec2<bool>(true, true), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), false), arg_2.x > 16715i))), vec3<f32>(_wgslsmith_f_op_f32(floor(-2233f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1912f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b))))), arg_0);
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.b, 867f, global1.b), vec3<f32>(1172f, global0.b, arg_1.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-161f, global0.b, -567f) * var_2.d))))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -813f), u_input.e, vec4<u32>(_wgslsmith_mod_u32(global0.a, 1u), _wgslsmith_dot_vec3_u32(u_input.e.zyx, u_input.e.yxw), abs(1u), 86196u), ~u_input.b.zy);
    global1 = Struct_2(_wgslsmith_div_u32(u_input.a, ~(~81328u)), -976f, ~(~_wgslsmith_div_vec4_i32(~global0.c, -vec4<i32>(-13794i, global0.c.x, u_input.b.x, 52052i))));
    var var_1 = select(!vec3<bool>(true, true, true & all(vec3<bool>(true, true, false))), vec3<bool>(true, false || any(vec2<bool>(true, true)), all(vec2<bool>(true, true))), false);
    var var_2 = Struct_1(var_0.b.zx, var_1.xy, all(vec3<bool>(!(0u <= u_input.d), var_1.x, true || !var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_mod_u32(1u, var_0.c.x), global2[_wgslsmith_index_u32(func_3(vec4<u32>(22812u, u_input.a, global0.a, global1.a), vec3<u32>(1u, 1u, var_0.b.x), Struct_1(vec2<u32>(u_input.e.x, 22000u), vec2<bool>(true, var_1.x), true, vec3<f32>(840f, global0.b, var_0.a), 9875u), vec2<u32>(global1.a, 1u)), 27u)], vec2<i32>(19891i, global0.c.x))))) - vec3<f32>(_wgslsmith_f_op_f32(round(-946f)), _wgslsmith_f_op_f32(-618f - -876f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.b)), var_0.a))), _wgslsmith_dot_vec2_u32(~min(var_0.b.ww, u_input.e.zz) ^ u_input.e.zx, min(abs(min(u_input.e.xx, vec2<u32>(u_input.a, var_0.b.x))), vec2<u32>(~u_input.e.x, u_input.e.x))));
    let var_3 = i32(-1i) * -37713i;
    return Struct_2(~(_wgslsmith_sub_u32(1u, global1.a) & func_3(var_0.b, ~vec3<u32>(4294967295u, global0.a, 1u), Struct_1(u_input.e.xx, vec2<bool>(var_1.x, var_1.x), var_1.x, var_2.d, var_0.b.x), ~vec2<u32>(6107u, var_0.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(-197f + global0.b)) - -967f))), vec4<i32>(abs(_wgslsmith_mult_i32(reverseBits(var_3), u_input.b.x)), var_0.d.x, ~global0.c.x >> (~(14164u | u_input.a) % 32u), -global0.c.x));
}

fn func_5(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f) * _wgslsmith_f_op_f32(-global0.b)), -634f))) <= _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(-arg_0.b));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1707f - global0.b), _wgslsmith_f_op_f32(ceil(2325f))))))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = Struct_2(countOneBits(u_input.e.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_5(func_2())))), reverseBits(countOneBits(max(vec4<i32>(76517i, 1i, -63028i, -2147483647i) & vec4<i32>(-39819i, 0i, global0.c.x, global0.c.x), global1.c))));
    global3 = ~(~_wgslsmith_add_i32(func_2().c.x, _wgslsmith_div_i32(u_input.b.x, func_2().c.x)));
    let var_0 = global2[_wgslsmith_index_u32(6481u, 27u)];
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.a, 1u), 27u)];
    var var_2 = Struct_1(countOneBits(u_input.e.xy), select(select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false), true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), var_0.b >= -153f), false), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), select(false, true, false)), !select(vec2<bool>(false, true), vec2<bool>(true, true), true))), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1147f, global0.b, var_1.b), vec3<f32>(-1209f, global0.b, 1000f))))))), var_1.a);
    return Struct_2(0u, 670f, vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.c, var_0.c), reverseBits(firstLeadingBit(0i)), var_1.c.x, var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 27>();
    global3 = -1i;
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1976f, 299f, 434f, -2149f) * vec4<f32>(global0.b, -265f, global1.b, global0.b)))))));
    global1 = func_1(global1.b);
    global0 = Struct_2(~32974u, 1000f, select(vec4<i32>(select(-1901i, min(4094i, 1i), true), 39463i, _wgslsmith_mod_i32(1i, 9220i & global0.c.x), 2147483647i), countOneBits(vec4<i32>(28763i, 1i, 2147483647i, -64174i) & ~vec4<i32>(global1.c.x, global1.c.x, global0.c.x, u_input.b.x)), !vec4<bool>(true, true, all(vec2<bool>(false, false)), any(vec4<bool>(false, false, false, true)))));
    let var_1 = !vec2<bool>(all(vec4<bool>(true, true, true, false)), true);
    let var_2 = _wgslsmith_div_vec3_i32(~global0.c.yxz, (vec3<i32>(global1.c.x, 13084i, 1i) << (countOneBits(select(vec3<u32>(1u, 4294967295u, u_input.a), u_input.e.wwy, vec3<bool>(var_1.x, false, true))) % vec3<u32>(32u))) | select(vec3<i32>(1i, ~1i, u_input.c.x), global0.c.xzw, !var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(var_0.wz)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.zy)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.ww + vec2<f32>(var_0.x, global0.b)))));
}

