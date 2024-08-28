struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 21> = array<u32, 21>(1u, 47086u, 71202u, 0u, 8577u, 38166u, 8583u, 1u, 48614u, 4294967295u, 4294967295u, 0u, 1u, 0u, 7743u, 30922u, 0u, 1454u, 4294967295u, 1u, 0u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    global1 = array<u32, 21>();
    global0 = 727f;
    var var_0 = Struct_4(58806u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f))), vec3<bool>(true, true, true)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, ~arg_0.x) & 1i, reverseBits(countOneBits(~(-4712i))), arg_0.x), vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 21u)], 21u)], 1u, 10668u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], u_input.a, global1[_wgslsmith_index_u32(1u, 21u)]), select(vec3<u32>(global1[_wgslsmith_index_u32(48149u, 21u)], 1u, 1u), vec3<u32>(10578u, 50128u, 58473u), vec3<bool>(false, false, false)))), u_input.a, ~_wgslsmith_add_u32(56140u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)], ~4294967295u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(411f, 2225f)) - 480f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-178f)), 1136f)), _wgslsmith_f_op_f32(-1019f + _wgslsmith_f_op_f32(f32(-1f) * -187f)))));
    var var_1 = min(arg_0.zz, arg_0.yy);
    let var_2 = Struct_3(countOneBits(5355u));
    return var_0.b.b;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<f32>) -> f32 {
    var var_0 = Struct_1(arg_2.x, !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), func_3(vec3<i32>(-1638i, 21612i, -34518i)), false), arg_0 < 52645i));
    let var_1 = arg_0;
    global0 = 636f;
    var var_2 = Struct_4(u_input.a, Struct_1(935f, select(var_0.b, vec3<bool>(false, !var_0.b.x, !var_0.b.x), var_0.b)), abs(~max(-1i, _wgslsmith_sub_i32(7200i, arg_1.x))), vec4<u32>(abs(global1[_wgslsmith_index_u32(4294967295u, 21u)]), ~(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6497u, 21u)], 21u)], 1u), vec4<u32>(59063u, 57087u, 4294967295u, u_input.a)), 21u)] << (~0u % 32u)), _wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(~1u, 21u)], ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(40407u, 21u)], u_input.a)), abs(~(global1[_wgslsmith_index_u32(14026u, 21u)] & 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1120f))) + arg_2.x));
    var var_3 = -471f;
    return arg_2.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<u32>) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_2(arg_1, ~_wgslsmith_div_vec2_i32(-vec2<i32>(53185i, 2147483647i), reverseBits(vec2<i32>(arg_1, 50812i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(381f, 746f, -587f, 1361f) - vec4<f32>(687f, -1262f, 538f, -724f)))))), select(vec3<bool>(true, true, select(true, true, false) | true), select(vec3<bool>(arg_0.x, false, arg_0.x), arg_0.zyx, true), !arg_0.x));
    var var_1 = Struct_3(arg_2.x);
    let var_2 = Struct_2(vec4<i32>(arg_1, arg_1 ^ ((0i >> (arg_2.x % 32u)) ^ 2147483647i), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(arg_1, arg_1)), firstLeadingBit(vec2<i32>(arg_1, arg_1) | vec2<i32>(-8401i, arg_1))), arg_1 & 1i), _wgslsmith_clamp_vec3_i32(-firstLeadingBit(-vec3<i32>(arg_1, -987i, arg_1)), max(~select(vec3<i32>(arg_1, 2147483647i, arg_1), vec3<i32>(arg_1, -22712i, arg_1), arg_0.xxw), vec3<i32>(arg_1, max(arg_1, -2147483647i), _wgslsmith_add_i32(2147483647i, -54613i))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_1, 0i), arg_1 << (1u % 32u), -48472i), vec3<i32>(_wgslsmith_clamp_i32(arg_1, -2147483647i, -40735i), 38607i, max(arg_1, arg_1)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -249f) * var_0.a)), vec3<bool>(arg_1 >= arg_1, !select(true, false, false), var_0.b.x)), u_input.a, Struct_1(1000f, !func_3(~vec3<i32>(arg_1, 0i, -41544i))));
    var_1 = Struct_3(~91101u);
    var var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(var_2.b.zz, _wgslsmith_mult_vec2_i32(var_2.a.yy, var_2.a.zx)), _wgslsmith_mult_i32(reverseBits(1i), _wgslsmith_clamp_i32(var_2.a.x, var_2.a.x, var_2.a.x)), ~_wgslsmith_mod_i32(2147483647i, arg_1), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 0i), vec2<i32>(1i, 53474i)))), var_2.a), -(arg_1 ^ _wgslsmith_dot_vec3_i32(~var_2.a.zzy, var_2.a.wzz)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(26586i, arg_1, var_2.a.x)), abs(var_2.a.wwy)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.a.x, -24521i), vec3<i32>(arg_1, arg_1, arg_1)), arg_1), abs(vec4<i32>(firstLeadingBit(var_2.b.x), arg_1, -2147483647i, 14524i))), -countOneBits(min(~arg_1, _wgslsmith_clamp_i32(arg_1, var_2.b.x, 1i))));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a, -339f)))) * vec2<f32>(_wgslsmith_f_op_f32(select(var_2.e.a, var_0.a, var_2.c.b.x)), 1000f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-225f, var_2.c.a))) + vec2<f32>(_wgslsmith_f_op_f32(-var_2.c.a), var_0.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e.a, 909f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.e.a), _wgslsmith_f_op_f32(-1496f * 1000f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(~0i, countOneBits(~vec2<i32>(0i, 23453i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, -1890f, arg_0.x, arg_0.x)))))) + 543f);
    var var_0 = Struct_3(u_input.a ^ global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(81516u, 21u)], u_input.a) << (_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(93238u, 21u)], 17377u) % 32u), ~global1[_wgslsmith_index_u32(1u, 21u)] << (~global1[_wgslsmith_index_u32(0u, 21u)] % 32u)), 21u)]);
    let var_1 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(max(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), reverseBits(u_input.a), 4294967295u, abs(1u)), vec4<u32>(~global1[_wgslsmith_index_u32(0u, 21u)], 0u, global1[_wgslsmith_index_u32(firstLeadingBit(16563u), 21u)], ~u_input.a)) ^ 1u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, arg_1, arg_1, false), _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-56977i), 1i, -28825i >> (global1[_wgslsmith_index_u32(u_input.a, 21u)] % 32u)), ~(vec3<i32>(0i, -1i, -1i) << (vec3<u32>(var_1.a, var_1.a, 0u) % vec3<u32>(32u)))), ~(~(vec3<u32>(var_1.a, 1u, 76528u) << (vec3<u32>(var_0.a, var_1.a, 0u) % vec3<u32>(32u)))))).x * 346f);
    var var_2 = Struct_4(30351u, Struct_1(arg_0.x, func_3(vec3<i32>(87819i, select(-20331i, 1i, arg_1), 1i))), _wgslsmith_div_i32(abs(firstTrailingBit(1i)), max(_wgslsmith_mod_i32(~21200i, _wgslsmith_mod_i32(-2147483647i, -3562i)), 1i)), vec4<u32>(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(var_1.a, 21u)]), 21u)], 43276u, 1u, u_input.a) << (~abs(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], 48015u, 14721u, 43570u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(func_2(1i, vec2<i32>(select(24609i << (0u % 32u), 14562i, false), 1i), vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, true, arg_1, arg_1), -1396i, vec3<u32>(75031u, 1439u, var_0.a))).x, func_3(vec3<i32>(43558i, -2175i, 14881i)).x)), arg_0.x, arg_0.x, 1010f))));
    return Struct_2(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(27840i, -1i, var_2.c, 7951i), vec4<i32>(-1i, var_2.c, -38032i, var_2.c), -vec4<i32>(-26534i, -8272i, -1i, -2147483647i)) | min(vec4<i32>(-2147483647i, var_2.c, var_2.c, var_2.c), vec4<i32>(0i, 2675i, var_2.c, -38823i)), firstLeadingBit((vec4<i32>(-5314i, 1i, -2147483647i, -28017i) ^ vec4<i32>(23334i, var_2.c, 1i, 2147483647i)) >> (vec4<u32>(var_1.a, u_input.a, 68266u, 4294967295u) % vec4<u32>(32u)))), ~vec3<i32>(73993i, ~countOneBits(-16804i), i32(-1i) * -1i), Struct_1(-1000f, vec3<bool>((var_2.c << (26017u % 32u)) <= 1i, true, any(select(vec4<bool>(var_2.b.b.x, var_2.b.b.x, true, var_2.b.b.x), vec4<bool>(false, false, false, var_2.b.b.x), true)))), var_1.a, Struct_1(var_2.e, !var_2.b.b));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32) -> Struct_3 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, arg_1.x, true, select(false, false, false)), -2147483647i, vec3<u32>(0u, abs(1u), ~countOneBits(6137u)))), ~arg_0.d >= 1u).e;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_2(0i, vec2<i32>(1i, ~_wgslsmith_mod_i32(arg_0.a.x, 2147483647i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1639f, var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) * arg_0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1233f + arg_0.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * 1000f))))), vec3<bool>(true || (-316f == _wgslsmith_f_op_f32(-var_0.a)), select(func_4(vec2<f32>(var_0.a, 301f), -2147483647i < arg_0.a.x).e.b.x, true, arg_0.e.b.x), !any(arg_0.e.b) || true));
    var var_2 = countOneBits(arg_0.a.xw);
    var var_3 = !select(vec4<bool>(select(var_0.b.x, var_1.b.x, any(vec4<bool>(arg_1.x, var_0.b.x, var_0.b.x, arg_0.e.b.x))), any(func_4(vec2<f32>(var_1.a, -440f), arg_1.x).c.b.xy), var_1.b.x, !var_1.b.x), vec4<bool>((1u >= arg_0.d) | any(vec3<bool>(true, var_0.b.x, var_1.b.x)), func_3(arg_0.b).x, ~71429u <= _wgslsmith_mod_u32(4294967295u, u_input.a), countOneBits(15046i) <= _wgslsmith_mod_i32(var_2.x, -42088i)), !vec4<bool>(var_1.b.x && arg_0.c.b.x, !arg_1.x, false, false));
    var_2 = ~select(-vec2<i32>(_wgslsmith_clamp_i32(16899i, arg_0.a.x, 0i), 20305i), abs(-arg_0.a.wy), ~reverseBits(arg_2) <= 1u);
    return Struct_3(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(~(~4294967295u), 21u)], 1u) ^ (arg_0.d ^ ~firstLeadingBit(u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(260f + -1564f)))))));
    global1 = array<u32, 21>();
    global0 = 2208f;
    let var_0 = func_5(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1874f, _wgslsmith_f_op_f32(f32(-1f) * -463f)) - _wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, true, true, true), _wgslsmith_mult_i32(1i, 1457i), vec3<u32>(11138u, global1[_wgslsmith_index_u32(22882u, 21u)], 0u)))), true), vec2<bool>(true, true && (~u_input.a <= _wgslsmith_clamp_u32(4294967295u, u_input.a, 4294967295u))), u_input.a);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f), _wgslsmith_f_op_f32(f32(-1f) * -1527f))))) + -964f);
    var var_1 = var_0;
    var_1 = Struct_3(firstTrailingBit(abs(select(~var_1.a, u_input.a, false))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1222f)));
    let x = u_input.a;
    s_output = StorageBuffer(-34965i, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2, 126f, var_2, _wgslsmith_f_op_f32(-var_2)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(22079i, vec2<i32>(9826i, 13360i), vec4<f32>(229f, var_2, var_2, -1357f))) - _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-236f)) - var_2), var_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(347f + 1492f)))))), _wgslsmith_mod_vec4_i32(vec4<i32>(-34269i, 1i, _wgslsmith_clamp_i32(2147483647i, 14319i, 1i) << (4294967295u % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-3783i, 1i, 12843i), vec3<i32>(2147483647i, -23144i, -2147483647i), vec3<i32>(-26368i, 2147483647i, -7097i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -1i, 54369i), vec3<i32>(1i, -93472i, 19742i)))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, 1i, -6036i) << (vec4<u32>(7030u, 2871u, var_1.a, global1[_wgslsmith_index_u32(var_0.a, 21u)]) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, -2147483647i, 19980i), vec4<i32>(1i, 1i, -25287i, 78237i), vec4<i32>(-1i, 46756i, 2147483647i, 6022i))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * 608f) * 456f), 541f, var_2, var_2)));
}

