struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 5>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -(abs(arg_0) >> (vec3<u32>(arg_1, arg_3.e.x, 4294967295u) % vec3<u32>(32u))), arg_2.e.c);
    let var_1 = arg_2.a.a;
    let var_2 = !(!vec3<bool>(false | any(vec3<bool>(true, global0.x, false)), true, true));
    var_0 = vec3<i32>(_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(arg_3.c.zz, vec2<i32>(arg_2.c.x, arg_2.e.c.x)) ^ ~21889i), _wgslsmith_mod_i32(arg_3.d << (_wgslsmith_add_u32(39759u, 64429u) % 32u), 1i)), ~(-46885i), arg_0.x);
    let var_3 = !(!(!vec2<bool>(!arg_2.b, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, var_1.e.x), 5u)])));
    return Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a, arg_3.a) * vec2<f32>(-564f, arg_3.a.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_1.a, arg_3.a)))), u_input.a, firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(46503i, arg_2.c.x, -31251i)), _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, -39555i, arg_3.d), vec4<i32>(arg_2.a.a.c.x, 0i, -2147483647i, var_0.x)), vec4<i32>(arg_3.c.x, arg_0.x, -73146i, ~arg_2.e.d)), ~(~(~arg_2.e.e))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -313f, _wgslsmith_f_op_f32(-arg_1.x), 1146f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -196f))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2092f, arg_1.x, arg_1.x, 886f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, arg_1.x, 541f))) * vec4<f32>(_wgslsmith_f_op_f32(-206f - 256f), _wgslsmith_f_op_f32(-735f + arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x - -564f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1127f, arg_1.x, 829f, 202f) + vec4<f32>(arg_1.x, 462f, arg_0.a.a.x, arg_0.a.a.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-528f, -649f, -203f, arg_0.a.a.x), vec4<f32>(-322f, -126f, arg_1.x, arg_1.x), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(1u, 5u)], true, global0.x)))))))));
    var var_1 = global1[_wgslsmith_index_u32(~1u, 5u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1437f, _wgslsmith_f_op_f32(-var_0.x), false)), _wgslsmith_f_op_f32(trunc(func_2(arg_0.a.c, arg_0.a.e.x, Struct_3(Struct_2(Struct_1(arg_0.a.a, arg_0.a.b, vec3<i32>(0i, -1i, arg_0.a.d), -2147483647i, arg_0.a.e)), false, vec3<i32>(arg_0.a.d, 0i, arg_0.a.d), arg_0.a.b, Struct_1(vec2<f32>(-3509f, var_0.x), arg_0.a.b, vec3<i32>(0i, -24780i, 0i), -1i, vec4<u32>(u_input.a.x, arg_0.a.b.x, 4294967295u, arg_0.a.b.x))), arg_0.a).a.a.x)))))) + _wgslsmith_f_op_f32(ceil(var_0.x)));
    var var_3 = Struct_3(func_2(arg_0.a.c, arg_0.a.b.x, Struct_3(Struct_2(Struct_1(vec2<f32>(-242f, var_2), arg_0.a.b, vec3<i32>(arg_0.a.d, arg_0.a.d, -2147483647i), arg_0.a.c.x, vec4<u32>(0u, 6218u, arg_0.a.b.x, arg_0.a.b.x))), !(global1[_wgslsmith_index_u32(arg_0.a.e.x, 5u)] & true), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-4956i, arg_0.a.c.x, -56195i), vec3<i32>(arg_0.a.c.x, arg_0.a.c.x, 66917i)), ~firstTrailingBit(arg_0.a.b), func_2(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1i, arg_0.a.d), arg_0.a.c), ~56585u, Struct_3(Struct_2(arg_0.a), true, arg_0.a.c, vec2<u32>(u_input.a.x, arg_0.a.e.x), arg_0.a), arg_0.a).a), arg_0.a), !(!(any(vec2<bool>(global0.x, true)) && false)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(1377i, 1i, -1i), vec3<i32>(6553i, arg_0.a.d, arg_0.a.c.x), vec3<i32>(arg_0.a.c.x, -4350i, 2147483647i)) << (vec3<u32>(~u_input.b.x, u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.b, arg_0.a.e.yxz)) % vec3<u32>(32u))), arg_0.a.b, Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.xx - vec2<f32>(-1901f, _wgslsmith_f_op_f32(round(2009f)))), vec2<u32>(~arg_0.a.b.x, arg_0.a.b.x), ~max(arg_0.a.c, select(vec3<i32>(arg_0.a.d, arg_0.a.c.x, arg_0.a.c.x), vec3<i32>(arg_0.a.d, arg_0.a.c.x, arg_0.a.d), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.a.e.x, 5u)], false, false))), select(_wgslsmith_dot_vec2_i32(max(arg_0.a.c.xy, vec2<i32>(1i, arg_0.a.c.x)), vec2<i32>(-37039i, 15694i)), max(firstTrailingBit(arg_0.a.d), ~(-70269i)), global0.x), func_2(min(arg_0.a.c | arg_0.a.c, vec3<i32>(arg_0.a.d, -1i, -1i)), arg_0.a.b.x, Struct_3(func_2(vec3<i32>(arg_0.a.d, arg_0.a.d, -1i), 34344u, Struct_3(Struct_2(arg_0.a), false, vec3<i32>(1i, 1i, arg_0.a.c.x), u_input.b.zy, Struct_1(vec2<f32>(308f, arg_1.x), u_input.a, arg_0.a.c, -29057i, arg_0.a.e)), Struct_1(arg_1.yx, vec2<u32>(arg_0.a.b.x, arg_0.a.b.x), arg_0.a.c, arg_0.a.d, vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 35727u))), all(vec3<bool>(global0.x, global1[_wgslsmith_index_u32(0u, 5u)], true)), abs(vec3<i32>(-12210i, arg_0.a.c.x, arg_0.a.c.x)), vec2<u32>(arg_0.a.b.x, arg_0.a.b.x), Struct_1(vec2<f32>(954f, 1082f), arg_0.a.e.xz, arg_0.a.c, arg_0.a.d, vec4<u32>(u_input.a.x, 24227u, 2556u, arg_0.a.e.x))), arg_0.a).a.e));
    var var_4 = _wgslsmith_f_op_vec2_f32(floor(var_0.yx));
    return func_2(_wgslsmith_mult_vec3_i32(~(~_wgslsmith_clamp_vec3_i32(arg_0.a.c, vec3<i32>(0i, arg_0.a.d, -18628i), var_3.a.a.c)), var_3.a.a.c), 46708u, Struct_3(Struct_2(var_3.a.a), ~max(arg_0.a.b.x, arg_0.a.e.x) >= u_input.a.x, _wgslsmith_mod_vec3_i32(~vec3<i32>(var_3.c.x, 28723i, arg_0.a.d), abs(vec3<i32>(var_3.c.x, -1i, var_3.c.x))) ^ var_3.e.c, select(max(u_input.b.zy, vec2<u32>(arg_0.a.e.x, arg_0.a.e.x) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))), ~arg_0.a.b, vec2<bool>(true, false)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_4.x), firstTrailingBit(vec2<u32>(4294967295u, 119683u) & var_3.a.a.b), firstLeadingBit(-arg_0.a.c), -19605i, vec4<u32>(u_input.b.x, max(arg_0.a.e.x, 0u), 1u, 1u))), arg_0.a);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_5, arg_3: f32) -> bool {
    let var_0 = arg_0.a;
    var var_1 = arg_1.a.e;
    global0 = !vec2<bool>(!global1[_wgslsmith_index_u32(~arg_1.a.b.x, 5u)], any(vec3<bool>(!global1[_wgslsmith_index_u32(var_1.x, 5u)], !global0.x, false)));
    let var_2 = arg_2.a.a.a;
    global1 = array<bool, 5>();
    return global1[_wgslsmith_index_u32(24647u, 5u)] && all(select(!vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 5u)], true, false, global0.x), select(vec4<bool>(global0.x, global0.x, true, true), !vec4<bool>(global0.x, true, global0.x, true), any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global1[_wgslsmith_index_u32(20891u, 5u)], global1[_wgslsmith_index_u32(var_1.x, 5u)]))), global0.x && false));
}

fn func_1(arg_0: vec2<u32>) -> vec3<i32> {
    global0 = vec2<bool>(func_4(Struct_5(Struct_4(Struct_1(vec2<f32>(-129f, -1571f), vec2<u32>(0u, 20729u), vec3<i32>(1i, 1i, -533i), 9132i, vec4<u32>(arg_0.x, 1u, 0u, 0u)), Struct_2(Struct_1(vec2<f32>(436f, -1000f), vec2<u32>(arg_0.x, 4294967295u), vec3<i32>(62208i, 2147483647i, 35124i), 2147483647i, vec4<u32>(0u, 0u, arg_0.x, 9908u)))), Struct_2(Struct_1(vec2<f32>(-1845f, 1118f), u_input.a, vec3<i32>(17290i, -2125i, 2147483647i), 0i, vec4<u32>(arg_0.x, 4294967295u, u_input.a.x, 17515u)))), Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 715f)), arg_0 ^ vec2<u32>(arg_0.x, 62360u), countOneBits(vec3<i32>(-2147483647i, -1i, 2147483647i)), -2147483647i, ~vec4<u32>(48144u, u_input.b.x, 33621u, arg_0.x)), func_3(func_2(vec3<i32>(-2147483647i, 0i, 0i), 28483u, Struct_3(Struct_2(Struct_1(vec2<f32>(1241f, 1000f), vec2<u32>(arg_0.x, arg_0.x), vec3<i32>(2717i, 0i, -18584i), -10184i, vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, 4294967295u))), global1[_wgslsmith_index_u32(27566u, 5u)], vec3<i32>(3509i, 1952i, -2147483647i), arg_0, Struct_1(vec2<f32>(-571f, 532f), vec2<u32>(u_input.b.x, 0u), vec3<i32>(0i, -1i, -54879i), -2147483647i, vec4<u32>(u_input.b.x, 54948u, arg_0.x, 1u))), Struct_1(vec2<f32>(901f, 599f), vec2<u32>(u_input.a.x, 11631u), vec3<i32>(-1i, 45569i, 59694i), 1i, vec4<u32>(0u, arg_0.x, arg_0.x, u_input.b.x))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-187f, -1085f, -298f))))), Struct_5(Struct_4(Struct_1(vec2<f32>(-159f, -1076f), u_input.c, vec3<i32>(0i, 2147483647i, 2147483647i), 10137i, vec4<u32>(u_input.a.x, 42385u, 12783u, arg_0.x)), Struct_2(Struct_1(vec2<f32>(790f, 1814f), vec2<u32>(u_input.b.x, 1u), vec3<i32>(3894i, -37978i, -35627i), 14959i, vec4<u32>(25060u, u_input.c.x, 1u, 4294967295u)))), Struct_2(Struct_1(vec2<f32>(1000f, -1223f), arg_0, vec3<i32>(2147483647i, 0i, 25229i), -19742i, vec4<u32>(u_input.c.x, 1597u, u_input.a.x, 0u)))), 1f), global0.x);
    let var_0 = Struct_2(func_3(func_3(Struct_2(Struct_1(vec2<f32>(-1685f, -1054f), u_input.a, vec3<i32>(-1i, 0i, 14699i), 7552i, vec4<u32>(4294967295u, 0u, 33346u, arg_0.x))), vec3<f32>(-257f, _wgslsmith_div_f32(-846f, 1715f), func_3(Struct_2(Struct_1(vec2<f32>(-1000f, -889f), u_input.a, vec3<i32>(-2147483647i, -2147483647i, 6147i), 1186i, vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_0.x))), vec3<f32>(-465f, -1267f, -1747f)).a.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))).a);
    var var_1 = func_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-812f, -1034f))) * vec2<f32>(var_0.a.a.x, -786f)), _wgslsmith_mult_vec2_u32(arg_0, vec2<u32>(64283u, u_input.c.x)), ~vec3<i32>(2174i, var_0.a.d, var_0.a.d), i32(-1i) * -1i, vec4<u32>(1u, abs(41373u), func_2(vec3<i32>(50677i, -66021i, -1i), 1u, Struct_3(var_0, true, var_0.a.c, arg_0, var_0.a), Struct_1(vec2<f32>(var_0.a.a.x, -848f), vec2<u32>(29341u, 25906u), var_0.a.c, var_0.a.d, var_0.a.e)).a.e.x, ~1u))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-916f, var_0.a.a.x, 245f), vec3<f32>(-577f, var_0.a.a.x, 823f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, -1593f, -100f))), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global1[_wgslsmith_index_u32(var_0.a.e.x, 5u)], true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, global0.x)))), vec3<f32>(863f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1202f)), _wgslsmith_f_op_f32(-var_0.a.a.x)))));
    global0 = select(select(vec2<bool>(true, any(vec2<bool>(global0.x, false))), vec2<bool>(false, true), global0.x | ((u_input.b.x ^ u_input.b.x) == u_input.b.x)), select(vec2<bool>(!global0.x, global1[_wgslsmith_index_u32(abs(21448u), 5u)]), vec2<bool>(true, false), false), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 2147483647i, 2147483647i, var_0.a.c.x), vec4<i32>(var_1.a.c.x, -2147483647i, 0i, 0i), vec4<i32>(-15054i, var_1.a.c.x, 32086i, var_0.a.d)), min(vec4<i32>(2147483647i, 62802i, -1933i, var_0.a.d), vec4<i32>(var_0.a.d, 34527i, 30121i, 28531i))), ~var_1.a.d << (~82276u % 32u)) < ~(-79697i));
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.a.a)) + _wgslsmith_f_op_vec2_f32(abs(var_0.a.a))))), ~select(select(var_1.a.b, vec2<u32>(1u, 0u), vec2<bool>(global1[_wgslsmith_index_u32(var_1.a.b.x, 5u)], false)), vec2<u32>(u_input.c.x, 0u), vec2<bool>(true, global0.x)), vec3<i32>(-_wgslsmith_mod_i32(-1i, var_1.a.d), -2147483647i, ~select(var_0.a.c.x, var_0.a.c.x, true)), _wgslsmith_dot_vec3_i32(reverseBits(var_0.a.c), ~firstTrailingBit(var_0.a.c)), max(_wgslsmith_add_vec4_u32(min(vec4<u32>(var_1.a.b.x, arg_0.x, u_input.b.x, 108305u), var_0.a.e), var_0.a.e), ~vec4<u32>(4294967295u, arg_0.x, 17285u, 46637u) << (select(var_1.a.e, var_0.a.e, global1[_wgslsmith_index_u32(var_1.a.e.x, 5u)]) % vec4<u32>(32u)))), Struct_2(func_3(Struct_2(Struct_1(vec2<f32>(var_1.a.a.x, 297f), vec2<u32>(22295u, 23805u), vec3<i32>(24624i, 1i, var_0.a.d), var_1.a.d, var_1.a.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1056f, -2078f, var_1.a.a.x), vec3<f32>(var_1.a.a.x, 1240f, -1054f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-518f, -1630f, var_0.a.a.x)))).a));
    return vec3<i32>(-24307i, abs(firstLeadingBit(_wgslsmith_sub_i32(-720i, var_0.a.c.x))) & _wgslsmith_clamp_i32(var_1.a.c.x, var_0.a.d, 28777i), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(78405i, _wgslsmith_dot_vec3_i32(vec3<i32>(361i, 1i, abs(0i)), ~vec3<i32>(3024i, -1i, -1i))) | ~vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -4241i, -2147483647i), -vec3<i32>(31916i, -1i, -38183i)), -7295i);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(var_0.x, max(_wgslsmith_dot_vec4_i32(vec4<i32>(1926i, -11511i, 0i, var_0.x), vec4<i32>(var_0.x, 60343i, 37614i, var_0.x)), var_0.x)), ~var_0.x, countOneBits(_wgslsmith_dot_vec3_i32(func_1(u_input.c), func_2(vec3<i32>(0i, -21384i, var_0.x), u_input.c.x, Struct_3(Struct_2(Struct_1(vec2<f32>(361f, -1125f), u_input.b.xy, vec3<i32>(var_0.x, -34012i, 19335i), 1i, vec4<u32>(u_input.a.x, 12910u, u_input.a.x, u_input.a.x))), global0.x, vec3<i32>(62213i, -1i, 1i), u_input.b.xz, Struct_1(vec2<f32>(798f, 1139f), vec2<u32>(65284u, 9274u), vec3<i32>(2147483647i, var_0.x, var_0.x), 10429i, vec4<u32>(22682u, 95253u, 78339u, 55088u))), Struct_1(vec2<f32>(-556f, -285f), u_input.b.xx, vec3<i32>(var_0.x, var_0.x, var_0.x), var_0.x, vec4<u32>(16730u, 1u, 80586u, u_input.c.x))).a.c)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(53169i, -1i), func_3(Struct_2(Struct_1(vec2<f32>(-673f, -505f), vec2<u32>(1u, 11060u), vec3<i32>(19571i, var_0.x, var_0.x), var_0.x, vec4<u32>(u_input.b.x, u_input.b.x, 74693u, 0u))), vec3<f32>(-1932f, 850f, -1310f)).a.c.x), _wgslsmith_div_i32(var_0.x, -41496i))), -vec4<i32>(-var_0.x, max(_wgslsmith_mult_i32(var_0.x, 48615i), 1i), var_0.x, -var_0.x));
    let var_2 = true;
    var_0 = vec2<i32>(~_wgslsmith_sub_i32(abs(var_0.x), -2147483647i), countOneBits(var_1));
    global0 = vec2<bool>(any(vec2<bool>(var_2, !any(vec2<bool>(global0.x, var_2)))), var_2);
    global1 = array<bool, 5>();
    let var_3 = func_3(Struct_2(func_2(vec3<i32>(var_0.x, -7981i, 2147483647i), _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(u_input.c.x, 24963u)), Struct_3(Struct_2(Struct_1(vec2<f32>(879f, 752f), u_input.a, vec3<i32>(var_1, 1i, -1i), -7547i, vec4<u32>(40909u, u_input.a.x, 29005u, 34058u))), all(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], true, global1[_wgslsmith_index_u32(4294967295u, 5u)])), vec3<i32>(var_1, var_0.x, var_1), vec2<u32>(4294967295u, u_input.c.x), func_3(Struct_2(Struct_1(vec2<f32>(142f, -1179f), u_input.a, vec3<i32>(var_0.x, var_0.x, var_1), var_1, vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x))), vec3<f32>(-447f, 1180f, -760f)).a), func_3(Struct_2(Struct_1(vec2<f32>(1524f, -547f), vec2<u32>(u_input.c.x, u_input.b.x), vec3<i32>(var_0.x, 249i, -60240i), 2147483647i, vec4<u32>(69899u, u_input.a.x, 30033u, u_input.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-805f, 1865f, 1000f) + vec3<f32>(772f, 721f, -1918f))).a).a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), 1777f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1775f)), _wgslsmith_f_op_f32(abs(-366f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(503f, 125f, 818f)), vec3<f32>(471f, 1628f, 324f))) - vec3<f32>(_wgslsmith_f_op_f32(-315f + -320f), _wgslsmith_f_op_f32(-2034f - -1436f), _wgslsmith_f_op_f32(f32(-1f) * -323f))))).a.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-381f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), abs(1i));
}

