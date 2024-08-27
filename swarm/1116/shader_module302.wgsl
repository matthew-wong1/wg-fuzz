struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(45153u, true, vec3<u32>(1u, 0u, 4294967295u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = Struct_1(~_wgslsmith_mod_u32(global0.a, 17150u), !global0.b, vec3<u32>(u_input.b.x, arg_0.x, 54028u));
    let var_1 = Struct_1(arg_0.x, all(vec2<bool>(true & global0.b, true)), global0.c);
    var var_2 = u_input.e.x;
    let var_3 = Struct_1(global0.c.x, all(vec2<bool>(arg_0.x >= ~arg_0.x, global0.b)), var_1.c);
    let var_4 = vec3<bool>(!(!(!(!var_0.b))), all(vec3<bool>(false, any(select(vec2<bool>(false, true), vec2<bool>(true, global0.b), vec2<bool>(var_1.b, var_3.b))), !var_1.b)), false);
    return arg_0.wwy;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    global0 = Struct_1(62876u, !global0.b, vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(102701u, 4294967295u, 0u), func_3(vec4<u32>(4294967295u, 50101u, u_input.b.x, 37147u) << (vec4<u32>(4294967295u, u_input.b.x, 129865u, arg_2.a) % vec4<u32>(32u)))), countOneBits(~func_3(vec4<u32>(u_input.b.x, arg_2.c.x, 1u, 1u)).x), 1u));
    var var_0 = Struct_1(arg_2.c.x, true, vec3<u32>(global0.a, ~(~arg_2.c.x), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, global0.c.x), global0.c), 1u, _wgslsmith_mult_u32(0u, 26514u))));
    var var_1 = Struct_1(~(~_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(var_0.c.x, global0.c.x))), global0.b, abs(arg_2.c));
    let var_2 = 25755i;
    var_0 = Struct_1(~u_input.b.x, !any(vec4<bool>(true, u_input.b.x != 80882u, true, !arg_2.b)), _wgslsmith_clamp_vec3_u32(~(firstLeadingBit(vec3<u32>(4294967295u, var_1.c.x, 25369u)) | vec3<u32>(3027u, 4294967295u, 0u)), vec3<u32>(_wgslsmith_div_u32(23688u, var_0.a), ~(~21038u), func_3(vec4<u32>(var_1.c.x, var_1.c.x, 1u, var_0.c.x) ^ vec4<u32>(4294967295u, 53647u, u_input.b.x, 34000u)).x), _wgslsmith_add_vec3_u32(vec3<u32>(1u, abs(4294967295u), ~4294967295u), func_3(~vec4<u32>(var_1.a, var_0.c.x, 23974u, arg_2.c.x)))));
    return arg_2.c >> (_wgslsmith_mult_vec3_u32(var_1.c, vec3<u32>(4294967295u, max(51966u, var_1.c.x), 0u)) % vec3<u32>(32u));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(arg_1.a >> (~global0.c.x % 32u), any(vec4<bool>(false, u_input.a > ~2147483647i, all(!vec3<bool>(false, true, arg_1.b)), all(!vec2<bool>(arg_1.b, false)))), arg_1.c);
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-872f, 934f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(672f, -683f) * vec2<f32>(644f, 159f))))))));
    global0 = Struct_1(44816u, all(select(!select(vec4<bool>(global0.b, global0.b, false, true), vec4<bool>(true, true, arg_0, false), true), !vec4<bool>(false, arg_1.b, arg_1.b, false), any(vec4<bool>(false, false, arg_0, var_0.b)))), global0.c);
    var var_2 = arg_1;
    global0 = Struct_1(~70321u, arg_0, ~vec3<u32>(arg_1.c.x, ~_wgslsmith_sub_u32(var_0.c.x, 0u), ~_wgslsmith_dot_vec3_u32(var_0.c, var_0.c)));
    return var_0;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(50193u, arg_2.b, ~(~(~arg_2.c ^ arg_2.c)));
    let var_1 = _wgslsmith_add_u32(59249u, 31806u) | firstTrailingBit(50222u);
    let var_2 = func_4(false, Struct_1(countOneBits(1984u), global0.b, _wgslsmith_mult_vec3_u32(~vec3<u32>(61956u, u_input.b.x, arg_2.a), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(510f, -1385f)), 1869f, arg_2, _wgslsmith_f_op_f32(sign(757f))))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.c.x ^ -2147483647i, _wgslsmith_add_i32(-1i, -18653i)), 57873i, firstLeadingBit(37526i ^ u_input.c.x), 1i), max(vec4<i32>(u_input.c.x, u_input.e.x, 2147483647i, u_input.a), min(vec4<i32>(0i, u_input.e.x, 0i, u_input.d), vec4<i32>(u_input.c.x, -11739i, 0i, u_input.d))) | firstTrailingBit(-vec4<i32>(u_input.d, u_input.c.x, -16773i, u_input.a))));
    let var_3 = _wgslsmith_add_u32(18108u, arg_2.a);
    var var_4 = vec4<u32>(_wgslsmith_mod_u32(1u, 1u), func_4(620f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-279f, -817f, var_2.b))), arg_2, reverseBits((vec4<i32>(10202i, u_input.c.x, 2147483647i, -1i) ^ vec4<i32>(-3072i, 2147483647i, 20849i, u_input.a)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, -9410i, 0i, u_input.c.x), vec4<i32>(-14852i, -15001i, -27564i, 45887i)))).c.x, ~firstTrailingBit(4294967295u), arg_2.c.x);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(firstLeadingBit(-u_input.d), ~func_1(true, _wgslsmith_div_u32(u_input.b.x, ~14060u), Struct_1(4294967295u, global0.b, vec3<u32>(global0.a, u_input.b.x, global0.c.x) >> (global0.c % vec3<u32>(32u)))), 47474i, -31263i);
    global0 = func_4(false, Struct_1(global0.a, true, ~(~global0.c << (firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, 1u)) % vec3<u32>(32u)))), vec4<i32>(2147483647i, 0i, reverseBits(firstLeadingBit(_wgslsmith_mult_i32(var_0.x, 28043i))), 37251i));
    var var_1 = global0.b;
    var_1 = !global0.b | global0.b;
    var var_2 = func_4(select(any(select(select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(global0.b, global0.b, global0.b), global0.b), select(vec3<bool>(true, false, false), vec3<bool>(false, global0.b, true), global0.b), true)), !(!global0.b), !global0.b), Struct_1(global0.c.x, true, global0.c), max(vec4<i32>(var_0.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(-9363i, 2147483647i), u_input.a), var_0.x, countOneBits(-2147483647i)), -var_0 << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global0.a, 4294967295u, global0.a), ~vec4<u32>(u_input.b.x, global0.c.x, 64824u, 1u)) % vec4<u32>(32u))));
    var var_3 = func_4(true, Struct_1(1u, !global0.b, func_4(any(select(vec4<bool>(false, global0.b, true, false), vec4<bool>(false, true, global0.b, false), vec4<bool>(false, global0.b, true, var_2.b))), Struct_1(1u, false, vec3<u32>(u_input.b.x, 0u, 0u)), var_0).c), var_0);
    var_2 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(62224u, 4294967295u, 27154u, 0u), vec4<u32>(7873u, u_input.b.x, 4294967295u, u_input.b.x), var_2.b), ~vec4<u32>(u_input.b.x, 1u, global0.c.x, 35116u), vec4<u32>(global0.c.x, var_3.c.x, 62186u, 1u)), ~vec4<u32>(var_3.a, 42569u, var_2.a, var_3.a)) >> (_wgslsmith_mult_u32(var_3.a, _wgslsmith_sub_u32(0u, u_input.b.x)) % 32u), true, max(var_3.c, vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.x, 31404u), vec2<u32>(var_2.a, 32412u)), 45805u, global0.c.x)));
    let var_4 = var_0.x;
    var var_5 = _wgslsmith_clamp_vec4_i32(var_0, ~var_0, vec4<i32>(-2147483647i, var_4, min(var_0.x & 1i, -2147483647i) ^ _wgslsmith_sub_i32(u_input.e.x, ~(-20862i)), _wgslsmith_mult_i32(-u_input.c.x, firstLeadingBit(-var_4))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_mod_i32(countOneBits(firstTrailingBit(u_input.a)), ~(~var_5.x) << (func_3(min(vec4<u32>(u_input.b.x, 5407u, 1u, 0u), vec4<u32>(17833u, var_2.a, 16908u, global0.a))).x % 32u)), ~vec2<u32>(~(~4294967295u), firstLeadingBit(1247u)));
}

