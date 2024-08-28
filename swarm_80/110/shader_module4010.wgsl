struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, vec3<u32>(1u, 4294967295u, 1u), 1u, vec2<i32>(14316i, -15305i)), vec3<u32>(73868u, 103336u, 54489u), Struct_1(false, vec3<u32>(36029u, 0u, 43866u), 4294967295u, vec2<i32>(1i, 2147483647i)), vec3<i32>(-16003i, -1i, i32(-2147483648)));

var<private> global1: i32 = 1i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>) -> i32 {
    let var_0 = abs(firstTrailingBit(44559u));
    var var_1 = Struct_2(Struct_1(any(!vec4<bool>(true, global0.a.a, arg_0.x, true)), vec3<u32>(~select(4294967295u, var_0, false), ~_wgslsmith_mult_u32(13946u, u_input.a), countOneBits(34326u)), 55126u, ~_wgslsmith_mult_vec2_i32(~global0.c.d, global0.a.d << (global0.a.b.zy % vec2<u32>(32u)))), global0.a.b, Struct_1(!all(!vec4<bool>(arg_0.x, true, true, arg_0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(~var_0, 0u, global0.b.x), _wgslsmith_sub_vec3_u32(u_input.d, u_input.d) & reverseBits(global0.b)), 1u, firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.b >> (u_input.d.zz % vec2<u32>(32u)), global0.a.d | vec2<i32>(-1i, -1i), _wgslsmith_mult_vec2_i32(global0.a.d, vec2<i32>(u_input.c, -1i))))), global0.d);
    let var_2 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(abs(685f)), any(vec3<bool>(global0.a.a, true, false)) && true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(387f - -1187f) * _wgslsmith_f_op_f32(max(-1000f, 846f)))))));
    var_1 = Struct_2(var_1.c, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global0.a.b, arg_1), _wgslsmith_clamp_vec3_u32(u_input.d, u_input.d, var_1.b)), ~11338u), _wgslsmith_mult_u32(~arg_1.x, abs(global0.c.c)) << (var_1.b.x % 32u), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(18340u, 20129u), _wgslsmith_clamp_u32(1u, global0.c.c, 1u), ~var_1.a.b.x)), Struct_1(!(arg_0.x || any(vec2<bool>(false, true))), vec3<u32>(~min(arg_1.x, global0.c.c), arg_1.x, ~var_1.a.b.x | _wgslsmith_dot_vec3_u32(var_1.c.b, vec3<u32>(var_0, 1u, global0.b.x))), 1u, _wgslsmith_add_vec2_i32(~global0.d.xy, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(global0.c.d, vec2<i32>(global0.c.d.x, 2147483647i)), _wgslsmith_clamp_vec2_i32(var_1.d.xy, vec2<i32>(0i, 1i), vec2<i32>(-36739i, u_input.c))))), vec3<i32>(~(global0.a.d.x & 0i) >> (u_input.d.x % 32u), 34281i, firstLeadingBit(_wgslsmith_mod_i32(u_input.c, global0.d.x)) | -28395i));
    var_1 = Struct_2(var_1.c, _wgslsmith_mod_vec3_u32(select(var_1.b, vec3<u32>(~43259u, ~var_1.b.x, _wgslsmith_div_u32(14183u, global0.b.x)), vec3<bool>(arg_0.x, !arg_0.x, false)), vec3<u32>(firstTrailingBit(var_0), 14147u, var_0)), Struct_1(global0.a.a, _wgslsmith_sub_vec3_u32(vec3<u32>(14031u, reverseBits(0u), _wgslsmith_sub_u32(var_1.b.x, 67750u)), global0.a.b), _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(41557u, global0.b.x, 53486u), countOneBits(u_input.d)), abs(arg_1.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.d.x, 1i), u_input.b)), global0.d);
    return _wgslsmith_div_i32(var_1.d.x, countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, var_1.d.x, 0i, var_1.a.d.x) >> ((vec4<u32>(0u, 4294967295u, var_1.a.b.x, var_0) << (vec4<u32>(arg_1.x, 1u, arg_1.x, var_1.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<i32>(-1i, -49184i, global0.a.d.x, 2147483647i) >> ((vec4<u32>(0u, 51158u, 45141u, u_input.a) | vec4<u32>(u_input.a, var_1.a.b.x, 103789u, global0.b.x)) % vec4<u32>(32u)))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> u32 {
    global0 = Struct_2(global0.c, _wgslsmith_add_vec3_u32(arg_0.b, arg_0.b), global0.a, _wgslsmith_mod_vec3_i32(global0.d, _wgslsmith_div_vec3_i32(global0.d, -abs(global0.d))));
    let var_0 = arg_1;
    var var_1 = vec3<u32>(u_input.d.x, arg_1, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.zx, vec2<u32>(u_input.d.x, global0.c.c)), ~u_input.d.xy) ^ abs(global0.a.b.zy), global0.c.b.zz));
    var var_2 = ~(_wgslsmith_add_i32(countOneBits(-4185i), func_3(vec2<bool>(arg_0.a, arg_0.a), vec3<u32>(arg_1, arg_1, u_input.a))) & arg_0.d.x);
    var var_3 = Struct_2(Struct_1(true, firstTrailingBit(global0.b), abs(_wgslsmith_add_u32(firstLeadingBit(var_1.x), 1u)), vec2<i32>(_wgslsmith_mult_i32(arg_0.d.x, select(-46435i, arg_0.d.x, true)), -2147483647i)), vec3<u32>(var_1.x, firstLeadingBit(reverseBits(abs(65637u))), 40794u), global0.a, ~global0.d);
    return ~23751u;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    global0 = Struct_2(global0.a, abs(vec3<u32>(u_input.d.x, ~arg_0 & (arg_0 ^ arg_0), ~_wgslsmith_dot_vec4_u32(vec4<u32>(34979u, u_input.d.x, u_input.d.x, arg_0), vec4<u32>(arg_0, 42106u, arg_0, u_input.a)))), global0.a, _wgslsmith_clamp_vec3_i32(min(-_wgslsmith_mult_vec3_i32(global0.d, global0.d), -global0.d), ~reverseBits(abs(vec3<i32>(global0.a.d.x, u_input.c, global0.d.x))), -vec3<i32>(17059i, global0.a.d.x, global0.a.d.x) & ~(vec3<i32>(0i, 2147483647i, u_input.b.x) >> (global0.c.b % vec3<u32>(32u)))));
    let var_0 = true;
    global0 = Struct_2(Struct_1(all(select(select(vec3<bool>(global0.c.a, global0.c.a, global0.a.a), vec3<bool>(false, var_0, false), vec3<bool>(false, true, true)), vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, var_0))), vec3<u32>(~(~4294967295u), 20215u, ~global0.c.b.x), global0.c.b.x, _wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(u_input.c), global0.d.x), vec2<i32>(1i ^ global0.c.d.x, 1i))), u_input.d, global0.a, vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(-2147483647i, -75061i), ~global0.d.x)), 0i, -2147483647i));
    var var_1 = ~(~(~vec4<u32>(arg_0, 1u, arg_0, global0.c.b.x) & (vec4<u32>(arg_0, 4294967295u, global0.a.b.x, 1u) << (vec4<u32>(73055u, 4294967295u, 4294967295u, u_input.a) % vec4<u32>(32u))))) & vec4<u32>(countOneBits(4294967295u), ~4294967295u >> (~global0.c.b.x % 32u), 94182u, global0.c.b.x);
    var_1 = select(min(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_0, global0.b.x, 0u, 52429u)), ~vec4<u32>(30527u, 27247u, 4294967295u, 27182u)) << (firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 18722u, global0.c.b.x, global0.b.x), vec4<u32>(24991u, 35083u, var_1.x, 52363u))) % vec4<u32>(32u)), vec4<u32>(45805u, u_input.a, arg_0 & ~arg_0, global0.c.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, _wgslsmith_mult_u32(select(global0.b.x, u_input.d.x, false), u_input.a << (u_input.d.x % 32u)), _wgslsmith_sub_u32(73131u, _wgslsmith_add_u32(0u, global0.a.c))), vec4<u32>(~firstLeadingBit(0u), ~(~u_input.d.x), min(~u_input.d.x, ~40547u), ~124981u >> ((arg_0 << (var_1.x % 32u)) % 32u)), ~select(~vec4<u32>(29756u, var_1.x, var_1.x, 0u), ~vec4<u32>(global0.b.x, global0.b.x, u_input.a, arg_0), true)), select(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, global0.c.a, global0.a.a, global0.c.a)), !vec4<bool>(true, global0.a.a, var_0, global0.c.a), true), vec4<bool>(true, global0.c.a, var_0 | var_0, 1235f > arg_1.x), true), vec4<bool>(!(!global0.a.a), any(!vec3<bool>(false, true, var_0)), true, select(all(vec2<bool>(var_0, global0.c.a)), 26111u > global0.c.b.x, true)), var_0));
    return Struct_1(!(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(abs(arg_1.x))) == arg_1.x), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 123217u), global0.c.c >> (5208u % 32u)), reverseBits(reverseBits(u_input.a)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, var_1.x, var_1.x), vec4<u32>(34282u, 4294967295u, 0u, global0.a.c))) & _wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.a, var_1.x, 87169u) ^ u_input.d), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 17344u, 914u), ~var_1.yww)), 30879u, global0.c.d);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_div_u32(79753u, _wgslsmith_mod_u32(1u, ~u_input.a) << (func_2(Struct_1(true, arg_0.b, 1u, vec2<i32>(global0.d.x, -44208i)), arg_0.b.x) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-758f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-333f * _wgslsmith_f_op_f32(floor(882f))) - -999f), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1124f))) * 1f)));
    global0 = Struct_2(Struct_1(false, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.b, ~var_0.b), var_0.b), ~(~(var_0.b.x << (var_0.c % 32u))), _wgslsmith_clamp_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 1i), u_input.b)), -func_4(4294967295u, vec4<f32>(1492f, 410f, 1662f, -763f)).d, select(~arg_0.d, u_input.b, global0.c.a))), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, max(~global0.c.c, 0u), u_input.a), ~vec3<u32>(arg_0.c, _wgslsmith_clamp_u32(u_input.d.x, var_0.b.x, 0u), global0.a.b.x)), func_4(4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(1254f)), -2696f, _wgslsmith_f_op_f32(603f - -1000f), -336f))), -global0.d);
    var var_1 = vec4<i32>(firstLeadingBit(-2147483647i), ~var_0.d.x, var_0.d.x, 39012i);
    var_1 = vec4<i32>(-1i) * -vec4<i32>(~func_4(56413u, vec4<f32>(1460f, -1484f, 480f, -1021f)).d.x, 0i, u_input.b.x, 2147483647i << (_wgslsmith_dot_vec3_u32(vec3<u32>(105437u, global0.b.x, 73577u), vec3<u32>(34539u, 19344u, var_0.b.x)) % 32u));
    var_1 = -vec4<i32>(_wgslsmith_add_i32(var_0.d.x, (26439i ^ var_0.d.x) & 1i), firstLeadingBit(2147483647i), abs(~1i), func_4(countOneBits(global0.a.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(327f, -143f, 685f, -1071f) + vec4<f32>(1000f, -1752f, -2502f, 663f))).d.x & arg_0.d.x);
    return func_4(u_input.d.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1542f, -582f, -305f, -1000f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 1000f, -299f, 341f)))))), vec4<f32>(1f, 1f, 1f, 1f), !(!vec4<bool>(var_0.a, var_0.a, global0.a.a, global0.c.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_1(global0.c), vec3<u32>(32393u, min(u_input.d.x, global0.a.c), _wgslsmith_dot_vec4_u32(max(vec4<u32>(global0.b.x, 4294967295u, u_input.a, global0.c.b.x), vec4<u32>(103963u, 1u, global0.b.x, global0.a.c)) | vec4<u32>(global0.b.x, u_input.a, global0.b.x, u_input.a), abs(~vec4<u32>(u_input.a, 47551u, u_input.a, global0.c.b.x)))), global0.a, select(~countOneBits(global0.d), firstTrailingBit(vec3<i32>(abs(u_input.b.x), _wgslsmith_sub_i32(1i, u_input.c), -global0.d.x)), vec3<bool>(false, true, global0.c.a)));
    var var_0 = _wgslsmith_clamp_u32(6130u, 70046u, _wgslsmith_div_u32(0u, ~global0.c.c));
    let var_1 = !vec4<bool>(all(!vec4<bool>(global0.c.a, true, global0.a.a, false)) | true, global0.c.a, global0.c.a, !(!(true | global0.c.a)));
    var var_2 = ~(~0u) >> (u_input.a % 32u);
    var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global0.c.c, global0.c.b.x), global0.b.x, min(firstTrailingBit(1505u), countOneBits(u_input.d.x)), _wgslsmith_clamp_u32(60058u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(30821u, global0.c.b.x)), global0.b.x)), ~vec4<u32>(69517u, u_input.d.x, max(1u, 1u), 4294967295u));
    global0 = Struct_2(Struct_1(global0.a.a & global0.c.a, func_4(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(ceil(-1579f)), _wgslsmith_f_op_f32(-176f * -251f), -345f, _wgslsmith_f_op_f32(abs(-753f)))).b, abs(u_input.d.x), global0.c.d), global0.a.b, func_4(select(_wgslsmith_dot_vec2_u32(u_input.d.yx, ~u_input.d.yz), u_input.d.x, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -656f), 1f, _wgslsmith_f_op_f32(1038f + -187f), -575f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2709f, -272f, -409f, 108f))), vec4<f32>(-1031f, -1143f, -253f, 1498f)))), -vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, -53988i, 4739i, 2147483647i), firstTrailingBit(vec4<i32>(1i, -2147483647i, global0.d.x, global0.a.d.x))), ~_wgslsmith_add_i32(global0.a.d.x, u_input.b.x)));
    var var_3 = func_4(global0.a.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1719f), 521f, _wgslsmith_f_op_f32(f32(-1f) * -1574f), -670f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1476f, 102f, 374f, -1688f) + vec4<f32>(-1918f, -581f, -1412f, -1159f))))));
    var_3 = func_4(~(~0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(413f, 1000f, -1000f, 1509f))))));
    let var_4 = any(!select(var_1.wy, var_1.yz, vec2<bool>(false, var_1.x))) | (true || any(var_1.yyw));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_3.b.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-180f, 1000f, 427f, -1000f), vec4<f32>(625f, -1000f, -734f, -1921f), var_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(473f, -119f, -751f, -2080f) - vec4<f32>(-484f, -431f, 360f, 853f))), false))).d.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-239f, -1048f), _wgslsmith_f_op_f32(f32(-1f) * -1051f), var_4)) * 1323f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-833f)) - 1f), -1156f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -665f))) + _wgslsmith_f_op_f32(ceil(-539f)))), -global0.d);
}

