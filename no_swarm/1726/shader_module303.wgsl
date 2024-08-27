struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(66611u, 64595u);

var<private> global1: vec2<i32> = vec2<i32>(36962i, 1i);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_dot_vec4_u32(~min((vec4<u32>(u_input.a, 58907u, 4294967295u, 15910u) & vec4<u32>(4834u, u_input.d.x, 1u, 4294967295u)) | ~vec4<u32>(0u, u_input.d.x, u_input.a, global0.x), max(vec4<u32>(u_input.a, u_input.d.x, 16653u, 0u), vec4<u32>(global0.x, 1u, 0u, 0u))), ~(vec4<u32>(33025u, ~global0.x, global0.x ^ global0.x, u_input.d.x | u_input.a) << (~countOneBits(vec4<u32>(global0.x, 4294967295u, global0.x, u_input.a)) % vec4<u32>(32u))));
    var var_1 = Struct_3(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-15941i, u_input.e.x), u_input.c.x), select(-vec2<i32>(3832i, -1842i), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, global1.x), vec2<i32>(u_input.c.x, global1.x)), vec2<bool>(true, true))), ~max(-global1.x, 70688i & global1.x)), abs(~(vec2<u32>(62453u, 1u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -580f), _wgslsmith_f_op_f32(924f - 1066f)));
    var var_2 = abs(_wgslsmith_mult_u32(~102939u, u_input.d.x));
    var var_3 = vec2<u32>(_wgslsmith_div_u32(global0.x, u_input.d.x) ^ (global0.x >> (~global0.x % 32u)), (1u & u_input.d.x) ^ _wgslsmith_mult_u32(4697u, ~abs(u_input.a)));
    var var_4 = Struct_2(u_input.e & -u_input.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1090f, var_1.d.x, var_1.d.x, -1788f) - vec4<f32>(var_1.d.x, var_1.d.x, 312f, var_1.d.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, -703f, 1085f, -730f) - vec4<f32>(661f, -764f, -1545f, var_1.d.x)))) - vec4<f32>(_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_div_f32(var_1.d.x, var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1178f * var_1.d.x) + 100f))), false);
    return false;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> Struct_2 {
    global1 = _wgslsmith_mod_vec2_i32(~abs(~vec2<i32>(global1.x, global1.x)), u_input.c.zy);
    var var_0 = arg_1 | any(vec4<bool>(!arg_1, any(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1), arg_1)), arg_1 & (1u <= global0.x), func_3()));
    var_0 = arg_1;
    var var_1 = arg_0.x;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-244f))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - 1f), -182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x)) - 439f)));
    return Struct_2(abs(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(0i, -24958i, global1.x, u_input.b.x)), _wgslsmith_add_vec4_i32(u_input.e >> (vec4<u32>(global0.x, u_input.d.x, global0.x, global0.x) % vec4<u32>(32u)), select(u_input.e, vec4<i32>(13429i, -91699i, 41918i, global1.x), arg_1)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(688f, var_2.x, var_2.x, var_2.x)))))))), true);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_add_vec2_i32(~(~vec2<i32>(0i, 91462i)), _wgslsmith_mod_vec2_i32(u_input.c.yy, vec2<i32>(arg_2.a.x, u_input.b.x)))), firstTrailingBit(_wgslsmith_sub_i32(~8874i ^ (arg_1.x & -1i), firstTrailingBit(~arg_0.a.x))));
    var var_1 = -371f;
    global0 = u_input.d.yy;
    global0 = vec2<u32>(4444u, ~(~countOneBits(6514u)));
    var var_2 = -(vec2<i32>(var_0.a.x, 1i) & select(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 20087i), var_0.a), -vec2<i32>(29913i, u_input.b.x), arg_2.c));
    return u_input.c.xz;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_3) -> vec4<bool> {
    global1 = ~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, i32(-1i) * -1i), func_4(func_2(arg_2.xx, false), countOneBits(u_input.c), Struct_2(u_input.e, vec4<f32>(arg_2.x, -562f, 924f, -142f), true))), arg_3.b.a);
    let var_0 = arg_3.a;
    global0 = max(vec2<u32>(~52029u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3.c.x, arg_3.c.x, arg_3.c.x, 4294967295u), vec4<u32>(arg_3.c.x, 83065u, u_input.a, 4294967295u) >> (vec4<u32>(u_input.d.x, arg_3.c.x, 0u, 0u) % vec4<u32>(32u)))), u_input.d.xx) >> (arg_3.c % vec2<u32>(32u));
    let var_1 = select(arg_3.a.x, true, select(!arg_3.a.x, true, false));
    var var_2 = arg_0;
    return vec4<bool>(true, any(!(!(!vec4<bool>(arg_3.a.x, var_0.x, true, var_0.x)))), var_0.x & arg_3.a.x, arg_2.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - 821f) * _wgslsmith_div_f32(-1000f, arg_3.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_u32(select(vec3<u32>(~1u, u_input.a, u_input.a), vec3<u32>(1u >> (global0.x % 32u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(106895u, 4294967295u), firstLeadingBit(5143u), select(4294967295u, 1u, true)), global0.x), true), u_input.d);
    var var_1 = select(all(!func_1(Struct_1(u_input.b, -2147483647i), countOneBits(global1.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(771f, 261f, 1893f))), Struct_3(vec2<bool>(false, false), Struct_1(vec2<i32>(0i, 40387i), -1i), u_input.d.yx, vec2<f32>(-967f, 855f)))), any(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, any(vec4<bool>(false, true, true, false)), true, all(vec2<bool>(false, true))))), all(vec3<bool>(true, global0.x < _wgslsmith_add_u32(var_0.x, global0.x), false)));
    let var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-282f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1794f * func_2(vec2<f32>(920f, -969f), true).b.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-979f)), -1413f))), _wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(615f)), _wgslsmith_f_op_f32(357f + -654f)))))), Struct_2(firstLeadingBit(vec4<i32>(2147483647i, 17770i, u_input.c.x, global1.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(975f - 1910f)), -779f, 907f, _wgslsmith_f_op_f32(f32(-1f) * -201f)), select(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1923f, 107f)), select(true, false, false)).c, true, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false)))), abs(vec2<i32>((global1.x >> (u_input.d.x % 32u)) & (global1.x << (101613u % 32u)), countOneBits(-2192i))), abs(vec3<u32>(~(u_input.a & 1u), firstLeadingBit(u_input.a), 0u)));
    let var_3 = vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1634f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1365f - var_2.a.x), 931f)), all(!vec3<bool>(false, var_2.c.c, false))))), -721f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -527f)), _wgslsmith_f_op_f32(step(var_2.c.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1000f, 1605f)))))))));
    var_1 = !var_2.c.c;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1837f)))), _wgslsmith_f_op_f32(f32(-1f) * -1508f), var_3.x);
    let var_5 = var_4;
    let var_6 = Struct_5(Struct_1(vec2<i32>(_wgslsmith_mod_i32(u_input.e.x, 50888i), ~_wgslsmith_add_i32(2147483647i, 0i)), u_input.e.x), Struct_2(_wgslsmith_div_vec4_i32(~(vec4<i32>(u_input.e.x, var_2.d.x, 13815i, 2147483647i) >> (vec4<u32>(u_input.d.x, u_input.a, u_input.a, var_0.x) % vec4<u32>(32u))), ~u_input.e), _wgslsmith_f_op_vec4_f32(-var_3), select(any(!vec4<bool>(var_2.c.c, var_2.c.c, false, var_2.c.c)), func_3(), var_2.c.c)), false != var_2.c.c);
    var var_7 = var_2.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.a.xw);
}

