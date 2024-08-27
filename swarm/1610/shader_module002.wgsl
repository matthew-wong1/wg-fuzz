struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-14567i, arg_1.b.x, ~global0.b.x), _wgslsmith_mod_vec3_i32(~(~arg_0.b.yyw), vec3<i32>(-arg_1.b.x, u_input.b.x << (55621u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-2001i, -61325i), vec2<i32>(19717i, 18254i))) << (~(~vec3<u32>(u_input.c, 0u, arg_0.e)) % vec3<u32>(32u))), -_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(u_input.a, -2147483647i, 0i)), -arg_2.c.b.zyx, ~arg_1.b.xwz) | arg_1.b.zyx);
    let var_1 = firstLeadingBit(~arg_2.b.b.xw);
    global0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0.b, countOneBits(arg_1.b)), arg_2.c.b & (vec4<i32>(55325i, global0.b.x, -35507i, -2147483647i) ^ arg_1.b)) < global0.b.x, ~(~arg_0.b), arg_1.a, arg_0.d, firstLeadingBit(~_wgslsmith_mult_u32(~arg_1.e, 4294967295u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(f32(-1f) * -354f), arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-363f)) + global0.d))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(903f + _wgslsmith_f_op_f32(floor(arg_1.d))), _wgslsmith_f_op_f32(f32(-1f) * -1184f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.d), 1845f)), 1667f))));
    let var_3 = arg_0.c;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> vec4<i32> {
    var var_0 = !vec2<bool>(global0.a, func_3(Struct_1(!arg_0.a, vec4<i32>(arg_2.b.b.x, u_input.a, u_input.b.x, arg_2.b.b.x), !arg_2.c.a, -1373f, 0u), arg_0, arg_2));
    let var_1 = Struct_2(76155u, Struct_1((_wgslsmith_dot_vec4_i32(arg_2.c.b, vec4<i32>(-1i, 1i, u_input.d, 0i)) != arg_0.b.x) | any(vec3<bool>(true, false, true)), global0.b, false, _wgslsmith_f_op_f32(ceil(global0.d)), arg_2.c.e), arg_2.b);
    var var_2 = ~arg_0.e;
    var_0 = select(vec2<bool>(!func_3(var_1.b, arg_2.c, Struct_2(1u, arg_0, arg_0)), true), select(!(!vec2<bool>(true, global0.a)), select(vec2<bool>(arg_0.a, true), select(select(vec2<bool>(var_0.x, false), vec2<bool>(true, true), vec2<bool>(true, var_0.x)), select(vec2<bool>(false, true), vec2<bool>(false, var_1.b.c), vec2<bool>(var_1.b.c, true)), global0.c), !vec2<bool>(true, var_0.x)), !(!func_3(arg_2.c, Struct_1(arg_2.b.a, vec4<i32>(var_1.c.b.x, arg_2.c.b.x, 0i, 1i), false, 1000f, var_1.b.e), Struct_2(19254u, Struct_1(true, vec4<i32>(-18627i, -29263i, -2147483647i, 14737i), false, global0.d, 4294967295u), arg_0)))), false);
    var var_3 = global0.b.wyw;
    return ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, arg_2.b.b.x, var_1.b.b.x), vec3<i32>(11391i, 0i, arg_3)) << (min(~var_1.a, ~1u) % 32u), ~(~(21112i ^ arg_2.b.b.x)), -1i, 15003i);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(max(max(arg_0.x, ~(~2032u)), 1u), Struct_1(false, reverseBits(vec4<i32>(global0.b.x, u_input.b.x, u_input.a, global0.b.x) | global0.b), all(!vec4<bool>(global0.a, global0.c, true, true)) || any(!vec4<bool>(global0.a, false, global0.c, true)), _wgslsmith_f_op_f32(-335f - global0.d), ~_wgslsmith_mod_u32(arg_0.x, arg_0.x)), Struct_1(false, global0.b, ~firstLeadingBit(u_input.a) > min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 0i, 1i), vec3<i32>(-13461i, global0.b.x, u_input.d)), firstLeadingBit(1i)), _wgslsmith_f_op_f32(f32(-1f) * -172f), u_input.c));
    global0 = Struct_1(global0.a, ~max(var_0.b.b, -vec4<i32>(global0.b.x, var_0.c.b.x, var_0.b.b.x, u_input.b.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, global0.e, 47271u, 1u), vec4<u32>(u_input.c, global0.e, 52624u, var_0.a)) % vec4<u32>(32u))), false, 198f, _wgslsmith_mult_u32((92497u << (~u_input.c % 32u)) & 4294967295u, _wgslsmith_add_u32(1u, u_input.c)));
    global0 = Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.d, -129f, false))) <= 105f), func_4(Struct_1(var_0.b.a, _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(var_0.c.b.x, u_input.a, var_0.c.b.x, u_input.d)), vec4<i32>(0i, -35156i, 26515i, 1i), select(vec4<i32>(3678i, -15854i, u_input.b.x, -59016i), var_0.c.b, true)), func_3(var_0.c, var_0.b, var_0), global0.d, global0.e), _wgslsmith_f_op_f32(abs(-1954f)), var_0, 1i), true, global0.d, 4294967295u);
    let var_1 = var_0.b;
    let var_2 = vec2<i32>(_wgslsmith_div_i32(20579i, global0.b.x), -_wgslsmith_mod_i32(0i & -var_1.b.x, reverseBits(reverseBits(23861i))));
    return var_1;
}

fn func_1(arg_0: bool, arg_1: u32) -> vec2<u32> {
    global0 = func_2(~(abs(abs(vec2<u32>(arg_1, 1u))) ^ vec2<u32>(44670u, ~25017u)));
    global0 = func_2(select(~(~vec2<u32>(u_input.c, arg_1) | vec2<u32>(20913u, 20306u)), ~vec2<u32>(1u, 45129u), select(select(vec2<bool>(arg_0, true), select(vec2<bool>(global0.c, global0.a), vec2<bool>(global0.c, true), vec2<bool>(false, true)), !vec2<bool>(global0.a, arg_0)), vec2<bool>(true, false), false)));
    global0 = func_2(~(~countOneBits(vec2<u32>(1u, arg_1) >> (vec2<u32>(arg_1, u_input.c) % vec2<u32>(32u)))));
    let var_0 = -23959i;
    let var_1 = func_2(countOneBits(vec2<u32>(10595u, 14760u)));
    return vec2<u32>(~_wgslsmith_add_u32(~(~54329u), 28886u), 0u);
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_1 {
    global0 = func_2(_wgslsmith_sub_vec2_u32(min(vec2<u32>(1u, arg_2.x) << (~arg_1 % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u) & vec2<u32>(global0.e, 760u), ~arg_2.xy)), min(abs(arg_1), select(arg_3.xy, arg_2.yx, global0.c) & arg_3.wy)));
    global0 = Struct_1(true, firstTrailingBit(global0.b), true, arg_0, 4294967295u);
    global0 = func_2(firstLeadingBit((vec2<u32>(arg_3.x, 97995u) << (vec2<u32>(arg_3.x, arg_3.x) % vec2<u32>(32u))) >> (select(vec2<u32>(u_input.c, global0.e), vec2<u32>(62402u, 423u), vec2<bool>(true, global0.a)) % vec2<u32>(32u))));
    var var_0 = _wgslsmith_f_op_f32(-arg_0);
    global0 = func_2(select(arg_2.zz, ~abs(arg_3.yx), false));
    return Struct_1(false, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(61508i, global0.b.x, global0.b.x, global0.b.x) | vec4<i32>(0i, global0.b.x, -25106i, 0i)), vec4<i32>(i32(-1i) * -29039i, -5368i, abs(global0.b.x), u_input.b.x)), _wgslsmith_mult_vec4_i32(max(~vec4<i32>(13813i, 0i, 2147483647i, 1485i), global0.b), vec4<i32>(-25874i, _wgslsmith_div_i32(global0.b.x, 2147483647i), -36027i, u_input.b.x))), global0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(-global0.d))))), ~arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(global0.d, _wgslsmith_add_vec2_u32(~(~(~vec2<u32>(u_input.c, u_input.c))), min(func_1(false, 14407u), ~vec2<u32>(10751u, global0.e)) >> ((~vec2<u32>(u_input.c, 0u) >> ((vec2<u32>(4294967295u, 0u) | vec2<u32>(1u, global0.e)) % vec2<u32>(32u))) % vec2<u32>(32u))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(125882u, global0.e, 4294967295u)), ~vec3<u32>(37262u, global0.e, 53571u)), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 50877u, global0.e), vec3<u32>(14885u, global0.e, u_input.c))), min(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(98405u, 4294967295u, u_input.c, 41961u)), countOneBits(select(vec4<u32>(4294967295u, global0.e, u_input.c, 4460u), vec4<u32>(global0.e, 4294967295u, global0.e, global0.e), global0.a))), firstTrailingBit(~(vec4<u32>(global0.e, 4294967295u, 32135u, 59079u) & vec4<u32>(19221u, 4294967295u, 1u, global0.e)))));
    global0 = Struct_1(true, vec4<i32>(1i, global0.b.x, u_input.b.x & _wgslsmith_clamp_i32(i32(-1i) * -1i, ~u_input.b.x, global0.b.x), u_input.a), func_5(global0.d, vec2<u32>(~1701u, global0.e >> (61347u % 32u)) ^ vec2<u32>(~global0.e, countOneBits(global0.e)), vec3<u32>(_wgslsmith_div_u32(4294967295u, global0.e), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global0.e), vec2<u32>(u_input.c, 0u)), 0u) ^ firstTrailingBit(vec3<u32>(u_input.c, global0.e, global0.e)), max(_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.e, 27190u, global0.e, 3539u), _wgslsmith_mod_vec4_u32(vec4<u32>(52009u, global0.e, global0.e, 4294967295u), vec4<u32>(global0.e, u_input.c, global0.e, u_input.c))), max(~vec4<u32>(global0.e, 10275u, 0u, 3786u), _wgslsmith_add_vec4_u32(vec4<u32>(global0.e, 4294967295u, 0u, global0.e), vec4<u32>(global0.e, u_input.c, 93298u, 52502u))))).c, global0.d, ~35784u);
    global0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.d))) * global0.d)), firstLeadingBit(vec2<u32>(u_input.c, u_input.c)), _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(74338u, u_input.c, 91605u), vec3<u32>(u_input.c, global0.e, 23778u)), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(48567u, u_input.c, 1768u), vec3<u32>(4294967295u, 4294967295u, u_input.c) >> (vec3<u32>(1u, u_input.c, u_input.c) % vec3<u32>(32u)), vec3<u32>(1u, u_input.c, global0.e))), firstTrailingBit(abs(countOneBits(~vec4<u32>(25564u, global0.e, 86736u, u_input.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(732f * _wgslsmith_f_op_f32(func_5(global0.d, vec2<u32>(u_input.c, 57648u), vec3<u32>(54104u, 39533u, 15363u), vec4<u32>(global0.e, 0u, 52315u, global0.e)).d * global0.d)) + _wgslsmith_f_op_f32(min(-983f, 679f))), countOneBits(firstTrailingBit(global0.e)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.d))) - _wgslsmith_f_op_f32(-369f * _wgslsmith_div_f32(global0.d, global0.d))), _wgslsmith_div_f32(-140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1789f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1668f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(-global0.d)), 1531f))), global0.e);
}

