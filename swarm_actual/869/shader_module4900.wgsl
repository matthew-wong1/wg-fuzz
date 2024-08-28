struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: bool,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 15> = array<u32, 15>(4294967295u, 58925u, 56154u, 1u, 1u, 1u, 1u, 95849u, 45886u, 4294967295u, 32385u, 3549u, 1u, 30608u, 4294967295u);

var<private> global2: array<bool, 12>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_1(any(global0.a), select(u_input.a.xww, ~u_input.a.wyw, select(global0.a, select(select(global0.a, vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 12u)], true, arg_0.x), global0.a), vec3<bool>(true, true, true), !global0.a), vec3<bool>(!global2[_wgslsmith_index_u32(4294967295u, 12u)], all(vec4<bool>(arg_0.x, global0.a.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 12u)], global0.a.x)), true))), ~vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(0u, 15u)], 39419u), 15u)], _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)], 4294967295u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(95335u, 15u)], 15u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)] % 32u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)] | 1u), 11299u, ~14847u));
    var var_1 = -1000f;
    var_0 = Struct_1(all(!vec4<bool>(false, arg_0.x, true, true)), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(~firstTrailingBit(u_input.a.xz), u_input.a.yy), var_0.b.x), vec4<u32>(max(var_0.c.x, ~var_0.c.x) & _wgslsmith_clamp_u32(firstLeadingBit(0u), 4294967295u, 4294967295u), ~_wgslsmith_div_u32(var_0.c.x & 4294967295u, 1u), 41869u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~19880u, 15u)], 30566u)));
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(1604f + -138f))), _wgslsmith_f_op_f32(abs(-879f)), true)) + -1000f)));
    let var_2 = vec4<i32>(max(~(~_wgslsmith_mult_i32(u_input.a.x, 2147483647i)), var_0.b.x), -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(1i, var_0.b.x, -8547i, 2147483647i)), u_input.a ^ vec4<i32>(var_0.b.x, 2147483647i, 36141i, -28873i)), vec4<i32>(-1i, var_0.b.x, var_0.b.x, var_0.b.x >> (global1[_wgslsmith_index_u32(var_0.c.x, 15u)] % 32u))), var_0.b.x, i32(-1i) * -_wgslsmith_mult_i32(-var_0.b.x, firstLeadingBit(0i)));
    return ~(~var_0.c.x & ~1u) >> (min(global1[_wgslsmith_index_u32(1u, 15u)], 4294967295u) % 32u);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_div_u32(484u ^ (_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(44902u, 15u)], ~11214u) & ~(global1[_wgslsmith_index_u32(25200u, 15u)] | 134499u)), global1[_wgslsmith_index_u32(func_3(!vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 12u)], global1[_wgslsmith_index_u32(4294967295u, 15u)] > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)])), 15u)]);
    var var_1 = Struct_3(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0 | global1[_wgslsmith_index_u32(var_0, 15u)], var_0), firstLeadingBit(~vec3<u32>(42226u, global1[_wgslsmith_index_u32(var_0, 15u)], var_0))), var_0), Struct_2(global0.a), any(!select(!vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30981u, 15u)], 12u)], false, global2[_wgslsmith_index_u32(0u, 12u)], false), vec4<bool>(true, true, global0.a.x, global0.a.x), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 15u)], 15u)] > 52531u)), vec4<u32>(var_0, 7652u, firstTrailingBit(global1[_wgslsmith_index_u32(var_0, 15u)]), 5298u), Struct_1(!(!any(global0.a)), -u_input.a.zwx ^ -vec3<i32>(8706i, -28681i, u_input.a.x), vec4<u32>(_wgslsmith_sub_u32(var_0, global1[_wgslsmith_index_u32(1u, 15u)]), firstTrailingBit(var_0 | 9259u), max(reverseBits(21462u), 9028u), 16612u)));
    let var_2 = firstTrailingBit(-u_input.a.x);
    let var_3 = reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~var_0), 15u)], 15u)]);
    var var_4 = select(!select(select(var_1.b.a.yy, !global0.a.zz, var_1.b.a.yz), vec2<bool>(global2[_wgslsmith_index_u32(var_1.d.x, 12u)], false), true), !(!(!(!vec2<bool>(global2[_wgslsmith_index_u32(var_1.e.c.x, 12u)], global0.a.x)))), select(vec2<bool>(~var_1.a.x >= _wgslsmith_clamp_u32(1u, 19321u, var_1.e.c.x), false), global0.a.zz, var_1.b.a.zz));
    return Struct_2(vec3<bool>(true, (true | (var_1.c & var_1.b.a.x)) == (var_4.x | var_1.b.a.x), true));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-227f * arg_1.x), _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)))))), arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(arg_1.x * arg_1.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, 1033f, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, -1287f, arg_1.x, arg_1.x), vec4<f32>(arg_1.x, -769f, 1065f, arg_1.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -1706f, arg_1.x, -980f), vec4<f32>(1938f, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -405f, arg_1.x) * vec4<f32>(arg_1.x, 1209f, arg_1.x, arg_1.x))))));
    var var_2 = u_input.a.x;
    let var_3 = abs(~(~(4294967295u >> (global1[_wgslsmith_index_u32(arg_0.a.x, 15u)] % 32u)))) << (_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 1u, countOneBits(global1[_wgslsmith_index_u32(27151u, 15u)])), vec3<u32>(~1u, 23124u, 4294967295u | arg_0.d.x))) % 32u);
    return Struct_2(vec3<bool>(global0.a.x & func_2().a.x, any(select(!var_0.a, func_2().a, select(arg_0.b.a, vec3<bool>(false, global0.a.x, arg_0.c), arg_0.b.a.x))), !global0.a.x | (_wgslsmith_clamp_i32(u_input.a.x, 1i, 56216i) <= abs(u_input.a.x))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = func_4(Struct_3(vec2<u32>(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)], 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28007u, 15u)], 15u)], 15u)], 15u)], 15u)]), ~(global1[_wgslsmith_index_u32(55896u, 15u)] & 56795u)), func_2(), (true | global0.a.x) == !global2[_wgslsmith_index_u32(1u, 12u)], ~vec4<u32>(_wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(2500u, 15u)]), countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)]), ~global1[_wgslsmith_index_u32(1u, 15u)], firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29385u, 15u)], 15u)], 15u)])), Struct_1(global0.a.x, -vec3<i32>(u_input.a.x, u_input.a.x, -12597i), abs(vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 55701u)) ^ (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 64112u, 6409u) << (vec4<u32>(34533u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], global1[_wgslsmith_index_u32(5455u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)]) % vec4<u32>(32u))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(202f * arg_0)))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-152f)) - _wgslsmith_f_op_f32(trunc(-719f)))))));
    global0 = Struct_2(vec3<bool>(any(select(select(global0.a.yy, vec2<bool>(false, true), vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 12u)])), func_4(Struct_3(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3587u, 15u)], 15u)]), Struct_2(vec3<bool>(false, true, false)), global0.a.x, vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26271u, 15u)], 15u)], 87084u), Struct_1(true, vec3<i32>(1i, 39970i, u_input.a.x), vec4<u32>(35305u, 15018u, global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57744u, 15u)], 15u)]))), vec3<f32>(1539f, 752f, arg_0)).a.zz, all(vec4<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 12u)], global0.a.x, true)))), !global0.a.x, true));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -631f);
    var var_1 = Struct_3(vec2<u32>(global1[_wgslsmith_index_u32(~(~(~4294967295u)), 15u)], ~global1[_wgslsmith_index_u32(1110u, 15u)]), func_2(), all(vec2<bool>(arg_0 >= -587f, all(vec4<bool>(true, true, true, true)))), vec4<u32>(countOneBits(~0u), global1[_wgslsmith_index_u32(countOneBits((global1[_wgslsmith_index_u32(0u, 15u)] << (1u % 32u)) >> (0u % 32u)), 15u)], 35348u, ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(33844u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34787u, 15u)], 15u)]), 15u)], 15u)])), Struct_1(true, u_input.a.yyz, (select(vec4<u32>(35184u, 4294967295u, 0u, global1[_wgslsmith_index_u32(24223u, 15u)]), vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66028u, 15u)], 15u)], global1[_wgslsmith_index_u32(1u, 15u)]), vec4<bool>(true, true, false, false)) & ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47607u, 15u)], 15u)], 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(91418u, 15u)], 15u)], 4294967295u)) & ~(~vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63540u, 15u)], 15u)], 0u))));
    global0 = var_1.b;
    return var_1.e;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec2<u32>(arg_0.c.x, 1u);
    global0 = func_2();
    let var_1 = !(!(!(!(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 15u)], 12u)], global0.a.x)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-968f - _wgslsmith_div_f32(-434f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(169f)), _wgslsmith_f_op_f32(sign(-1221f))))) + -584f);
    var var_3 = ~(~_wgslsmith_div_u32(_wgslsmith_mod_u32(4170u, ~global1[_wgslsmith_index_u32(var_0.x, 15u)]), _wgslsmith_sub_u32(4294967295u, ~0u)));
    return func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2 + var_2))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 15>();
    global2 = array<bool, 12>();
    let var_0 = func_5(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-524f)), -715f)))));
    global1 = array<u32, 15>();
    global0 = func_4(Struct_3(vec2<u32>(~_wgslsmith_sub_u32(var_0.c.x, 24056u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, global1[_wgslsmith_index_u32(4294967295u, 15u)]), var_0.c.yx)), func_2(), true, var_0.c, Struct_1(true, _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.ywy, u_input.a.zyx), ~vec3<i32>(-28887i, u_input.a.x, u_input.a.x)), var_0.c)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(445f * 544f), _wgslsmith_f_op_f32(round(507f)), -204f), vec3<f32>(_wgslsmith_f_op_f32(1138f - 470f), -862f, _wgslsmith_f_op_f32(f32(-1f) * -948f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2160f, -1757f, 503f))), vec3<f32>(124f, -426f, -812f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1550f, 1279f), vec3<f32>(613f, -1000f, -398f), global0.a))))));
    global0 = func_2();
    var var_1 = i32(-1i) * -20673i;
    global0 = Struct_2(vec3<bool>(func_5(func_1(1f)).a, true, true | (167f >= _wgslsmith_f_op_f32(select(1000f, -120f, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1012f - -274f))), func_3(!(!func_2().a.xy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-279f)), -1693f))));
}

