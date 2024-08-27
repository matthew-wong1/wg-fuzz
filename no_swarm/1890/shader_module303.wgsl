struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<Struct_2, 31>;

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1453f, 265f, -171f), vec3<f32>(353f, 710f, 672f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-511f, -382f, -680f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-590f, -1000f, 915f))))));
    var var_1 = Struct_4(~vec4<i32>(u_input.a.x, 11258i, 1i, -42485i), Struct_1(true, _wgslsmith_f_op_f32(-418f * var_0.x), ~(~1u), u_input.a), _wgslsmith_div_vec3_i32(firstLeadingBit(min(u_input.a.yxw, u_input.a.xyy)), u_input.a.zyw), Struct_1(!(global0[_wgslsmith_index_u32(1u, 10u)] || true), _wgslsmith_f_op_f32(-var_0.x), 1u, vec4<i32>(u_input.a.x, select(u_input.a.x, ~u_input.a.x, true), 0i, firstLeadingBit(firstTrailingBit(u_input.a.x)))));
    var var_2 = u_input.a.x;
    var var_3 = Struct_4(_wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_clamp_i32(u_input.a.x, 0i, var_1.d.d.x), var_1.b.d.x, u_input.a.x, ~u_input.a.x >> (_wgslsmith_div_u32(1u, var_1.b.c) % 32u)), -countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, 54763i), u_input.a))), Struct_1(all(!vec3<bool>(true, global0[_wgslsmith_index_u32(var_1.b.c, 10u)], var_1.b.a)), _wgslsmith_div_f32(262f, var_0.x), 30313u, -(vec4<i32>(var_1.c.x, u_input.a.x, 37997i, var_1.a.x) >> (~vec4<u32>(0u, 12196u, 4294967295u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~(-6212i), u_input.a.x), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_1.c.x, -22045i)), vec2<i32>(-2147483647i, 56870i)), 1i), var_1.b.d.wyx), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1369f, -969f, var_1.b.a)), -490f, 14402i <= u_input.a.x))), var_1.b.c, var_1.d.d));
    var var_4 = Struct_3(Struct_2(Struct_1(var_3.d.a, -587f, 17578u, _wgslsmith_div_vec4_i32(vec4<i32>(0i, 9736i, var_3.c.x, var_3.a.x), firstLeadingBit(var_1.b.d))), var_3.b, vec3<bool>(true, false, !(!var_3.b.a)), var_3.b.d.x));
    return vec3<u32>(1u, var_3.d.c, ~3652u) ^ ~_wgslsmith_clamp_vec3_u32(countOneBits(~vec3<u32>(59464u, var_3.d.c, 0u)), ~vec3<u32>(1u, 77643u, var_3.d.c), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(var_1.b.c, 1u, var_1.b.c)), ~vec3<u32>(var_1.d.c, var_1.d.c, var_3.d.c)));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> i32 {
    var var_0 = ~39672u;
    var_0 = firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_clamp_u32(4294967295u, 0u, 15141u)), vec2<u32>(arg_0.x, 14605u)));
    var var_1 = -2147483647i;
    let var_2 = !vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 38601u), 10u)], false);
    let var_3 = abs(_wgslsmith_clamp_vec2_u32(arg_0.zy, _wgslsmith_div_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(arg_0.yx, vec2<u32>(4294967295u, 4294967295u), arg_0.zx)), arg_0.yy >> (~vec2<u32>(arg_0.x, 0u) % vec2<u32>(32u))), ~max(arg_0.yy ^ arg_0.xy, min(vec2<u32>(arg_0.x, 1u), arg_0.yy))));
    return ~u_input.a.x;
}

fn func_2() -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(~1u), 31u)];
    global2 = _wgslsmith_div_i32(countOneBits(func_4(func_3(), _wgslsmith_div_f32(-730f, _wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_dot_vec2_i32(vec2<i32>(~func_4(vec3<u32>(var_0.b.c, 18922u, 0u), -2191f), -(~u_input.a.x)), _wgslsmith_add_vec2_i32(-vec2<i32>(-49404i, var_0.b.d.x) >> (min(vec2<u32>(8326u, 8394u), vec2<u32>(0u, 9991u)) % vec2<u32>(32u)), u_input.a.zw)));
    var var_1 = false;
    var var_2 = max(abs(vec4<i32>(func_4(vec3<u32>(17263u, 36390u, 0u) & vec3<u32>(var_0.b.c, 20116u, var_0.b.c), var_0.a.b), -2147483647i, firstLeadingBit(-u_input.a.x), -1774i)), -vec4<i32>(var_0.b.d.x, abs(_wgslsmith_mult_i32(24834i, u_input.a.x)), -u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, 1i, var_0.d), max(u_input.a, u_input.a))));
    let var_3 = Struct_4(_wgslsmith_sub_vec4_i32(~var_0.a.d, _wgslsmith_clamp_vec4_i32(countOneBits(abs(u_input.a)), ~(var_0.b.d | vec4<i32>(var_0.d, var_2.x, 31439i, var_0.d)), vec4<i32>(-2147483647i, var_2.x & var_2.x, 1i, 35210i))), var_0.a, max(abs(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yyy, u_input.a.xxw), countOneBits(var_2.x), var_2.x)), vec3<i32>(~var_2.x | var_2.x, max(_wgslsmith_mult_i32(181i, u_input.a.x), _wgslsmith_div_i32(-2147483647i, -7606i)), i32(-1i) * -1i)), var_0.b);
    return _wgslsmith_f_op_f32(f32(-1f) * -902f);
}

fn func_1() -> f32 {
    global2 = ~(~(~1i));
    let var_0 = 0u;
    var var_1 = u_input.a.x & ~(_wgslsmith_mod_i32(abs(1i), ~u_input.a.x) << (var_0 % 32u));
    global1 = array<Struct_2, 31>();
    global1 = array<Struct_2, 31>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(floor(-364f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(-u_input.a.yy);
    let var_1 = var_0.x;
    let var_2 = var_0;
    var var_3 = 26334i;
    var var_4 = Struct_1(global0[_wgslsmith_index_u32(select(68253u, _wgslsmith_mult_u32(85254u, _wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 45942u), vec2<u32>(71830u, 1u)))), true), 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), 1u, _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(~u_input.a, reverseBits(u_input.a)), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_4.c, var_4.c, 85331u)), vec3<u32>(~var_4.c, ~var_4.c, 4294967295u ^ var_4.c)));
}

