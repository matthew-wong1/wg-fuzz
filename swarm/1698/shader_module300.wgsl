struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    let var_0 = Struct_2(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1388f)))), Struct_1(abs(~_wgslsmith_mod_vec3_i32(vec3<i32>(-20449i, 22566i, -48410i), vec3<i32>(14465i, -2694i, 18840i)))), ~u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-576f)) * _wgslsmith_div_f32(1335f, 785f)), _wgslsmith_f_op_f32(-1555f * 1047f))));
    let var_1 = var_0;
    let var_2 = -9766i;
    let var_3 = countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>((var_2 | var_1.c.a.x) & (var_0.c.a.x & var_2), _wgslsmith_mult_i32(var_1.c.a.x, -2147483647i) >> (30094u % 32u), abs(firstTrailingBit(11706i))), var_0.c.a));
    let var_4 = ~(-_wgslsmith_sub_i32(var_0.c.a.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.c.a.x, var_3.x), 1i)));
    return var_0.b;
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = Struct_1(vec3<i32>(-1i) * -vec3<i32>(1i, _wgslsmith_mod_i32(arg_1, 1i), 2147483647i));
    return arg_3;
}

fn func_1() -> vec3<i32> {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(641f - 747f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(338f, -671f))))))));
    global0 = _wgslsmith_f_op_f32(round(628f));
    global0 = _wgslsmith_f_op_f32(func_2());
    global0 = _wgslsmith_f_op_f32(round(302f));
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -1i, -7517i), vec3<i32>(-11318i, 1402i, -4428i), vec3<i32>(1i, -2147483647i, 0i)), vec3<i32>(-25730i, 53210i, -1i)), vec3<i32>(-13624i, func_3(vec3<bool>(true, true, false), -18401i, -1673f, 1i), -692i)) << (firstTrailingBit(min(vec3<u32>(1u, u_input.d.x, 1u), u_input.b.xwz)) % vec3<u32>(32u)));
    return firstTrailingBit(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 4294967295u;
    let var_0 = ~func_1();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(243f, -592f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1166f, -1055f)) - _wgslsmith_f_op_f32(select(-1092f, 889f, false))))), _wgslsmith_f_op_f32(func_2()), 459f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(255f, _wgslsmith_f_op_f32(-875f * 1453f)))))));
    let var_2 = ~(i32(-1i) * -14032i);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1520f - -1000f), -461f), var_1.x));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1794f)) + _wgslsmith_f_op_f32(exp2(var_1.x)));
    var var_3 = countOneBits(select(31246u, _wgslsmith_mult_u32(1u, ~44943u), true)) ^ ~5809u;
    global1 = _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.d.x, 21108u, 18853u), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, 0u, 4294967295u)), abs(u_input.c)), _wgslsmith_clamp_vec3_u32(u_input.b.wyz >> (vec3<u32>(4294967295u, 3022u, 1u) % vec3<u32>(32u)), vec3<u32>(u_input.a, 70509u, 0u), ~u_input.c))), vec3<u32>(u_input.b.x, 0u, 4260u));
    var var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, 197f)) - _wgslsmith_f_op_f32(ceil(var_1.x))), vec3<i32>(~var_0.x, ~(-2147483647i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.x, var_0.x) << (vec3<u32>(29036u, 7955u, u_input.a) % vec3<u32>(32u)), var_0), func_1().x, -min(var_2, 74042i))));
}

