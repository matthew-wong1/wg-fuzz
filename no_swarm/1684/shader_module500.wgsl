struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-6863i, -1i, -25520i, true, 0i), Struct_1(-57489i, 0i, 38153i, true, -17695i), Struct_1(i32(-2147483648), 0i, -32498i, false, 1i), Struct_1(0i, -9926i, -14351i, true, 43245i), Struct_1(-38044i, -1i, i32(-2147483648), true, 0i), Struct_1(5090i, -32170i, 1i, false, 2147483647i), Struct_1(i32(-2147483648), 1i, 0i, true, 129i), Struct_1(0i, 0i, -41746i, false, 6572i), Struct_1(2147483647i, -38366i, -2902i, false, 2147483647i), Struct_1(i32(-2147483648), 38081i, 2147483647i, false, 2147483647i), Struct_1(i32(-2147483648), -1574i, 1i, true, -35841i), Struct_1(2147483647i, -17444i, 9142i, false, -11389i), Struct_1(13336i, 2147483647i, -1i, false, 3534i), Struct_1(0i, 0i, -4559i, false, -46280i), Struct_1(-48126i, -7403i, 1i, false, 19340i), Struct_1(1i, 22595i, 1i, true, i32(-2147483648)));

var<private> global2: array<i32, 19>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<bool>) -> i32 {
    let var_0 = select(select(!select(arg_0.ywz, !vec3<bool>(arg_0.x, false, false), false), select(vec3<bool>(select(arg_0.x, arg_2.x, true), arg_0.x, true), vec3<bool>(true, true, true | arg_0.x), vec3<bool>(arg_2.x, 2147483647i <= global2[_wgslsmith_index_u32(1u, 19u)], !arg_0.x)), all(select(vec4<bool>(false, false, arg_2.x, false), arg_0, arg_0))), !(!arg_2), arg_0.x);
    global0 = u_input.a;
    let var_1 = true;
    let var_2 = abs(vec4<u32>(_wgslsmith_div_u32(u_input.c.x, 74652u ^ u_input.a), _wgslsmith_clamp_u32(min(u_input.a, u_input.c.x), _wgslsmith_add_u32(4294967295u, u_input.a), _wgslsmith_mult_u32(7336u, u_input.c.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(18086u, u_input.a, 4294967295u), vec3<u32>(0u, 0u, 1u)), _wgslsmith_mult_u32(u_input.c.x, 1u)), _wgslsmith_clamp_u32(max(4294967295u, u_input.c.x), u_input.a, 1u)) | countOneBits(~(vec4<u32>(58151u, 0u, u_input.c.x, 0u) << (vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x) % vec4<u32>(32u)))));
    var var_3 = !select(select(select(arg_0, select(arg_0, arg_0, var_1), var_1), !vec4<bool>(arg_0.x, true, var_0.x, true), select(vec4<bool>(true, var_0.x, arg_2.x, false), !arg_0, arg_0)), select(!arg_0, vec4<bool>(any(vec2<bool>(var_1, false)), true, arg_0.x, arg_1 > arg_1), vec4<bool>(!var_1, all(vec3<bool>(false, false, arg_0.x)), true, true)), select(select(!vec4<bool>(var_0.x, true, true, false), arg_0, arg_2.x), arg_0, arg_0.x));
    return _wgslsmith_clamp_i32(1i, ~u_input.b.x, ~_wgslsmith_mod_i32(-2147483647i, i32(-1i) * -global2[_wgslsmith_index_u32(1u, 19u)]));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = countOneBits(~(~firstTrailingBit(~vec3<u32>(arg_2.x, u_input.c.x, u_input.c.x))));
    var var_1 = vec2<i32>(-8021i, -countOneBits(72734i));
    var_0 = ~max(vec3<u32>(~countOneBits(19099u), ~u_input.c.x, ~(~arg_2.x)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.a, 21219u, var_0.x)), ~(vec3<u32>(0u, var_0.x, var_0.x) ^ vec3<u32>(4294967295u, 4294967295u, u_input.c.x))));
    let var_2 = _wgslsmith_clamp_vec2_i32(-u_input.b.xy, reverseBits(~u_input.b.yy | vec2<i32>(-62854i, -25827i)), vec2<i32>(arg_1.e, -25053i)) << (max(var_0.zz, _wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(13772u, 3778u)), _wgslsmith_mod_vec2_u32(u_input.c, abs(arg_2)))) % vec2<u32>(32u));
    global2 = array<i32, 19>();
    return _wgslsmith_add_u32(arg_2.x, ~(~4294967295u)) | 0u;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    global1 = array<Struct_1, 16>();
    var var_0 = ~_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(u_input.a, u_input.a, 4294967295u)), vec3<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, ~u_input.c.x), ~u_input.a));
    var_0 = ~reverseBits(firstTrailingBit(~vec3<u32>(var_0.x, u_input.a, u_input.a)));
    global0 = min(func_4(arg_3.x, Struct_1(_wgslsmith_clamp_i32(arg_0, 2147483647i, arg_2.a), _wgslsmith_mult_i32(func_3(vec4<bool>(arg_2.d, arg_1.d, arg_1.d, false), -344f, vec3<bool>(false, false, false)), -arg_3.x), _wgslsmith_add_i32(0i, -20175i & arg_2.b), all(!vec4<bool>(true, true, false, arg_2.d)), countOneBits(26437i)), _wgslsmith_sub_vec2_u32(select(~var_0.yz, firstTrailingBit(var_0.yx), arg_1.d | false), ~(~vec2<u32>(65186u, 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 196f, -166f), vec3<f32>(943f, 1120f, -309f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(616f, 521f, 458f)))))), 1u);
    let var_1 = firstTrailingBit(-arg_3.x);
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 16u)];
    let var_1 = arg_0;
    var_0 = Struct_1(~(~abs(select(arg_3.e, var_0.e, var_0.d))), _wgslsmith_clamp_i32(-var_1.c, min(abs(_wgslsmith_mod_i32(-1i, 21198i)), u_input.b.x), ~2147483647i), global2[_wgslsmith_index_u32(~(~(u_input.a << (u_input.a % 32u))) ^ ~(~u_input.a), 19u)], !(!(true == !var_1.d)), ~((29521i << (~u_input.c.x % 32u)) << (max(26970u, 23505u >> (u_input.c.x % 32u)) % 32u)));
    global1 = array<Struct_1, 16>();
    let var_2 = arg_0.d;
    return u_input.c.x;
}

fn func_6(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    var var_0 = Struct_1(-_wgslsmith_mod_i32(~(-1i), -_wgslsmith_add_i32(0i, 2147483647i)), 1i | global2[_wgslsmith_index_u32(~arg_0.x, 19u)], ~arg_2.c & (i32(-1i) * -_wgslsmith_mod_i32(u_input.b.x, 2147483647i)), any(vec4<bool>(1u >= arg_0.x, true, true, any(vec2<bool>(true, false)))) & true, countOneBits(-3491i));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1531f) + _wgslsmith_div_f32(-679f, -475f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1786f, -684f)) * 925f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1009f) * 1f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-334f, -729f, -514f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1165f, 585f, -1017f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(972f, -918f, 262f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-787f, 1926f, 1000f), vec3<f32>(-1107f, 326f, -297f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -723f), _wgslsmith_f_op_f32(2421f * -298f), _wgslsmith_f_op_f32(796f - 194f)) + vec3<f32>(-1221f, _wgslsmith_f_op_f32(f32(-1f) * -741f), 628f))), false));
    var var_2 = global1[_wgslsmith_index_u32(62651u, 16u)];
    let var_3 = -select(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.c), vec2<i32>(var_2.a, -2147483647i)), reverseBits(u_input.b.x), ~global2[_wgslsmith_index_u32(u_input.a, 19u)]), -vec4<i32>(global2[_wgslsmith_index_u32(arg_0.x, 19u)], -22137i, u_input.b.x, 2147483647i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -26892i, 1i, 14623i), u_input.b)), -(vec4<i32>(1i, 40449i, -25729i, u_input.b.x) << (vec4<u32>(arg_0.x, 27550u, u_input.a, 5766u) % vec4<u32>(32u))), vec4<bool>(any(arg_3.zx), true, true, !var_2.d & true));
    let var_4 = select(arg_3.xx, select(!vec2<bool>(arg_1, !arg_1), vec2<bool>(true, arg_2.d), !select(select(vec2<bool>(arg_3.x, arg_2.d), vec2<bool>(true, var_0.d), arg_3.x), arg_3.xy, arg_2.d && arg_3.x)), !(!select(select(vec2<bool>(var_2.d, var_2.d), vec2<bool>(false, arg_1), arg_3.zy), arg_3.yx, vec2<bool>(arg_3.x, true))));
    return ~global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~abs(8999u), arg_0.x), 19u)];
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_add_i32(u_input.b.x, func_6(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 1u, u_input.a), vec4<u32>(0u, u_input.c.x, 0u, 82202u)) >> ((vec4<u32>(24349u, 9815u, u_input.a, 35369u) ^ vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, u_input.c.x)) % vec4<u32>(32u)), !arg_0.d, global1[_wgslsmith_index_u32(func_5(func_2(-1i, global1[_wgslsmith_index_u32(u_input.c.x, 16u)], Struct_1(u_input.b.x, -37637i, 0i, arg_0.d, global2[_wgslsmith_index_u32(22983u, 19u)]), u_input.b.yzz), vec4<f32>(409f, -1671f, -1000f, 109f), func_2(2147483647i, Struct_1(294i, global2[_wgslsmith_index_u32(11167u, 19u)], -1i, true, u_input.b.x), Struct_1(u_input.b.x, 2336i, global2[_wgslsmith_index_u32(0u, 19u)], false, 15520i), u_input.b.wwz), arg_0), 16u)], !vec3<bool>(arg_0.d, false, true))), 9715i << (~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(17222u, u_input.a), u_input.c), u_input.c ^ u_input.c) % 32u), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(~u_input.c.x), u_input.a), 19u)], true, 0i);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2626f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-631f, _wgslsmith_div_f32(-1643f, -597f))) - -779f)) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -421f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -750f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -921f))) + _wgslsmith_f_op_f32(1092f + _wgslsmith_f_op_f32(159f - 543f)))));
    global2 = array<i32, 19>();
    global2 = array<i32, 19>();
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -609f), 768f);
    return func_2(u_input.b.x, Struct_1(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(min(u_input.b.x, -1i), abs(81417i), _wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.ww)), var_0.c), _wgslsmith_mod_i32(-19831i, -6572i), -(~1i), !(!(var_1.x >= var_1.x)), i32(-1i) * -46521i), func_2(u_input.b.x, Struct_1(-15707i, arg_0.a, global2[_wgslsmith_index_u32(~u_input.a & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4998u, 0u, 55201u), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.a)), 19u)], _wgslsmith_f_op_f32(trunc(-194f)) >= _wgslsmith_div_f32(var_1.x, var_1.x), -(~(-1i))), func_2(-var_0.a, global1[_wgslsmith_index_u32(5495u << (reverseBits(u_input.a) % 32u), 16u)], Struct_1(_wgslsmith_add_i32(44471i, -2147483647i), u_input.b.x, u_input.b.x, arg_0.e <= 23615i, abs(arg_0.c)), vec3<i32>(-var_0.a, var_0.a, var_0.c)), -(-u_input.b.xxz ^ -vec3<i32>(arg_0.e, global2[_wgslsmith_index_u32(4294967295u, 19u)], var_0.c))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.wzz, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], 2147483647i) & vec3<i32>(7181i, 2147483647i, 1i), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 19u)] << (u_input.c.x % 32u), firstTrailingBit(u_input.b.x), _wgslsmith_sub_i32(u_input.b.x, arg_0.c))), u_input.b.zyw, abs(vec3<i32>(_wgslsmith_div_i32(0i, global2[_wgslsmith_index_u32(u_input.c.x, 19u)]), _wgslsmith_div_i32(-1i, var_0.c), var_0.c & 0i))));
}

fn func_7(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_div_vec3_i32(firstTrailingBit(u_input.b.xzx), abs(vec3<i32>(15066i, ~global2[_wgslsmith_index_u32(13658u, 19u)], reverseBits(global2[_wgslsmith_index_u32(20953u, 19u)]))));
    let var_2 = func_1(Struct_1(func_6(~firstTrailingBit(vec4<u32>(u_input.c.x, 22317u, u_input.c.x, 35934u)), !any(vec2<bool>(true, arg_0.d)), Struct_1(func_6(vec4<u32>(37641u, u_input.a, 1u, 1u), false, global1[_wgslsmith_index_u32(30060u, 16u)], vec3<bool>(var_0.d, var_0.d, true)), var_0.e, global2[_wgslsmith_index_u32(4294967295u, 19u)], !var_0.d, 1i), select(vec3<bool>(var_0.d, false, arg_0.d), vec3<bool>(false, arg_0.d, arg_0.d), vec3<bool>(true, true, true))), _wgslsmith_div_i32(1i, ~70389i), reverseBits(_wgslsmith_div_i32(var_0.b & 2147483647i, arg_0.e)), false == arg_0.d, -_wgslsmith_mod_i32(max(arg_0.b, var_0.e), 1i)));
    var var_3 = max(~(-28165i), u_input.b.x & (19644i ^ -_wgslsmith_dot_vec2_i32(vec2<i32>(-15776i, var_0.c), vec2<i32>(-10356i, -2147483647i))));
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(945f)), _wgslsmith_f_op_f32(f32(-1f) * -2141f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-851f, _wgslsmith_f_op_f32(select(401f, 895f, arg_0.d)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(292f, 352f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1328f, -384f) * vec2<f32>(-606f, 531f))))))), true));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_1(Struct_1(0i, -_wgslsmith_add_i32(u_input.b.x, -39994i), abs(global2[_wgslsmith_index_u32(1u, 19u)]), (u_input.a < 21383u) != true, global2[_wgslsmith_index_u32(45727u & u_input.c.x, 19u)] & ~global2[_wgslsmith_index_u32(u_input.c.x, 19u)])));
    let var_1 = global1[_wgslsmith_index_u32(~(4294967295u | _wgslsmith_mult_u32(~u_input.a, ~u_input.c.x)) & 73491u, 16u)];
    global0 = ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.c.x, 80886u, u_input.a)) | countOneBits(countOneBits(vec3<u32>(u_input.c.x, u_input.a, u_input.a))), ~(~vec3<u32>(u_input.c.x, u_input.c.x, 5917u) ^ ~vec3<u32>(5990u, u_input.c.x, 4294967295u)));
    var_0 = ~firstLeadingBit(u_input.c.x);
    var var_2 = var_1.d;
    var var_3 = func_2(-u_input.b.x, global1[_wgslsmith_index_u32(~u_input.c.x, 16u)], global1[_wgslsmith_index_u32(firstLeadingBit(1u), 16u)], vec3<i32>(select(global2[_wgslsmith_index_u32(u_input.a, 19u)], -global2[_wgslsmith_index_u32(abs(4294967295u), 19u)], false), func_1(global1[_wgslsmith_index_u32(74969u, 16u)]).a, var_1.b));
    let var_4 = 76367u;
    let var_5 = _wgslsmith_f_op_f32(f32(-1f) * -374f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yyz, vec4<i32>(-_wgslsmith_clamp_i32(func_6(vec4<u32>(u_input.a, u_input.c.x, 74980u, 0u), var_3.d, global1[_wgslsmith_index_u32(var_4, 16u)], vec3<bool>(true, var_1.d, var_3.d)), global2[_wgslsmith_index_u32(u_input.a, 19u)] >> (4294967295u % 32u), ~global2[_wgslsmith_index_u32(4294967295u, 19u)]), 0i, _wgslsmith_add_i32(-1i, -var_3.b), _wgslsmith_dot_vec4_i32(~(u_input.b | u_input.b), abs(u_input.b))), _wgslsmith_add_u32(var_4 & _wgslsmith_add_u32(var_4, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.a)), _wgslsmith_sub_u32(~abs(u_input.c.x), u_input.a)));
}

