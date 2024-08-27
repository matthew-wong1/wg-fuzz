struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec4<f32> {
    var var_0 = select(select(!vec4<bool>(true, !arg_1, arg_1, select(arg_0.e.b.x, true, true)), select(!vec4<bool>(true, true, arg_1, arg_0.e.b.x), select(select(vec4<bool>(false, arg_1, arg_1, arg_0.c.b.x), vec4<bool>(arg_1, arg_1, false, false), arg_0.e.b.x), select(vec4<bool>(arg_1, false, arg_1, arg_0.e.b.x), vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, false, false), vec4<bool>(true, arg_0.e.b.x, arg_1, false)), select(vec4<bool>(false, false, false, arg_1), vec4<bool>(true, false, true, false), arg_0.c.b.x)), true || (u_input.c >= -19363i)), select(select(vec4<bool>(arg_0.e.b.x, arg_1, arg_0.c.b.x, arg_0.e.b.x), vec4<bool>(arg_0.c.b.x, arg_1, arg_0.c.b.x, true), !vec4<bool>(true, arg_1, false, false)), !select(vec4<bool>(arg_1, false, false, arg_0.e.b.x), vec4<bool>(false, arg_1, arg_1, true), arg_1), true)), vec4<bool>(false, !(arg_0.e.b.x & false), arg_1, any(select(vec2<bool>(arg_1, false), arg_0.c.b.xy, false))), ~(48106u | abs(arg_0.a.x)) <= 22135u);
    var_0 = vec4<bool>(!select(all(vec2<bool>(false, true)), true, var_0.x), (-1i >= ((u_input.d.x & 2147483647i) >> (~arg_0.a.x % 32u))) | ((arg_0.d.x < abs(0u)) | true), true, var_0.x);
    let var_1 = Struct_3(arg_0.e, u_input.b.zx);
    var var_2 = u_input.a;
    var_0 = vec4<bool>(!all(arg_0.e.b.xz), any(!vec4<bool>(all(vec4<bool>(false, arg_1, false, true)), arg_0.e.a.x < var_1.a.a.x, false, !arg_1)), !(!var_1.a.b.x & true), !arg_0.c.b.x);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -735f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-764f + 672f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_f_op_f32(floor(861f)), all(vec2<bool>(arg_1, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_f_op_f32(max(-2329f, 2594f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 512f, 1517f, 1055f)), vec4<f32>(-1820f, 186f, -776f, -1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1435f, 677f, 541f, 1155f))))), !select(vec4<bool>(var_1.a.b.x && false, var_1.a.b.x, false, true), !(!vec4<bool>(var_1.a.b.x, arg_0.e.b.x, false, false)), !(!vec4<bool>(var_1.a.b.x, false, arg_0.e.b.x, arg_1)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> vec3<u32> {
    let var_0 = vec2<bool>((-1084i | _wgslsmith_add_i32(-u_input.d.x, -2147483647i)) < u_input.d.x, false);
    var var_1 = -vec4<i32>(abs(u_input.d.x), 2147483647i ^ _wgslsmith_div_i32(u_input.c, 0i), u_input.c, u_input.c);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-499f, 928f, 1487f, -1967f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<u32>(arg_1, arg_1), arg_1 | arg_1, Struct_1(u_input.a.zy, arg_0), vec2<u32>(arg_1, 227u) << (vec2<u32>(61529u, arg_1) % vec2<u32>(32u)), Struct_1(var_1.zz, vec3<bool>(arg_0.x, true, false))), true)) * vec4<f32>(-123f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(872f)), -229f)), _wgslsmith_f_op_f32(f32(-1f) * -1821f), 704f)));
    var_1 = vec4<i32>(~firstTrailingBit(~2521i), 2147483647i, _wgslsmith_clamp_i32(35834i, u_input.a.x, u_input.b.x), 0i);
    var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1460f, -356f, var_2.x, -1638f) - vec4<f32>(var_2.x, var_2.x, var_2.x, 1987f)), vec4<f32>(-1356f, var_2.x, var_2.x, var_2.x)) + vec4<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(-1105f)), var_2.x, _wgslsmith_div_f32(221f, -588f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_div_f32(var_2.x, var_2.x), var_2.x, var_2.x)))), vec4<bool>((var_1.x ^ ~var_1.x) <= 0i, _wgslsmith_f_op_f32(-819f - _wgslsmith_f_op_f32(abs(var_2.x))) != var_2.x, all(vec2<bool>(true, true)), false)));
    return vec3<u32>(arg_1, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(firstLeadingBit(vec4<u32>(arg_1, 14651u, arg_1, 4294967295u)), ~vec4<u32>(arg_1, 1u, arg_1, arg_1), vec4<bool>(true, true, var_0.x, false)), vec4<u32>(~14220u, arg_1, arg_1 | 40113u, countOneBits(1u))), vec4<u32>(arg_1 | abs(106255u), ~reverseBits(arg_1), arg_1, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(arg_1, arg_1)), vec2<u32>(arg_1, arg_1)))), _wgslsmith_div_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 4294967295u, 1u), vec4<u32>(34881u, 0u, arg_1, 1u))) ^ 14536u, 0u));
}

fn func_1() -> u32 {
    let var_0 = true;
    return _wgslsmith_dot_vec3_u32(~abs(func_2(vec3<bool>(false, true, var_0), 10045u) | vec3<u32>(3694u, 27125u, 0u)), ~abs(~vec3<u32>(4294967295u, 69302u, 5356u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_div_vec3_u32(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 12528u), vec3<u32>(75543u, 10227u, 55668u), vec3<u32>(0u, 1368u, 1u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), vec3<u32>(1u, func_1(), ~30657u)));
    let var_1 = Struct_1(max(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(345i, u_input.d.x, u_input.d.x, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(17547i, u_input.d.x, 6397i, 0i), u_input.b, u_input.b)), 40367i), ~u_input.a.xz), select(vec3<bool>(true & all(vec2<bool>(false, false)), true, true), !vec3<bool>(all(vec4<bool>(false, true, false, false)), true, all(vec2<bool>(false, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1397f, 1241f))) + 1f), -380f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<u32>(4294967295u, var_0.x), var_0.x, Struct_1(vec2<i32>(20555i, -82844i), var_1.b), var_0.yx, Struct_1(vec2<i32>(var_1.a.x, 2147483647i), vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x))), false)).x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-222f - _wgslsmith_div_f32(-1000f, -425f))))));
    var_0 = ~(~firstLeadingBit(vec3<u32>(~4294967295u, var_0.x << (59856u % 32u), ~var_0.x)));
    let var_3 = -23395i;
    var_0 = ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(87115u, 0u, 102923u)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, 33849u), vec3<u32>(1432u, 0u, 62005u)), abs(vec3<u32>(9545u, var_0.x, var_0.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(var_0.x, 4294967295u, var_0.x))), max(~vec3<u32>(var_0.x, var_0.x, var_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(61922u, var_0.x, var_0.x), vec3<u32>(var_0.x, 115256u, var_0.x))) << (vec3<u32>(86942u ^ var_0.x, var_0.x, 1u) % vec3<u32>(32u)));
    let var_4 = Struct_3(Struct_1(select(var_1.a, abs(var_1.a), select(!vec2<bool>(var_1.b.x, var_1.b.x), var_1.b.xz, true | var_1.b.x)), vec3<bool>(all(select(vec2<bool>(var_1.b.x, var_1.b.x), var_1.b.xx, var_1.b.x)), all(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false)), true)), -firstTrailingBit(vec2<i32>(-19635i >> (var_0.x % 32u), u_input.c)));
    var var_5 = Struct_3(Struct_1(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(14742i, 0i), var_1.a.x), -(~var_3)), var_4.a.b), select(u_input.b.zz, u_input.a.xx, any(select(vec2<bool>(var_4.a.b.x, false), var_4.a.b.zy, var_1.b.x))) >> (~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(var_0.x, 4294967295u), var_0.zx), _wgslsmith_div_vec2_u32(var_0.yy, vec2<u32>(0u, 20093u)), vec2<u32>(var_0.x, 0u)) % vec2<u32>(32u)));
    let var_6 = Struct_1(min(~vec2<i32>(-49637i, _wgslsmith_sub_i32(-2147483647i, var_1.a.x)), select(var_1.a ^ (var_1.a << (vec2<u32>(var_0.x, 783u) % vec2<u32>(32u))), min(_wgslsmith_mod_vec2_i32(vec2<i32>(-40570i, 1i), vec2<i32>(u_input.b.x, var_5.b.x)), var_4.a.a), true)), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_i32(_wgslsmith_sub_i32(42257i, var_4.a.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), var_5.a.a)), max(-2147483647i, _wgslsmith_mult_i32(-1i, 7565i))) | -var_4.a.a.x, 1f, vec2<i32>(max(_wgslsmith_clamp_i32(var_3, var_4.a.a.x << (0u % 32u), ~var_4.b.x), var_1.a.x), ~max(11870i, var_4.a.a.x) ^ (var_6.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 37244u, var_0.x, 54950u), vec4<u32>(10433u, var_0.x, 0u, var_0.x)) % 32u))));
}

