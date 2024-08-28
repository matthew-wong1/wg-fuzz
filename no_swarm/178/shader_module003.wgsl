struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<u32, 10>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(863f, arg_0.b, 644f) * vec3<f32>(295f, arg_0.a, arg_0.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, -1125f, arg_0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(516f, _wgslsmith_f_op_f32(ceil(830f)), 1f)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, arg_0.a, 2245f))));
    global0 = array<u32, 10>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1310f, 1236f, var_0.x, 1357f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 745f, 474f, 143f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, -217f, var_0.x, 315f))), true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1533f, -715f, arg_0.a, 1000f) + vec4<f32>(arg_0.a, var_0.x, arg_0.a, 239f)))))));
    return firstTrailingBit(4294967295u);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-946f, _wgslsmith_f_op_f32(trunc(-512f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(2221f, -115f)), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(1u, 10u)], select(countOneBits(122113u), 1u, true), 33104u, func_3(Struct_1(var_0.x, var_0.x))) >> (_wgslsmith_clamp_vec4_u32(~(vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(50305u, 10u)], 56618u) >> (vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(58020u, 10u)], 76021u, global0[_wgslsmith_index_u32(u_input.a, 10u)]) % vec4<u32>(32u))), firstLeadingBit(select(vec4<u32>(38895u, global0[_wgslsmith_index_u32(u_input.a, 10u)], 1u, 96787u), vec4<u32>(1u, 0u, u_input.a, 74918u), vec4<bool>(false, true, false, true))), _wgslsmith_mod_vec4_u32(max(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], 1u, 8961u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(15433u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], u_input.a, 14719u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 10u)], u_input.a, u_input.a, 19521u), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u), vec4<u32>(27289u, global0[_wgslsmith_index_u32(30330u, 10u)], 20532u, 71444u)))) % vec4<u32>(32u)), ~_wgslsmith_div_vec3_u32(~vec3<u32>(47882u, 36962u, global0[_wgslsmith_index_u32(u_input.a, 10u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(37561u, global0[_wgslsmith_index_u32(u_input.a, 10u)], 0u) & vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(56607u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35652u, 10u)], 10u)], 10u)]), countOneBits(vec3<u32>(99911u, u_input.a, 15493u)))), _wgslsmith_mod_u32(~abs(_wgslsmith_add_u32(1u, u_input.a)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(~84355u), 10u)], 10u)], 10u)]), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(926f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-306f)) * 1000f)), Struct_1(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -867f)))), max(_wgslsmith_mod_i32(1i, -18779i), min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 43048i), vec2<i32>(-2147483647i, -2147483647i)), -2147483647i)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-998f, 1191f)))), var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1880f, -550f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -333f))))));
    var_1 = Struct_3(vec4<u32>(var_1.a.x, abs(~(var_1.a.x | u_input.a)), 1u, var_1.a.x | (_wgslsmith_add_u32(0u, var_1.a.x) >> (var_1.a.x % 32u))), var_1.b, select(select(global0[_wgslsmith_index_u32(u_input.a, 10u)], reverseBits(var_1.a.x >> (7416u % 32u)), true), func_3(var_1.d.d), true), Struct_2(var_1.d.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x)), var_1.d.c, var_1.d.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.d.a.a, var_0.x, 491f, var_1.d.a.a))) * var_1.d.e)))));
    var_1 = Struct_3(~select(var_1.a, select(vec4<u32>(4294967295u, 6432u, global0[_wgslsmith_index_u32(18194u, 10u)], var_1.a.x) & var_1.a, max(vec4<u32>(u_input.a, var_1.c, 1u, global0[_wgslsmith_index_u32(834u, 10u)]), vec4<u32>(var_1.a.x, 7208u, 1u, 54967u)), vec4<bool>(false, true, false, true)), true), vec3<u32>(firstTrailingBit(~1u), 1u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 0u, 1u)))), min(u_input.a, select(min(1u, 4294967295u), 52764u, !(var_1.d.b.a >= var_0.x))), Struct_2(Struct_1(-1000f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -377f))), Struct_1(_wgslsmith_f_op_f32(var_1.d.e.x * _wgslsmith_div_f32(var_0.x, var_0.x)), 273f), 1i, var_1.d.b, var_1.d.e));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1910f * var_1.d.b.a) - _wgslsmith_f_op_f32(-var_1.d.d.a)), _wgslsmith_div_f32(-1483f, _wgslsmith_f_op_f32(exp2(var_0.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global0 = array<u32, 10>();
    var var_0 = Struct_3(_wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], u_input.a) | _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 35946u, u_input.a, 4294967295u), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 10u)], u_input.a, 1u))), vec4<u32>(1u, u_input.a, 1u, 0u | global0[_wgslsmith_index_u32(u_input.a, 10u)]) << (vec4<u32>(global0[_wgslsmith_index_u32(~u_input.a, 10u)], u_input.a, _wgslsmith_mod_u32(32482u, u_input.a), 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(84486u, 10u)], 10u)], 35248u) << (_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(25040u, 10u)], 47414u, 49061u, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], 1u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)])) % vec4<u32>(32u)), vec4<u32>(u_input.a, ~u_input.a, _wgslsmith_sub_u32(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)]), _wgslsmith_clamp_u32(33938u, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 10u)])))), abs(vec3<u32>(~_wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(33701u, 10u)]), ~(~44240u), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 10u)], 35344u), 10u)])), _wgslsmith_sub_u32(u_input.a, abs(~(~1u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(func_2().a - _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * arg_2.b)), arg_2, -2147483647i, Struct_1(_wgslsmith_f_op_f32(-arg_2.b), -164f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 - arg_1)) + vec4<f32>(1125f, _wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_f_op_f32(abs(618f)), func_2().b))));
    global0 = array<u32, 10>();
    let var_1 = _wgslsmith_f_op_vec2_f32(min(arg_1.xx, var_0.d.e.zw));
    var_0 = Struct_3(vec4<u32>(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(u_input.a, 45621u, u_input.a), vec3<u32>(68195u, 1u, 35751u)), ~select(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c, 10u)], 10u)], 42130u, global0[_wgslsmith_index_u32(var_0.c, 10u)]), vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(var_0.a.x, 10u)]), arg_0.x)), 23906u, ~4294967295u, _wgslsmith_mult_u32(~min(1u, u_input.a), reverseBits(reverseBits(0u)))), vec3<u32>(var_0.c, ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(4294967295u, var_0.c)), 10u)], 19911u), var_0.a.x, var_0.d);
    return var_0.d.a;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = 1u;
    global0 = array<u32, 10>();
    var_0 = ~(~u_input.a);
    var var_1 = Struct_2(arg_2, func_4(!(!(!vec3<bool>(arg_0, arg_0, false))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a, arg_2.a, arg_3.b, 1627f))), vec4<f32>(-270f, 1000f, -268f, arg_1.b), arg_0)))), arg_3, arg_2.a), -346i, arg_1, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(f32(-1f) * -1667f), -1368f, _wgslsmith_f_op_f32(-arg_2.b)))))));
    var_0 = _wgslsmith_mult_u32(func_3(func_2()), 14524u);
    return -max(i32(-1i) * -var_1.c, -2147483647i);
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = 1u;
    var var_1 = reverseBits(vec4<i32>(-firstTrailingBit(~arg_0), 35356i, -1i, ~_wgslsmith_clamp_i32(arg_0, ~arg_0, 10634i)));
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    var_1 = -_wgslsmith_div_vec4_i32(-(vec4<i32>(8086i, arg_0, 86609i, 1i) ^ vec4<i32>(2147483647i, 1i, -21735i, 1i)) << (min(vec4<u32>(var_0, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 10u)], u_input.a), vec4<u32>(u_input.a, 4294967295u, var_0, 4294967295u)) % vec4<u32>(32u)), select(firstTrailingBit(vec4<i32>(-24106i, 22233i, 40608i, var_1.x) >> (vec4<u32>(47249u, 0u, var_0, var_0) % vec4<u32>(32u))), vec4<i32>(var_1.x, 43302i, 45155i, 2147483647i) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, var_0, var_0, global0[_wgslsmith_index_u32(103140u, 10u)]), vec4<u32>(global0[_wgslsmith_index_u32(var_0, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9864u, 10u)], 10u)], 0u, 69954u)) % vec4<u32>(32u)), all(vec3<bool>(true, true, true))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-129f - func_4(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-arg_1.e), arg_1.a, arg_1.e.x).a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x))))), func_2(), firstTrailingBit(~(1i & _wgslsmith_sub_i32(1i, arg_1.c))), func_4(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true), _wgslsmith_f_op_vec4_f32(arg_1.e * _wgslsmith_f_op_vec4_f32(vec4<f32>(874f, arg_1.b.a, 2100f, 625f) * arg_1.e)), arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().b) * 1000f)), vec4<f32>(arg_1.e.x, _wgslsmith_f_op_f32(arg_1.a.b + arg_1.e.x), arg_1.e.x, -341f));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = arg_1.xz;
    var var_1 = true;
    var var_2 = func_6(_wgslsmith_add_i32(func_5(any(arg_1), func_4(arg_1.wxx, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1602f, arg_0, 1049f, arg_0) - vec4<f32>(-568f, -1000f, arg_0, arg_0)), func_2(), _wgslsmith_f_op_f32(-arg_0)), Struct_1(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(min(arg_0, arg_0))), Struct_1(func_4(vec3<bool>(var_0.x, true, var_0.x), vec4<f32>(1307f, 1000f, arg_0, -203f), Struct_1(359f, arg_0), -378f).a, arg_0)), -1i), Struct_2(func_4(select(select(arg_1.yzw, vec3<bool>(true, true, arg_1.x), vec3<bool>(arg_1.x, var_0.x, false)), !vec3<bool>(var_0.x, arg_1.x, var_0.x), !arg_1.zwz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2192f, 1112f, arg_0, 746f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(372f, 1648f, arg_0, 344f)))), func_4(arg_1.yyy, vec4<f32>(arg_0, arg_0, -2517f, arg_0), Struct_1(196f, 312f), _wgslsmith_f_op_f32(abs(-535f))), _wgslsmith_f_op_f32(abs(arg_0))), func_2(), select(2147483647i, abs(1i), any(vec3<bool>(true, arg_1.x, false))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, arg_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1543f, 1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, -1141f, arg_0, -426f))) - vec4<f32>(-1000f, -1580f, -427f, -340f)))));
    var_2 = Struct_2(Struct_1(-1000f, arg_0), var_2.a, 1i, func_2(), var_2.e);
    let var_3 = var_2.e;
    return Struct_2(func_2(), var_2.a, _wgslsmith_clamp_i32(var_2.c, 1i, ~(var_2.c >> (func_3(Struct_1(1323f, var_2.e.x)) % 32u))), func_6(min(_wgslsmith_mult_i32(var_2.c, var_2.c >> (23492u % 32u)), ~(i32(-1i) * -53283i)), Struct_2(func_6(countOneBits(14057i), func_6(43440i, Struct_2(Struct_1(var_2.a.b, var_2.a.a), Struct_1(var_2.a.a, var_3.x), var_2.c, Struct_1(-447f, -275f), var_2.e))).a, var_2.b, _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_2.c, var_2.c, -3209i), vec3<i32>(781i, var_2.c, var_2.c), arg_1.x), select(vec3<i32>(var_2.c, var_2.c, -44766i), vec3<i32>(var_2.c, var_2.c, var_2.c), vec3<bool>(false, var_0.x, false))), var_2.d, var_2.e)).d, _wgslsmith_f_op_vec4_f32(vec4<f32>(func_6(0i, Struct_2(var_2.d, var_2.b, var_2.c, Struct_1(arg_0, -1121f), var_2.e)).b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.e.x, arg_0, true)), var_3.x), var_2.a.a, _wgslsmith_f_op_f32(-func_4(arg_1.yxz, var_2.e, Struct_1(1191f, arg_0), -975f).a)) - _wgslsmith_div_vec4_f32(var_2.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_2.e))))));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_3 {
    global0 = array<u32, 10>();
    var var_0 = abs(func_6(1i, Struct_2(Struct_1(arg_1.b.a, _wgslsmith_f_op_f32(-arg_0.a.b)), func_4(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.a, arg_0.a.b, arg_1.d.b, -240f)), arg_1.b, 789f), min(max(arg_1.c, arg_1.c), -arg_2), Struct_1(_wgslsmith_f_op_f32(1017f - arg_0.d.b), _wgslsmith_f_op_f32(arg_0.d.b + arg_0.b.b)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.e.x + arg_0.e.x), func_1(arg_0.a.b, vec4<bool>(false, true, false, false)).d.a, _wgslsmith_f_op_f32(arg_0.d.a + arg_1.a.a), _wgslsmith_f_op_f32(-arg_0.b.a)))).c);
    let var_1 = arg_1.e.xx;
    var var_2 = _wgslsmith_div_vec3_u32(abs(~(~vec3<u32>(arg_3, 0u, 22421u) | vec3<u32>(10136u, 1u, 4294967295u))), firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 0u), reverseBits(vec3<u32>(0u, 4294967295u, 0u))))));
    let var_3 = var_1.x;
    return Struct_3(vec4<u32>(~1u, ~0u >> (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.x, global0[_wgslsmith_index_u32(41595u, 10u)]), 10u)] % 32u), max(32956u, min(4294967295u, 1u)), var_2.x) >> (abs(vec4<u32>(u_input.a, ~42286u, var_2.x, u_input.a)) % vec4<u32>(32u)), ~vec3<u32>(~(~0u), ~(29984u ^ var_2.x), 16859u << (u_input.a % 32u)), 33544u, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) - _wgslsmith_f_op_f32(f32(-1f) * -185f))), vec4<bool>(false, !any(vec3<bool>(true, true, false)), !select(false, false, true), true)), Struct_2(func_6(abs(abs(2147483647i)), func_1(_wgslsmith_f_op_f32(abs(-1412f)), vec4<bool>(false, true, false, false))).d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(491f))), _wgslsmith_f_op_f32(-230f * _wgslsmith_f_op_f32(step(-219f, -1585f)))), func_5(any(vec4<bool>(true, true, true, true)), func_2(), func_1(-122f, vec4<bool>(true, true, true, true)).d, func_6(_wgslsmith_sub_i32(-26851i, -1i), Struct_2(Struct_1(1000f, 892f), Struct_1(-716f, 1246f), 22347i, Struct_1(-902f, 931f), vec4<f32>(2147f, -1333f, -610f, 1000f))).b), func_4(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), -1230f, _wgslsmith_f_op_f32(f32(-1f) * -1742f), _wgslsmith_f_op_f32(select(-725f, 465f, true))), Struct_1(_wgslsmith_f_op_f32(sign(895f)), 636f), 637f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(430f, -1670f, -1000f, 991f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(307f, 233f, -108f, -1920f)))), abs(_wgslsmith_clamp_i32(max(0i, ~17410i), ~(~1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 6609i, -16733i), vec3<i32>(1i, 1i, 1i)))), 35530u);
    var var_1 = any(select(select(vec4<bool>(false, true, true, all(vec4<bool>(true, true, true, false))), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, all(vec3<bool>(true, true, false)), true, false), vec4<bool>(true, var_0.d.a.b > var_0.d.d.a, -1330f == var_0.d.e.x, select(true, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, false)))));
    var_1 = true;
    let var_2 = var_0.d.e.yzx;
    let var_3 = ~(~1u >> (countOneBits(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.a), var_0.b.x)) % 32u));
    global0 = array<u32, 10>();
    var var_4 = !(!vec3<bool>(true, all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true))));
    let var_5 = true;
    let var_6 = vec2<u32>(var_3, 8822u);
    let x = u_input.a;
    s_output = StorageBuffer(-6631i, _wgslsmith_add_i32(-42232i, _wgslsmith_clamp_i32(var_0.d.c, 1i | func_5(var_5, Struct_1(1589f, -1000f), var_0.d.d, Struct_1(-2048f, 595f)), ~abs(var_0.d.c))));
}

