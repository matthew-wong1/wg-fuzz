struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<u32>(1u, 26090u), vec4<f32>(346f, -575f, -804f, 487f), vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(43364u, 1u), vec4<f32>(1445f, 1963f, -1039f, 598f), vec2<u32>(45878u, 4294967295u)), Struct_1(vec2<u32>(0u, 1u), vec4<f32>(1000f, 634f, -1248f, 1515f), vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(15859u, 0u), vec4<f32>(-1007f, 1000f, 1409f, -495f), vec2<u32>(0u, 48650u)), Struct_1(vec2<u32>(1u, 27792u), vec4<f32>(-174f, 1140f, 1309f, -674f), vec2<u32>(29591u, 0u)), Struct_1(vec2<u32>(0u, 41381u), vec4<f32>(772f, 686f, 609f, 1000f), vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(32923u, 30102u), vec4<f32>(1252f, -128f, 1077f, 162f), vec2<u32>(40059u, 33385u)), Struct_1(vec2<u32>(36032u, 1u), vec4<f32>(-279f, 2372f, -1277f, -1968f), vec2<u32>(4969u, 20991u)), Struct_1(vec2<u32>(0u, 138u), vec4<f32>(1664f, -2377f, 753f, -187f), vec2<u32>(65188u, 62438u)), Struct_1(vec2<u32>(16289u, 4294967295u), vec4<f32>(1564f, 115f, -1000f, 1168f), vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(27377u, 70907u), vec4<f32>(326f, -100f, 273f, -425f), vec2<u32>(10591u, 5713u)), Struct_1(vec2<u32>(0u, 15988u), vec4<f32>(2260f, -103f, -356f, -343f), vec2<u32>(4294967295u, 17389u)), Struct_1(vec2<u32>(0u, 4294967295u), vec4<f32>(955f, -784f, 829f, 996f), vec2<u32>(11651u, 28672u)), Struct_1(vec2<u32>(32853u, 0u), vec4<f32>(-790f, 280f, -1169f, 309f), vec2<u32>(1u, 20999u)), Struct_1(vec2<u32>(4294967295u, 0u), vec4<f32>(-1530f, -1581f, 502f, -494f), vec2<u32>(84954u, 0u)), Struct_1(vec2<u32>(1688u, 41784u), vec4<f32>(-604f, 121f, 1860f, 903f), vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(4835u, 77527u), vec4<f32>(-109f, -447f, -1178f, 812f), vec2<u32>(40607u, 17363u)), Struct_1(vec2<u32>(1u, 0u), vec4<f32>(-143f, -584f, -517f, 1093f), vec2<u32>(8892u, 3579u)), Struct_1(vec2<u32>(4294967295u, 37225u), vec4<f32>(786f, 1044f, 1550f, -1271f), vec2<u32>(1u, 58006u)), Struct_1(vec2<u32>(0u, 4294967295u), vec4<f32>(-593f, -467f, 1102f, 868f), vec2<u32>(1u, 0u)));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(4294967295u, 0u), vec4<f32>(-1243f, -1843f, 167f, 773f), vec2<u32>(1u, 1u));

var<private> global3: array<u32, 19> = array<u32, 19>(55588u, 4294967295u, 4294967295u, 63122u, 0u, 23843u, 8678u, 1u, 4294967295u, 4294967295u, 9031u, 15177u, 14034u, 0u, 46910u, 28824u, 13953u, 1u, 34450u);

var<private> global4: vec2<f32> = vec2<f32>(-831f, -173f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(35053u, global3[_wgslsmith_index_u32(6965u, 19u)], 57663u, arg_1.c.x) ^ ~vec4<u32>(arg_2.a.x, u_input.b.x, arg_1.c.x, arg_1.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global2.c.x, 19u)], 27831u, global2.c.x, 0u) | vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(56875u, 19u)], 19u)], u_input.b.x, 407u, global3[_wgslsmith_index_u32(arg_1.c.x, 19u)]), firstLeadingBit(vec4<u32>(global3[_wgslsmith_index_u32(0u, 19u)], 13610u, u_input.b.x, 0u))) ^ vec4<u32>(global3[_wgslsmith_index_u32(global2.c.x, 19u)], select(55272u, global3[_wgslsmith_index_u32(u_input.b.x, 19u)], false), ~arg_1.a.x, u_input.b.x)), vec4<u32>(~_wgslsmith_add_u32(min(arg_2.a.x, global3[_wgslsmith_index_u32(arg_1.a.x, 19u)]), ~52486u), ~arg_1.c.x, 1u, 24195u));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.b.xw * vec2<f32>(694f, arg_1.b.x)))))) + arg_1.b.zx);
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~var_0.xzx), vec3<u32>(_wgslsmith_mult_u32(48631u, arg_1.c.x), _wgslsmith_sub_u32(min(_wgslsmith_mod_u32(1u, u_input.b.x), arg_2.c.x ^ 1u), _wgslsmith_add_u32(arg_1.c.x, 50319u)), _wgslsmith_mod_u32(min(_wgslsmith_clamp_u32(arg_2.a.x, 1u, 78884u), _wgslsmith_mult_u32(37210u, arg_1.a.x)), _wgslsmith_div_u32(13962u, 42940u)))), 20u)];
    global4 = vec2<f32>(_wgslsmith_f_op_f32(sign(-304f)), -140f);
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 20u)];
    return vec4<bool>(arg_0.x, true, !(arg_3.x != u_input.c.x), true);
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    var var_0 = !any(func_3(vec4<bool>(true, arg_0.x & arg_0.x, false, false), Struct_1(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, global2.b.x, global4.x)), ~u_input.b), global1[_wgslsmith_index_u32(~20910u, 20u)], countOneBits(u_input.a) & u_input.a).wx);
    return u_input.b.x;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> f32 {
    global3 = array<u32, 19>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(37221u, ~(~34431u), 4294967295u), 20u)];
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) - _wgslsmith_f_op_f32(-1043f - _wgslsmith_f_op_f32(floor(var_0.b.x))))))));
    global4 = _wgslsmith_f_op_vec2_f32(-global2.b.xw);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(24116u << (var_0.a.x % 32u), func_4(vec3<bool>(select(true, false, all(vec4<bool>(false, false, arg_0, arg_1.x))), any(func_3(vec4<bool>(true, false, false, false), global1[_wgslsmith_index_u32(global2.c.x, 20u)], Struct_1(global2.a, vec4<f32>(global4.x, global4.x, -1522f, global2.b.x), vec2<u32>(var_0.a.x, var_0.c.x)), vec3<i32>(u_input.c.x, -7216i, -1032i))), false))), 20u)];
    return 181f;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global3 = array<u32, 19>();
    let var_0 = ~1u;
    global0 = global4.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(695f, _wgslsmith_f_op_f32(func_2(false, vec2<bool>(false, true))))) - 1f))));
    global1 = array<Struct_1, 20>();
    return Struct_1(vec2<u32>(15545u, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1407f, 108f, global4.x, 1000f))) + global2.b), global2.c);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = -9337i > countOneBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 24860i, u_input.c.x), _wgslsmith_add_vec3_i32(vec3<i32>(-122230i, u_input.a.x, u_input.c.x), ~vec3<i32>(-1i, u_input.c.x, -7763i))));
    global2 = func_1(~select(~select(vec3<u32>(75655u, 20315u, 28945u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27737u, 19u)], 19u)], 19u)], arg_1.a.x, 91717u), vec3<bool>(arg_0, true, true)), vec3<u32>(~global2.a.x, ~1u, 37395u), false));
    var var_1 = countOneBits(vec4<u32>(~global2.c.x, arg_1.c.x, 4294967295u, _wgslsmith_add_u32(arg_1.a.x << (~u_input.b.x % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, global2.a.x, 4294967295u), vec3<u32>(u_input.b.x, global2.a.x, global3[_wgslsmith_index_u32(u_input.b.x, 19u)])), 45461u))));
    var_0 = true;
    var var_2 = func_1(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(var_1.x, 0u, 30046u)) << (var_1.wzz % vec3<u32>(32u)), abs(~vec3<u32>(39101u, global2.a.x, global3[_wgslsmith_index_u32(var_1.x, 19u)]))));
    return !(!(!vec4<bool>(global4.x > global2.b.x, arg_0, !arg_0, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(true, false, !all(vec3<bool>(true, true, true)), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), func_5(global4.x > global4.x, func_1(vec3<u32>(57587u, global2.c.x, global3[_wgslsmith_index_u32(48557u, 19u)])), global2.b), func_5(false, func_1(vec3<u32>(0u, 4294967295u, u_input.b.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.x, 1080f, 1461f, global4.x)))))), select(vec4<bool>(true, !(u_input.b.x >= u_input.b.x), _wgslsmith_f_op_f32(exp2(global4.x)) >= -2811f, !select(false, false, false)), vec4<bool>(false, any(func_3(vec4<bool>(false, true, false, false), global1[_wgslsmith_index_u32(1u, 20u)], Struct_1(global2.a, global2.b, vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], 19u)], u_input.b.x)), vec3<i32>(17205i, 1i, -2147483647i)).yw), !func_5(false, global1[_wgslsmith_index_u32(global2.c.x, 20u)], vec4<f32>(global2.b.x, 1285f, global4.x, global4.x)).x, func_5(global4.x < global2.b.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(0u, 19u)], 42215u, global2.a.x, global2.a.x), vec4<u32>(global2.c.x, u_input.b.x, u_input.b.x, 62701u)), 20u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, global2.b.x, global2.b.x, 636f))).x), vec4<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true)), !(92074u < global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.c.x, 19u)], 19u)]), true, func_5(true, global1[_wgslsmith_index_u32(1u, 20u)], vec4<f32>(global4.x, -247f, global2.b.x, 2047f)).x)), func_3(func_5(false, func_1(vec3<u32>(78959u, global3[_wgslsmith_index_u32(global2.a.x, 19u)], global3[_wgslsmith_index_u32(82u, 19u)])), _wgslsmith_f_op_vec4_f32(-global2.b)), global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(max(func_4(vec3<bool>(false, false, true)), 17297u), 19u)], 20u)], global1[_wgslsmith_index_u32(global2.a.x, 20u)], -u_input.a).x);
    let var_1 = _wgslsmith_div_vec4_i32(select(max(-(vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, u_input.c.x) >> (vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], 0u, global3[_wgslsmith_index_u32(38385u, 19u)], 0u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(-72046i, u_input.a.x, 2147483647i, 27247i), vec4<i32>(1i, -35055i, 1i, -2131i)) ^ vec4<i32>(u_input.c.x, 7741i, u_input.c.x, 0i)), vec4<i32>(abs(~u_input.c.x), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a >> (vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], 19u)], 19u)], 0u, 44746u) % vec3<u32>(32u))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-16238i, u_input.a.x, u_input.a.x), u_input.c.x, u_input.a.x), 1i), !var_0), vec4<i32>(u_input.c.x, 10643i, ~(-47974i), u_input.a.x));
    global0 = -1000f;
    var var_2 = !select(select(vec3<bool>(any(vec4<bool>(true, true, var_0.x, var_0.x)), all(vec4<bool>(true, var_0.x, true, false)), false), var_0.yxz, vec3<bool>(false, true, true)), vec3<bool>(any(var_0.zyx), global2.a.x == _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global2.a.x, 19u)], u_input.b.x, 1837u, 114923u), vec4<u32>(u_input.b.x, 24252u, global3[_wgslsmith_index_u32(u_input.b.x, 19u)], 37076u)), false), ~22715i < var_1.x);
    var var_3 = u_input.a;
    let var_4 = vec3<bool>(!var_2.x, !(global2.c.x >= ~min(31591u, global2.a.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.xx, ~(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec3<u32>(4294967295u, global2.a.x, global2.c.x)) | ~(~vec3<u32>(global2.c.x, 16965u, 74004u))), ~(~1i), global2.b.zw, 1i);
}

