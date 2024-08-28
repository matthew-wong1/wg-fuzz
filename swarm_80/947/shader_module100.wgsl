struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 44358u;

var<private> global1: array<f32, 23> = array<f32, 23>(-2266f, -1143f, 1501f, -759f, -359f, 1174f, 728f, -458f, -1109f, 829f, -123f, 524f, -1000f, -976f, -482f, 1014f, 356f, -502f, -530f, 1218f, 1153f, 1182f, 281f);

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-1976f), Struct_1(-1315f), Struct_1(-849f), Struct_1(1552f), Struct_1(-569f), Struct_1(1217f), Struct_1(1000f), Struct_1(553f), Struct_1(673f));

var<private> global3: i32;

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    global3 = arg_0.x;
    let var_0 = -(arg_0.x & (u_input.a << (~1u % 32u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(_wgslsmith_add_u32(14366u, 74096u) & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 24087u, 9547u), vec3<u32>(53713u, 28084u, 4082u))), 23u)]) - _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(max(firstTrailingBit(1u), 0u), 23u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1744f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(606f - -1138f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(35420u, 23u)])))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(582f, global1[_wgslsmith_index_u32(0u, 23u)])))))));
    var var_3 = _wgslsmith_f_op_f32(-var_2.x);
    return u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> u32 {
    global1 = array<f32, 23>();
    global0 = firstLeadingBit(arg_1);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 1u, arg_2, 19681u), ~vec4<u32>(arg_2, 70331u, arg_2, arg_1)), 23u)], -1178f)));
    var var_1 = vec3<f32>(1213f, var_0.a, arg_0.a);
    var var_2 = arg_0;
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    let var_0 = reverseBits(vec4<i32>(firstLeadingBit(-2147483647i), arg_1.x, -(0i << (arg_0 % 32u)), u_input.a));
    var var_1 = u_input.a;
    global3 = _wgslsmith_sub_i32(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, var_0.x), ~vec2<i32>(var_0.x, var_0.x))), -2147483647i);
    global0 = 4294967295u;
    return abs(~1u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-645f, _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(-1177f - 1115f))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -642f) >= arg_0.a;
    var var_2 = (i32(-1i) * -_wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(u_input.a, 2147483647i))) | u_input.a;
    let var_3 = reverseBits(select(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), -vec3<i32>(-41603i, u_input.a, u_input.a)), vec3<i32>(u_input.a, -1i, u_input.a) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<i32>(u_input.a, u_input.a & u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 15900i), vec2<i32>(u_input.a, u_input.a)))), vec3<i32>(~(-20213i), select(u_input.a, 8897i, var_1) & ~1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 4063i, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, -46570i, 1i))), select(select(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_1, true), vec3<bool>(false, var_1, false)), select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, var_1, var_1), var_1), true), select(select(vec3<bool>(false, false, var_1), vec3<bool>(var_1, true, false), var_1), vec3<bool>(var_1, var_1, false), !var_1), vec3<bool>(false, all(vec4<bool>(false, false, true, true)), false))));
    let var_4 = 0i;
    return select(select(!vec2<bool>(20023i < var_4, var_1), vec2<bool>(var_1, false), !vec2<bool>(false, var_1 && var_1)), select(select(select(select(vec2<bool>(true, true), vec2<bool>(var_1, true), vec2<bool>(var_1, var_1)), select(vec2<bool>(true, false), vec2<bool>(var_1, true), vec2<bool>(var_1, var_1)), var_1 && var_1), vec2<bool>(true, all(vec4<bool>(var_1, true, false, true))), !vec2<bool>(true, var_1)), !vec2<bool>(true, any(vec2<bool>(var_1, var_1))), !vec2<bool>(false, false & var_1)), var_1);
}

fn func_1() -> vec2<bool> {
    global2 = array<Struct_1, 9>();
    global0 = max(1u, ~1u);
    var var_0 = max(_wgslsmith_sub_i32(60151i, select(_wgslsmith_clamp_i32(-6246i, 0i, i32(-1i) * -28350i), abs(u_input.a << (4294967295u % 32u)), false)), firstTrailingBit(~func_2(vec2<i32>(u_input.a, u_input.a))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1471f, global1[_wgslsmith_index_u32(1u, 23u)]) - vec2<f32>(1000f, global1[_wgslsmith_index_u32(1u, 23u)])))))));
    global3 = -1i | u_input.a;
    return func_5(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 4294967295u)), ~countOneBits(vec2<u32>(4294967295u, 38616u))), reverseBits(1u)), 9u)], global2[_wgslsmith_index_u32(func_4(_wgslsmith_mult_u32(~func_3(Struct_1(global1[_wgslsmith_index_u32(88933u, 23u)]), 23375u, 0u), 1u), vec2<i32>(1i, abs(u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(39896u, 23u)] * 1548f), _wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f)))), 9u)]);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_2.a)), _wgslsmith_f_op_f32(select(-1805f, arg_1.a, arg_0.x)), any(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-817f, arg_1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-435f, 832f) - vec2<f32>(global1[_wgslsmith_index_u32(0u, 23u)], -610f))))));
    let var_1 = 49708u;
    let var_2 = Struct_1(global1[_wgslsmith_index_u32(~4294967295u, 23u)]);
    var var_3 = vec2<bool>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 77782i, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(637i, u_input.a, 5297i, -1i), vec4<i32>(u_input.a, 2147483647i, 1i, u_input.a)), -vec4<i32>(u_input.a, 2147483647i, -1i, 0i)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec4<i32>(0i, -2147483647i, u_input.a, u_input.a), vec4<i32>(2147483647i, 0i, 2147483647i, u_input.a)), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a))) < _wgslsmith_mod_i32(u_input.a, ~0i), true);
    let var_4 = _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(25334u, _wgslsmith_mult_u32(~var_1, var_1))), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 4294967295u), countOneBits(vec2<u32>(var_1, 1u))) | ~abs(vec2<u32>(var_1, var_1)), vec2<u32>(min(var_1, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 20226u, var_1), vec3<u32>(var_1, var_1, 10974u))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, 79148u), vec3<u32>(var_1, var_1, 1u)), vec3<u32>(1u, 119313u, var_1)))));
    return Struct_1(_wgslsmith_f_op_f32(step(var_0.x, global1[_wgslsmith_index_u32(var_4.x, 23u)])));
}

fn func_7(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = vec4<u32>(min(~firstLeadingBit(4294967295u) & countOneBits(firstTrailingBit(17314u)), ~func_3(Struct_1(2204f), 25597u, 40338u) ^ min(_wgslsmith_mod_u32(0u, 31658u), 0u)), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~(~18640u)), reverseBits(vec2<u32>(1u, 1u))), firstTrailingBit(max(1u, ~(~19156u))));
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(42488u, ~var_0.x), abs(var_0.x << (4294967295u % 32u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 7631u, 38087u, var_0.x), ~vec4<u32>(1u, 4294967295u, 35305u, var_0.x)) ^ firstLeadingBit(11141u)), 65570u, ~(~var_0.x), countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, var_0.x), abs(var_0.yw)), select(max(vec2<u32>(var_0.x, 16735u), vec2<u32>(1629u, 83001u)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(var_0.x, var_0.x)), true))));
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(~(~_wgslsmith_div_vec3_u32(var_1.yxy, vec3<u32>(1332u, 81388u, 4294967295u))), var_0.zwx)), 24u)];
    var var_3 = _wgslsmith_f_op_f32(select(var_2.a, global1[_wgslsmith_index_u32(countOneBits(var_0.x), 23u)], all(select(func_1(), vec2<bool>(true, true), false))));
    global3 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a >> (0u % 32u), ~(-2147483647i), -(i32(-1i) * -38921i)), max(-_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -1i), vec3<i32>(u_input.a, u_input.a, -2147483647i)), select(vec3<i32>(20695i, 0i, -2147483647i), firstLeadingBit(vec3<i32>(-1i, 18221i, 0i)), true))) & select(30403i, -((u_input.a << (var_1.x % 32u)) ^ ~(-25734i)), any(vec2<bool>(func_5(arg_0, global4[_wgslsmith_index_u32(var_0.x, 24u)]).x, var_1.x <= var_0.x)));
    return func_6(!select(vec2<bool>(arg_0.a > 456f, any(vec2<bool>(true, true))), func_5(arg_0, func_6(vec2<bool>(true, true), Struct_1(-489f), arg_0)), true & func_5(global4[_wgslsmith_index_u32(24338u, 24u)], arg_0).x), func_6(func_5(global2[_wgslsmith_index_u32(0u, 9u)], Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(34663u, 23u)]))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), func_6(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(397f), global2[_wgslsmith_index_u32(max(4294967295u, 24383u ^ var_1.x), 9u)])), Struct_1(arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 9>();
    var var_0 = true;
    var var_1 = func_7(func_6(func_1(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(610f * -2825f))), global4[_wgslsmith_index_u32(3604u, 24u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1418f, global1[_wgslsmith_index_u32(0u, 23u)]))))));
    let var_2 = global4[_wgslsmith_index_u32(39413u, 24u)];
    let var_3 = ~(~vec4<u32>(1u, 1u, 1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(2451u, var_3.x), var_3, 49078u, vec3<u32>(var_3.x, 11299u, 4294967295u));
}

