struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13>;

var<private> global1: vec4<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_5) -> bool {
    let var_0 = _wgslsmith_sub_vec4_u32(countOneBits(reverseBits(vec4<u32>(4294967295u, 4294967295u, ~8237u, 50440u))), select(~vec4<u32>(~u_input.b, reverseBits(u_input.b), 4294967295u << (u_input.b % 32u), 0u), vec4<u32>(u_input.b, firstTrailingBit(u_input.b), 3138u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(35130u, 0u, 0u, u_input.b)), ~(4294967295u << (u_input.b % 32u))), global0[_wgslsmith_index_u32(max(~_wgslsmith_sub_u32(u_input.b, 0u), ~1u), 13u)]));
    global1 = global0[_wgslsmith_index_u32(u_input.b, 13u)];
    global1 = !global0[_wgslsmith_index_u32(~21928u, 13u)];
    global1 = vec4<bool>(all(select(vec4<bool>(arg_1.x, arg_2.a, arg_1.x, true), global0[_wgslsmith_index_u32(select(4361u, u_input.b, false), 13u)], select(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)], arg_1.x))) || any(vec2<bool>(true, true)), any(select(!select(global1.xxw, vec3<bool>(global1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_2.a, true)), global1.zww, select(vec3<bool>(false, true, false), !global1.zzy, true))), true, !(-48201i > firstLeadingBit(arg_2.d)));
    let var_1 = Struct_5(true, select(vec3<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.a.x, u_input.c, arg_2.d), abs(vec4<i32>(arg_2.e.x, arg_2.e.x, arg_2.d, -2147483647i))), 1i), -vec3<i32>(arg_2.d, -1i, u_input.a.x) ^ (max(vec3<i32>(arg_2.d, -33127i, -11073i), vec3<i32>(12505i, 9927i, u_input.a.x)) << (vec3<u32>(u_input.b, u_input.b, var_0.x) % vec3<u32>(32u))), true), -1000f, arg_2.d, -u_input.a);
    return select(arg_2.a, true, arg_2.a);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(vec3<bool>(false, !select(false, false, global1.x), true), _wgslsmith_add_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.b, 17820u, 0u)) | ~(~vec3<u32>(u_input.b, 0u, 39297u)), vec3<u32>(u_input.b, 10820u, abs(~0u))), reverseBits(4294967295u), _wgslsmith_mod_vec3_i32(countOneBits(select(vec3<i32>(-34332i, u_input.c, u_input.c), vec3<i32>(u_input.a.x, -32201i, u_input.c) << (vec3<u32>(u_input.b, 78018u, u_input.b) % vec3<u32>(32u)), global1.xyw)), vec3<i32>(~2147483647i, u_input.a.x ^ 24868i, u_input.c)));
    global1 = !vec4<bool>(any(select(vec3<bool>(true, false, global1.x), vec3<bool>(false, global1.x, true), vec3<bool>(var_0.a.x, global1.x, global1.x))), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1787f, -954f, -838f), vec4<f32>(782f, 377f, -1111f, -462f)), !vec2<bool>(var_0.a.x, true), Struct_5(var_0.a.x, vec3<i32>(var_0.d.x, var_0.d.x, var_0.d.x), 470f, var_0.d.x, vec2<i32>(u_input.c, u_input.c))) && false, global1.x, !var_0.a.x);
    var var_1 = Struct_3(var_0.b.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(782f, 580f)));
    var_1 = Struct_3(8887u);
    return Struct_2(var_0.d.yx, Struct_1(select(select(select(vec3<bool>(false, true, var_0.a.x), var_0.a, vec3<bool>(false, global1.x, global1.x)), !global1.www, vec3<bool>(global1.x, true, false)), select(global1.wyw, var_0.a, select(vec3<bool>(true, false, true), global1.zwx, false)), true), _wgslsmith_clamp_vec3_u32(~var_0.b, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(25770u, u_input.b, var_1.a, u_input.b), vec4<u32>(25672u, u_input.b, var_1.a, 58661u)), u_input.b, var_1.a | 1u), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, var_1.a, var_1.a), var_0.b), ~var_0.b, ~var_0.b)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, var_0.c), var_1.a, abs(20821u)), countOneBits(var_1.a) | ~39251u), vec3<i32>(~(-1i), ~abs(var_0.d.x), 179i)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c << ((var_0.c >> (0u % 32u)) % 32u), reverseBits(_wgslsmith_mult_u32(u_input.b, 4294967295u)), var_1.a, ~(~u_input.b)), firstTrailingBit(~vec4<u32>(u_input.b, 0u, 81543u, 4294967295u))), ~_wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.a.x, -2147483647i, var_0.d.x) ^ var_0.d), vec3<i32>(abs(var_0.d.x), _wgslsmith_sub_i32(5405i, 47061i), -8531i)), var_0.b.xy);
}

fn func_1() -> Struct_4 {
    var var_0 = abs(vec3<u32>(u_input.b, u_input.b, u_input.b));
    var var_1 = Struct_4(Struct_2(-u_input.a, Struct_1(!select(vec3<bool>(global1.x, true, false), global1.zwy, global1.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_0.x, u_input.b), ~vec3<u32>(var_0.x, var_0.x, 4294967295u), abs(vec3<u32>(18800u, 64600u, 51762u))), countOneBits(var_0.x >> (54368u % 32u)), -vec3<i32>(u_input.c, u_input.a.x, -35047i)), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_0.x, u_input.b, var_0.x) ^ vec4<u32>(u_input.b, var_0.x, var_0.x, var_0.x), ~vec4<u32>(4294967295u, var_0.x, u_input.b, 4294967295u), ~vec4<u32>(var_0.x, var_0.x, 1u, 35409u))), _wgslsmith_mod_i32(-34975i, u_input.a.x), select(~(~var_0.zx), abs(~var_0.zy), global1.zy)), func_2(), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -328f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1437f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-974f)) * _wgslsmith_f_op_f32(f32(-1f) * -171f))), true)));
    var_1 = Struct_4(Struct_2(_wgslsmith_add_vec2_i32(min(vec2<i32>(u_input.a.x, u_input.c) << (vec2<u32>(u_input.b, 35533u) % vec2<u32>(32u)), vec2<i32>(-1i, u_input.c) >> (vec2<u32>(u_input.b, 37025u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -1037i), min(vec2<i32>(var_1.a.a.x, var_1.b.d), u_input.a))), Struct_1(global1.wyw, _wgslsmith_sub_vec3_u32(vec3<u32>(37188u, var_1.a.e.x, var_0.x), vec3<u32>(29503u, 28054u, u_input.b)), var_0.x, _wgslsmith_mult_vec3_i32(~var_1.a.b.d, -var_1.a.b.d)), select(_wgslsmith_mod_vec4_u32(max(vec4<u32>(0u, u_input.b, 1u, 17276u), vec4<u32>(7801u, 73727u, 4294967295u, 0u)), ~var_1.b.c), var_1.a.c, !(var_1.c < var_1.c)), -_wgslsmith_dot_vec2_i32(reverseBits(var_1.a.a), vec2<i32>(u_input.c, u_input.c)), firstTrailingBit(var_0.zz & vec2<u32>(1u, 4294967295u)) ^ vec2<u32>(~var_0.x, var_0.x)), var_1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f))))));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.b.b.d.xz, var_1.b.a), i32(-1i) * -1i, 1i, var_1.b.a.x << (var_0.x % 32u)), vec4<i32>(var_1.b.b.d.x, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.a.x, 53082i, 26275i), var_1.b.b.d), _wgslsmith_add_i32(-2147483647i, u_input.a.x)), ~max(vec4<i32>(-1i, u_input.a.x, -1i, u_input.c), vec4<i32>(-1i, 23221i, var_1.a.d, 1i))), vec4<i32>(~(~var_1.a.d), -36191i, -48975i, var_1.b.a.x)), 10615i, _wgslsmith_mod_i32(15049i | (countOneBits(var_1.a.b.d.x) | max(var_1.a.d, -1i)), -_wgslsmith_clamp_i32(u_input.c, 1i, _wgslsmith_sub_i32(u_input.c, -6585i))), 0i);
    var var_3 = ~reverseBits(~var_0.x);
    return Struct_4(func_2(), var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -2673f)))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = !global1.yx;
    global0 = array<vec4<bool>, 13>();
    var var_1 = vec3<bool>(arg_0.a.b.a.x, select(global1.x, all(select(select(vec4<bool>(arg_0.a.b.a.x, true, var_0.x, false), vec4<bool>(true, false, false, global1.x), vec4<bool>(false, global1.x, global1.x, var_0.x)), select(vec4<bool>(true, arg_0.b.b.a.x, true, arg_0.b.b.a.x), vec4<bool>(global1.x, false, arg_0.b.b.a.x, var_0.x), var_0.x), global0[_wgslsmith_index_u32(u_input.b, 13u)])), any(func_1().a.b.a) | (arg_0.a.d < -47244i)), !var_0.x);
    let var_2 = func_3(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(round(1556f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.c)))))), func_2().b.a.xx, Struct_5(var_1.x, -vec3<i32>(u_input.a.x ^ u_input.a.x, abs(-11115i), _wgslsmith_clamp_i32(arg_0.a.d, arg_0.b.d, -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, 1000f))), u_input.a.x, vec2<i32>(u_input.c, firstTrailingBit(-arg_0.b.b.d.x))));
    let var_3 = min(_wgslsmith_clamp_i32(select(arg_0.b.a.x ^ -2147483647i, 0i, arg_0.a.b.a.x), arg_0.a.b.d.x & 16790i, _wgslsmith_div_i32(41775i, -24847i >> (arg_0.a.e.x % 32u))) ^ ~u_input.a.x, -(arg_0.b.a.x ^ _wgslsmith_dot_vec2_i32(u_input.a, ~vec2<i32>(0i, arg_0.b.d))));
    return Struct_1(vec3<bool>(!func_2().b.a.x, false, any(select(!vec3<bool>(false, false, global1.x), global1.zzy, vec3<bool>(false, true, false)))), ~arg_0.a.b.b & ~(vec3<u32>(u_input.b, u_input.b, 0u) << (vec3<u32>(37884u, 4294967295u, 32562u) % vec3<u32>(32u))), min(arg_0.a.b.b.x, 1u), vec3<i32>(~(31406i ^ -arg_0.a.b.d.x), _wgslsmith_add_i32(-283i, (arg_0.b.a.x << (arg_0.b.e.x % 32u)) & firstLeadingBit(1i)), var_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    var var_1 = ~vec4<u32>(4294967295u ^ ~(~var_0.c), 4294967295u, _wgslsmith_sub_u32(1u, ~u_input.b) | ~_wgslsmith_sub_u32(57006u, var_0.c), ~u_input.b);
    global1 = !(!(!vec4<bool>(func_3(vec4<f32>(-1081f, -748f, -2665f, -465f), global1.wz, Struct_5(var_0.a.x, vec3<i32>(u_input.c, 2147483647i, 1i), 2015f, -1i, vec2<i32>(-73198i, 8267i))), all(global0[_wgslsmith_index_u32(var_0.c, 13u)]), global1.x, true)));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(i32(-1i) * -1i, var_0.d.x << (1u % 32u)), var_0.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, -var_0.d.x), -_wgslsmith_div_i32(var_0.d.x, u_input.c), -20220i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.d.x, u_input.c, 2147483647i), ~vec4<i32>(u_input.a.x, var_0.d.x, u_input.c, var_0.d.x))), _wgslsmith_add_vec4_i32(~(-vec4<i32>(u_input.a.x, 0i, -35947i, -13657i)), _wgslsmith_mod_vec4_i32(max(vec4<i32>(var_0.d.x, 22020i, u_input.a.x, u_input.c), vec4<i32>(3668i, u_input.a.x, var_0.d.x, 1i)), vec4<i32>(var_0.d.x, 3236i, -1735i, 2147483647i) | vec4<i32>(var_0.d.x, -32380i, u_input.c, 0i)))));
    let var_3 = firstLeadingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(var_2, -13474i, var_0.d.x, 2147483647i), vec4<i32>(5699i, var_2, var_0.d.x, var_0.d.x)) ^ ~_wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, -2147483647i, 0i, 2147483647i), abs(vec4<i32>(u_input.a.x, u_input.c, var_0.d.x, u_input.c))));
    let var_4 = var_3;
    let var_5 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(32649u, ~_wgslsmith_mult_u32(~u_input.b, u_input.b), _wgslsmith_div_u32(countOneBits(firstTrailingBit(var_1.x)), 1u), 0u), min(23825u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c, var_5.c, var_0.c, var_1.x), vec4<u32>(func_4(Struct_4(Struct_2(vec2<i32>(-51475i, -47914i), Struct_1(vec3<bool>(false, false, true), vec3<u32>(var_5.c, 85821u, 82280u), 4294967295u, var_5.d), vec4<u32>(53415u, 4294967295u, 1u, 16444u), -41754i, vec2<u32>(var_5.b.x, var_5.b.x)), Struct_2(var_0.d.xz, var_5, vec4<u32>(0u, 7945u, 1u, 55664u), 39140i, var_1.ww), 734f)).c, 2691u, 4294967295u, var_0.c))), max(var_3.x, func_4(func_1()).d.x | firstTrailingBit(1i)), select(var_4.wz, var_3.xx, func_4(Struct_4(Struct_2(vec2<i32>(var_2, 2179i), var_5, vec4<u32>(0u, var_0.b.x, var_1.x, var_5.c), var_3.x, var_1.yw), Struct_2(vec2<i32>(-864i, var_2), var_5, vec4<u32>(var_0.b.x, u_input.b, 14499u, 1u), -45670i, vec2<u32>(var_0.c, 16690u)), _wgslsmith_f_op_f32(-189f - 454f))).a.xz), 1770f);
}

