struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(true);

var<private> global1: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.x, arg_2.a), arg_2.a)), ((1u << (u_input.c.x % 32u)) >> (1989u % 32u)) < select(reverseBits(u_input.a), abs(u_input.c.x), true)), arg_2, global0[_wgslsmith_index_u32(~1u, 1u)], false);
    global0 = array<bool, 1>();
    let var_1 = Struct_2(_wgslsmith_clamp_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 76259u, u_input.a), u_input.c)) & ~max(u_input.c, vec3<u32>(0u, 4294967295u, 4294967295u)), u_input.c, ~min(~vec3<u32>(u_input.a, 1u, 43890u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.c.x), u_input.c))), arg_2, u_input.c.x, Struct_1(arg_1.x, true));
    global1 = !(!(!var_1.b.b) & true);
    var var_2 = var_1.b.b;
    return arg_2.b;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(Struct_1(-1000f, !global0[_wgslsmith_index_u32(1u, 1u)]), countOneBits(~_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(24490u, 4294967295u, 40400u))) & select(~vec3<u32>(0u, u_input.c.x, 52549u) & vec3<u32>(27144u, 44883u, 0u), ~vec3<u32>(12582u, u_input.a, 0u), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true, global0[_wgslsmith_index_u32(39604u, 1u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(54400u, 1u)]), !global0[_wgslsmith_index_u32(u_input.c.x, 1u)])));
    var var_1 = vec4<bool>(func_3(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-131f, _wgslsmith_f_op_f32(var_0.a.a - 1000f), _wgslsmith_f_op_f32(-var_0.a.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, -778f, var_0.a.a)))), Struct_1(_wgslsmith_f_op_f32(-1f), true), max(-vec2<i32>(u_input.b, u_input.d), -vec2<i32>(u_input.b, u_input.b))), true, var_0.a.b, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(4294967295u, 81255u, 89042u)), ~_wgslsmith_div_vec3_u32(var_0.b, vec3<u32>(var_0.b.x, 13218u, u_input.c.x))), firstTrailingBit(vec3<u32>(9349u, var_0.b.x, 66415u)) | ~var_0.b), 1u)]);
    return Struct_4(var_0.a, ~vec3<u32>(~0u, var_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.b.x), vec2<u32>(var_0.b.x, u_input.c.x)) | _wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(4294967295u, var_0.b.x, var_0.b.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = max(select(_wgslsmith_add_vec3_i32(select(firstLeadingBit(vec3<i32>(-71799i, -1i, -2147483647i)), ~vec3<i32>(u_input.d, 2147483647i, -23510i), arg_1.a.b), _wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.d, 31329i, 0i), vec3<i32>(u_input.d, -1i, u_input.d), vec3<bool>(arg_1.a.b, global0[_wgslsmith_index_u32(1u, 1u)], true)), ~vec3<i32>(u_input.b, u_input.b, -2147483647i))), vec3<i32>(-firstTrailingBit(-30886i), _wgslsmith_div_i32(~u_input.d, u_input.d), _wgslsmith_div_i32(u_input.b, -12916i) >> (arg_1.b.x % 32u)), arg_1.a.b), _wgslsmith_clamp_vec3_i32(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.d, 2147483647i), vec3<i32>(u_input.d, u_input.b, u_input.b), vec3<i32>(0i, -2147483647i, u_input.d))), vec3<i32>(-21002i, ~1i >> (_wgslsmith_sub_u32(4294967295u, arg_0.x) % 32u), u_input.d), vec3<i32>(u_input.b, u_input.b, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(13357i, u_input.b)), select(vec2<i32>(u_input.d, 0i), vec2<i32>(u_input.d, u_input.d), global0[_wgslsmith_index_u32(18196u, 1u)])))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(412f * 537f)), 1f, arg_1.a.a, -284f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-105f, 855f, arg_1.a.a, 1000f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.a), -687f, _wgslsmith_f_op_f32(sign(-544f)), _wgslsmith_div_f32(-602f, arg_1.a.a))))));
    var var_3 = arg_1.b.x;
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(978f, 1372f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -592f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(min(var_2.x, 525f)))), _wgslsmith_f_op_f32(trunc(1375f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1341f, var_2.x, var_2.x, var_2.x)))))) * vec4<f32>(1f, 1f, 1f, 1f));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(select(arg_1.a.a, var_2.x, any(vec3<bool>(true, true, true)))), 4294967295u != arg_1.b.x), func_2().a, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(887f, arg_1.a.a, global0[_wgslsmith_index_u32(max(arg_0.x, u_input.c.x), 1u)])))) <= var_2.x);
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = true;
    let var_1 = select(all(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], true, true), vec4<bool>(true, false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(88413u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)])), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(61877u, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(44538u, 1u)], true, global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(68435u, 1u)])))), any(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, 8024u, u_input.a), vec4<u32>(54824u, u_input.c.x, 36599u, 1u))), 1u)], all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 1u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(29568u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], true, global0[_wgslsmith_index_u32(0u, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], true, global0[_wgslsmith_index_u32(u_input.a, 1u)]))), !(!global0[_wgslsmith_index_u32(u_input.c.x, 1u)]))), !all(vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)])), global0[_wgslsmith_index_u32(0u, 1u)], false, !global0[_wgslsmith_index_u32(u_input.a, 1u)])));
    global1 = true;
    var var_2 = func_4(u_input.c, func_2());
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1104f, _wgslsmith_f_op_f32(-var_2.a.a))))));
    return Struct_1(-788f, func_2().a.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    let var_0 = all(select(select(!vec3<bool>(global0[_wgslsmith_index_u32(37257u, 1u)], false, arg_1.b), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 1u)]), true), !select(!vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.c, 1u)], false), vec3<bool>(false, true, true), vec3<bool>(arg_0.b.b, false, false)), any(select(!vec4<bool>(arg_0.d.b, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], arg_1.b, false), vec4<bool>(false, true, arg_0.d.b, true), true))));
    let var_1 = func_4(u_input.c, Struct_4(Struct_1(-1356f, !var_0), u_input.c)).b;
    var var_2 = all(vec3<bool>(-1i <= _wgslsmith_div_i32(-u_input.b, u_input.b), !(_wgslsmith_f_op_f32(floor(-944f)) == arg_0.b.a), var_1.a != arg_1.a));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(212f, arg_1.a, 291f, arg_0.b.a) * vec4<f32>(1000f, arg_0.d.a, 1960f, arg_0.b.a)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, var_1.a, -1522f, arg_2) * vec4<f32>(1000f, -1160f, arg_1.a, arg_1.a)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1068f, arg_2, 1745f, arg_0.d.a)))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1604f, arg_1.a)), func_1(u_input.b, u_input.b).a, _wgslsmith_div_f32(arg_2, 1846f), func_2().a.a)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-515f, var_1.a, var_1.a, 559f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a, arg_2, -473f, 1106f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, arg_1.a, -458f, -1411f), vec4<f32>(-1174f, 923f, -804f, 1316f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 164f, -514f, arg_0.b.a) + vec4<f32>(arg_1.a, 162f, 286f, arg_0.b.a)))))));
    global1 = !(reverseBits(u_input.b) != -select(-1i, -1i, true)) && !func_1(countOneBits(u_input.b), 1i).b;
    return select(select(vec2<bool>((false == var_1.b) | arg_0.b.b, all(select(vec3<bool>(false, true, true), vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(true, arg_1.b, true)))), vec2<bool>(true, !(false && arg_1.b)), select(!select(vec2<bool>(arg_1.b, arg_0.b.b), vec2<bool>(false, arg_0.b.b), var_1.b), vec2<bool>(all(vec4<bool>(true, false, var_1.b, arg_0.d.b)), true), vec2<bool>(func_1(u_input.d, 15116i).b, var_1.b))), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f) + var_3.x) >= arg_0.d.a, func_4(reverseBits(u_input.c), Struct_4(Struct_1(arg_1.a, true), abs(vec3<u32>(1u, u_input.c.x, 32580u)))).d), false);
}

fn func_6(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(arg_3, arg_3, true, func_1(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(-7224i, 1i, u_input.b, u_input.b)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 14186i, u_input.b, u_input.d), vec4<i32>(u_input.d, -1i, u_input.b, 2147483647i)), -vec4<i32>(0i, u_input.b, -1i, u_input.b))), abs(~(~0i))).b);
    var var_1 = _wgslsmith_mod_i32(1i, -1i);
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    global1 = arg_0.x;
    return func_4(~(~vec3<u32>(abs(51533u), u_input.c.x, u_input.a)), func_2()).b;
}

fn func_7(arg_0: Struct_1) -> Struct_3 {
    let var_0 = vec2<bool>(false, true);
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(~1i | (u_input.b & u_input.d), _wgslsmith_add_i32(_wgslsmith_mod_i32(4364i, u_input.b), 1i), abs(select(u_input.b, 33656i, false)), _wgslsmith_mult_i32(0i, 1i)), vec4<i32>(-u_input.b, 26434i, -4974i | _wgslsmith_add_i32(u_input.d, -1i), -35708i)) << (vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32((vec3<u32>(33945u, u_input.a, 35745u) | vec3<u32>(u_input.c.x, 1u, 94759u)) ^ ~vec3<u32>(u_input.c.x, 46617u, 53931u), ~vec3<u32>(0u, u_input.a, 4294967295u) | ~u_input.c), _wgslsmith_div_u32(0u, u_input.c.x), u_input.a) % vec4<u32>(32u));
    var var_2 = !(!(!vec3<bool>(false, var_0.x, true)));
    let var_3 = Struct_3(func_6(select(!select(vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(1u, 1u)]), vec2<bool>(true, arg_0.b), var_0), vec2<bool>(func_1(u_input.d, -33179i).b, select(global0[_wgslsmith_index_u32(u_input.a, 1u)], arg_0.b, global0[_wgslsmith_index_u32(u_input.c.x, 1u)])), var_0), vec4<f32>(arg_0.a, -874f, arg_0.a, _wgslsmith_f_op_f32(ceil(arg_0.a))), _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_div_f32(arg_0.a, arg_0.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_mod_i32(34402i, var_1.x) <= ~26438i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(933f, arg_0.a) - _wgslsmith_f_op_f32(f32(-1f) * -426f)) - func_4(~vec3<u32>(u_input.a, 24814u, u_input.c.x), func_2()).b.a), !(!select(var_2.x, false, var_0.x))), false, false || arg_0.b);
    global1 = true;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_5(Struct_2(~vec3<u32>(u_input.a, u_input.c.x, u_input.c.x), func_1(27328i, u_input.d), 0u, Struct_1(174f, false)), func_2().a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-778f)) - _wgslsmith_f_op_f32(max(149f, -362f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1000f - -820f), _wgslsmith_div_f32(403f, -722f), _wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(785f * -2533f)))), -387f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -264f) * -1523f), global0[_wgslsmith_index_u32(0u, 1u)] && true)));
    global1 = all(select(select(select(select(vec4<bool>(false, var_0.a.b, true, false), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(28302u, 1u)]), vec4<bool>(false, var_0.a.b, global0[_wgslsmith_index_u32(1u, 1u)], false)), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], true, var_0.c), global0[_wgslsmith_index_u32(5240u, 1u)] | true), vec4<bool>(func_1(u_input.b, u_input.d).b, var_0.a.a == -851f, var_0.c, global0[_wgslsmith_index_u32(firstLeadingBit(51219u), 1u)]), !select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 1u)], var_0.a.b), vec4<bool>(var_0.d, global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 1u)], var_0.a.b, false))), !select(!vec4<bool>(true, global0[_wgslsmith_index_u32(8391u, 1u)], var_0.b.b, false), !vec4<bool>(var_0.c, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], true, false), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-418f, var_0.a.a), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.a, 1010f))))))))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~0u), ~u_input.c.yy << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(40578i, u_input.b, u_input.d, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2().a.a, var_0.b.a) * func_4(~vec3<u32>(52548u, 21222u, u_input.c.x), func_2()).b.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -138f), _wgslsmith_f_op_f32(-var_0.b.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a + 371f))), func_1(u_input.d, -26420i).a));
}

