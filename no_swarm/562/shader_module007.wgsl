struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    let var_0 = arg_2;
    var var_1 = vec2<u32>(arg_0.c.x, 4294967295u);
    let var_2 = arg_0;
    var var_3 = vec2<bool>(_wgslsmith_div_f32(-1208f, var_2.b) > arg_0.a.x, (min(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 1i), vec2<i32>(-98293i, -2147483647i))) >> (_wgslsmith_mod_u32(arg_0.c.x, var_2.c.x) % 32u)) == _wgslsmith_add_i32(~u_input.b.x, -45883i));
    let var_4 = ~_wgslsmith_mult_vec3_i32(abs(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), -vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), select(vec3<i32>(-55146i, u_input.b.x, select(u_input.b.x, 31993i, var_0.a.x)), (vec3<i32>(u_input.b.x, u_input.b.x, 0i) << (vec3<u32>(var_2.c.x, u_input.a.x, 1u) % vec3<u32>(32u))) << ((var_2.c.ywx << (vec3<u32>(0u, 6941u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), select(!var_0.a, select(vec3<bool>(true, var_0.a.x, var_0.a.x), arg_3, arg_2.a.x), select(vec3<bool>(arg_2.a.x, true, true), arg_3, false))));
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, max(_wgslsmith_sub_u32(0u, abs(var_1.x)), ~countOneBits(arg_0.c.x))), ~reverseBits(1u));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> vec4<u32> {
    var var_0 = 4294967295u;
    return min(_wgslsmith_div_vec4_u32(~firstTrailingBit(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(4294967295u, 75805u, u_input.a.x, 35895u))), _wgslsmith_mult_vec4_u32(vec4<u32>(select(u_input.d.x, 4294967295u, true), 195u, min(4294967295u, arg_0.x), arg_0.x), vec4<u32>(1u, _wgslsmith_mult_u32(15452u, 32125u), u_input.c.x, func_3(Struct_1(vec4<f32>(1131f, 1577f, -1000f, 1911f), -746f, u_input.c), 1000f, Struct_2(vec3<bool>(arg_1, true, false)), vec3<bool>(false, arg_1, false))))), vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(16759u, 8944u)), ~u_input.a.x), _wgslsmith_div_u32(~53127u, ~func_3(Struct_1(vec4<f32>(-979f, -1000f, 341f, -203f), 2187f, u_input.c), -246f, Struct_2(vec3<bool>(false, arg_1, arg_1)), vec3<bool>(arg_1, true, false))), _wgslsmith_clamp_u32(select(0u, u_input.d.x, true), _wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_div_u32(u_input.d.x, 0u)) >> (u_input.c.x % 32u), _wgslsmith_clamp_u32(~u_input.d.x, ~1u, 0u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = arg_3.a.x;
    var var_1 = vec3<bool>(var_0, false, false);
    var_1 = vec3<bool>(!any(!(!vec4<bool>(arg_1.a.x, arg_3.a.x, var_1.x, var_0))), !var_0 || true, !all(select(vec2<bool>(var_1.x, arg_1.a.x), !arg_1.a.yz, true & arg_3.a.x)));
    var var_2 = Struct_1(arg_2.a, 664f, abs(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x), arg_2.c)) & _wgslsmith_mult_vec4_u32(func_2(~arg_2.c.xzz, true), ~(~u_input.c)));
    let var_3 = Struct_2(!arg_1.a);
    return ~vec3<u32>(~_wgslsmith_mod_u32(12727u & var_2.c.x, countOneBits(49705u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_2.c.x, 4294967295u, firstLeadingBit(u_input.a.x), 77253u), ~(vec4<u32>(7117u, 15227u, 13899u, 33696u) | arg_2.c)), arg_2.c.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = u_input.b.x;
    let var_1 = false | all(!vec2<bool>(arg_0.x, arg_0.x));
    let var_2 = _wgslsmith_mult_vec4_i32(abs(_wgslsmith_mult_vec4_i32(~select(vec4<i32>(-31838i, 2147483647i, 0i, -62520i), vec4<i32>(35257i, -13228i, -1i, 2147483647i), true), vec4<i32>(~u_input.b.x, 2322i & u_input.b.x, 1i, reverseBits(0i)))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.b.x, firstLeadingBit(-37680i)), -vec4<i32>(abs(u_input.b.x), firstTrailingBit(-33357i), 17678i >> (arg_1.x % 32u), 4770i & u_input.b.x)));
    var_0 = -(select(_wgslsmith_mod_i32(~var_2.x, var_2.x), _wgslsmith_add_i32(countOneBits(var_2.x), _wgslsmith_clamp_i32(u_input.b.x, -48346i, -9013i)), true) ^ 1i);
    var_0 = firstTrailingBit(1i & -_wgslsmith_mult_i32(var_2.x, 40348i));
    return Struct_2(vec3<bool>(arg_0.x, false, any(vec4<bool>(true, true, true, true))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_2.a), vec4<f32>(_wgslsmith_f_op_f32(638f - arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1337f), _wgslsmith_f_op_f32(-1000f - arg_2.a.x), 291f)))), arg_2.b, arg_2.c);
    let var_1 = ~0u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) * -1111f))));
    return StorageBuffer(~vec2<i32>(-50287i, -u_input.b.x >> (1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-169f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(u_input.c.wx, func_4(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), max(u_input.c.xyw, ~func_1(vec4<f32>(842f, -272f, 1387f, 575f), Struct_2(vec3<bool>(false, true, false)), Struct_1(vec4<f32>(1000f, 1160f, 289f, -1000f), 1041f, u_input.c), Struct_2(vec3<bool>(true, true, false))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1024f, -504f, 1000f, 2614f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(424f))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(9327u, 25175u, u_input.a.x, 63346u), u_input.c) | abs(u_input.c))));
}

