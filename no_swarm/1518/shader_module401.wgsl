struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-740f, 1273f) + vec2<f32>(-889f, 474f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(332f, -756f) - vec2<f32>(-697f, 1081f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(552f, 234f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(996f, _wgslsmith_f_op_f32(1000f - 615f)))));
    let var_1 = Struct_3(Struct_2(vec4<i32>(u_input.a.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-63510i, u_input.a.x, u_input.a.x), vec3<i32>(-13916i, -2147483647i, u_input.a.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, 1i, -39020i), _wgslsmith_sub_vec4_i32(vec4<i32>(3393i, -2147483647i, u_input.b, 71496i), vec4<i32>(-10956i, u_input.a.x, 2147483647i, u_input.b))), u_input.a.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(1683f - -660f)), vec2<u32>(~4863u, u_input.c), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec3<i32>(70278i, -28008i, u_input.b), max(vec3<i32>(-2147483647i, 1i, -4303i), vec3<i32>(u_input.a.x, u_input.b, u_input.b)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false))) + 961f), vec2<bool>(true | (u_input.a.x == u_input.a.x), true)), !(!vec3<bool>(false, false, select(false, true, true))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-887f + var_0.x))), 182f), min(vec2<u32>(4294967295u, 0u), ~vec2<u32>(11868u, 69387u)), vec2<bool>(all(vec2<bool>(true, true)), true), vec3<i32>(1i, ~1i, u_input.b) | (vec3<i32>(u_input.a.x, -1i, -1i) & ~vec3<i32>(4308i, u_input.a.x, u_input.a.x))), Struct_2(~(-reverseBits(vec4<i32>(u_input.b, u_input.b, 3643i, u_input.a.x))), Struct_1(_wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(810f, 2951f))), vec2<u32>(_wgslsmith_clamp_u32(u_input.c, u_input.c, 67863u), u_input.c), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), vec3<i32>(u_input.b, -1i, _wgslsmith_sub_i32(u_input.a.x, -35833i))), _wgslsmith_f_op_f32(round(var_0.x)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, true), true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), (u_input.c | 1u) == ~1u)), abs(3762u));
    let var_2 = var_1.b;
    let var_3 = _wgslsmith_dot_vec3_u32(~vec3<u32>(firstLeadingBit(u_input.c), 37627u >> (~var_1.a.b.b.x % 32u), 4410u), max(_wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(33819u, u_input.c, var_1.a.b.b.x), vec3<u32>(38706u, 4294967295u, 0u)), ~(~vec3<u32>(u_input.c, u_input.c, var_1.e))), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.e, u_input.c, var_1.e), vec3<u32>(15246u, 37761u, var_1.e) & vec3<u32>(u_input.c, 15283u, 90533u)), vec3<u32>(~u_input.c, 4294967295u, select(0u, 49901u, var_2.x)))));
    let var_4 = Struct_2(-abs(var_1.d.a), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f)), _wgslsmith_div_f32(var_0.x, -1564f)), ~vec2<u32>(max(u_input.c, u_input.c), 44888u << (var_3 % 32u)), vec2<bool>(true, true), ((vec3<i32>(u_input.a.x, 4691i, -2147483647i) ^ vec3<i32>(var_1.c.d.x, 0i, var_1.d.a.x)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a.b.b.x, var_1.a.b.b.x, 1288u), vec3<u32>(4294967295u, var_1.e, 0u)) % vec3<u32>(32u))) ^ ((var_1.a.a.zwy | vec3<i32>(u_input.a.x, var_1.a.b.d.x, 0i)) ^ -vec3<i32>(-2147483647i, u_input.a.x, 1i))), _wgslsmith_div_f32(-636f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(971f + _wgslsmith_f_op_f32(var_0.x + -1987f)) + var_1.d.c)), select(select(vec2<bool>(var_0.x <= 343f, true), select(var_2.yy, vec2<bool>(true, true), true), select(select(var_2.yz, vec2<bool>(var_2.x, var_2.x), var_2.x), !var_2.xy, !var_1.c.c.x)), vec2<bool>(true, false), all(!(!var_1.b.xy))));
    return var_4.b.a;
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_3(Struct_2(firstLeadingBit(min(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.a.x) << (vec4<u32>(0u, 1u, 31844u, u_input.c) % vec4<u32>(32u)), ~vec4<i32>(-2147483647i, -18246i, 1i, u_input.b))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-107f, 694f)) - _wgslsmith_f_op_vec2_f32(func_3())), abs(vec2<u32>(u_input.c, 20528u)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), reverseBits(vec3<i32>(11251i, -66966i, u_input.b)) ^ (vec3<i32>(23877i, u_input.b, u_input.a.x) ^ vec3<i32>(4065i, u_input.a.x, 0i))), _wgslsmith_f_op_f32(round(-1092f)), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), false))), vec3<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true, !all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(593f, 371f)))) + vec2<f32>(286f, _wgslsmith_f_op_f32(floor(194f)))), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 0u), vec3<u32>(4294967295u, 1u, 27389u)), countOneBits(_wgslsmith_sub_u32(30185u, 0u))), vec2<bool>(true, reverseBits(u_input.c) == (0u | u_input.c)), -select(vec3<i32>(u_input.a.x, 2147483647i, -8868i) << (vec3<u32>(u_input.c, u_input.c, 40020u) % vec3<u32>(32u)), vec3<i32>(u_input.b, u_input.a.x, u_input.b), u_input.b <= u_input.b)), Struct_2(-vec4<i32>(~u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.b), ~1i, u_input.b), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1214f, -827f), vec2<f32>(-771f, -104f))), vec2<f32>(1f, 1f)), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 60000u), vec2<u32>(u_input.c, u_input.c))), vec2<bool>(true, true), ~vec3<i32>(-41i, u_input.a.x, -18250i) >> ((vec3<u32>(15669u, 4294967295u, u_input.c) >> (vec3<u32>(u_input.c, 0u, 35085u) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -618f), 1000f)), select(vec2<bool>(all(vec4<bool>(false, true, true, false)), false), vec2<bool>(true, true), true)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 4294967295u, u_input.c), ~select(vec3<u32>(22984u, u_input.c, 4358u), vec3<u32>(58289u, 68917u, 0u), false)));
    var var_1 = !var_0.b.x;
    let var_2 = vec4<f32>(-1000f, var_0.a.c, var_0.c.a.x, var_0.c.a.x);
    var_1 = var_0.d.b.c.x;
    let var_3 = var_0.c.d.x | ~2725i;
    return firstLeadingBit(~(~select(var_0.c.d, var_0.c.d, !var_0.d.d.x)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    return _wgslsmith_div_i32(arg_3.b.d.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(arg_1.wyy, vec3<i32>(arg_1.x, arg_2.b.d.x, arg_3.b.d.x)), arg_3.b.d.x | -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, u_input.b, 1i), arg_1.wyx)), arg_2.a.zyy & func_2()));
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = Struct_1(arg_0.b.a, vec2<u32>(61718u, ~(~102739u)), arg_0.d, _wgslsmith_mult_vec3_i32(arg_0.a.ywy, -(arg_0.a.ywy >> ((vec3<u32>(4294967295u, 4294967295u, 0u) ^ vec3<u32>(arg_0.b.b.x, u_input.c, 4294967295u)) % vec3<u32>(32u)))));
    let var_1 = ~var_0.b;
    let var_2 = false;
    var var_3 = arg_0;
    let var_4 = max(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b.d.x, i32(-1i) * -1i, u_input.a.x & var_0.d.x), var_3.b.d), _wgslsmith_dot_vec3_i32(vec3<i32>(max(-1i, u_input.a.x), _wgslsmith_sub_i32(arg_0.b.d.x, -11202i), abs(u_input.a.x)), var_3.a.yzy)), _wgslsmith_div_i32(-firstTrailingBit(abs(u_input.b)), func_2().x));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.c, var_3.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), 1f, arg_0.d.x)), 456f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.c, var_3.c, 2940f, arg_0.c)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-295f, _wgslsmith_f_op_f32(439f * -203f), 756f, _wgslsmith_f_op_f32(-var_3.b.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, 952f, var_3.c, var_3.b.a.x), vec4<f32>(var_0.a.x, 445f, var_0.a.x, 153f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(1379f * -1047f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(315f - -582f)))), 1955f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(vec4<i32>(_wgslsmith_sub_i32(0i, u_input.a.x), func_1(vec3<f32>(1000f, -293f, -965f), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), Struct_2(vec4<i32>(u_input.a.x, u_input.b, -1i, u_input.b), Struct_1(vec2<f32>(582f, 1929f), vec2<u32>(4294967295u, 0u), vec2<bool>(false, false), vec3<i32>(-19874i, u_input.a.x, 2147483647i)), 390f, vec2<bool>(false, false)), Struct_2(vec4<i32>(996i, u_input.b, -2147483647i, 33887i), Struct_1(vec2<f32>(1000f, -499f), vec2<u32>(53662u, 1u), vec2<bool>(true, true), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), -250f, vec2<bool>(true, true))), _wgslsmith_add_i32(1i, u_input.a.x), reverseBits(2147483647i)), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -337f))), ~vec2<u32>(1u, 496u), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec3<i32>(u_input.a.x, 0i, 4393i) >> (vec3<u32>(1u, u_input.c, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -1154f), select(vec2<bool>(true, false), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(firstTrailingBit(-vec4<i32>(13679i, 15589i, u_input.a.x, u_input.b)), Struct_1(var_0.zx, firstTrailingBit(vec2<u32>(1u, u_input.c)), vec2<bool>(false, true), firstTrailingBit(vec3<i32>(u_input.a.x, u_input.b, u_input.b))), _wgslsmith_f_op_f32(round(-2073f)), vec2<bool>(true, true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(740f, 1990f, 659f, 425f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(3112f, var_0.x, 351f, 655f))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(vec4<i32>(-1i, 0i, u_input.a.x, u_input.a.x), Struct_1(var_0.yz, vec2<u32>(u_input.c, 1u), vec2<bool>(false, true), vec3<i32>(87937i, 7221i, u_input.b)), 423f, vec2<bool>(true, false))))))))));
    var var_1 = Struct_2(vec4<i32>(~9962i, 2147483647i, -select(u_input.a.x >> (2424u % 32u), -2147483647i, any(vec4<bool>(true, true, false, false))), _wgslsmith_mod_i32(u_input.a.x >> (1u % 32u), u_input.a.x | u_input.a.x) & u_input.a.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -192f)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(61439u, u_input.c, u_input.c) & vec3<u32>(9617u, u_input.c, u_input.c), ~vec3<u32>(0u, u_input.c, u_input.c)), u_input.c), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(34734i, u_input.b, -30686i), min(vec3<i32>(u_input.b, u_input.a.x, u_input.b), vec3<i32>(u_input.a.x, -2147483647i, 19848i)), -vec3<i32>(-1i, u_input.a.x, 1i)), vec3<i32>(~u_input.b, -58422i, u_input.b))), _wgslsmith_f_op_f32(-var_0.x), vec2<bool>(true, true));
    var var_2 = var_1.a.xzw;
    var var_3 = Struct_3(Struct_2(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 1i, -23064i, var_2.x), vec4<i32>(u_input.b, var_1.b.d.x, var_1.a.x, u_input.a.x), var_1.a) & min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -8841i, u_input.a.x, -1i), vec4<i32>(u_input.a.x, var_2.x, -41674i, var_2.x)), var_1.a), var_1.b, -1000f, var_1.d), select(select(!vec3<bool>(var_1.d.x, false, var_1.b.c.x), select(!vec3<bool>(var_1.b.c.x, var_1.d.x, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, var_1.d.x, all(vec4<bool>(var_1.d.x, true, false, var_1.d.x)))), !select(select(vec3<bool>(false, true, var_1.d.x), vec3<bool>(var_1.d.x, var_1.d.x, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), !var_1.d.x), vec3<bool>(!(!var_1.d.x), var_1.a.x > -var_1.b.d.x, all(var_1.b.c))), var_1.b, Struct_2(vec4<i32>(var_2.x, ~(-34308i), (-6798i << (var_1.b.b.x % 32u)) ^ 1i, -18694i), Struct_1(vec2<f32>(var_1.b.a.x, _wgslsmith_div_f32(var_1.c, var_1.c)), vec2<u32>(6847u, 0u), select(!vec2<bool>(var_1.b.c.x, var_1.d.x), !var_1.b.c, vec2<bool>(var_1.b.c.x, var_1.b.c.x)), ~var_1.b.d), _wgslsmith_f_op_f32(var_1.c - 1058f), select(select(var_1.b.c, select(var_1.b.c, var_1.d, false), !var_1.b.c.x), vec2<bool>(false, true), !all(vec4<bool>(false, false, false, var_1.b.c.x)))), var_1.b.b.x);
    var_1 = Struct_2(~vec4<i32>(1i, -72175i, var_2.x, -reverseBits(0i)), var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -200f))), vec2<bool>(false, !(!(var_3.c.b.x > var_3.e))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(var_1.b.a.x - var_1.b.a.x), var_3.a.c, -150f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -463f) * -1306f), _wgslsmith_f_op_f32(360f * var_1.b.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.b.a)))), var_3.a.b.b, -212f);
}

