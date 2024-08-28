struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<f32>(-1020f, -1056f, -819f), vec2<bool>(false, true), vec4<u32>(1u, 34719u, 4294967295u, 60187u), 1000f), vec4<i32>(2147483647i, 0i, 0i, 0i), Struct_1(vec3<f32>(582f, 1144f, -1349f), vec2<bool>(false, true), vec4<u32>(0u, 0u, 44756u, 1u), -985f));

var<private> global1: vec4<u32>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-1534f, 525f, 627f), vec2<bool>(true, true), vec4<u32>(0u, 0u, 8860u, 43600u), 107f);

var<private> global3: vec3<u32> = vec3<u32>(95240u, 0u, 108u);

var<private> global4: vec3<u32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> vec4<i32> {
    let var_0 = arg_3.x;
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -335f, 531f)) * _wgslsmith_f_op_vec3_f32(step(arg_0.a, arg_0.a))) + _wgslsmith_f_op_vec3_f32(global2.a - _wgslsmith_f_op_vec3_f32(-arg_0.a))), !(!(!vec2<bool>(true, arg_2))), arg_1.c, _wgslsmith_f_op_f32(trunc(arg_0.a.x))), ~global0.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a.x, global2.d, global2.d)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(537f, global0.c.d, 1024f))))), !vec2<bool>(arg_3.x || false, true), firstLeadingBit(~global2.c), _wgslsmith_f_op_f32(floor(717f))));
    let var_1 = true;
    var var_2 = arg_3;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.a * arg_1.a), _wgslsmith_f_op_vec3_f32(exp2(global2.a)), vec3<bool>(global2.b.x, false, arg_2))))), !global2.b, vec4<u32>(global3.x, u_input.a.x >> ((global4.x ^ 4294967295u) % 32u), 59176u, 1u), arg_1.d), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-33345i << (global1.x % 32u), global0.b.x), _wgslsmith_sub_i32(global0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, global0.b.x, global0.b.x), vec3<i32>(global0.b.x, -30243i, global0.b.x)))), global0.b.x, reverseBits(firstTrailingBit(-1i)), -(global0.b.x << (u_input.a.x % 32u)) ^ global0.b.x), arg_0);
    return ~(vec4<i32>(-(~global0.b.x), -var_3.b.x, _wgslsmith_add_i32(firstTrailingBit(global0.b.x), ~(-2894i)), -1i) >> (vec4<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(21500u, global4.x), var_3.c.c.xy)), _wgslsmith_mult_u32(global4.x, ~0u), global4.x, 50865u) % vec4<u32>(32u)));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(global2.a, vec2<bool>(select(true, global0.a.b.x, any(!vec4<bool>(global0.a.b.x, global0.c.b.x, false, global0.c.b.x))), all(vec3<bool>(true, global2.d <= global2.a.x, !global0.c.b.x))), vec4<u32>(1u, global4.x, global2.c.x >> (global1.x % 32u), 0u >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(global2.c), global0.a.c) % 32u)), global2.a.x);
    global1 = vec4<u32>(var_0.c.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, global2.c.x, global1.x, 27571u), firstLeadingBit(global0.a.c)), global2.c.x), reverseBits(_wgslsmith_add_u32(~global0.a.c.x << (global2.c.x % 32u), 19262u)), global3.x << (1407u % 32u));
    global3 = ~(~vec3<u32>(1u, var_0.c.x, _wgslsmith_sub_u32(u_input.a.x, global2.c.x)));
    var var_1 = global2.c;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global2.a, vec3<f32>(101f, 1015f, -674f))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(903f, global0.a.d, global0.c.d))))), vec2<bool>(global2.b.x, global0.c.b.x), ~firstLeadingBit(abs(var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - 388f)) * _wgslsmith_f_op_f32(floor(-652f)))), func_3(global0.a, global0.c, var_0.d >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -515f))), vec4<bool>(!select(false, global2.b.x, global0.c.b.x), any(select(vec4<bool>(false, false, false, true), vec4<bool>(global0.a.b.x, global0.a.b.x, false, global2.b.x), false)), !select(true, false, true), var_0.b.x)), global0.c);
    return var_2.a.d;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    global1 = global2.c;
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-386f, 1401f, global2.d) * _wgslsmith_f_op_vec3_f32(round(global0.c.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, arg_0, -107f)))), global2.b, global0.a.c, _wgslsmith_f_op_f32(max(arg_0, -1170f))), _wgslsmith_add_vec4_i32(global0.b, global0.b) << (~select(global2.c, global0.a.c, !vec4<bool>(global2.b.x, global0.c.b.x, false, true)) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(global0.c.a)), _wgslsmith_f_op_vec3_f32(-global0.a.a), global0.c.b.x & (-843f <= global0.c.a.x))), global2.b, ~abs(global0.c.c), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, global0.a.a.x))), all(select(vec3<bool>(global0.a.b.x, global2.b.x, true), vec3<bool>(true, false, global2.b.x), global2.b.x))))));
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-399f)), arg_0))) - _wgslsmith_f_op_f32(global2.a.x + -170f));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 712f)), _wgslsmith_f_op_f32(-global0.a.d), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1843f, -614f, global0.c.d, global0.a.d), vec4<f32>(arg_0, 782f, global2.a.x, -225f))))), !(!select(vec4<bool>(true, false, global2.b.x, global0.a.b.x), vec4<bool>(true, false, global0.a.b.x, true), vec4<bool>(global0.c.b.x, false, global0.a.b.x, true))))));
    return global0.a;
}

fn func_1(arg_0: u32) -> Struct_2 {
    global1 = ~global0.a.c;
    global4 = vec3<u32>(~8254u, reverseBits(~(~_wgslsmith_dot_vec3_u32(global1.yyz, global2.c.wwx))), 33970u);
    global0 = Struct_2(func_4(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_vec3_f32(vec3<f32>(435f, 229f, 638f), _wgslsmith_f_op_vec3_f32(-global2.a)), u_input.a.x << ((~global0.a.c.x >> (17466u % 32u)) % 32u)), vec4<i32>(~select(global0.b.x, 0i, !global2.b.x), -31155i, _wgslsmith_sub_i32(-firstLeadingBit(-2147483647i), global0.b.x), countOneBits(global0.b.x)), Struct_1(global0.a.a, !select(vec2<bool>(global0.c.b.x, true), vec2<bool>(true, true), any(vec3<bool>(global2.b.x, global2.b.x, true))), ~(~(~global2.c)), global0.a.a.x));
    global0 = Struct_2(global0.c, (~_wgslsmith_div_vec4_i32(global0.b, vec4<i32>(global0.b.x, 1055i, -1i, global0.b.x)) << ((vec4<u32>(5942u, 0u, global2.c.x, 43072u) & abs(vec4<u32>(715u, global1.x, 4294967295u, 52564u))) % vec4<u32>(32u))) ^ firstTrailingBit(global0.b), global0.a);
    global4 = _wgslsmith_div_vec3_u32(vec3<u32>(~(max(global2.c.x, global4.x) << ((global2.c.x ^ global4.x) % 32u)), ~15003u, _wgslsmith_div_u32(_wgslsmith_sub_u32(global3.x, abs(36939u)), max(~1u, 4294967295u))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(9297u, 0u, global3.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), ~select(vec3<u32>(arg_0, global3.x, 0u), vec3<u32>(arg_0, 1u, global1.x), vec3<bool>(global2.b.x, true, true))), global0.c.c.wxz));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(global0.c.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.a.a), vec3<f32>(global0.c.a.x, -1465f, 585f), global2.b.x)))), vec2<bool>(!global0.c.b.x, global2.b.x), ~global0.a.c, global2.a.x), vec4<i32>(0i, global0.b.x | _wgslsmith_div_i32(select(global0.b.x, -43980i, global2.b.x), ~(-36872i)), 2147483647i, select(_wgslsmith_add_i32(~global0.b.x, global0.b.x >> (0u % 32u)), _wgslsmith_mod_i32(global0.b.x, -1i) ^ -2147483647i, false)), global0.c);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>) -> f32 {
    var var_0 = arg_0;
    global4 = vec3<u32>(32202u, _wgslsmith_dot_vec4_u32(~(global2.c & vec4<u32>(global2.c.x, 0u, global0.c.c.x, 4294967295u)), vec4<u32>(_wgslsmith_sub_u32(global1.x, global2.c.x), 4294967295u, ~global3.x, 38642u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(global2.c.wyz, var_0.a.c.wxw), 1u, min(0u, global3.x), arg_0.a.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(35825u, 31914u, 31735u, 4294967295u), arg_0.c.c) >> (_wgslsmith_add_vec4_u32(arg_0.c.c, vec4<u32>(40948u, 24753u, global3.x, 4294967295u)) % vec4<u32>(32u))), u_input.a.x);
    var var_1 = func_4(_wgslsmith_f_op_f32(1062f * func_4(var_0.c.d, vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_0.a.a.x), -688f), func_1(8933u).c.c.x).a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1107f * -309f), global0.c.a.x, arg_0.c.a.x) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(154f, 1042f, _wgslsmith_f_op_f32(-global2.a.x)), vec3<f32>(var_0.c.a.x, _wgslsmith_div_f32(-1266f, global2.d), global0.c.d)))), 1u).c.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.a.x), _wgslsmith_f_op_f32(step(2292f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.d - global2.d) * _wgslsmith_f_op_f32(-1000f + 1759f))))));
    global3 = ~var_0.a.c.zzz;
    return arg_0.c.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, global2.c.x, 10029u), min(global2.c.x, 11005u), global4.x, ~18345u), vec4<u32>(1u, global2.c.x, 69376u, 4294967295u)) >> (global2.c % vec4<u32>(32u)), global0.c.c);
    global2 = global0.c;
    var var_0 = Struct_2(Struct_1(global2.a, global0.c.b, select(global0.a.c, global0.a.c, !vec4<bool>(global0.a.b.x, global2.b.x, global0.c.b.x, global2.b.x)) >> (firstLeadingBit(~global2.c) % vec4<u32>(32u)), -419f), -global0.b, Struct_1(global0.a.a, select(vec2<bool>(any(global2.b), !global2.b.x), !(!vec2<bool>(true, global0.a.b.x)), vec2<bool>(!global2.b.x, global0.a.b.x)), vec4<u32>(~(global3.x >> (global1.x % 32u)), 0u, select(70602u, global0.c.c.x, global2.b.x) >> (20540u % 32u), global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(global3.x), vec3<i32>(1i, global0.b.x, -2147483647i))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -524f), _wgslsmith_f_op_f32(-global0.c.d), -458f))), vec2<bool>(~14717u >= min(var_0.c.c.x, 1u), global0.c.b.x), var_0.a.c, -1000f);
    let var_2 = func_4(284f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(global2.a, _wgslsmith_f_op_vec3_f32(-var_0.a.a)))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(global0.a.c.x, global3.x), 82558u), _wgslsmith_sub_vec3_u32(~var_1.c.zxz, vec3<u32>(1u, var_1.c.x, 0u) << (var_0.c.c.zxz % vec3<u32>(32u)))) >> (74025u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(global3.x >> ((1u | ~global0.c.c.x) % 32u), abs(~vec4<u32>(~var_2.c.x, var_2.c.x << (4174u % 32u), var_0.a.c.x, var_2.c.x)), var_1.d);
}

