struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = true;
    let var_1 = firstTrailingBit(_wgslsmith_clamp_u32(38332u, max(min(27228u, arg_3.d.x), global1.x | 16745u), ~countOneBits(global1.x)));
    global1 = ~vec4<u32>(countOneBits(~_wgslsmith_add_u32(global1.x, arg_1.x)), arg_1.x >> (firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(62622u, 4294967295u), vec2<u32>(79920u, u_input.a))) % 32u), ~1u << (((4294967295u << (arg_1.x % 32u)) | firstTrailingBit(var_1)) % 32u), ~global1.x);
    global1 = vec4<u32>(~(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 1u, 1u, 4294967295u), vec4<u32>(49329u, 13585u, 0u, 0u)))), 1u, max(abs(~u_input.a), _wgslsmith_mult_u32(_wgslsmith_mod_u32(61588u, ~global1.x), 4294967295u)), 4294967295u);
    global1 = ~(vec4<u32>(~abs(u_input.a), 26334u, global1.x, ~(~0u)) ^ vec4<u32>(~(u_input.a << (44457u % 32u)), firstLeadingBit(firstTrailingBit(42596u)), ~(~109364u), 1u));
    return !arg_3.b;
}

fn func_2() -> Struct_2 {
    var var_0 = true;
    var var_1 = Struct_1(false, !select(func_3(true, vec2<u32>(global1.x, u_input.a), vec2<f32>(187f, -411f), Struct_1(false, vec3<bool>(false, false, false), vec3<i32>(u_input.b, 1i, 37184i), global1.wz)), vec3<bool>(true, true, all(vec4<bool>(false, false, true, false))), true), _wgslsmith_mod_vec3_i32(~select(vec3<i32>(2147483647i, u_input.b, -8298i), -vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<bool>(true, true, true)), vec3<i32>(_wgslsmith_mult_i32(u_input.b, 14861i), ~u_input.b, _wgslsmith_add_i32(u_input.b, -119750i))), ~global1.xy);
    let var_2 = func_3((abs(firstLeadingBit(-2147483647i)) >> (~(~global1.x) % 32u)) > u_input.b, _wgslsmith_clamp_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(var_1.d, vec2<u32>(global1.x, 1u))) & min(global1.ww >> (vec2<u32>(var_1.d.x, global1.x) % vec2<u32>(32u)), max(vec2<u32>(var_1.d.x, global1.x), global1.wx)), ~var_1.d, var_1.d), vec2<f32>(-1276f, -794f), Struct_1(var_1.a, !var_1.b, vec3<i32>(u_input.b, firstTrailingBit(-556i ^ var_1.c.x), -(~u_input.b)), var_1.d));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2632f - 1964f), _wgslsmith_f_op_f32(f32(-1f) * -889f), var_2.x | false)), _wgslsmith_f_op_f32(f32(-1f) * -217f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(193f, -328f) + 689f) - _wgslsmith_f_op_f32(f32(-1f) * -868f))));
    var_1 = Struct_1(true, !(!var_1.b), reverseBits(-_wgslsmith_mod_vec3_i32(select(var_1.c, vec3<i32>(var_1.c.x, 2147483647i, -18871i), var_1.b), _wgslsmith_add_vec3_i32(vec3<i32>(0i, 79449i, u_input.b), var_1.c))), ~_wgslsmith_clamp_vec2_u32(reverseBits(~global1.zw), ~firstTrailingBit(vec2<u32>(0u, 89478u)), _wgslsmith_mult_vec2_u32(var_1.d, ~var_1.d)));
    return Struct_2(abs(vec2<i32>(-13914i << (var_1.d.x % 32u), -44362i)));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2) -> vec3<bool> {
    global1 = vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(arg_0.e.d.x, ~arg_1)) ^ _wgslsmith_clamp_u32(abs(firstLeadingBit(1u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(38225u, arg_1, u_input.a, arg_0.b.d.x), vec4<u32>(u_input.a, arg_1, 4294967295u, 4041u)), reverseBits(arg_0.b.d.x) ^ 1u), u_input.a, _wgslsmith_mod_u32(abs(arg_1), ~(~u_input.a)), global1.x);
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(arg_0.a)), Struct_1(arg_0.e.a, select(func_3(!arg_0.e.b.x, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, global1.x), global1.zz), _wgslsmith_f_op_vec2_f32(arg_0.a - vec2<f32>(427f, arg_0.a.x)), Struct_1(arg_0.e.b.x, arg_0.d, arg_0.e.c, arg_0.b.d)), vec3<bool>(arg_1 > 1u, !arg_0.d.x, !arg_0.d.x), !func_3(arg_0.b.b.x, arg_0.e.d, vec2<f32>(-1098f, arg_0.a.x), arg_0.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.e.c.x, i32(-1i) * -2147483647i, firstLeadingBit(arg_0.c)), countOneBits(-arg_0.b.c)), ~abs(global1.yx)), _wgslsmith_mult_i32(max(reverseBits(-1i), arg_0.c), u_input.b ^ max(u_input.b, -2147483647i)), !arg_0.d, Struct_1(false, select(arg_0.b.b, vec3<bool>(false, any(vec4<bool>(arg_0.e.a, arg_0.e.a, true, arg_0.b.b.x)), false), 1i == u_input.b), vec3<i32>(-1i) * -abs(vec3<i32>(u_input.b, 60751i, arg_0.e.c.x)), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~arg_0.e.d, vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(global1.x, 50506u), vec2<u32>(arg_1, 50886u) << (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_clamp_u32(global1.x, global1.x, arg_0.b.d.x), ~arg_1))));
    var var_1 = var_0.d.x;
    var var_2 = var_0.e;
    let var_3 = _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(arg_0.b.c.x, 2147483647i, var_2.c.x, 0i)), vec4<i32>(0i, u_input.b, u_input.b, -2147483647i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, var_2.c.x, -2147483647i, arg_0.b.c.x), vec4<i32>(0i, arg_2.a.x, 2147483647i, arg_2.a.x))), (vec4<i32>(_wgslsmith_mod_i32(arg_0.b.c.x, var_2.c.x), 27441i, 36890i, -u_input.b) | (_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, arg_2.a.x, arg_0.b.c.x), vec4<i32>(arg_0.b.c.x, arg_2.a.x, var_0.e.c.x, var_2.c.x)) | -vec4<i32>(1i, var_0.e.c.x, -1i, -2147483647i))) ^ vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(6969i, var_0.c, arg_0.e.c.x, 3735i) << (vec4<u32>(3711u, 1u, 13832u, 0u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(var_0.b.c.x, 0i, var_0.e.c.x, arg_2.a.x))), -25332i, -26363i, arg_2.a.x));
    return vec3<bool>(!(!arg_0.b.b.x), _wgslsmith_clamp_u32(~arg_0.b.d.x, 43485u, global1.x) <= _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.d.x, 4294967295u, 4294967295u) << (select(vec3<u32>(global1.x, u_input.a, 1u), global1.wyz, var_0.b.a) % vec3<u32>(32u)), firstLeadingBit(~vec3<u32>(global1.x, 9274u, var_0.b.d.x))), var_0.e.a);
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(1i, ~u_input.b);
    let var_1 = 48172u;
    global1 = vec4<u32>(global1.x, _wgslsmith_clamp_u32(firstLeadingBit(select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), arg_0), u_input.a & global1.x, true)), firstTrailingBit(0u) | arg_0.x, abs(~(~arg_0.x))), ~14555u, var_1);
    var var_2 = Struct_2(~(~max(~vec2<i32>(u_input.b, 63878i), abs(vec2<i32>(u_input.b, 1i)))));
    let var_3 = !all(select(vec3<bool>(any(vec4<bool>(false, false, true, false)), false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)));
    return Struct_1(any(!vec3<bool>(true, var_3, false)), select(!func_4(Struct_4(vec2<f32>(-1985f, -223f), Struct_1(false, vec3<bool>(false, var_3, true), vec3<i32>(2147483647i, u_input.b, 2147483647i), arg_0), 2147483647i, vec3<bool>(false, true, true), Struct_1(var_3, vec3<bool>(false, false, false), vec3<i32>(var_2.a.x, var_2.a.x, var_2.a.x), global1.zw)), firstTrailingBit(var_1), func_2()), func_3(true, ~arg_0 >> (arg_0 % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1368f, -178f))), Struct_1(false, func_4(Struct_4(vec2<f32>(-729f, -1249f), Struct_1(var_3, vec3<bool>(var_3, var_3, var_3), vec3<i32>(1i, 1i, var_0), vec2<u32>(var_1, 33915u)), var_2.a.x, vec3<bool>(var_3, true, true), Struct_1(var_3, vec3<bool>(true, false, false), vec3<i32>(-35667i, var_2.a.x, -21360i), vec2<u32>(38773u, var_1))), arg_0.x, Struct_2(var_2.a)), vec3<i32>(var_2.a.x, var_0, 0i), _wgslsmith_mod_vec2_u32(global1.yw, vec2<u32>(1u, u_input.a)))), !(var_3 | any(vec4<bool>(var_3, var_3, true, true)))), abs(~_wgslsmith_div_vec3_i32(vec3<i32>(-36653i, u_input.b, -1i), vec3<i32>(var_0, var_2.a.x, 23179i)) << (~(~global1.zzz) % vec3<u32>(32u))), min(~min(arg_0, global1.xy) >> (max(global1.zy, global1.xx) % vec2<u32>(32u)), ~global1.ww));
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: bool) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(545f))))), _wgslsmith_f_op_vec2_f32(min(arg_2.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1348f), _wgslsmith_f_op_f32(round(arg_2.a.x))))), select(func_3(!(!arg_3), _wgslsmith_add_vec2_u32(global1.xz, vec2<u32>(arg_2.b.d.x, arg_2.e.d.x)), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_2.a.x)), -2031f), func_1(vec2<u32>(0u, 47171u) & vec2<u32>(0u, global1.x))).zy, select(arg_2.e.b.yz, arg_2.e.b.zy, all(func_4(Struct_4(vec2<f32>(1102f, -1000f), arg_2.e, u_input.b, vec3<bool>(false, false, arg_2.d.x), Struct_1(true, vec3<bool>(arg_2.e.a, arg_3, arg_3), arg_1.xzw, arg_2.b.d)), 4294967295u, Struct_2(arg_2.b.c.yx)).yy)), arg_2.d.xy)));
    var var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1695f)) + -1096f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, arg_2.a.x) + arg_2.a.x))), arg_2.e, i32(-1i) * -_wgslsmith_mult_i32(2147483647i, 1i), arg_2.d, func_1(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(5332u, arg_2.e.d.x), vec2<u32>(0u, 68833u)), 106213u), ~(~arg_2.e.d.x))));
    global1 = _wgslsmith_mult_vec4_u32(min(~(~vec4<u32>(arg_2.e.d.x, u_input.a, 9066u, 1u)), select(~countOneBits(vec4<u32>(var_1.e.d.x, arg_0, 1u, arg_0)), _wgslsmith_sub_vec4_u32(vec4<u32>(26312u, global1.x, var_1.b.d.x, 1u), vec4<u32>(arg_2.b.d.x, 8997u, 4294967295u, var_1.e.d.x)), !select(arg_3, var_1.b.b.x, false))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(11015u, 26936u, 1u, 4294967295u) & (vec4<u32>(u_input.a, 0u, 4294967295u, 19994u) >> (vec4<u32>(u_input.a, 1u, 34218u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 27419u, global1.x, global1.x), vec4<u32>(~arg_0, var_1.e.d.x, ~var_1.e.d.x, ~4084u))));
    let var_2 = min(-var_1.e.c.xy, _wgslsmith_mult_vec2_i32(arg_1.wx, -_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.b, u_input.b), var_1.b.c.zy)));
    global1 = ~vec4<u32>(~var_1.b.d.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(16981u, global1.x) << (vec2<u32>(4294967295u, arg_0) % vec2<u32>(32u)), vec2<u32>(54085u, 92839u))), ~(~(arg_0 << (u_input.a % 32u))), _wgslsmith_div_u32(~_wgslsmith_add_u32(arg_2.e.d.x, var_1.e.d.x), u_input.a));
    return _wgslsmith_clamp_vec3_i32(-arg_1.wzz, firstTrailingBit(~vec3<i32>(_wgslsmith_clamp_i32(-62743i, var_2.x, var_2.x), -6270i, -var_1.c)), _wgslsmith_mult_vec3_i32(var_1.b.c, -vec3<i32>(~0i, 0i, 14214i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~5527u);
    var_0 = _wgslsmith_div_u32(4294967295u, 4294967295u);
    let var_1 = true;
    var var_2 = Struct_3(vec3<i32>(-u_input.b, u_input.b, -abs(0i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-874f - _wgslsmith_f_op_f32(1121f - -1000f)), 693f)), vec2<u32>(_wgslsmith_sub_u32(u_input.a, 1u), global1.x));
    var var_3 = vec3<bool>(var_1, false, true);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x));
    let var_4 = Struct_2(vec2<i32>(-29654i, _wgslsmith_dot_vec3_i32(var_2.a, countOneBits(~var_2.a))));
    let var_5 = var_2.c.x;
    let var_6 = Struct_4(_wgslsmith_f_op_vec2_f32(-var_2.b), Struct_1(all(!select(var_3.yy, vec2<bool>(false, var_1), var_3.yy)), select(vec3<bool>(select(false, var_1, var_1), false, !var_3.x), vec3<bool>(true, true, true), vec3<bool>(true, var_3.x, false)), func_5(4294967295u, ~select(vec4<i32>(var_4.a.x, 0i, var_4.a.x, var_2.a.x), vec4<i32>(u_input.b, -1i, -1i, 0i), var_1), Struct_4(var_2.b, func_1(vec2<u32>(var_2.c.x, 88258u)), var_2.a.x, vec3<bool>(var_1, false, var_3.x), Struct_1(var_1, vec3<bool>(var_1, var_1, var_1), vec3<i32>(1i, u_input.b, 24155i), vec2<u32>(var_2.c.x, u_input.a))), false), global1.zx), -52725i, vec3<bool>(func_4(Struct_4(var_2.b, Struct_1(var_3.x, vec3<bool>(true, true, var_1), var_2.a, vec2<u32>(0u, 10063u)), u_input.b, vec3<bool>(var_1, var_1, true), Struct_1(var_1, vec3<bool>(var_3.x, true, false), var_2.a, vec2<u32>(28121u, 8475u))), 1u, func_2()).x || any(select(vec4<bool>(true, false, false, var_1), vec4<bool>(var_1, true, var_1, true), vec4<bool>(var_3.x, var_1, false, var_3.x))), ~4294967295u <= abs(_wgslsmith_mult_u32(var_2.c.x, u_input.a)), true || (countOneBits(var_4.a.x) > var_2.a.x)), Struct_1(any(vec3<bool>(var_3.x, true, var_2.a.x < 484i)), vec3<bool>(var_1, all(func_1(vec2<u32>(var_2.c.x, 4294967295u)).b.yz), all(var_3.xx)), var_2.a & var_2.a, vec2<u32>(select(10281u, abs(var_2.c.x), all(vec3<bool>(var_3.x, var_3.x, false))), _wgslsmith_add_u32(global1.x, 1u) & 29595u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_2.b.x, -248f));
}

