struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<i32> = vec3<i32>(0i, -25505i, 10212i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> u32 {
    global1 = vec3<i32>(global1.x, u_input.a.x, -69894i);
    global1 = _wgslsmith_mod_vec3_i32(select(-firstTrailingBit(vec3<i32>(1i, global1.x, -2147483647i) << (vec3<u32>(64071u, 0u, 41662u) % vec3<u32>(32u))), vec3<i32>(-1i, 17465i, -firstLeadingBit(-2147483647i)), true), abs(((vec3<i32>(3892i, -38492i, -1i) & vec3<i32>(global1.x, -25577i, 1i)) & reverseBits(vec3<i32>(0i, 33600i, -2668i))) << ((vec3<u32>(1u, 26800u, 58525u) << (firstTrailingBit(vec3<u32>(0u, 1u, 83341u)) % vec3<u32>(32u))) % vec3<u32>(32u))));
    global1 = -abs(vec3<i32>(u_input.a.x, 0i, 7333i)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u));
    let var_0 = Struct_2(Struct_1(all(arg_1), ~vec2<u32>(1u, 1u), firstLeadingBit(~vec3<u32>(5278u, 7919u, 72853u))));
    let var_1 = arg_3.wwy;
    return ~(~(~var_0.a.c.x));
}

fn func_2() -> i32 {
    let var_0 = vec3<u32>(46017u, ~19692u, func_3(vec4<bool>(true, true, true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec4<f32>(-125f, _wgslsmith_f_op_f32(-732f * -1286f), _wgslsmith_f_op_f32(step(716f, -897f)), _wgslsmith_div_f32(-647f, -513f))) >> (~_wgslsmith_sub_u32(firstLeadingBit(0u), _wgslsmith_mod_u32(62550u, 1u)) % 32u));
    global0 = -31150i;
    global1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, -21874i, u_input.a.x, 2147483647i), vec4<i32>(0i, u_input.a.x, 0i, u_input.a.x), true), max(vec4<i32>(u_input.a.x, -77445i, 98998i, 1i), vec4<i32>(-2147483647i, -61736i, 1i, global1.x)))), -(~u_input.a.x), _wgslsmith_clamp_i32(global1.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(27195i, 0i, global1.x), vec3<i32>(21474i, global1.x, u_input.a.x)), 1i)), min(-vec3<i32>(-2147483647i, u_input.a.x, -29536i), firstTrailingBit(abs(vec3<i32>(2147483647i, global1.x, global1.x)))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, u_input.a.x, 2147483647i) ^ firstLeadingBit(vec3<i32>(u_input.a.x, 4761i, global1.x)), ~(-vec3<i32>(10476i, 1i, 0i))), _wgslsmith_mod_vec3_i32(-(~vec3<i32>(1771i, u_input.a.x, 0i)), max(max(vec3<i32>(1i, u_input.a.x, global1.x), vec3<i32>(global1.x, global1.x, global1.x)), vec3<i32>(u_input.a.x, -13601i, -1i) << (vec3<u32>(34196u, var_0.x, 0u) % vec3<u32>(32u)))) ^ ~max(abs(vec3<i32>(u_input.a.x, -16605i, 1i)), vec3<i32>(-1i, 31382i, u_input.a.x)));
    var var_1 = 22016u;
    let var_2 = _wgslsmith_clamp_vec3_u32(var_0, ~(~var_0), vec3<u32>(var_0.x ^ ~1u, var_0.x, select(var_0.x, var_0.x, all(vec2<bool>(false, false)))) & vec3<u32>(var_0.x, ~max(var_0.x, 22543u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(84948u, var_0.x, var_0.x), vec3<u32>(0u, var_0.x, 3757u))));
    return 1i >> (var_2.x % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: f32) -> f32 {
    var var_0 = Struct_2(Struct_1(arg_0.a, vec2<u32>(~44226u, _wgslsmith_div_u32(abs(arg_1.e), arg_0.c.x)), ~min(vec3<u32>(arg_0.c.x, arg_0.b.x, 1u), vec3<u32>(1u, 0u, arg_1.b.b.x) >> (arg_0.c % vec3<u32>(32u)))));
    var var_1 = ~u_input.a.x;
    var var_2 = _wgslsmith_div_f32(-422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x + -1573f)))))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f + arg_3) * _wgslsmith_f_op_f32(-arg_1.a));
    global0 = func_2();
    return -472f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_i32(global1.x, u_input.a.x) & reverseBits(max(u_input.a.x, -2147483647i));
    var var_0 = firstTrailingBit(~(~vec4<u32>(~0u, ~4294967295u, _wgslsmith_div_u32(4294967295u, 8033u), _wgslsmith_clamp_u32(22056u, 1u, 4294967295u))));
    var_0 = abs(~vec4<u32>(1u, 26917u, ~4294967295u, 95559u));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(func_1(Struct_1(select(true, true, true), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 3356u), ~var_0.zz), vec3<u32>(~var_0.x, _wgslsmith_sub_u32(var_0.x, 1u), ~27357u)), Struct_3(-1008f, Struct_1(true, var_0.zw, max(vec3<u32>(40823u, 0u, 9689u), vec3<u32>(11948u, 1400u, 0u))), false, vec4<bool>(true, true, true, true), var_0.x), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(644f - -656f)), 1f, _wgslsmith_f_op_f32(1000f - -523f)), 540f)), Struct_1(true, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(10280u, 68223u, var_0.x, 2185u), vec4<u32>(4294967295u, 18182u, 1u, 128u)) << (1u % 32u), var_0.x), vec3<u32>(~(var_0.x | 0u), var_0.x, _wgslsmith_mod_u32(var_0.x, ~33224u))), true, !vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false))), false, any(vec3<bool>(true, true, true))), _wgslsmith_mod_u32(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(var_0.x), var_0.x, ~var_0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 4294967295u, var_0.x) >> (var_0.www % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 37470u, var_0.x), vec3<u32>(8153u, var_0.x, var_0.x)), vec3<u32>(527u, var_0.x, var_0.x)))));
    var_0 = vec4<u32>(var_1.e << (var_1.b.b.x % 32u), ~(~select(var_1.b.c.x, 24097u << (var_1.e % 32u), var_1.c)), ~firstTrailingBit(var_1.e) >> (min(abs(78218u), _wgslsmith_div_u32(0u, ~0u)) % 32u), 45510u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-253f, _wgslsmith_f_op_f32(round(-1944f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.a, var_1.a)), var_1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1715f), var_1.a))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 631f, _wgslsmith_f_op_f32(1665f * var_1.a), _wgslsmith_f_op_f32(1048f - 1232f)), vec4<f32>(-1666f, 1398f, -229f, _wgslsmith_f_op_f32(-var_1.a)), !var_1.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 327f, -1233f, -212f))))), !(!any(var_1.d.xz)))));
    var var_3 = 4294967295u;
    var_0 = select(~(~abs(abs(vec4<u32>(51512u, var_0.x, var_0.x, var_0.x)))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 72896u, var_0.x, 1u), ~vec4<u32>(16642u, var_1.e, var_1.e, var_1.e)), 17480u), var_1.b.c.x, var_0.x, 25213u), var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.x, 61544u), ~(~(~80406u))), _wgslsmith_div_f32(var_1.a, -308f));
}

