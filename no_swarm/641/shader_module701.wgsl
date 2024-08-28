struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<f32, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(27705u, arg_1.c, 0u, arg_1.c)), select(abs(max(u_input.b, vec4<u32>(u_input.a, 0u, 67202u, arg_1.c))), u_input.b, arg_1.b.c)) << (u_input.b % vec4<u32>(32u));
    global0 = select(reverseBits(-vec4<i32>(~arg_1.a.x, -10667i, _wgslsmith_mod_i32(arg_1.d, -39145i), _wgslsmith_mult_i32(arg_1.a.x, arg_1.d))), countOneBits(-vec4<i32>(arg_1.d, 1219i, arg_1.a.x, u_input.c) >> (~_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(arg_1.c, arg_1.c, 48790u, 12563u), var_0) % vec4<u32>(32u))), vec4<bool>(true, arg_1.b.a | false, !(!all(vec4<bool>(arg_1.b.a, false, arg_1.b.a, arg_1.b.a))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_1.a.xx, vec2<i32>(arg_1.d, arg_1.a.x)), 2147483647i) <= -(~u_input.c)));
    let var_1 = vec4<bool>(abs(~(~116131u)) == _wgslsmith_add_u32(arg_1.c, _wgslsmith_dot_vec4_u32(u_input.b, select(var_0, vec4<u32>(arg_1.c, u_input.a, var_0.x, u_input.a), vec4<bool>(arg_1.b.c, true, arg_1.b.c, arg_1.b.a)))), 26081u == _wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~var_0.x, var_0.x), var_0.xxy), any(select(vec3<bool>(true, true, any(vec2<bool>(arg_1.b.c, arg_1.b.a))), vec3<bool>(select(arg_1.b.c, arg_1.b.a, arg_1.b.a), !arg_1.b.c, arg_1.b.b.x > 667f), (arg_1.b.a && arg_1.b.a) || true)), arg_1.b.a);
    var var_2 = ~_wgslsmith_div_i32(u_input.c, countOneBits(~0i));
    return arg_1.d;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b.ywz;
    var var_1 = Struct_5(_wgslsmith_add_i32(min(~(-10061i), u_input.c), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a, 12u)], -1266f))))))), Struct_3(~_wgslsmith_mod_vec3_i32(global0.wyz, vec3<i32>(u_input.c, -13500i, 0i)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(all(vec3<bool>(false, false, false)) & (u_input.b.x < 3573u), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(143849u, 12u)]) != 164f)));
    var var_2 = Struct_5(-2147483647i, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) << (33127u % 32u)), 12u)]), Struct_3(vec3<i32>(var_1.c.a.x, -2147483647i, _wgslsmith_sub_i32(firstTrailingBit(-22491i), func_3(var_1.b, Struct_4(vec3<i32>(u_input.c, -92634i, -18362i), Struct_2(true, vec4<f32>(global1[_wgslsmith_index_u32(6259u, 12u)], -207f, -800f, global1[_wgslsmith_index_u32(0u, 12u)]), var_1.c.c.x, global1[_wgslsmith_index_u32(var_0.x, 12u)]), u_input.a, var_1.a), vec4<f32>(701f, -1442f, global1[_wgslsmith_index_u32(var_0.x, 12u)], global1[_wgslsmith_index_u32(var_0.x, 12u)])))), true, var_1.c.c));
    var_1 = Struct_5(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(560f, var_2.b)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b + 109f))))), Struct_3(-firstLeadingBit(-vec3<i32>(var_1.c.a.x, 17150i, 2147483647i)), true, select(vec2<bool>(false, u_input.b.x < 4294967295u), select(select(var_2.c.c, vec2<bool>(var_1.c.c.x, false), vec2<bool>(false, true)), var_1.c.c, var_2.c.c.x | false), var_1.c.c)));
    var var_3 = Struct_5(~1i ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(-5083i, u_input.c, -14447i), vec3<i32>(~(-2147483647i), ~var_2.a, var_1.a)), 838f, Struct_3(var_1.c.a, false, vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), var_2.c.c.x)), any(vec4<bool>(true, true, true, true)))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(exp2(var_1.b))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.b), global1[_wgslsmith_index_u32(max(74370u, u_input.a), 12u)]))), -161f), 8628u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(1u >> (var_0.x % 32u)), 12u)] - 636f) - var_2.b));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = ~countOneBits(firstLeadingBit(u_input.b.x));
    var_0 = ~_wgslsmith_div_u32(~arg_0.b, _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, firstLeadingBit(11254u)), arg_2.c));
    let var_1 = countOneBits(vec4<i32>(arg_2.d, -_wgslsmith_mod_i32(firstLeadingBit(12092i), ~global0.x), _wgslsmith_mod_i32(-global0.x, func_3(_wgslsmith_f_op_f32(f32(-1f) * -550f), Struct_4(vec3<i32>(arg_2.d, 2147483647i, -2278i), Struct_2(arg_2.b.c, arg_2.b.b, false, global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), u_input.a, 0i), vec4<f32>(global1[_wgslsmith_index_u32(arg_0.b, 12u)], -1560f, arg_1, -426f))), max(u_input.c, global0.x)));
    var var_2 = _wgslsmith_f_op_f32(-arg_2.b.b.x);
    global0 = vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c, _wgslsmith_mod_i32(-2147483647i, u_input.c), arg_2.d ^ 22844i, -36725i)), var_1), ~(~1i), 2147483647i, ~(-2147483647i));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_5 {
    global0 = -vec4<i32>(abs(1i), arg_2.x, -1i, ~(-56147i));
    global1 = array<f32, 12>();
    let var_0 = ~vec3<i32>(u_input.c, ~(~(-18479i)), abs(arg_2.x));
    global0 = _wgslsmith_mod_vec4_i32(min(countOneBits(vec4<i32>(u_input.c ^ -32304i, global0.x << (140741u % 32u), _wgslsmith_div_i32(2147483647i, 15312i), -arg_2.x)), ~vec4<i32>(arg_2.x, -59116i, global0.x, 5074i) >> (~(~u_input.b) % vec4<u32>(32u))), ~((~vec4<i32>(arg_2.x, 0i, var_0.x, u_input.c) | firstTrailingBit(vec4<i32>(u_input.c, arg_2.x, u_input.c, arg_2.x))) >> (min(vec4<u32>(arg_0.b, u_input.a, u_input.a, arg_0.b), u_input.b) % vec4<u32>(32u))));
    let var_1 = Struct_2(arg_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, global1[_wgslsmith_index_u32(35329u, 12u)], arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1160f, arg_0.a.x, -974f, arg_0.a.x))))))), arg_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_4(arg_0, -1004f, Struct_4(var_0, Struct_2(false, vec4<f32>(arg_0.c, global1[_wgslsmith_index_u32(108803u, 12u)], 685f, 840f), arg_1.x, -544f), 75788u, 0i)).c), func_4(func_2(), _wgslsmith_f_op_f32(-arg_0.c), Struct_4(var_0, Struct_2(arg_1.x, vec4<f32>(1264f, 854f, global1[_wgslsmith_index_u32(75222u, 12u)], global1[_wgslsmith_index_u32(9635u, 12u)]), true, global1[_wgslsmith_index_u32(1u, 12u)]), u_input.b.x, global0.x)).a.x)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_2().b, 12u)]))));
    return Struct_5(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -546f))), var_1.b.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -792f) - func_4(arg_0, var_1.d, Struct_4(global0.xzw, var_1, 609u, arg_2.x)).c), 1f))), Struct_3(countOneBits(vec3<i32>(u_input.c, 2147483647i & u_input.c, _wgslsmith_div_i32(-3876i, 1i))), var_1.a, !arg_1.xx));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> Struct_5 {
    global1 = array<f32, 12>();
    let var_0 = func_5(func_4(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(countOneBits(u_input.b.x), 12u)]) * global1[_wgslsmith_index_u32(4294967295u, 12u)]), Struct_4(arg_0.a, Struct_2(true, vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], 152f), any(arg_0.c), _wgslsmith_f_op_f32(1174f * -1400f)), abs(u_input.b.x), arg_2.a.x)), vec4<bool>(arg_0.b, arg_2.c.x, true, arg_2.b && !arg_0.b), vec2<i32>(u_input.c, u_input.c) | -vec2<i32>(0i, 6920i));
    let var_1 = Struct_4(var_0.c.a, Struct_2(true && all(vec3<bool>(var_0.c.c.x, true, true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-507f, global1[_wgslsmith_index_u32(4294967295u, 12u)], -1519f, -397f)))))), arg_2.b, -703f), _wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_dot_vec4_u32(countOneBits(min(vec4<u32>(u_input.a, 71263u, 4294967295u, 1u), u_input.b)), ~(~vec4<u32>(0u, u_input.a, 0u, u_input.a)))), -23818i);
    var var_2 = !any(arg_0.c);
    let var_3 = Struct_2(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-652f, 946f, 823f, global1[_wgslsmith_index_u32(u_input.a, 12u)]))))))), arg_0.b, _wgslsmith_div_f32(270f, _wgslsmith_f_op_f32(196f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(1u, 12u)])) - _wgslsmith_f_op_f32(step(var_1.b.d, -591f))))));
    return func_5(func_2(), vec4<bool>(arg_0.b, arg_2.c.x, any(select(vec3<bool>(var_0.c.c.x, var_1.b.a, false), vec3<bool>(var_1.b.a, false, var_0.c.c.x), vec3<bool>(false, true, true))) | func_5(Struct_1(var_3.b.yw, 4294967295u, 658f), !vec4<bool>(false, var_3.c, var_1.b.a, arg_0.c.x), abs(vec2<i32>(var_0.a, u_input.c))).c.b, false), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-20539i, -2147483647i) ^ vec2<i32>(21032i, arg_0.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(-25290i, var_1.a.x), arg_0.a.zx)) ^ -var_0.c.a.zy);
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: Struct_5, arg_3: Struct_5) -> vec2<f32> {
    let var_0 = (u_input.b.wy >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))) | u_input.b.yz;
    global1 = array<f32, 12>();
    let var_1 = firstLeadingBit(-1i);
    var var_2 = Struct_5(arg_1, 1f, Struct_3(abs(vec3<i32>(-2147483647i, arg_3.c.a.x, reverseBits(arg_1))), any(!vec4<bool>(arg_2.c.b, false, arg_0, true)), func_1(Struct_3(vec3<i32>(arg_2.c.a.x, 1i, -2147483647i), false, vec2<bool>(true, arg_3.c.c.x)), countOneBits(reverseBits(u_input.c)), func_5(func_4(Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(6362u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]), 1u, -428f), -982f, Struct_4(global0.zyw, Struct_2(false, vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], arg_3.b, 611f, arg_2.b), false, arg_2.b), 0u, arg_1)), select(vec4<bool>(arg_2.c.b, arg_3.c.c.x, false, arg_3.c.c.x), vec4<bool>(arg_2.c.c.x, arg_2.c.c.x, arg_0, false), false), arg_3.c.a.zx).c).c.c));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -306f);
    return vec2<f32>(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(975f, 1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(var_0.x, 12u)]) + vec2<f32>(315f, 511f))), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-512f - -1269f) - global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 12u)])), -1190f, Struct_4(arg_2.c.a, Struct_2(!arg_2.c.c.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.b, arg_3.b, var_2.b, -502f))), func_5(Struct_1(vec2<f32>(var_2.b, 1471f), var_0.x, 528f), vec4<bool>(arg_2.c.c.x, arg_2.c.b, false, false), vec2<i32>(-27162i, -1i)).c.b, -781f), select(u_input.a, 4294967295u, func_1(Struct_3(var_2.c.a, true, var_2.c.c), var_1, arg_2.c).c.c.x), -func_3(arg_3.b, Struct_4(vec3<i32>(-11092i, -7171i, 17734i), Struct_2(var_2.c.c.x, vec4<f32>(-1504f, var_2.b, 432f, global1[_wgslsmith_index_u32(u_input.a, 12u)]), arg_3.c.b, var_2.b), var_0.x, var_2.c.a.x), vec4<f32>(331f, -1000f, -301f, global1[_wgslsmith_index_u32(52316u, 12u)])))).a.x, _wgslsmith_div_f32(func_1(Struct_3(global0.xzw, var_1 > 0i, arg_2.c.c), -28733i << (min(var_0.x, 48061u) % 32u), func_1(arg_3.c, reverseBits(var_2.c.a.x), var_2.c).c).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_4(Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(48524u, 12u)], var_2.b), 1u, var_2.b), -1018f, Struct_4(arg_2.c.a, Struct_2(arg_2.c.b, vec4<f32>(arg_2.b, var_2.b, 295f, arg_2.b), arg_0, 1000f), 4641u, arg_2.a)).c, 893f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec2<u32>(~u_input.b.x, u_input.b.x));
    var var_1 = _wgslsmith_div_u32(u_input.a, u_input.a);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_6(false, reverseBits(u_input.c), func_1(Struct_3(vec3<i32>(global0.x, global0.x, 0i), false, vec2<bool>(true, true)), global0.x, Struct_3(global0.xzz, false, vec2<bool>(true, false))), func_5(Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(5969u, 12u)]), 1u, 596f), vec4<bool>(false, false, false, true), vec2<i32>(2147483647i, u_input.c)))) + vec2<f32>(global1[_wgslsmith_index_u32(abs(var_0.x), 12u)], -1397f)))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~var_0.x, min(4294967295u, 4294967295u), ~var_0.x, ~0u), (vec4<u32>(51671u, var_0.x, var_0.x, 23368u) >> (u_input.b % vec4<u32>(32u))) << (max(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), u_input.b) % vec4<u32>(32u))), abs(vec4<u32>(u_input.b.x, u_input.b.x, ~var_0.x, 12634u))), global1[_wgslsmith_index_u32(u_input.a, 12u)]);
    var var_3 = _wgslsmith_mult_u32(var_0.x, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(floor(func_4(Struct_1(var_2.a, var_0.x, global1[_wgslsmith_index_u32(u_input.a, 12u)]), -285f, Struct_4(global0.xzy, Struct_2(false, vec4<f32>(var_2.a.x, global1[_wgslsmith_index_u32(var_2.b, 12u)], 370f, var_2.c), true, -2088f), 4294967295u, -2147483647i)).a)), u_input.a, global1[_wgslsmith_index_u32(~682u, 12u)]), -513f, Struct_4(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0.x, u_input.c, -2147483647i), vec4<i32>(5488i, u_input.c, 933i, u_input.c)), -27226i, u_input.c), Struct_2(all(vec3<bool>(false, false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, -1875f, 255f, global1[_wgslsmith_index_u32(var_0.x, 12u)])), true, _wgslsmith_f_op_f32(select(var_2.a.x, var_2.c, false))), max(~var_0.x, _wgslsmith_sub_u32(26054u, u_input.b.x)), u_input.c)).b);
    var_1 = (var_2.b ^ var_0.x) & 1u;
    var_3 = var_0.x;
    let var_4 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, ~(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(10717i, 25467i, 2960i, -10885i), vec4<i32>(u_input.c, -1i, global0.x, 0i), vec4<i32>(u_input.c, var_4, 12700i, 26033i)) << (u_input.b % vec4<u32>(32u)))));
}

