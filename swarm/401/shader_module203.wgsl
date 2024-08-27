struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool) -> i32 {
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    var var_0 = vec2<i32>(u_input.b.x, ~_wgslsmith_mod_i32(~_wgslsmith_mod_i32(u_input.b.x, -32139i), -37438i));
    return 1i;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 5u)];
    var var_1 = !vec4<bool>(any(var_0.b.xy), var_0.b.x, any(select(!vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), false)), all(select(vec4<bool>(arg_0.x, true, var_0.b.x, var_0.b.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), select(false, var_0.b.x, arg_0.x))));
    let var_2 = Struct_2(59355u, var_1.wzw, false, _wgslsmith_f_op_f32(trunc(arg_1.x)), var_0.e);
    var_0 = Struct_2(~reverseBits(var_2.a & abs(68434u)), !var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -279f), -436f)) + arg_2) <= _wgslsmith_f_op_f32(1444f - arg_2), var_2.d, Struct_1(var_0.e.a, _wgslsmith_div_f32(var_2.e.b, -734f), _wgslsmith_mod_vec3_i32(u_input.b.xyw, u_input.a), u_input.b.x));
    let var_3 = _wgslsmith_f_op_f32(abs(1026f));
    return var_2.a;
}

fn func_4(arg_0: f32, arg_1: u32) -> vec3<f32> {
    var var_0 = Struct_1((_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, vec4<i32>(u_input.b.x, 24127i, 1i, u_input.b.x)), ~vec4<i32>(u_input.b.x, 19628i, u_input.b.x, 82644i)) ^ u_input.b) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1, arg_1, arg_1, 0u), abs(vec4<u32>(arg_1, arg_1, arg_1, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1096f), -u_input.b.zzx, u_input.a.x);
    var_0 = Struct_1(~(~vec4<i32>(var_0.a.x | u_input.a.x, u_input.a.x, -u_input.a.x, -65331i)), arg_0, u_input.a, u_input.a.x);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_1, 72069u), 0u, select(0u, 32396u, false)), (vec3<u32>(4294967295u, arg_1, arg_1) & vec3<u32>(arg_1, arg_1, arg_1)) >> (~vec3<u32>(0u, arg_1, 1u) % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(47417u, 14407u, 0u) | select(vec3<u32>(arg_1, arg_1, 43258u), vec3<u32>(1u, arg_1, arg_1), true), vec3<u32>(arg_1, countOneBits(4294967295u), 58094u), abs(countOneBits(vec3<u32>(1u, arg_1, 44761u)))), (max(~vec3<u32>(0u, arg_1, arg_1), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 29515u, 4294967295u), vec3<u32>(arg_1, 4294967295u, 4294967295u))) ^ firstLeadingBit(abs(vec3<u32>(4294967295u, 34359u, arg_1)))) >> (select(~vec3<u32>(4294967295u, arg_1, 4294967295u) & vec3<u32>(arg_1, 0u, 1u), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(13609u, 36804u, 4507u), vec3<u32>(54875u, arg_1, arg_1), vec3<u32>(1u, 39106u, arg_1)), vec3<u32>(78947u, arg_1, arg_1)), false) % vec3<u32>(32u))), 5u)];
    let var_2 = var_1.a;
    let var_3 = !select(!vec4<bool>(true, -644f <= arg_0, u_input.b.x <= u_input.b.x, all(vec3<bool>(true, true, false))), select(vec4<bool>(true, true, var_1.b.x | var_1.c, false || var_1.b.x), select(!vec4<bool>(var_1.c, var_1.b.x, true, var_1.b.x), vec4<bool>(var_1.c, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(var_1.c, true, false, true)), false), !vec4<bool>(false, true, any(vec4<bool>(var_1.b.x, var_1.c, var_1.c, var_1.c)), all(vec3<bool>(var_1.c, var_1.b.x, var_1.b.x))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -427f, 514f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1149f, 284f), vec3<f32>(-895f, var_0.b, arg_0), vec3<bool>(var_3.x, var_3.x, true))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, var_0.b, var_0.b), vec3<f32>(arg_0, 997f, arg_0), var_3.wyy))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1068f, var_0.b, arg_0) * vec3<f32>(var_0.b, var_1.e.b, arg_0))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> i32 {
    global0 = array<Struct_2, 5>();
    let var_0 = _wgslsmith_sub_i32(i32(-1i) * -func_2(all(vec4<bool>(true, true, false, false))), 1i);
    global0 = array<Struct_2, 5>();
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1006f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1194f + 1209f))) - _wgslsmith_div_f32(-252f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(562f + 219f), 2265f))), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(56890u, 30833u, 0u, 99727u))) << (_wgslsmith_add_u32(func_3(vec2<bool>(true, false), vec3<f32>(632f, -240f, 2377f), -654f) << (1u % 32u), ~(~1u)) % 32u)));
    var var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(12819u, 48314u)), 5u)];
    return 29526i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 5>();
    var var_0 = ~(~firstTrailingBit(countOneBits(vec3<u32>(2230u, 39462u, 94189u))) >> (~vec3<u32>(~17884u, _wgslsmith_mod_u32(55553u, 17765u), ~14171u) % vec3<u32>(32u)));
    global0 = array<Struct_2, 5>();
    let var_1 = ~(~(~var_0.x << (~(var_0.x >> (var_0.x % 32u)) % 32u)));
    let var_2 = var_0.zx;
    let var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(select(var_2.x, ~var_2.x, true), var_0.x), vec2<u32>(~var_0.x, 0u));
    var_0 = vec3<u32>(4294967295u, _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(var_3.x, 4294967295u), firstLeadingBit(1u), var_3.x), 1u);
    var var_4 = Struct_2(~_wgslsmith_div_u32(~(~4294967295u), var_1), !vec3<bool>(true, !select(true, true, true), true), true, 1248f, Struct_1(_wgslsmith_clamp_vec4_i32(u_input.b, firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-14463i, u_input.a.x, u_input.b.x, -41606i), u_input.b)), ~min(vec4<i32>(55926i, -10900i, u_input.a.x, u_input.a.x), u_input.b)), _wgslsmith_f_op_f32(sign(-399f)), ~(-(~u_input.b.yyy)), func_1(-u_input.b.zw, ~(-36374i))));
    let x = u_input.a;
    s_output = StorageBuffer((~(~vec3<u32>(var_3.x, var_1, 49711u)) ^ countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, 8759u, var_3.x), vec3<u32>(4294967295u, var_2.x, var_4.a)))) << (vec3<u32>(var_3.x, var_3.x, _wgslsmith_clamp_u32(0u, 4294967295u, var_1) ^ ~var_3.x) % vec3<u32>(32u)), firstLeadingBit(vec4<i32>(-7381i, abs(-1i), func_2(true), ~var_4.e.d ^ -var_4.e.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_4.d), _wgslsmith_div_f32(var_4.e.b, 313f), 742f, _wgslsmith_f_op_f32(-var_4.e.b))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1075f + var_4.d), _wgslsmith_f_op_vec3_f32(func_4(620f, 4294967295u)).x, var_4.d, 545f)))), -vec3<i32>(_wgslsmith_mod_i32(1i, 35552i) ^ func_1(vec2<i32>(69577i, u_input.a.x), -23854i), select(var_4.e.d, select(var_4.e.c.x, -1i, true), true), max(u_input.a.x, u_input.a.x) >> (1u % 32u)));
}

