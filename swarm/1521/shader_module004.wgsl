struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: Struct_1 = Struct_1(0i, true, vec3<f32>(-121f, 1489f, 1569f), vec4<u32>(1u, 1u, 1u, 2776u), vec4<f32>(297f, -2717f, 528f, -769f));

var<private> global2: i32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec2<i32> {
    global2 = -65827i;
    let var_0 = !any(vec3<bool>(false, !global1.b, select(global1.b != global1.b, !global1.b, all(vec3<bool>(true, false, global1.b)))));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~min(~_wgslsmith_sub_u32(global1.d.x, 67832u), _wgslsmith_dot_vec4_u32(u_input.b, abs(u_input.b))), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b.x, (global1.d.x ^ u_input.c.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global1.d.x), vec3<u32>(1u, global1.d.x, global1.d.x))), global1.d.x), arg_1), 10u)];
    let var_1 = !(!vec2<bool>(var_0, true));
    global1 = Struct_1(_wgslsmith_clamp_i32(-33838i, max(firstTrailingBit(u_input.a | 6734i), arg_0), -firstTrailingBit(0i) << (abs(52359u) % 32u)), true, vec3<f32>(_wgslsmith_f_op_f32(global1.e.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global1.e.x))))), _wgslsmith_f_op_f32(f32(-1f) * -830f), global1.c.x), ~abs(firstTrailingBit(vec4<u32>(u_input.c.x, arg_1, u_input.c.x, global1.d.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-572f, global1.e.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global1.e.x)), -556f)) + _wgslsmith_div_f32(global1.c.x, global1.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1128f - _wgslsmith_f_op_f32(f32(-1f) * -595f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1708f + global1.c.x), _wgslsmith_f_op_f32(global1.e.x * global1.e.x)))))));
    return _wgslsmith_mult_vec2_i32(-vec2<i32>(1i, -(1i & arg_0)), reverseBits(reverseBits(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, -48875i), vec2<i32>(arg_0, global1.a) >> (vec2<u32>(global1.d.x, global1.d.x) % vec2<u32>(32u))))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> vec4<u32> {
    global2 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a & (_wgslsmith_mod_i32(u_input.a, u_input.a) & _wgslsmith_clamp_i32(global1.a, global1.a, 0i)), u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(global1.a, 0i) ^ vec2<i32>(40692i, u_input.a), vec2<i32>(2147483647i, u_input.a)), func_3(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(37426i, -2147483647i, -19171i), vec3<i32>(global1.a, -2147483647i, -2147483647i)), vec3<i32>(global1.a, global1.a, 18251i)), firstTrailingBit(global1.d.x))), countOneBits(-1i));
    var var_0 = vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(f32(-1f) * -858f)));
    let var_1 = u_input.b.xxw;
    global2 = 41544i;
    var var_2 = arg_1.b;
    return ~vec4<u32>(~(~_wgslsmith_mult_u32(var_1.x, arg_1.a.x)), ~(27468u << (_wgslsmith_div_u32(91146u, 90960u) % 32u)), ~(~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), 2968u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.e.yz, _wgslsmith_f_op_vec2_f32(arg_1.e.zx * vec2<f32>(-384f, _wgslsmith_f_op_f32(-global1.e.x)))));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(66355i, firstLeadingBit(-5490i), _wgslsmith_mod_i32(reverseBits(u_input.a), ~(-27437i))), abs(_wgslsmith_sub_vec3_i32(~(-vec3<i32>(-43744i, -20506i, -12563i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(1i, global1.a, global1.a), vec3<i32>(arg_1.a, 19187i, -18129i)))));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(~max(~global1.d, ~vec4<u32>(4294967295u, u_input.b.x, 0u, global1.d.x)), min(vec4<u32>(_wgslsmith_add_u32(1u, arg_0.x), u_input.b.x, ~1u, abs(8647u)), arg_0)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.d.yxw ^ u_input.b.zzz, ~global1.d.zzw), ~_wgslsmith_clamp_u32(arg_1.d.x, 13669u, u_input.c.x), 1u, ~(~2741u)), u_input.b)), 10u)];
    global0 = array<Struct_1, 10>();
    let var_2 = ~min(select(_wgslsmith_add_vec4_u32(arg_1.d & arg_0, vec4<u32>(u_input.c.x, 0u, arg_0.x, 46154u) & u_input.b), max(vec4<u32>(global1.d.x, arg_1.d.x, 1u, 26981u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 0u, 14776u, 1u), u_input.b)), !any(vec3<bool>(global1.b, global1.b, true))), _wgslsmith_sub_vec4_u32(~vec4<u32>(9638u, u_input.c.x, 9560u, u_input.c.x), ~abs(global1.d)));
    return Struct_2(select(u_input.b.xy, var_2.xw, global1.b), arg_2.b, _wgslsmith_f_op_f32(floor(arg_2.c)));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = select(-vec4<i32>(-(i32(-1i) * -1i), select(global1.a, 25756i, u_input.a > global1.a), -(-10922i ^ arg_2.a), global1.a), vec4<i32>(-global1.a, 0i, 33637i, _wgslsmith_sub_i32(u_input.a, arg_2.a)), !(!vec4<bool>(arg_2.b, all(arg_1.b), arg_1.b.x, !global1.b)));
    global2 = ~(i32(-1i) * -var_0.x);
    let var_1 = func_4(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 10u)], arg_1);
    var_0 = ~vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a, 5151i, 46246i, u_input.a), vec4<i32>(-17786i, 0i, -71808i, -20522i)), _wgslsmith_mult_i32(var_0.x, 0i | var_0.x)), u_input.a, _wgslsmith_dot_vec3_i32(var_0.xzz, -(var_0.yzy | var_0.yxw)), select(global1.a, i32(-1i) * -15125i, any(!vec3<bool>(false, true, global1.b))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.c.x)), -1145f) + -773f);
    return func_4(~(~(~vec4<u32>(arg_0, u_input.b.x, 74302u, 4294967295u))) << (~firstLeadingBit(vec4<u32>(1u, 31672u, arg_1.a.x, arg_2.d.x)) % vec4<u32>(32u)), Struct_1(firstLeadingBit(_wgslsmith_mod_i32(var_0.x, firstTrailingBit(arg_2.a))), !all(vec4<bool>(arg_2.b, false, var_1.b.x, arg_2.b)), vec3<f32>(282f, _wgslsmith_f_op_f32(-global1.c.x), 702f), abs(arg_2.d), vec4<f32>(269f, _wgslsmith_f_op_f32(-arg_1.c), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-339f))))), func_4(select(select(select(arg_2.d, arg_2.d, arg_2.b), abs(vec4<u32>(arg_2.d.x, global1.d.x, arg_2.d.x, 20897u)), arg_1.b.x), vec4<u32>(_wgslsmith_mod_u32(41424u, 1692u), global1.d.x, var_1.a.x, arg_2.d.x), !select(vec4<bool>(arg_2.b, arg_2.b, arg_2.b, true), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_2.b, false), vec4<bool>(global1.b, global1.b, true, arg_2.b))), global0[_wgslsmith_index_u32(min(u_input.c.x, 1u) >> (~var_1.a.x % 32u), 10u)], arg_1));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 0u;
    var var_1 = vec2<u32>(0u, _wgslsmith_add_u32(arg_0.a.x & u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(global1.d.zz), ~vec2<u32>(0u, arg_1.d.x)), 102603u)));
    var_0 = 4294967295u;
    var_0 = ~select(0u, ~max(4294967295u, 4294967295u), arg_0.b.x) ^ _wgslsmith_add_u32(firstLeadingBit(global1.d.x), ~1u);
    var var_2 = u_input.b.x >> (_wgslsmith_dot_vec4_u32(global1.d, vec4<u32>(~4294967295u, 3999u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, u_input.b.x), u_input.b), func_5(0u, Struct_2(global1.d.yw, arg_0.b, -182f), arg_1).a.x & _wgslsmith_div_u32(10715u, arg_1.d.x))) % 32u);
    return global0[_wgslsmith_index_u32(u_input.c.x, 10u)];
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_2 {
    global1 = func_6(func_5(u_input.b.x, func_4(func_2(_wgslsmith_f_op_f32(sign(arg_2.x)), arg_1, !arg_1.b.x), Struct_1(global1.a, arg_1.b.x, _wgslsmith_f_op_vec3_f32(-arg_2), u_input.b, global1.e), Struct_2(u_input.c, arg_1.b, _wgslsmith_f_op_f32(-arg_2.x))), global0[_wgslsmith_index_u32(min(4294967295u, ~abs(arg_1.a.x)), 10u)]), global0[_wgslsmith_index_u32(arg_1.a.x, 10u)]);
    var var_0 = global0[_wgslsmith_index_u32(82928u, 10u)];
    var var_1 = Struct_2(abs(vec2<u32>(global1.d.x, 50953u)), arg_1.b, var_0.e.x);
    let var_2 = select(!global1.b, !(!var_0.b), true);
    let var_3 = -2147483647i;
    return Struct_2(vec2<u32>(95534u, var_1.a.x), arg_1.b, var_0.e.x);
}

fn func_7(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_2) -> vec4<u32> {
    global1 = global0[_wgslsmith_index_u32(min(min(~1u >> (global1.d.x % 32u), u_input.c.x), ~arg_2.a.x), 10u)];
    global2 = ~abs(2147483647i) >> (~select(1439u, u_input.b.x, arg_2.b.x) % 32u);
    var var_0 = Struct_1(15530i, !func_4(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(global1.d, u_input.b), abs(vec4<u32>(34369u, global1.d.x, 4353u, 0u))), global0[_wgslsmith_index_u32(u_input.c.x, 10u)], Struct_2(~vec2<u32>(4294967295u, global1.d.x), vec2<bool>(arg_2.b.x, true), func_5(1u, arg_2, Struct_1(-2147483647i, arg_2.b.x, global1.e.wyz, vec4<u32>(arg_2.a.x, 0u, 1u, 11104u), vec4<f32>(447f, arg_2.c, 1392f, arg_2.c))).c)).b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global1.c + global1.c), _wgslsmith_f_op_vec3_f32(-global1.c))) - global1.e.xzz)), _wgslsmith_mult_vec4_u32(global1.d, vec4<u32>(13231u, 103094u, ~_wgslsmith_dot_vec3_u32(u_input.b.zzy, vec3<u32>(arg_2.a.x, 56500u, global1.d.x)), _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), ~4294967295u, 7868u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.e - global1.e)))));
    global1 = Struct_1(func_6(func_5(0u, func_4(~vec4<u32>(u_input.c.x, 24488u, u_input.c.x, global1.d.x), Struct_1(arg_1.x, true, vec3<f32>(1842f, 1464f, -470f), vec4<u32>(35320u, var_0.d.x, 48360u, var_0.d.x), var_0.e), arg_2), Struct_1(-global1.a, all(arg_2.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, arg_2.c, 1104f)), func_6(arg_2, Struct_1(-1i, true, vec3<f32>(arg_2.c, 622f, -1711f), global1.d, global1.e)).d, _wgslsmith_f_op_vec4_f32(var_0.e - vec4<f32>(-503f, arg_2.c, 1237f, 603f)))), Struct_1(~firstLeadingBit(0i), true & any(vec4<bool>(false, false, false, var_0.b)), vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(floor(var_0.e.x))), vec4<u32>(arg_2.a.x ^ 4294967295u, 25651u, abs(559u), _wgslsmith_dot_vec3_u32(u_input.b.xzx, u_input.b.wyy)), var_0.e)).a, false & arg_2.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global1.e.wyz))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(round(344f))), _wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(f32(-1f) * -186f)))), u_input.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_f32(select(362f, arg_2.c, false)), var_0.c.x, _wgslsmith_f_op_f32(var_0.c.x - -474f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.e))))));
    var var_1 = vec2<i32>(arg_0.x, 9029i);
    return ~(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(global1.d, ~var_0.d), u_input.b >> (vec4<u32>(8405u, u_input.b.x, u_input.c.x, 1u) % vec4<u32>(32u))) >> (~(~reverseBits(vec4<u32>(var_0.d.x, 4294967295u, 34134u, 1u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstLeadingBit(0i);
    let var_0 = ~abs(min(global1.d.zz, ~min(global1.d.xy, global1.d.zz)));
    let var_1 = Struct_2(u_input.c, vec2<bool>(false, !(_wgslsmith_dot_vec3_u32(global1.d.yzx, vec3<u32>(32665u, 18557u, global1.d.x)) >= (u_input.c.x << (global1.d.x % 32u)))), _wgslsmith_f_op_f32(-global1.c.x));
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(select(4294967295u, u_input.b.x, global1.b), 47467u, ~var_1.a.x, 0u)), ~abs(_wgslsmith_mult_vec4_u32(global1.d, global1.d)), func_7(vec2<i32>(global1.a ^ -1i, -1i), -abs(vec2<i32>(-13619i, u_input.a)), func_1(global1.e.x, Struct_2(global1.d.ww, var_1.b, 1600f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1371f, -750f, -1485f) * vec3<f32>(572f, var_1.c, var_1.c))))) ^ vec4<u32>(0u, min(~_wgslsmith_mult_u32(var_1.a.x, var_1.a.x), var_0.x), ~abs(25391u), min(54711u, 4294967295u ^ global1.d.x) | u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(global1.d, -1053f, vec3<u32>(_wgslsmith_dot_vec2_u32(var_3.zz, vec2<u32>(66531u, 4294967295u)), 21988u, 31212u));
}

