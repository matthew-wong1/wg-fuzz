struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -8848i;

var<private> global1: vec4<u32>;

var<private> global2: array<vec4<i32>, 20>;

var<private> global3: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> Struct_3 {
    global3 = select(-57724i, ~0i, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, global1.x == 1u, all(vec3<bool>(false, false, true))))));
    var var_0 = min(-vec4<i32>(14208i, u_input.c, ~u_input.c, reverseBits(0i)), vec4<i32>(firstLeadingBit(reverseBits(u_input.c)), u_input.c, u_input.c, u_input.c & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 14307i), vec2<i32>(u_input.b.x, 1i)))) & vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b.x, -15773i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 30871i, 0i), vec3<i32>(u_input.b.x, u_input.b.x, 50614i)), u_input.b.x), u_input.c, -1i << (~u_input.a % 32u), _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, u_input.b.x), -1i));
    let var_1 = _wgslsmith_add_vec2_u32(global1.zw, _wgslsmith_clamp_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_0.x), arg_0.yw)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(global1.x, 15564u), _wgslsmith_div_vec2_u32(vec2<u32>(global1.x, 9638u), firstLeadingBit(global1.zx)), vec2<u32>(_wgslsmith_dot_vec4_u32(arg_0, arg_0), 22855u)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(global1.wy, global1.wx), vec2<u32>(4294967295u, 1u)), abs(~vec2<u32>(u_input.a, 38347u)))));
    var var_2 = countOneBits(countOneBits(arg_1));
    let var_3 = Struct_2(Struct_1(26899u, true, _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(20505u, global1.x), global1.x), _wgslsmith_sub_u32(0u, global1.x))), Struct_1(firstLeadingBit(_wgslsmith_sub_u32(arg_0.x, global1.x)), all(vec4<bool>(true, true, true, true)), 35059u), Struct_1(_wgslsmith_sub_u32(firstLeadingBit(~1u), firstTrailingBit(countOneBits(51671u))), true, _wgslsmith_div_u32(~(~global1.x), 90434u)));
    return Struct_3(var_3.b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<u32>) -> u32 {
    let var_0 = select(vec4<u32>(u_input.a, global1.x, _wgslsmith_add_u32(4294967295u, 0u), 1u) & ~min(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, arg_0.c, 0u, 20054u), vec4<u32>(0u, 20126u, arg_0.a, arg_2.x)), abs(vec4<u32>(arg_0.c, 4294967295u, 4294967295u, 1u))), firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(arg_2.x, _wgslsmith_add_u32(0u, arg_2.x)), ~1u, _wgslsmith_clamp_u32(~0u, 1u, 1u), _wgslsmith_add_u32(~15690u, arg_2.x))), arg_1.x);
    var var_1 = -176f;
    var var_2 = func_2(vec4<u32>(~var_0.x, abs(1u), u_input.a, _wgslsmith_dot_vec3_u32(global1.yyz | ~vec3<u32>(arg_0.c, arg_2.x, u_input.a), select(~var_0.ywy, ~global1.yzz, u_input.a <= 46668u))), u_input.a << (min(abs(35567u), 1u) % 32u));
    return arg_2.x;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    let var_0 = arg_3.x;
    var var_1 = arg_1.b;
    global0 = ~6986i;
    let var_2 = vec2<bool>(true, !arg_2.b);
    global0 = ~u_input.c;
    return i32(-1i) * -_wgslsmith_add_i32(var_0 & arg_3.x, _wgslsmith_sub_i32(u_input.c, u_input.c) << (global1.x % 32u));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> vec2<bool> {
    global0 = func_4(Struct_4(func_2(~(~vec4<u32>(1u, 1u, 0u, u_input.a)), 1u)), Struct_1(global1.x, !select(true, arg_1.x, true) & arg_1.x, reverseBits(~arg_0 ^ _wgslsmith_sub_u32(1u, 0u))), func_2(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a | arg_0, 0u, func_2(vec4<u32>(u_input.a, 49884u, 61283u, 14104u), 1u).a.c, select(36049u, u_input.a, arg_1.x)), reverseBits(~vec4<u32>(arg_0, arg_0, arg_0, 1u))), firstTrailingBit(func_3(Struct_1(global1.x, arg_1.x, u_input.a), vec4<bool>(false, true, arg_1.x, arg_1.x), vec2<u32>(u_input.a, 0u)))).a, _wgslsmith_add_vec3_i32(~(-vec3<i32>(-4715i, 34748i, 1172i) >> (_wgslsmith_add_vec3_u32(global1.xyx, global1.xyx) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.b.x, 1i), -vec3<i32>(u_input.c, u_input.c, -17669i))));
    let var_0 = firstLeadingBit(_wgslsmith_add_i32(2147483647i, max(u_input.b.x, u_input.b.x)));
    var var_1 = all(!vec4<bool>(true, !(!arg_1.x), !(arg_1.x & arg_1.x), _wgslsmith_sub_i32(-19255i, u_input.c) != (-34955i ^ var_0)));
    var var_2 = Struct_3(Struct_1(~min(_wgslsmith_clamp_u32(arg_0, global1.x, u_input.a), global1.x), any(select(arg_1, vec2<bool>(true, true), true)), _wgslsmith_mult_u32(~u_input.a, global1.x)));
    return vec2<bool>(!(!all(vec4<bool>(var_2.a.b, arg_1.x, arg_1.x, arg_1.x))), all(vec2<bool>(true, true)));
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_3) -> f32 {
    var var_0 = func_2(vec4<u32>(_wgslsmith_add_u32(55253u, u_input.a) & ~u_input.a, global1.x, 53000u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, global1.x, arg_3.a.a), firstTrailingBit(global1.xwx))) & (countOneBits(vec4<u32>(global1.x, arg_2, 89990u, global1.x) >> (vec4<u32>(20163u, global1.x, arg_3.a.a, 1u) % vec4<u32>(32u))) & vec4<u32>(23535u, ~u_input.a, 1u, firstTrailingBit(arg_2))), (_wgslsmith_sub_u32(min(arg_2, 28381u), 53717u) >> (select(35671u ^ u_input.a, ~1u, false) % 32u)) ^ arg_3.a.a).a;
    let var_1 = Struct_4(arg_3);
    let var_2 = _wgslsmith_add_vec2_i32(u_input.b, _wgslsmith_clamp_vec2_i32(u_input.b, _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.b.x), vec2<i32>(u_input.c, 2147483647i)), max(u_input.b, u_input.b)) << (~global1.xx % vec2<u32>(32u)), u_input.b));
    var_0 = Struct_1(min(79818u, abs(~(~arg_2))), true, 0u >> (_wgslsmith_mod_u32(1u, ~arg_2) % 32u));
    var var_3 = _wgslsmith_mod_i32(var_2.x, u_input.c);
    return -736f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec3<i32>(select(u_input.c, -_wgslsmith_add_i32(1i, 0i), all(vec3<bool>(false, false, true)) & true), _wgslsmith_div_i32(u_input.b.x, _wgslsmith_clamp_i32(firstTrailingBit(22754i), u_input.b.x << (global1.x % 32u), _wgslsmith_mult_i32(u_input.c, u_input.b.x))), max(_wgslsmith_mod_i32(abs(u_input.c), -1i), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-22905i, 1i)), u_input.b | vec2<i32>(u_input.b.x, 1i)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(false, select(func_1(global1.x | 1u, vec2<bool>(true, false)), vec2<bool>(false, true), vec2<bool>(true, true)), global1.x, func_2(vec4<u32>(_wgslsmith_mult_u32(u_input.a, 4294967295u), 51311u, max(8904u, 36770u), func_3(Struct_1(79857u, true, u_input.a), vec4<bool>(true, false, false, true), vec2<u32>(global1.x, 1u))), global1.x))) * -1485f);
    global0 = u_input.c;
    global0 = -2147483647i;
    let var_2 = false;
    var var_3 = Struct_2(func_2(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 4294967295u), ~vec3<u32>(34430u, 84536u, 1u)), global1.x, 11126u, _wgslsmith_add_u32(~global1.x, 24671u)), ~global1.x).a, Struct_1(22996u, true, ~firstTrailingBit(_wgslsmith_mult_u32(global1.x, 1u))), Struct_1(~countOneBits(u_input.a) & ~u_input.a, var_2, min(min(global1.x, u_input.a), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global1.zz, global1.zw), _wgslsmith_add_u32(u_input.a, u_input.a)))));
    var var_4 = firstTrailingBit(-2147483647i);
    global3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c, -(i32(-1i) * -1i), 52079i), vec2<i32>(func_4(Struct_4(Struct_3(Struct_1(u_input.a, false, var_3.b.a))), var_3.c, var_3.a, -abs(vec3<i32>(var_0.x, var_0.x, u_input.b.x))), u_input.b.x));
}

