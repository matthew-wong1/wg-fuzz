struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = Struct_4(0i, Struct_2(true | arg_0, vec4<i32>(0i, ~1i, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -38742i, -24763i, 3401i), vec4<i32>(-34520i, 15028i, 65290i, 1i))), Struct_1(abs(abs(u_input.b)), select(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(u_input.a, 68575u, u_input.a), vec3<bool>(true, false, arg_0)) | ~u_input.b.wzz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(574f, -621f, 1436f))), !(!vec3<bool>(arg_0, false, arg_0)), !vec2<bool>(arg_0, true))));
    global0 = array<vec4<bool>, 5>();
    var_0 = Struct_4(13433i, var_0.b);
    var var_1 = ~reverseBits(1u);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1016f * _wgslsmith_f_op_f32(ceil(var_0.b.c.c.x)))));
    return var_0.b.a && true;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: i32, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_1(abs(max(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), u_input.b ^ u_input.b), u_input.b)), u_input.b.yyz, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1312f, 483f, 882f), vec3<f32>(551f, 414f, 724f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1920f, -471f, -114f) + vec3<f32>(-873f, 227f, 576f)), !vec3<bool>(arg_3, false, arg_3))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1061f, 684f, 907f)))))))), select(select(!(!vec3<bool>(false, arg_3, arg_3)), !(!vec3<bool>(true, arg_3, arg_3)), vec3<bool>(arg_3, true, any(vec3<bool>(arg_3, false, arg_3)))), !(!(!vec3<bool>(true, arg_3, true))), !vec3<bool>(all(vec3<bool>(arg_3, arg_3, true)), arg_3, true)), vec2<bool>(any(!vec2<bool>(true, arg_3)), true));
    let var_1 = true;
    let var_2 = Struct_2(var_0.d.x, -reverseBits(~(-vec4<i32>(2147483647i, -12106i, arg_2, 1i))), Struct_1(max(min(~vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 66366u), _wgslsmith_mult_vec4_u32(u_input.b, u_input.b)), var_0.a ^ var_0.a), vec3<u32>(0u, ~_wgslsmith_clamp_u32(10588u, 2002u, u_input.b.x), ~reverseBits(u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c * var_0.c))), vec3<bool>(false, func_2(var_0.e.x == arg_3), false), var_0.e));
    let var_3 = arg_0.a > _wgslsmith_sub_i32(~_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_1.x, arg_2, arg_1.x), 22978i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_1.x, -58121i, arg_0.a)), (var_2.b.wzw | vec3<i32>(arg_2, -1i, arg_2)) ^ -arg_1));
    let var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(abs(_wgslsmith_mod_vec3_i32(var_2.b.zyz, var_2.b.xxy ^ arg_1)), vec3<i32>(23970i, arg_1.x, arg_1.x)), abs(~(~vec3<i32>(32592i, var_2.b.x, arg_0.a) | vec3<i32>(arg_0.a, arg_2, 1i))));
    return Struct_2(any(global0[_wgslsmith_index_u32(49621u, 5u)]), ~var_2.b, var_2.c);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = select(arg_2.yyw, !(!arg_2.zxy), false);
    var var_1 = Struct_2(~_wgslsmith_div_u32(0u, 1u) == u_input.b.x, ~arg_0.b, Struct_1(~(~(arg_0.c.a >> (u_input.b % vec4<u32>(32u)))), firstTrailingBit(u_input.b.zzz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_0.c.c + arg_0.c.c), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(127f, -1731f, arg_0.c.c.x), arg_0.c.c, vec3<bool>(arg_2.x, arg_1, var_0.x)))))), select(!vec3<bool>(arg_0.a, false, false), select(arg_0.c.d, func_3(Struct_3(14949i), vec3<i32>(-7514i, 2147483647i, 2147483647i), 0i, arg_1).c.d, arg_0.c.d), func_3(Struct_3(-21063i), vec3<i32>(arg_0.b.x, -22826i, arg_0.b.x) ^ arg_0.b.zzw, arg_0.b.x, true).c.d.x), arg_0.c.d.xy));
    var_1 = Struct_2(var_1.a, _wgslsmith_mult_vec4_i32(~(~(~vec4<i32>(-1i, arg_0.b.x, -18815i, 15664i))), select(vec4<i32>(1i, ~(-1i), -48169i, select(arg_0.b.x, var_1.b.x, arg_2.x)), vec4<i32>(func_3(Struct_3(var_1.b.x), var_1.b.zxz, -13864i, var_1.c.d.x).b.x, var_1.b.x, -33362i, -var_1.b.x), (arg_0.b.x & -1i) < 1i)), Struct_1(~func_3(Struct_3(-8120i), -arg_0.b.wwx, ~var_1.b.x, 2147483647i <= var_1.b.x).c.a, vec3<u32>(u_input.a, 1u, (4294967295u >> (arg_0.c.a.x % 32u)) | _wgslsmith_sub_u32(4294967295u, var_1.c.b.x)), var_1.c.c, !arg_2.zwy, arg_0.c.d.yy));
    var_1 = Struct_2(true, var_1.b, var_1.c);
    global0 = array<vec4<bool>, 5>();
    return Struct_1(min(reverseBits(reverseBits(vec4<u32>(4294967295u, 75812u, u_input.b.x, 630u))) | var_1.c.a, vec4<u32>(~30007u, 24658u, arg_0.c.a.x, min(24289u, 44082u)) ^ ~(~vec4<u32>(0u, 14761u, arg_0.c.b.x, arg_0.c.b.x))), min(~vec3<u32>(4294967295u, u_input.b.x, 295u), vec3<u32>(countOneBits(_wgslsmith_div_u32(var_1.c.b.x, u_input.a)), ~(0u ^ var_1.c.b.x), 1u)), vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -653f), arg_0.c.c.x), select(!select(var_0, !var_1.c.d, arg_2.x), func_3(Struct_3(~arg_0.b.x), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.b.yyz, var_1.b.zyw), vec3<i32>(arg_0.b.x, var_1.b.x, arg_0.b.x)), _wgslsmith_mult_i32(arg_0.b.x, -1i) ^ -17630i, false).c.d, !(!vec3<bool>(var_1.c.d.x, false, var_1.c.d.x))), vec2<bool>(any(select(!vec2<bool>(true, var_1.a), select(vec2<bool>(arg_2.x, true), arg_0.c.e, var_1.c.e), arg_0.c.d.yz)), true));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> vec3<bool> {
    let var_0 = Struct_3(29809i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x + 531f), -3399f, _wgslsmith_f_op_f32(f32(-1f) * -247f))) * arg_0.c));
    var var_2 = Struct_2(!arg_0.e.x, -((_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 11094i, var_0.a, var_0.a), vec4<i32>(var_0.a, 26029i, 10785i, var_0.a)) >> (_wgslsmith_add_vec4_u32(arg_1, arg_1) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(165182u, arg_1.x, arg_1.x, 62679u)), abs(vec4<u32>(u_input.a, arg_0.a.x, 4294967295u, 4294967295u))) % vec4<u32>(32u))), func_4(func_3(Struct_3(countOneBits(var_0.a)), reverseBits(-vec3<i32>(var_0.a, var_0.a, var_0.a)), var_0.a, func_2(arg_0.d.x || false)), all(func_3(var_0, -vec3<i32>(2147483647i, var_0.a, var_0.a), -1i, false).c.d), !(!vec4<bool>(arg_0.e.x, true, arg_0.e.x, true))));
    global0 = array<vec4<bool>, 5>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c.c.x, arg_0.c.x)));
    return arg_0.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_4 {
    let var_0 = false;
    var var_1 = u_input.a ^ _wgslsmith_mult_u32(~(~4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(53410u, 6496u, 37187u, 4294967295u), vec4<u32>(19472u, 0u, 1u, arg_3.x))), _wgslsmith_dot_vec4_u32(arg_2.b.c.a, max(vec4<u32>(u_input.a, arg_0.b.x, u_input.a, arg_3.x), arg_1.b.c.a)));
    global0 = array<vec4<bool>, 5>();
    global0 = array<vec4<bool>, 5>();
    let var_2 = func_4(func_3(Struct_3(38925i), arg_1.b.b.zwz, 2147483647i, all(func_4(Struct_2(arg_0.d.x, arg_2.b.b, arg_1.b.c), arg_0.d.x, select(global0[_wgslsmith_index_u32(arg_0.a.x, 5u)], global0[_wgslsmith_index_u32(38834u, 5u)], vec4<bool>(arg_0.e.x, false, arg_0.d.x, true))).d)), arg_1.b.c.e.x, select(select(vec4<bool>(!arg_2.b.c.e.x, select(false, arg_1.b.a, arg_1.b.c.e.x), func_2(arg_1.b.c.d.x), true), select(global0[_wgslsmith_index_u32(5896u, 5u)], select(vec4<bool>(arg_2.b.c.d.x, true, arg_1.b.c.e.x, arg_2.b.a), global0[_wgslsmith_index_u32(4294967295u, 5u)], arg_0.e.x), false), true), vec4<bool>(all(global0[_wgslsmith_index_u32(1u, 5u)]), all(vec3<bool>(arg_2.b.a, true, false)), _wgslsmith_dot_vec2_u32(arg_0.b.zy, arg_2.b.c.a.yz) >= 28482u, true), !arg_1.b.a));
    return Struct_4(1i, Struct_2(true, select(vec4<i32>(countOneBits(36702i), i32(-1i) * -17454i, arg_1.b.b.x, -arg_1.b.b.x), vec4<i32>(-1i, -1i, 2147483647i, 2147483647i) & vec4<i32>(arg_1.a, arg_2.a, 3994i, arg_2.a), !(!global0[_wgslsmith_index_u32(4294967295u, 5u)])), arg_1.b.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(64949u, 92774u, 4294967295u, 68672u)) & ~vec4<u32>(u_input.a, u_input.b.x, 1u, 15337u), vec4<u32>(u_input.b.x, u_input.a, 1u, _wgslsmith_add_u32(u_input.a, u_input.b.x))), vec3<u32>(4294967295u, 1u, u_input.a) >> (select(u_input.b.xzy, ~vec3<u32>(35669u, 12516u, 1u), func_1(Struct_1(u_input.b, vec3<u32>(18683u, u_input.a, u_input.a), vec3<f32>(1372f, 1603f, 222f), vec3<bool>(false, true, false), vec2<bool>(false, true)), vec4<u32>(94183u, 56817u, u_input.a, u_input.a))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(sign(func_3(Struct_3(0i), -vec3<i32>(-1i, 1i, 0i), _wgslsmith_clamp_i32(-16529i, 34275i, -2147483647i), select(false, true, false)).c.c)), vec3<bool>(true, true, true), vec2<bool>(true, true)), Struct_4(72871i | -_wgslsmith_dot_vec4_i32(vec4<i32>(31642i, 0i, -42212i, -65365i), vec4<i32>(1i, -57404i, 0i, 0i)), Struct_2(!any(vec2<bool>(true, true)), vec4<i32>(1i, 1i, 1i, 1i), func_4(func_3(Struct_3(-64701i), vec3<i32>(-14646i, 16513i, 38715i), -2147483647i, false), true, !global0[_wgslsmith_index_u32(43256u, 5u)]))), Struct_4(_wgslsmith_mod_i32(-40725i, abs(-44370i >> (u_input.b.x % 32u))), Struct_2(true, vec4<i32>(1i, 1i, 1i, 1i), func_4(Struct_2(true, vec4<i32>(9660i, 33506i, 18043i, 5237i), Struct_1(vec4<u32>(1u, u_input.a, u_input.a, 38857u), vec3<u32>(u_input.b.x, u_input.a, 0u), vec3<f32>(-814f, -1000f, -469f), vec3<bool>(true, false, false), vec2<bool>(true, false))), func_2(false), select(vec4<bool>(true, true, false, false), global0[_wgslsmith_index_u32(u_input.b.x, 5u)], false)))), firstLeadingBit(~(vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(34281u, u_input.b.x))) & u_input.b.wy);
    let var_1 = var_0.b.c;
    let var_2 = func_3(Struct_3(18566i), var_0.b.b.yzz, -firstLeadingBit(1i), !(var_0.b.c.e.x && false)).c.d.x;
    var var_3 = Struct_3(2147483647i);
    let var_4 = Struct_3(~abs(-_wgslsmith_dot_vec2_i32(var_0.b.b.zw, vec2<i32>(var_3.a, 0i))));
    var_3 = Struct_3(countOneBits(_wgslsmith_dot_vec2_i32(select(firstTrailingBit(var_0.b.b.zy), var_0.b.b.wz ^ var_0.b.b.wx, var_0.b.a), _wgslsmith_add_vec2_i32(func_3(var_4, var_0.b.b.zzz, var_0.b.b.x, false).b.zw, _wgslsmith_mod_vec2_i32(var_0.b.b.zy, vec2<i32>(19021i, 2147483647i))))));
    var var_5 = var_4.a << ((reverseBits(_wgslsmith_sub_u32(5564u, ~var_1.b.x)) ^ var_0.b.c.b.x) % 32u);
    let var_6 = func_3(Struct_3(i32(-1i) * -2147483647i), _wgslsmith_div_vec3_i32(-(var_0.b.b.yzw ^ ~var_0.b.b.wyx), vec3<i32>(_wgslsmith_mult_i32(2536i, _wgslsmith_clamp_i32(0i, 1i, 0i)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-44180i, 38152i, var_3.a), var_3.a, i32(-1i) * -2147483647i), 0i)), ~_wgslsmith_dot_vec4_i32(var_0.b.b, var_0.b.b), max(firstLeadingBit(4294967295u), var_0.b.c.a.x) < countOneBits(90401u)).c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yzz, var_1.c.x);
}

