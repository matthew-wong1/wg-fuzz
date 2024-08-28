struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(1i, -27808i, 6432i, 5933i, 24588i, 43712i, -1i, -19120i, -1i, 0i);

var<private> global1: Struct_3 = Struct_3(Struct_2(vec4<f32>(-2448f, -2347f, 1005f, -2104f), vec2<bool>(false, true)), -660f, -9416i, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<i32> {
    var var_0 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.d) >> (abs(vec2<u32>(u_input.b, 64774u)) % vec2<u32>(32u)), reverseBits(vec2<u32>(u_input.b, 24556u)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1844u), vec2<u32>(1u, 77771u))));
    let var_1 = vec4<u32>(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.d, u_input.e, 45043u), _wgslsmith_clamp_vec4_u32(vec4<u32>(37394u, u_input.b, 12288u, 66384u), vec4<u32>(u_input.b, 0u, 40417u, u_input.c), vec4<u32>(u_input.b, 1u, u_input.e, u_input.c)))) << (_wgslsmith_div_u32(u_input.d, u_input.d) % 32u), ~(~(~4294967295u)) ^ ~(~_wgslsmith_clamp_u32(98001u, 33624u, u_input.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.e, 80615u, _wgslsmith_sub_u32(u_input.c, u_input.e) << (12061u % 32u)), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 4294967295u, 20636u), vec3<u32>(1u, u_input.b, 79462u))) & ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(u_input.e, 1u, 6709u))), u_input.c | ~69095u);
    let var_2 = Struct_5(Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.a)), vec2<bool>(true, true)), -12507i, ~_wgslsmith_dot_vec3_u32(var_1.yzw >> (vec3<u32>(5008u, 36679u, var_1.x) % vec3<u32>(32u)), select(vec3<u32>(14842u, 0u, 33237u), var_1.zxz, vec3<bool>(global1.d, true, global1.d)))), 1u, global1.a, global1.d);
    var var_3 = Struct_1(var_1.x, _wgslsmith_f_op_f32(-global1.b));
    let var_4 = vec2<bool>(true, !global1.a.b.x);
    return vec2<i32>(~(~2147483647i), -9198i);
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_3, arg_3: vec3<f32>) -> bool {
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    global1 = Struct_3(arg_2.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b)) * -796f))), arg_0.x, global1.d);
    var var_0 = any(!select(vec3<bool>(global1.a.b.x, true, arg_2.a.a.x == arg_3.x), vec3<bool>(arg_3.x == 679f, select(true, false, true), false), vec3<bool>(true, !global1.a.b.x, true)));
    let var_1 = select(_wgslsmith_div_vec2_i32(vec2<i32>(10265i, (1i | u_input.a) << (_wgslsmith_add_u32(u_input.d, u_input.e) % 32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~arg_0.zx, vec2<i32>(global0[_wgslsmith_index_u32(15322u, 10u)], 3659i)), func_3())), arg_0.zy, select(!select(!global1.a.b, vec2<bool>(true, true), !arg_2.d), select(vec2<bool>(true, true), !(!vec2<bool>(arg_2.d, arg_2.a.b.x)), arg_2.a.b), arg_2.a.b));
    return !(!arg_2.d);
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = global1.a;
    return Struct_1(_wgslsmith_dot_vec3_u32(select(firstLeadingBit(vec3<u32>(73116u, u_input.d, u_input.e)), firstTrailingBit(vec3<u32>(u_input.c, 47593u, u_input.b) & vec3<u32>(41754u, 0u, 50336u)), !(!vec3<bool>(global1.d, false, false))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(32839u, u_input.e, 12637u)), vec3<u32>(~62794u, ~114617u, ~4294967295u))), -538f);
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(select(vec3<bool>(any(!vec4<bool>(global1.d, true, true, true)), func_2(vec3<i32>(-1419i, u_input.a, -2147483647i), 2147483647i >> (u_input.b % 32u), Struct_3(global1.a, -1382f, global0[_wgslsmith_index_u32(38845u, 10u)], false), _wgslsmith_f_op_vec3_f32(global1.a.a.yzy - global1.a.a.yyw)), !(!global1.a.b.x)), !vec3<bool>(true, global1.d && true, u_input.a >= u_input.a), !(global1.a.a.x >= _wgslsmith_f_op_f32(f32(-1f) * -583f))));
    global0 = array<i32, 10>();
    var_0 = func_4(!vec3<bool>((global0[_wgslsmith_index_u32(u_input.b, 10u)] & -2147483647i) == firstTrailingBit(-1i), func_2(vec3<i32>(-1i, 2147483647i, -2147483647i), global0[_wgslsmith_index_u32(u_input.e, 10u)], Struct_3(global1.a, 445f, global0[_wgslsmith_index_u32(u_input.e, 10u)], global1.a.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1862f, -249f, -971f))), global1.d));
    global1 = Struct_3(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a.a) - _wgslsmith_f_op_vec4_f32(-global1.a.a)), vec4<f32>(468f, _wgslsmith_f_op_f32(trunc(var_0.b)), global1.b, var_0.b)), !(!global1.a.b)), -1000f, ~1i, !(!global1.a.b.x) & global1.d);
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(41241i, 2147483647i, 50181i, global0[_wgslsmith_index_u32(var_0.a, 10u)]), vec4<i32>(16407i, 0i, u_input.a, global0[_wgslsmith_index_u32(0u, 10u)])) | (_wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], 51394i, 28468i, global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<i32>(-1i, 2147483647i, 2147483647i, -10926i)) ^ select(vec4<i32>(31643i, u_input.a, global0[_wgslsmith_index_u32(42426u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 10u)], -23533i, global0[_wgslsmith_index_u32(99102u, 10u)], 24369i), global1.a.b.x)), ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, global1.c, 0i, global1.c), vec4<i32>(global1.c, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(43751u, 10u)], global0[_wgslsmith_index_u32(var_0.a, 10u)]), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(76225u, 10u)], u_input.a, global1.c)))), global1.c);
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.a.x, global1.b, global1.a.a.x, global1.a.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, global1.b, 397f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a.a) - _wgslsmith_f_op_vec4_f32(floor(global1.a.a))))), vec2<bool>(true, !global1.a.b.x));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: bool) -> Struct_3 {
    global1 = arg_0;
    global1 = arg_0;
    let var_0 = false;
    var var_1 = Struct_5(Struct_4(global1.a, firstLeadingBit(-11441i), u_input.e), ~abs(arg_2.x), func_1(), func_1().b.x);
    let var_2 = vec4<i32>(_wgslsmith_add_i32(global1.c, 22824i), _wgslsmith_mod_i32(i32(-1i) * -8888i, _wgslsmith_sub_i32((global0[_wgslsmith_index_u32(var_1.b, 10u)] << (61030u % 32u)) << (_wgslsmith_clamp_u32(1u, arg_2.x, 462u) % 32u), -56244i)), _wgslsmith_mult_i32(~(i32(-1i) * -arg_0.c), arg_1.x), -global0[_wgslsmith_index_u32(u_input.c, 10u)]);
    return arg_0;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_4 {
    global1 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.b)) - arg_0.x), _wgslsmith_div_f32(global1.a.a.x, _wgslsmith_f_op_f32(min(global1.b, -1101f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.a.x, arg_0.x))), _wgslsmith_f_op_f32(ceil(634f))), !select(vec2<bool>(false, arg_2.x), vec2<bool>(global1.a.b.x, false), true)), _wgslsmith_f_op_f32(f32(-1f) * -160f), ~_wgslsmith_add_i32(min(2147483647i, -1i), abs(-54669i)), false);
    global0 = array<i32, 10>();
    let var_0 = func_5(arg_1, vec4<i32>(-40906i, -max(global0[_wgslsmith_index_u32(4294967295u, 10u)], global1.c), 0i, ~abs(u_input.a)) >> ((vec4<u32>(1u, _wgslsmith_mod_u32(92704u, 1u), firstTrailingBit(u_input.c), _wgslsmith_mult_u32(u_input.e, u_input.b)) ^ ~(~vec4<u32>(u_input.e, 16125u, 29479u, 4294967295u))) % vec4<u32>(32u)), ((vec4<u32>(u_input.c, 4294967295u, 14450u, u_input.c) & _wgslsmith_add_vec4_u32(vec4<u32>(0u, 83671u, 1u, 954u), vec4<u32>(4294967295u, 82965u, 67928u, u_input.c))) | (vec4<u32>(4294967295u, u_input.c, 0u, u_input.e) << (~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 6267u) % vec4<u32>(32u)))) >> (_wgslsmith_div_vec4_u32(max(vec4<u32>(4294967295u, 64186u, u_input.e, u_input.c), min(vec4<u32>(0u, u_input.e, 700u, u_input.d), vec4<u32>(34471u, 41679u, u_input.d, 0u))), _wgslsmith_mod_vec4_u32(vec4<u32>(24002u, 44174u, u_input.d, 4294967295u), vec4<u32>(u_input.d, u_input.b, u_input.b, 2579u)) >> (vec4<u32>(56665u, u_input.d, u_input.d, u_input.e) % vec4<u32>(32u))) % vec4<u32>(32u)), true);
    let var_1 = func_4(vec3<bool>((_wgslsmith_div_i32(arg_1.c, u_input.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b, u_input.d), vec3<u32>(u_input.e, 4294967295u, u_input.c)) % 32u)) > -2147483647i, _wgslsmith_f_op_f32(sign(-235f)) <= _wgslsmith_f_op_f32(round(-1361f)), arg_2.x));
    let var_2 = vec3<bool>((-firstLeadingBit(u_input.a) > reverseBits(~(-1i))) || func_1().b.x, _wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b)))) < var_0.a.a.x, !(var_1.a > u_input.e));
    return Struct_4(Struct_2(var_0.a.a, !(!(!vec2<bool>(arg_2.x, true)))), max(0i, _wgslsmith_sub_i32(select(u_input.a, 1i, var_2.x), 35636i)), 64378u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(590f + global1.a.a.x), global1.a.a.x)), func_5(Struct_3(func_1(), _wgslsmith_f_op_f32(-global1.a.a.x), u_input.a, global1.d), max(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 10u)], -53498i, global1.c, global1.c), max(vec4<i32>(u_input.a, 2147483647i, -2147483647i, u_input.a), vec4<i32>(-1i, global1.c, global1.c, 0i))), select(abs(~vec4<u32>(u_input.b, 0u, 0u, 4294967295u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 10473u, u_input.e, 4294967295u), vec4<u32>(u_input.b, u_input.c, u_input.b, 0u))), _wgslsmith_f_op_f32(global1.a.a.x * global1.b) != global1.b), global1.d), !(!global1.a.b), select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, 9118i, global1.c, global0[_wgslsmith_index_u32(1u, 10u)]), min(vec4<i32>(47562i, -17684i, 2147483647i, global1.c), vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 10u)], 22435i, global0[_wgslsmith_index_u32(0u, 10u)], 2147483647i) >> (vec4<u32>(1u, 4294967295u, u_input.e, 20945u) % vec4<u32>(32u))), -(~vec4<i32>(0i, u_input.a, u_input.a, global0[_wgslsmith_index_u32(119488u, 10u)]))), ~min(vec4<i32>(-32357i, u_input.a, global0[_wgslsmith_index_u32(54723u, 10u)], -76550i) >> (vec4<u32>(u_input.c, u_input.e, u_input.d, 31900u) % vec4<u32>(32u)), vec4<i32>(-33872i, 1i, global0[_wgslsmith_index_u32(u_input.b, 10u)], -43796i)), global1.d && true));
    global0 = array<i32, 10>();
    global1 = Struct_3(global1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b))), -39855i, !all(global1.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f + global1.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)))), u_input.a, global1.a.a.xwz, max(abs(select(vec3<u32>(var_0.c, 0u, 31767u), vec3<u32>(58506u, 56952u, var_0.c) ^ vec3<u32>(u_input.e, 21439u, 41662u), select(vec3<bool>(true, var_0.a.b.x, global1.a.b.x), vec3<bool>(false, global1.a.b.x, var_0.a.b.x), false))), vec3<u32>(~_wgslsmith_mult_u32(u_input.d, 35080u), 33868u, ~var_0.c)));
}

