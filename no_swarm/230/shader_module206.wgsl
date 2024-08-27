struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: array<vec3<u32>, 18>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_2;
    return select(select(!(!vec4<bool>(arg_0.x, arg_2.b, arg_0.x, false)), vec4<bool>(false, true, all(vec3<bool>(false, true, false)), var_0.b), vec4<bool>(true, _wgslsmith_mult_u32(4294967295u, var_0.e.x) < ~11906u, var_0.b, true)), !(!select(!vec4<bool>(true, arg_2.b, arg_2.b, true), vec4<bool>(arg_0.x, false, arg_2.b, arg_2.b), true)), (var_0.c < _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.c, -5088i) & vec3<i32>(678i, arg_2.d.x, -20267i), -vec3<i32>(var_0.d.x, global0[_wgslsmith_index_u32(u_input.b.x, 16u)], -12427i))) & (arg_2.a.x >= var_0.a.x));
}

fn func_2() -> bool {
    let var_0 = select(any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-409f))) == -846f, select(true, true, true) && true) && all(select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), true), func_3(vec2<bool>(true, true), ~vec2<i32>(25395i, -13726i), Struct_1(vec3<f32>(262f, 860f, -1095f), true, global0[_wgslsmith_index_u32(0u, 16u)], vec2<i32>(16806i, global0[_wgslsmith_index_u32(7876u, 16u)]), vec3<u32>(u_input.a, 35784u, u_input.c))), vec4<bool>(true, true, true, true)));
    global1 = array<vec3<u32>, 18>();
    let var_1 = max(vec2<i32>(global0[_wgslsmith_index_u32(~(4294967295u >> (firstTrailingBit(0u) % 32u)), 16u)], -2147483647i), select(vec2<i32>(1i, ~global0[_wgslsmith_index_u32(max(u_input.b.x, u_input.b.x), 16u)]), -_wgslsmith_add_vec2_i32(vec2<i32>(18078i, 5102i), vec2<i32>(global0[_wgslsmith_index_u32(21948u, 16u)], 2147483647i)), !(!select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), vec2<bool>(false, true)))));
    var var_2 = u_input.a;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(790f, -567f, -821f), vec3<f32>(1000f, 895f, -192f)) + vec3<f32>(-1149f, 1000f, -882f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-611f, 1133f, 102f))))), !(!var_0)))), all(!(!(!vec2<bool>(var_0, var_0)))), global0[_wgslsmith_index_u32(u_input.a, 16u)], vec2<i32>(_wgslsmith_sub_i32(79368i, var_1.x), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)], 3497i) ^ _wgslsmith_add_i32(var_1.x, -4113i)) ^ ~var_1, vec3<u32>(reverseBits(u_input.b.x) ^ _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.a), 99180u), u_input.a, _wgslsmith_sub_u32(max(reverseBits(u_input.a), 92528u), countOneBits(~27810u))));
    return var_3.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<i32> {
    global0 = array<i32, 16>();
    global1 = array<vec3<u32>, 18>();
    var var_0 = arg_3.yz;
    let var_1 = ~(~(~firstTrailingBit(~vec4<u32>(1u, arg_1, 1u, 53912u))));
    var var_2 = Struct_1(vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-494f * 1000f)))), var_0.x, arg_2.d.x << (arg_2.e.x % 32u), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_0.x, 16u)], arg_2.c), arg_2.d) ^ _wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_2.d.x, global0[_wgslsmith_index_u32(36438u, 16u)]), vec2<i32>(arg_2.c, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), arg_2.d)), ~vec3<u32>(1u | firstTrailingBit(0u), 59242u, ~4294967295u));
    return _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -var_2.c, arg_2.c, _wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, -1i), -var_2.c)), abs(~select(vec4<i32>(-2147483647i, -56894i, 58535i, 11142i), vec4<i32>(var_2.d.x, arg_2.d.x, global0[_wgslsmith_index_u32(var_2.e.x, 16u)], var_2.d.x), vec4<bool>(arg_3.x, false, var_2.b, arg_3.x)))) << (_wgslsmith_sub_vec4_u32(var_1, var_1) % vec4<u32>(32u));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(arg_2.a, vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) + arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -213f)))), true, ~(_wgslsmith_mult_i32(arg_2.d.x, arg_1.x) << (arg_2.e.x % 32u)) & global0[_wgslsmith_index_u32(u_input.c << (_wgslsmith_sub_u32(34609u, arg_2.e.x) % 32u), 16u)], arg_0.xw, vec3<u32>(abs(_wgslsmith_clamp_u32(u_input.b.x, u_input.a, arg_2.e.x)) | ~(~0u), ~(firstLeadingBit(arg_2.e.x) << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u)), ~_wgslsmith_mod_u32(arg_2.e.x >> (47404u % 32u), arg_2.e.x)));
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    let var_1 = abs(reverseBits(vec3<i32>(~(-2147483647i), arg_0.x, firstTrailingBit(-12093i)) & select(~arg_3, reverseBits(arg_0.wwy), !vec3<bool>(true, true, var_0.b))));
    let var_2 = var_0.a.x;
    return var_0;
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = func_5(reverseBits(~abs(vec4<i32>(2147483647i, -2147483647i, global0[_wgslsmith_index_u32(49363u, 16u)], 29356i))), func_4(max(u_input.d.yz, abs(~vec2<u32>(u_input.b.x, u_input.c))), 40874u, Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(544f, -790f, arg_0) - vec3<f32>(1954f, -2193f, 265f)), vec3<f32>(arg_0, arg_0, 299f))), _wgslsmith_f_op_f32(arg_0 * -542f) <= _wgslsmith_f_op_f32(abs(487f)), 10449i, vec2<i32>(84226i, global0[_wgslsmith_index_u32(countOneBits(u_input.d.x), 16u)]), u_input.d), select(vec3<bool>(arg_0 <= 369f, true, global0[_wgslsmith_index_u32(0u, 16u)] > -2147483647i), vec3<bool>(func_2(), all(vec3<bool>(false, true, false)), true), true)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_f_op_f32(ceil(arg_0))), true, 38883i, max(vec2<i32>(~1i, global0[_wgslsmith_index_u32(~u_input.a, 16u)]), ~vec2<i32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(u_input.d.x, 16u)]) | _wgslsmith_sub_vec2_i32(vec2<i32>(-2175i, -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(28491u, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)]))), ~firstLeadingBit(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x))), vec3<i32>(-28291i | _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-8670i, 21675i, global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)]), vec4<i32>(1i, global0[_wgslsmith_index_u32(1u, 16u)], -19321i, -61790i), vec4<i32>(-4898i, 68178i, 2147483647i, 119i)), -vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 16u)], -30690i, global0[_wgslsmith_index_u32(u_input.d.x, 16u)])), reverseBits(global0[_wgslsmith_index_u32(u_input.d.x, 16u)]), 1i));
    let var_1 = func_3(!(!select(!vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, true), func_3(vec2<bool>(var_0.b, true), vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(var_0.e.x, 16u)]), Struct_1(vec3<f32>(-739f, 404f, arg_0), false, var_0.d.x, vec2<i32>(8301i, -1i), global1[_wgslsmith_index_u32(u_input.b.x, 18u)])).zw)), -var_0.d, func_5(vec4<i32>(1i, func_4(~vec2<u32>(22021u, var_0.e.x), abs(var_0.e.x), func_5(vec4<i32>(-6874i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(var_0.c, -15971i, global0[_wgslsmith_index_u32(108804u, 16u)], 0i), Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, arg_0), true, global0[_wgslsmith_index_u32(111463u, 16u)], var_0.d, var_0.e), vec3<i32>(var_0.c, 0i, 1i)), vec3<bool>(true, var_0.b, false)).x, (i32(-1i) * -20697i) >> (~var_0.e.x % 32u), (-20044i & var_0.c) >> (u_input.d.x % 32u)), -vec4<i32>(17197i, _wgslsmith_sub_i32(6277i, 5261i), firstTrailingBit(-20468i), global0[_wgslsmith_index_u32(u_input.b.x & 4294967295u, 16u)]), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -859f, var_0.a.x)) * _wgslsmith_f_op_vec3_f32(-var_0.a)), !all(vec2<bool>(var_0.b, var_0.b)), 1i, -vec2<i32>(68966i, 9440i), select(select(global1[_wgslsmith_index_u32(var_0.e.x, 18u)], var_0.e, vec3<bool>(var_0.b, var_0.b, var_0.b)), abs(vec3<u32>(0u, var_0.e.x, 0u)), !vec3<bool>(true, false, var_0.b))), firstLeadingBit(vec3<i32>(0i, var_0.d.x, -global0[_wgslsmith_index_u32(var_0.e.x, 16u)]))));
    var_0 = func_5(-reverseBits(~max(vec4<i32>(global0[_wgslsmith_index_u32(var_0.e.x, 16u)], -14057i, 29354i, var_0.c), vec4<i32>(-1i, 14826i, var_0.c, global0[_wgslsmith_index_u32(var_0.e.x, 16u)]))), (~(~vec4<i32>(global0[_wgslsmith_index_u32(var_0.e.x, 16u)], 34645i, var_0.c, var_0.c)) & _wgslsmith_add_vec4_i32(func_4(vec2<u32>(var_0.e.x, u_input.a), 16102u, Struct_1(var_0.a, false, var_0.d.x, var_0.d, vec3<u32>(var_0.e.x, var_0.e.x, 1u)), vec3<bool>(true, true, var_1.x)), vec4<i32>(5703i, var_0.d.x, 2147483647i, var_0.c))) >> (vec4<u32>(var_0.e.x, u_input.b.x, ~100102u, 41918u) % vec4<u32>(32u)), Struct_1(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-var_0.a.x)), -420f), var_0.b, var_0.c, vec2<i32>(~0i, min(-28672i, -77172i)) ^ vec2<i32>(0i << (u_input.a % 32u), global0[_wgslsmith_index_u32(32969u, 16u)] & var_0.d.x), vec3<u32>(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, var_0.e.x), vec3<u32>(u_input.d.x, 47922u, 65799u)), ~(27326u | var_0.e.x))), -(firstLeadingBit(countOneBits(vec3<i32>(1i, global0[_wgslsmith_index_u32(1u, 16u)], -6137i))) >> (u_input.d % vec3<u32>(32u))));
    let var_2 = ~abs(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(6325u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], 18888i));
    let var_3 = var_0.a.xy;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~func_1(-1000f) << (0u % 32u), u_input.c), 16u)];
    var var_1 = vec3<bool>(true, true, all(vec3<bool>(func_3(vec2<bool>(false, true), vec2<i32>(-10421i, 32521i), Struct_1(vec3<f32>(672f, 396f, -789f), true, 1i, vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 16u)], 9897i), vec3<u32>(11783u, u_input.a, 1u))).x | any(vec2<bool>(true, true)), true, true)));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(414f, -1541f))))))));
    var var_4 = 17816i;
    var var_5 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-724f, 1776f, -1000f, -1011f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -419f, -1000f, 100f) - vec4<f32>(-133f, 572f, -1915f, 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1299f, 861f, 214f, -1000f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(f32(-1f) * -1488f), var_5.x, _wgslsmith_f_op_f32(f32(-1f) * -1304f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(404f, var_5.x, 372f, -1291f) - vec4<f32>(1583f, var_5.x, -697f, var_5.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(761f, 1417f, var_5.x, 826f)))))), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(var_1.x, var_1.x, true, false)), vec4<bool>(!var_1.x, all(vec3<bool>(var_1.x, var_1.x, var_1.x)), any(vec4<bool>(var_1.x, var_1.x, true, var_1.x)), false)))));
}

