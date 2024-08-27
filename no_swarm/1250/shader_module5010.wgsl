struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, false), -47756i, vec3<u32>(20314u, 36344u, 61527u), vec3<u32>(75300u, 21280u, 6612u), -656f), Struct_1(vec2<bool>(true, true), 2147483647i, vec3<u32>(35390u, 4294967295u, 77377u), vec3<u32>(4294967295u, 107u, 14845u), 229f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> vec3<u32> {
    global2 = Struct_2(Struct_1(select(vec2<bool>(true, select(false, true, arg_3.a.a.x)), vec2<bool>(arg_1 >= 2205f, true), arg_0), _wgslsmith_mod_i32(arg_2, -1i) >> (~51241u % 32u), global2.a.d, global2.a.c & vec3<u32>(arg_3.a.c.x, countOneBits(0u), ~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(627f - 275f) * _wgslsmith_f_op_f32(arg_1 - -825f)))), global2.a);
    let var_0 = reverseBits(reverseBits(arg_2 | select(arg_2 | -1i, ~60800i, true)));
    global0 = array<vec4<f32>, 8>();
    global0 = array<vec4<f32>, 8>();
    let var_1 = Struct_3(Struct_1(global2.b.a, _wgslsmith_add_i32(0i, max(1i, select(arg_2, var_0, true))), arg_3.a.d, global2.a.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.e * arg_1))))), Struct_1(select(vec2<bool>(true, false), !(!vec2<bool>(global2.b.a.x, true)), arg_0), -u_input.a.x, _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(arg_3.b.c.x, global2.b.d.x, 0u)) << (vec3<u32>(59457u, 1u, arg_3.b.c.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.a.c.x, 32030u, 4294967295u), ~global2.a.d)), firstTrailingBit(arg_3.b.d), arg_1), arg_3, countOneBits(~vec4<u32>(~global2.a.c.x, ~global2.a.c.x, _wgslsmith_div_u32(global2.b.d.x, arg_3.a.c.x), 4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -681f));
    return firstLeadingBit(firstLeadingBit(~global2.b.d));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global1 = abs(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_clamp_i32(0i, global2.b.b, firstTrailingBit(global2.a.b))));
    global2 = Struct_2(Struct_1(select(select(select(vec2<bool>(false, true), global2.a.a, global2.b.a.x), global2.a.a, !global2.a.a), global2.a.a, true), u_input.a.x, select(func_3(true, 557f, 20333i, Struct_2(Struct_1(vec2<bool>(global2.a.a.x, global2.b.a.x), -2147483647i, vec3<u32>(4976u, 1u, global2.b.c.x), global2.a.c, -330f), Struct_1(global2.a.a, global2.a.b, vec3<u32>(global2.b.d.x, 21218u, global2.b.d.x), vec3<u32>(global2.b.c.x, global2.b.c.x, global2.b.c.x), 839f))), global2.b.c, false), abs(global2.b.c), -273f), Struct_1(select(!global2.b.a, vec2<bool>(global2.a.a.x, all(vec3<bool>(global2.a.a.x, global2.a.a.x, false))), !vec2<bool>(true, global2.b.a.x)), -1i, ~vec3<u32>(~4294967295u, global2.b.d.x, 1u), select(global2.a.d, global2.a.d, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, -170f)) + global2.b.e)));
    var var_0 = Struct_3(global2.a, global2.a, Struct_2(global2.b, Struct_1(!vec2<bool>(global2.b.a.x, global2.a.a.x), i32(-1i) * -2147483647i, ~(global2.a.d << (global2.a.c % vec3<u32>(32u))), vec3<u32>(firstTrailingBit(global2.a.d.x), func_3(global2.a.a.x, -1391f, u_input.b.x, Struct_2(Struct_1(global2.b.a, global2.a.b, vec3<u32>(13212u, global2.b.d.x, 5818u), vec3<u32>(0u, global2.b.d.x, 56066u), -166f), global2.a)).x, 0u), _wgslsmith_f_op_f32(round(-382f)))), ~_wgslsmith_mult_vec4_u32(min(vec4<u32>(1u, global2.a.d.x, 4294967295u, 91760u) ^ vec4<u32>(1u, global2.b.d.x, 1u, global2.b.c.x), ~vec4<u32>(global2.a.c.x, 58828u, global2.b.d.x, global2.b.c.x)), vec4<u32>(4294967295u, global2.a.d.x, ~global2.a.d.x, 80808u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -570f)))) * global2.b.e));
    var var_1 = Struct_1(global2.b.a, -1i, ~select(~abs(var_0.c.a.d), vec3<u32>(global2.a.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.c.x, 22072u, 4294967295u, global2.a.c.x), var_0.d), ~0u), !(!vec3<bool>(global2.a.a.x, global2.b.a.x, global2.a.a.x))), vec3<u32>(_wgslsmith_mult_u32(~1u, firstLeadingBit(~global2.a.d.x)), _wgslsmith_add_u32(4179u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(var_0.a.c, global2.b.c))), firstLeadingBit(31496u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.e)));
    let var_2 = Struct_3(Struct_1(select(!select(global2.a.a, vec2<bool>(true, var_1.a.x), true), var_0.c.a.a, select(select(vec2<bool>(true, true), vec2<bool>(false, true), var_1.a), global2.a.a, true)), u_input.a.x, vec3<u32>(~50818u, ~var_0.b.d.x, 0u), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, global2.a.c.x), var_0.d.x), _wgslsmith_mod_u32(10385u, var_0.c.a.c.x), ~52317u), var_1.e), Struct_1(vec2<bool>(true, var_0.b.a.x), _wgslsmith_mod_i32(u_input.b.x, var_1.b), vec3<u32>(firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, 43026u, global2.a.c.x)), ~37195u, var_1.d.x << (global2.a.c.x % 32u)), ((global2.a.d >> (global2.b.c % vec3<u32>(32u))) & _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global2.a.d.x, 4294967295u), global2.a.c)) << (~abs(var_1.c) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.e - -362f)) + var_1.e)), var_0.c, _wgslsmith_add_vec4_u32(select(vec4<u32>(global2.a.d.x, global2.a.c.x & 12970u, var_1.c.x, ~var_0.a.d.x), vec4<u32>(global2.b.c.x << (4294967295u % 32u), 37450u, var_0.c.a.c.x & var_1.c.x, 16794u), select(vec4<bool>(false, var_1.a.x, true, true), !vec4<bool>(false, var_0.c.a.a.x, true, var_0.b.a.x), select(vec4<bool>(global2.a.a.x, var_0.a.a.x, var_1.a.x, false), vec4<bool>(false, true, true, true), vec4<bool>(var_1.a.x, var_0.a.a.x, var_1.a.x, var_0.b.a.x)))), (vec4<u32>(1u, var_0.c.a.c.x, global2.a.c.x, 399u) >> (var_0.d % vec4<u32>(32u))) & firstTrailingBit(vec4<u32>(global2.a.d.x, var_0.b.c.x, 0u, var_1.d.x))), _wgslsmith_f_op_f32(1264f - 822f));
    return Struct_1(var_2.c.a.a, var_2.a.b >> (_wgslsmith_sub_u32(15747u, abs(_wgslsmith_clamp_u32(var_1.c.x, global2.a.c.x, 54858u))) % 32u), var_2.a.c, vec3<u32>(~var_2.b.c.x, 4294967295u, firstTrailingBit(~var_0.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-176f))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(global2.b, Struct_1(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(907f, arg_3.e, global2.a.e, -296f))).a, reverseBits(_wgslsmith_clamp_i32(global2.b.b, -31138i, global2.a.b)) >> ((~arg_3.d.x | (4294967295u | arg_3.c.x)) % 32u), ~max(arg_0.d, global2.b.d), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 13911u), min(arg_0.c, vec3<u32>(global2.b.c.x, arg_3.c.x, arg_0.c.x))) >> (vec3<u32>(~4294967295u, 4914u | arg_0.d.x, _wgslsmith_div_u32(arg_3.d.x, 4294967295u)) % vec3<u32>(32u)), 1000f));
    let var_1 = Struct_1(arg_3.a, _wgslsmith_div_i32(-var_0.b.b, arg_3.b) ^ 45742i, ~(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.c.x, 25110u, 19458u), arg_0.d) << (vec3<u32>(arg_3.d.x ^ arg_3.c.x, 0u, ~arg_0.d.x) % vec3<u32>(32u))), vec3<u32>(arg_0.d.x, var_0.b.d.x, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.e, global2.a.e)) + _wgslsmith_f_op_f32(454f + -343f))) * -536f));
    let var_2 = abs(~vec2<u32>(~32576u & _wgslsmith_mult_u32(var_0.b.c.x, var_0.b.d.x), arg_3.d.x));
    var var_3 = arg_3.a;
    var var_4 = Struct_3(arg_0, Struct_1(select(arg_0.a, func_2(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_3.c.x, 8u)])).a, !func_2(vec4<f32>(var_0.a.e, 103f, 252f, -1939f)).a), -5535i, arg_3.c, abs(vec3<u32>(max(67440u, 11196u), ~4294967295u, ~global2.b.c.x)), _wgslsmith_f_op_f32(-arg_1)), Struct_2(Struct_1(!global2.b.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(57934i, 2147483647i, -4908i, 0i), u_input.b), vec4<i32>(2147483647i, -2147483647i, global2.b.b, -2147483647i)), ~var_0.b.d, ~(~vec3<u32>(34462u, arg_0.d.x, 38086u)), 1331f), Struct_1(!(!global2.a.a), arg_3.b, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.x, 17577u, 15803u, 0u), vec4<u32>(var_0.b.d.x, global2.b.d.x, arg_3.d.x, 0u)), 17328u, var_0.a.d.x), ~(~var_1.d), 902f)), select(vec4<u32>(select(var_0.a.c.x, var_2.x, func_2(vec4<f32>(arg_3.e, -737f, 257f, global2.a.e)).a.x), var_0.a.c.x << (var_1.d.x % 32u), abs(~global2.a.c.x), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(49820u, var_0.a.d.x)), vec2<u32>(50042u, arg_3.c.x))), firstTrailingBit(firstLeadingBit(vec4<u32>(var_0.a.c.x, 1u, 37746u, 4294967295u))), true), 357f);
    return Struct_3(func_2(global0[_wgslsmith_index_u32(countOneBits(global2.a.c.x), 8u)]), Struct_1(vec2<bool>(!any(global2.a.a), arg_0.a.x || (false & var_1.a.x)), var_0.a.b, vec3<u32>(~21626u, var_2.x, var_4.b.c.x), vec3<u32>(~global2.a.d.x, 23808u, global2.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.e + 369f) + _wgslsmith_f_op_f32(-674f * -642f)))), Struct_2(Struct_1(select(select(arg_0.a, vec2<bool>(false, false), vec2<bool>(arg_2.x, var_3.x)), var_4.b.a, vec2<bool>(var_4.b.a.x, true)), ~arg_0.b, vec3<u32>(select(var_2.x, 28085u, true), 1u, max(var_4.d.x, arg_3.d.x)), vec3<u32>(1u, var_4.b.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(8562u, arg_3.d.x), var_1.d.yy)), -168f), func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.e, var_0.a.e, arg_1, 384f))))), var_4.d, -271f);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-979f, global2.a.e, -410f, arg_0.a.e))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(764f, arg_0.a.e, arg_3.c.b.e, -142f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(414f, arg_0.a.e, arg_1.e, 462f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.b.e, arg_0.b.e, arg_1.b.e, global2.b.e), global0[_wgslsmith_index_u32(4294967295u, 8u)])))));
    global0 = array<vec4<f32>, 8>();
    global1 = i32(-1i) * -(~2147483647i >> ((global2.b.d.x << (select(20053u, 0u, var_0.a.x) % 32u)) % 32u));
    let var_1 = -max(-29094i, u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_1.c.a.d.x, 8u)]);
    return func_4(Struct_1(arg_1.b.a, u_input.a.x << (~(arg_3.a.d.x >> (4294967295u % 32u)) % 32u), vec3<u32>(5606u | (79856u << (arg_3.b.c.x % 32u)), 0u, ~abs(0u)), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(756f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.c.b.e - -329f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(40895u, arg_0.b.d.x), 8u)]).e)) + -439f), arg_3.b.a, func_2(global0[_wgslsmith_index_u32(~1u, 8u)])).a;
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> vec3<u32> {
    global2 = func_4(func_5(Struct_2(func_4(arg_0, -323f, !global2.b.a, Struct_1(global2.a.a, 28722i, arg_0.c, vec3<u32>(1u, 0u, global2.a.c.x), global2.a.e)).a, global2.b), func_4(Struct_1(func_2(vec4<f32>(1640f, arg_0.e, -444f, 1838f)).a, _wgslsmith_div_i32(arg_0.b, 16924i), vec3<u32>(arg_0.c.x, 0u, 0u), ~vec3<u32>(arg_0.c.x, global2.a.c.x, 4294967295u), _wgslsmith_f_op_f32(sign(arg_0.e))), global2.a.e, vec2<bool>(false, any(vec3<bool>(global2.a.a.x, arg_0.a.x, false))), global2.a), func_5(Struct_2(func_5(Struct_2(arg_0, Struct_1(vec2<bool>(true, true), arg_0.b, global2.a.c, vec3<u32>(38951u, 8116u, arg_0.d.x), arg_1)), Struct_3(arg_0, arg_0, Struct_2(Struct_1(vec2<bool>(arg_0.a.x, global2.a.a.x), u_input.b.x, vec3<u32>(47988u, 1u, 65550u), arg_0.d, -312f), Struct_1(global2.a.a, u_input.a.x, vec3<u32>(arg_0.d.x, 7534u, 0u), global2.b.d, global2.b.e)), vec4<u32>(global2.b.c.x, 63813u, 0u, global2.a.d.x), global2.b.e), arg_0.e, Struct_3(Struct_1(arg_0.a, -2147483647i, vec3<u32>(global2.a.d.x, 1u, 1u), vec3<u32>(84590u, arg_0.c.x, global2.b.c.x), arg_1), Struct_1(global2.a.a, global2.b.b, global2.b.d, global2.b.d, global2.b.e), Struct_2(Struct_1(vec2<bool>(global2.b.a.x, global2.a.a.x), u_input.b.x, vec3<u32>(global2.b.c.x, 62057u, 4294967295u), vec3<u32>(82528u, global2.b.c.x, global2.a.c.x), arg_1), Struct_1(vec2<bool>(arg_0.a.x, false), 2147483647i, vec3<u32>(1u, 0u, 28557u), global2.a.c, 909f)), vec4<u32>(4294967295u, global2.b.d.x, 51021u, global2.b.d.x), arg_0.e)), Struct_1(vec2<bool>(true, arg_0.a.x), -1i, vec3<u32>(arg_0.c.x, global2.b.d.x, arg_0.c.x), arg_0.c, -107f)), Struct_3(func_4(global2.a, -1444f, vec2<bool>(true, arg_0.a.x), Struct_1(global2.a.a, 0i, global2.a.d, vec3<u32>(global2.a.c.x, global2.b.d.x, arg_0.d.x), arg_1)).a, arg_0, func_4(arg_0, -388f, arg_0.a, global2.b).c, vec4<u32>(arg_0.d.x, 0u, 0u, arg_0.c.x), _wgslsmith_f_op_f32(round(arg_0.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_0.e), func_4(func_2(vec4<f32>(-597f, -1343f, arg_1, global2.a.e)), arg_1, global2.b.a, Struct_1(vec2<bool>(global2.b.a.x, false), -54191i, vec3<u32>(1u, global2.a.d.x, 118247u), vec3<u32>(13118u, arg_0.d.x, 0u), global2.b.e))).e, Struct_3(arg_0, arg_0, Struct_2(arg_0, Struct_1(global2.b.a, 2147483647i, global2.b.c, vec3<u32>(global2.b.c.x, global2.b.c.x, 4294967295u), arg_1)), vec4<u32>(~arg_0.d.x, 39512u, ~1u, 1u), arg_1)), _wgslsmith_f_op_f32(-global2.b.e), !arg_0.a, arg_0).c;
    let var_0 = -(~(~(firstTrailingBit(-2147483647i) | max(18694i, arg_0.b))));
    var var_1 = 237f;
    global1 = u_input.b.x;
    let var_2 = select(~_wgslsmith_mult_u32(global2.b.c.x, 19200u), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.c.x, global2.a.d.x), vec3<u32>(1u, 1u, 1u))), func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, arg_1, arg_1, global2.a.e)))))).a.x) > arg_0.d.x;
    return ~(~(~vec3<u32>(global2.b.c.x, global2.a.c.x, global2.a.c.x)) >> (func_3(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, -1000f)) + arg_1), var_0, Struct_2(func_2(global0[_wgslsmith_index_u32(arg_0.d.x, 8u)]), func_5(Struct_2(Struct_1(arg_0.a, arg_0.b, vec3<u32>(arg_0.c.x, arg_0.c.x, 0u), arg_0.c, arg_1), Struct_1(vec2<bool>(global2.a.a.x, arg_0.a.x), -1i, global2.a.c, arg_0.d, arg_1)), Struct_3(Struct_1(vec2<bool>(var_2, true), 1i, global2.a.d, vec3<u32>(1u, 1u, 4294967295u), -745f), Struct_1(arg_0.a, -1i, arg_0.d, vec3<u32>(arg_0.d.x, 1u, global2.a.c.x), global2.a.e), Struct_2(Struct_1(global2.a.a, arg_0.b, vec3<u32>(0u, global2.b.c.x, arg_0.d.x), global2.b.d, arg_0.e), Struct_1(arg_0.a, 39638i, vec3<u32>(0u, 1504u, global2.a.d.x), vec3<u32>(55001u, global2.a.d.x, 4294967295u), 1018f)), vec4<u32>(global2.a.c.x, global2.b.d.x, arg_0.c.x, 0u), 1049f), arg_0.e, Struct_3(arg_0, Struct_1(global2.a.a, var_0, global2.b.c, arg_0.d, arg_1), Struct_2(global2.b, Struct_1(arg_0.a, 7883i, arg_0.c, global2.b.c, arg_0.e)), vec4<u32>(global2.b.d.x, 20102u, 0u, 4294967295u), arg_1)))) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    var var_1 = select(func_6(func_5(Struct_2(arg_0, global2.b), func_4(func_2(vec4<f32>(global2.a.e, global2.a.e, arg_0.e, -1000f)), global2.b.e, func_2(global0[_wgslsmith_index_u32(var_0.d.x, 8u)]).a, var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e)) + _wgslsmith_f_op_f32(min(740f, arg_0.e))), func_4(Struct_1(vec2<bool>(arg_0.a.x, global2.a.a.x), -37667i, var_0.d, arg_0.c, -2001f), _wgslsmith_f_op_f32(select(-217f, -324f, false)), select(var_0.a, global2.b.a, false), func_4(Struct_1(var_0.a, u_input.a.x, vec3<u32>(10083u, 4294967295u, 27315u), vec3<u32>(49543u, var_0.c.x, 19541u), var_0.e), arg_0.e, vec2<bool>(var_0.a.x, arg_0.a.x), var_0).b)), 1259f), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(846f, -759f, 1000f, 524f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(918f, 1148f, var_0.e, var_0.e) * global0[_wgslsmith_index_u32(global2.b.d.x, 8u)]))).c, select(vec3<bool>(!(!arg_0.a.x), true, !all(vec3<bool>(true, var_0.a.x, arg_0.a.x))), !vec3<bool>(false, global2.a.a.x, false), select(select(!vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), !vec3<bool>(false, false, var_0.a.x), all(vec4<bool>(global2.b.a.x, true, arg_0.a.x, arg_0.a.x))), vec3<bool>(true, any(arg_0.a), var_0.a.x), (var_0.e < var_0.e) | all(vec3<bool>(global2.b.a.x, false, false)))));
    return -u_input.a.x;
}

fn func_7(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_1 {
    global1 = _wgslsmith_div_i32(arg_0.c.b.b, ~u_input.a.x);
    let var_0 = func_4(Struct_1(!vec2<bool>(false, global2.b.a.x || global2.a.a.x), ~func_4(Struct_1(global2.b.a, 0i, global2.b.d, global2.a.c, arg_1.x), _wgslsmith_div_f32(arg_0.b.e, -498f), func_4(global2.a, 545f, vec2<bool>(false, false), arg_0.c.a).b.a, func_5(Struct_2(Struct_1(vec2<bool>(true, arg_0.c.a.a.x), 1i, arg_0.a.d, arg_0.a.c, 786f), Struct_1(vec2<bool>(true, arg_0.c.a.a.x), -2109i, arg_0.a.c, arg_0.a.d, arg_1.x)), arg_0, 2202f, Struct_3(Struct_1(vec2<bool>(arg_0.a.a.x, arg_0.a.a.x), global2.a.b, arg_0.c.a.c, arg_0.d.yxw, 162f), Struct_1(arg_0.a.a, 7650i, arg_0.b.d, vec3<u32>(0u, global2.b.d.x, arg_0.b.c.x), arg_1.x), arg_0.c, vec4<u32>(arg_0.d.x, 1u, 23648u, global2.a.c.x), global2.a.e))).a.b, vec3<u32>(32466u, firstLeadingBit(~1456u), _wgslsmith_mod_u32(global2.a.c.x ^ 109522u, _wgslsmith_div_u32(arg_0.a.c.x, arg_0.a.d.x))), vec3<u32>(11458u, 1u, ~1u), arg_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -563f)))), func_5(Struct_2(func_4(global2.a, _wgslsmith_f_op_f32(-1000f - arg_0.a.e), !vec2<bool>(arg_0.b.a.x, arg_0.a.a.x), Struct_1(vec2<bool>(global2.b.a.x, global2.a.a.x), 18328i, vec3<u32>(19662u, global2.b.d.x, 1u), vec3<u32>(4294967295u, 4294967295u, 23571u), global2.a.e)).b, func_4(func_2(arg_1), _wgslsmith_f_op_f32(f32(-1f) * -204f), vec2<bool>(global2.a.a.x, global2.a.a.x), func_2(arg_1)).b), func_4(arg_0.c.b, func_2(_wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(1u, 8u)]))).e, !arg_0.b.a, Struct_1(vec2<bool>(false, true), global2.a.b, arg_0.d.xzy, vec3<u32>(global2.b.c.x, arg_0.b.d.x, 97971u), _wgslsmith_f_op_f32(floor(1719f)))), 1f, arg_0).a, Struct_1(select(vec2<bool>(arg_1.x <= -1713f, !global2.a.a.x), global2.b.a, all(func_4(Struct_1(vec2<bool>(false, false), arg_0.c.b.b, vec3<u32>(69980u, 54344u, 15508u), arg_0.b.d, 893f), 373f, vec2<bool>(global2.b.a.x, global2.a.a.x), global2.b).b.a)), 2147483647i, vec3<u32>(~(18081u | global2.a.c.x), countOneBits(_wgslsmith_mod_u32(arg_0.b.c.x, arg_0.b.d.x)), 36033u), vec3<u32>(0u, arg_0.b.d.x, ~arg_0.b.d.x), arg_1.x)).c;
    let var_1 = all(global2.a.a);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(func_5(var_0, func_4(Struct_1(var_0.b.a, -8800i, global2.b.d, vec3<u32>(arg_0.c.b.c.x, 1u, arg_0.d.x), 1061f), _wgslsmith_f_op_f32(min(var_0.a.e, arg_1.x)), func_4(Struct_1(vec2<bool>(arg_0.c.a.a.x, var_1), -58533i, arg_0.c.b.d, var_0.b.c, 896f), arg_1.x, arg_0.a.a, var_0.a).c.a.a, func_4(Struct_1(arg_0.a.a, 1i, vec3<u32>(3929u, 4294967295u, arg_0.c.b.d.x), vec3<u32>(1u, 126009u, global2.b.d.x), var_0.a.e), -1129f, var_0.a.a, Struct_1(global2.a.a, -1i, global2.a.c, vec3<u32>(0u, var_0.b.d.x, var_0.a.c.x), global2.b.e)).b), -647f, Struct_3(func_4(Struct_1(vec2<bool>(var_0.a.a.x, true), u_input.b.x, var_0.b.d, var_0.a.d, -1271f), global2.a.e, var_0.b.a, Struct_1(vec2<bool>(global2.b.a.x, arg_0.a.a.x), u_input.a.x, arg_0.c.a.c, global2.a.c, -382f)).c.b, var_0.b, func_4(Struct_1(global2.b.a, 43506i, var_0.b.d, vec3<u32>(1u, 42018u, var_0.b.c.x), arg_1.x), -1000f, arg_0.a.a, var_0.a).c, vec4<u32>(global2.a.c.x, global2.b.c.x, var_0.b.d.x, 47551u), _wgslsmith_f_op_f32(f32(-1f) * -1617f))).e)), var_0.b.e);
    var var_3 = func_4(Struct_1(vec2<bool>(_wgslsmith_f_op_f32(global2.b.e + 1000f) >= _wgslsmith_f_op_f32(select(1066f, 717f, true)), any(!vec3<bool>(false, var_0.a.a.x, false))), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.b, 0i, var_0.b.b, u_input.b.x), vec4<i32>(-25417i, -51440i, 24752i, global2.a.b))), func_2(global0[_wgslsmith_index_u32(var_0.b.c.x, 8u)]).d, arg_0.a.d, _wgslsmith_f_op_f32(global2.a.e + _wgslsmith_f_op_f32(f32(-1f) * -817f))), _wgslsmith_f_op_f32(-global2.b.e), vec2<bool>(false, !(!any(vec3<bool>(var_0.b.a.x, var_0.b.a.x, false)))), var_0.a);
    return func_4(func_5(func_4(var_3.c.b, arg_0.b.e, func_4(var_3.c.a, _wgslsmith_div_f32(var_0.a.e, 1000f), func_5(Struct_2(Struct_1(var_0.b.a, 1i, vec3<u32>(global2.a.c.x, 72083u, var_3.a.c.x), arg_0.b.c, global2.b.e), Struct_1(var_0.b.a, var_0.a.b, vec3<u32>(var_0.b.d.x, 4294967295u, var_3.d.x), global2.b.c, -437f)), Struct_3(Struct_1(global2.a.a, 2147483647i, vec3<u32>(5268u, 41163u, global2.b.d.x), global2.b.c, -1216f), arg_0.b, var_3.c, vec4<u32>(var_3.c.a.d.x, var_3.b.c.x, 1u, 0u), -1232f), arg_1.x, arg_0).a, func_2(arg_1)).a.a, var_0.b).c, Struct_3(global2.b, global2.b, var_0, var_3.d & func_4(var_3.a, -457f, var_3.b.a, Struct_1(global2.a.a, var_3.c.a.b, vec3<u32>(12951u, 4294967295u, var_3.b.c.x), var_0.b.c, -477f)).d, var_3.c.a.e), _wgslsmith_f_op_f32(ceil(-192f)), Struct_3(arg_0.b, func_2(_wgslsmith_f_op_vec4_f32(min(global0[_wgslsmith_index_u32(var_3.a.d.x, 8u)], arg_1))), Struct_2(global2.b, Struct_1(vec2<bool>(true, var_3.a.a.x), 32684i, var_3.b.c, vec3<u32>(6140u, var_0.b.d.x, 15910u), -834f)), arg_0.d, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(895f, arg_1.x))))), _wgslsmith_f_op_f32(-arg_1.x), var_3.b.a, var_3.b).b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(func_7(Struct_3(Struct_1(!global2.a.a, func_1(global2.b), vec3<u32>(7856u, 53176u, 67299u), global2.a.c, _wgslsmith_f_op_f32(-global2.b.e)), Struct_1(global2.a.a, 1i, vec3<u32>(85824u, global2.b.d.x, 1u), ~vec3<u32>(global2.a.d.x, global2.a.d.x, 1u), func_2(global0[_wgslsmith_index_u32(41013u, 8u)]).e), func_4(func_2(vec4<f32>(global2.b.e, global2.a.e, -714f, -868f)), 1000f, func_4(Struct_1(vec2<bool>(global2.b.a.x, false), u_input.b.x, vec3<u32>(global2.b.d.x, 38553u, global2.b.c.x), global2.a.d, -1052f), global2.a.e, global2.b.a, global2.a).a.a, func_2(global0[_wgslsmith_index_u32(global2.b.d.x, 8u)])).c, _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2.a.d.x, global2.a.d.x, 0u, 4294967295u), vec4<u32>(global2.a.d.x, global2.b.c.x, 38959u, 27645u)), _wgslsmith_div_vec4_u32(vec4<u32>(global2.a.d.x, global2.b.c.x, global2.b.d.x, global2.a.d.x), vec4<u32>(global2.a.d.x, global2.b.c.x, 36499u, 10246u))), -435f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.e, -152f, global2.a.e, 439f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(648f, -1049f, -1225f, 1000f) * global0[_wgslsmith_index_u32(global2.a.c.x, 8u)])) * global0[_wgslsmith_index_u32(57211u, 8u)])), global2.b);
    global2 = func_4(global2.b, global2.b.e, vec2<bool>(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(global2.b.d.x, 8u)] * global0[_wgslsmith_index_u32(0u, 8u)]) * _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(4294967295u, 8u)] - vec4<f32>(global2.b.e, 814f, 1773f, 1540f)))).a.x, false), func_5(func_4(func_2(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(54159u, 8u)] - global0[_wgslsmith_index_u32(4294967295u, 8u)])), func_2(global0[_wgslsmith_index_u32(~global2.b.c.x, 8u)]).e, global2.a.a, Struct_1(func_7(Struct_3(global2.b, global2.b, Struct_2(global2.b, Struct_1(global2.a.a, global2.a.b, vec3<u32>(global2.b.c.x, 1u, 0u), vec3<u32>(1u, global2.b.c.x, global2.a.c.x), global2.b.e)), vec4<u32>(45059u, global2.a.c.x, 55755u, 23822u), -377f), global0[_wgslsmith_index_u32(20875u, 8u)]).a, u_input.b.x ^ global2.b.b, func_5(Struct_2(global2.b, Struct_1(vec2<bool>(false, global2.a.a.x), u_input.b.x, vec3<u32>(global2.b.c.x, global2.b.d.x, 4294967295u), global2.b.d, 365f)), Struct_3(global2.a, global2.b, Struct_2(global2.b, Struct_1(global2.a.a, global2.a.b, global2.a.c, vec3<u32>(4294967295u, 0u, global2.b.c.x), 889f)), vec4<u32>(global2.b.d.x, 1u, global2.a.d.x, 0u), global2.a.e), global2.b.e, Struct_3(global2.a, global2.b, Struct_2(Struct_1(vec2<bool>(false, true), global2.b.b, global2.b.d, global2.b.c, 167f), Struct_1(global2.a.a, -1i, vec3<u32>(4294967295u, global2.a.d.x, global2.b.c.x), global2.a.c, -1192f)), vec4<u32>(4294967295u, global2.a.c.x, global2.a.c.x, 14389u), global2.a.e)).d, _wgslsmith_mod_vec3_u32(global2.b.d, vec3<u32>(1u, global2.a.c.x, 4294967295u)), _wgslsmith_f_op_f32(abs(global2.a.e)))).c, func_4(Struct_1(func_5(Struct_2(global2.b, global2.a), Struct_3(Struct_1(global2.b.a, -1i, vec3<u32>(4294967295u, 49028u, 4294967295u), global2.a.c, 1036f), global2.a, Struct_2(global2.b, global2.a), vec4<u32>(1u, global2.b.d.x, 0u, global2.a.c.x), -1446f), global2.a.e, Struct_3(global2.b, global2.b, Struct_2(global2.b, global2.a), vec4<u32>(35121u, global2.b.d.x, 37864u, 17145u), global2.b.e)).a, i32(-1i) * -52326i, global2.a.d, countOneBits(global2.a.c), -880f), _wgslsmith_f_op_f32(global2.a.e * 590f), vec2<bool>(all(vec4<bool>(global2.a.a.x, global2.b.a.x, global2.b.a.x, false)), global2.b.a.x), global2.a), global2.a.e, Struct_3(Struct_1(vec2<bool>(global2.b.a.x, global2.a.a.x), u_input.a.x, global2.b.d, vec3<u32>(global2.b.c.x, global2.a.d.x, 6646u), 303f), Struct_1(!global2.a.a, -global2.b.b, global2.b.c, vec3<u32>(1u, global2.a.c.x, 0u), 1387f), func_4(Struct_1(vec2<bool>(false, global2.a.a.x), global2.a.b, vec3<u32>(37455u, 0u, global2.a.d.x), global2.b.d, -359f), -670f, vec2<bool>(false, true), func_7(Struct_3(global2.a, global2.a, Struct_2(Struct_1(global2.a.a, global2.b.b, global2.a.c, global2.b.d, global2.b.e), Struct_1(global2.a.a, 0i, global2.b.d, vec3<u32>(31335u, global2.a.d.x, 4294967295u), 856f)), vec4<u32>(1u, global2.a.d.x, 4294967295u, 39146u), global2.a.e), global0[_wgslsmith_index_u32(4294967295u, 8u)])).c, min(firstTrailingBit(vec4<u32>(global2.a.d.x, global2.a.d.x, global2.a.c.x, global2.b.c.x)), vec4<u32>(20725u, 1u, 0u, 0u) ^ vec4<u32>(global2.b.c.x, global2.a.c.x, 38438u, global2.a.c.x)), -238f))).c;
    var var_0 = global2.b.c.yz;
    var var_1 = _wgslsmith_div_i32(global2.a.b, 0i);
    let var_2 = firstLeadingBit(_wgslsmith_mult_i32(9118i, -1i));
    var var_3 = u_input.b;
    let var_4 = _wgslsmith_clamp_i32(-67300i, ~4526i, -global2.a.b);
    var_3 = ~(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i));
    let var_5 = -1277f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zzw, 0u, -18528i, firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(func_7(Struct_3(global2.b, Struct_1(vec2<bool>(global2.a.a.x, global2.a.a.x), 1i, vec3<u32>(global2.b.d.x, var_0.x, var_0.x), vec3<u32>(0u, global2.b.c.x, 75u), global2.b.e), Struct_2(global2.a, Struct_1(vec2<bool>(global2.a.a.x, global2.a.a.x), -30271i, vec3<u32>(4294967295u, 1u, global2.b.c.x), global2.a.d, 1640f)), vec4<u32>(var_0.x, global2.b.c.x, 4294967295u, var_0.x), var_5), global0[_wgslsmith_index_u32(1u, 8u)]).d.x, global2.b.d.x), _wgslsmith_div_u32(1u, 70474u) >> (_wgslsmith_mult_u32(global2.b.d.x, 0u) % 32u), ~(~var_0.x), ~var_0.x)), _wgslsmith_f_op_f32(-func_7(Struct_3(Struct_1(vec2<bool>(false, false), -50664i, vec3<u32>(var_0.x, 17234u, 4294967295u), vec3<u32>(0u, var_0.x, 36267u), global2.a.e), global2.a, Struct_2(Struct_1(vec2<bool>(true, global2.a.a.x), u_input.b.x, vec3<u32>(var_0.x, var_0.x, global2.b.c.x), vec3<u32>(4294967295u, var_0.x, 0u), var_5), global2.a), vec4<u32>(global2.b.c.x, var_0.x, 4294967295u, global2.b.c.x), _wgslsmith_f_op_f32(var_5 - 399f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.e, var_5, -738f, var_5)))).e));
}

