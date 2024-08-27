struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4) -> bool {
    var var_0 = arg_0;
    var var_1 = true;
    var var_2 = -(~select(~vec2<i32>(var_0.b.a.x, -1i), arg_0.b.a.zy, !arg_0.b.b.d.xx) ^ var_0.b.a.zx);
    var_0 = Struct_4(true, Struct_2(select(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, -45820i), var_0.b.b.b.wzz)), vec3<i32>(_wgslsmith_clamp_i32(1i, var_2.x, -1i), var_2.x, ~arg_0.b.b.c), all(!vec4<bool>(var_0.b.b.a, var_0.b.b.d.x, false, arg_0.b.b.a))), Struct_1(var_0.b.b.d.x, vec4<i32>(arg_0.b.b.c, countOneBits(-2147483647i), 1i, var_2.x ^ -4036i), arg_0.b.a.x, !arg_0.b.b.d, select(vec4<u32>(61308u, arg_0.b.b.e.x, 70012u, arg_0.b.b.e.x), vec4<u32>(80403u, var_0.b.b.e.x, 95252u, 0u) << (var_0.b.b.e % vec4<u32>(32u)), true))));
    let var_3 = 1u;
    return true;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_4(!(!(true | func_3(Struct_4(false, Struct_2(vec3<i32>(-35403i, -22898i, -28411i), Struct_1(arg_0, vec4<i32>(69876i, arg_1.x, -1i, arg_1.x), arg_1.x, vec3<bool>(true, arg_0, arg_0), vec4<u32>(u_input.a.x, 73556u, u_input.a.x, u_input.a.x))))))), Struct_2(min(max(-vec3<i32>(-20348i, -2147483647i, arg_1.x), vec3<i32>(10030i, arg_1.x, 1i)), vec3<i32>(firstLeadingBit(-1i), 93136i, arg_1.x)), Struct_1(any(vec4<bool>(false, arg_0, arg_0, arg_0)), vec4<i32>(arg_1.x, 1i, 6362i, -11896i), arg_1.x, select(select(vec3<bool>(arg_0, true, false), vec3<bool>(true, arg_0, true), false), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), true), !vec3<bool>(arg_0, arg_0, arg_0)), vec4<u32>(firstTrailingBit(18271u), 4294967295u, ~4294967295u, u_input.a.x))));
    let var_1 = Struct_1(var_0.b.b.a, vec4<i32>(min(-arg_1.x << (16044u % 32u), _wgslsmith_div_i32(~(-49432i), i32(-1i) * -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(28159i, 1i, 2147483647i, -1i), var_0.b.b.b), 0i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_0.b.b.b.x, 1i), var_0.b.b.c, _wgslsmith_mult_i32(24598i, _wgslsmith_add_i32(var_0.b.b.b.x, arg_1.x)))), var_0.b.b.b.x, var_0.b.b.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(1u), ~4294967295u, u_input.a.x, 0u), ~(~_wgslsmith_clamp_vec4_u32(var_0.b.b.e, var_0.b.b.e, var_0.b.b.e)), vec4<u32>(_wgslsmith_div_u32(0u ^ var_0.b.b.e.x, u_input.a.x), 11400u, ~var_0.b.b.e.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_0.b.b.e.x, var_0.b.b.e.x)), 0u))));
    let var_2 = Struct_1(var_0.a, vec4<i32>(-1i) * -vec4<i32>(1i, _wgslsmith_dot_vec3_i32(var_0.b.a, vec3<i32>(var_0.b.b.c, -32689i, arg_1.x)), _wgslsmith_clamp_i32(1i, arg_1.x, arg_1.x), ~(-27314i)), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(742i, var_1.c, 1i) ^ vec3<i32>(arg_1.x, arg_1.x, 2147483647i), vec3<i32>(-1i, -1i, var_0.b.b.b.x))), !(!var_0.b.b.d), var_1.e & vec4<u32>(var_0.b.b.e.x, 54752u, var_0.b.b.e.x, 5131u));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -653f) - _wgslsmith_f_op_f32(-1203f - -1560f)) + 1505f)), _wgslsmith_f_op_f32(-998f - _wgslsmith_f_op_f32(f32(-1f) * -861f)), arg_0));
    var var_4 = vec2<f32>(610f, _wgslsmith_f_op_f32(345f - -1000f));
    return Struct_2(var_1.b.yyy, Struct_1(var_1.d.x, -vec4<i32>(-2147483647i, var_2.b.x, select(var_2.b.x, arg_1.x, true), arg_1.x), arg_1.x, select(select(select(vec3<bool>(true, false, false), var_0.b.b.d, arg_0), !vec3<bool>(true, var_2.a, true), arg_0), var_0.b.b.d, !select(var_2.d, vec3<bool>(false, true, false), vec3<bool>(true, false, arg_0))), vec4<u32>(var_0.b.b.e.x, ~_wgslsmith_mod_u32(var_0.b.b.e.x, u_input.a.x), var_1.e.x, var_0.b.b.e.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32, arg_3: vec4<i32>) -> vec4<u32> {
    var var_0 = arg_1.b.e.zxx;
    let var_1 = max(_wgslsmith_dot_vec2_i32(reverseBits(arg_3.xx), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(arg_3.x, -24931i), arg_3.yw)) ^ _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_3.x, arg_1.a.x), arg_3.yz), select(vec2<i32>(arg_1.b.b.x, 0i), arg_3.yw, arg_0), reverseBits(arg_1.b.b.yz))), _wgslsmith_mult_i32(-1i, _wgslsmith_add_i32((arg_3.x >> (22921u % 32u)) << ((u_input.a.x >> (arg_2 % 32u)) % 32u), arg_1.b.b.x & _wgslsmith_sub_i32(arg_3.x, arg_1.b.b.x))));
    let var_2 = max(countOneBits(~(~select(vec4<u32>(u_input.a.x, u_input.a.x, 63566u, arg_2), arg_1.b.e, vec4<bool>(false, false, arg_1.b.a, true)))), arg_1.b.e);
    var var_3 = Struct_1(true, abs(-arg_3) & arg_3, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(arg_3, vec4<i32>(-2147483647i, arg_1.b.c, 2147483647i, arg_3.x)), 0i, 1i), -vec3<i32>(-15878i, 1i, -1i) >> (~vec3<u32>(arg_2, 4741u, 12330u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(arg_1.a, vec3<i32>(-1i, var_1, arg_1.a.x), firstLeadingBit(arg_1.b.b.wxy))), vec3<i32>(-2147483647i, arg_3.x, firstTrailingBit(firstTrailingBit(arg_1.b.b.x)))), !select(vec3<bool>(false, false, all(arg_1.b.d.zx)), vec3<bool>(arg_0.x | true, arg_0.x && arg_0.x, !arg_0.x), arg_0.x), vec4<u32>(~_wgslsmith_add_u32(66231u, var_2.x & arg_2), 1u, ~func_2(true, ~vec2<i32>(-4208i, arg_1.b.b.x)).b.e.x, 4563u));
    let var_4 = Struct_4(select(arg_0.x, true, arg_1.b.a), arg_1);
    return firstLeadingBit(vec4<u32>(firstTrailingBit(~var_4.b.b.e.x), var_0.x & u_input.a.x, _wgslsmith_div_u32(4294967295u, arg_1.b.e.x), _wgslsmith_mod_u32(~var_3.e.x, arg_2)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = Struct_3(Struct_1(true, -arg_0.b, firstLeadingBit(arg_1), vec3<bool>(arg_0.d.x, true, select(!arg_0.d.x, arg_0.a, all(vec3<bool>(arg_0.a, false, false)))), func_4(select(arg_0.d.zx, vec2<bool>(arg_0.d.x, arg_0.a), !vec2<bool>(arg_0.d.x, true)), func_2(arg_0.d.x && false, select(vec2<i32>(-1i, 26197i), vec2<i32>(arg_1, arg_0.c), arg_0.a)), ~(0u | u_input.a.x), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -44399i, arg_1), arg_0.b), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, 2147483647i, arg_0.c, arg_0.c), arg_0.b)))), max(~(vec3<u32>(1u, 39469u, u_input.a.x) | arg_0.e.xyx), ~_wgslsmith_div_vec3_u32(arg_0.e.wxw, vec3<u32>(1u, 22536u, 39100u)) ^ _wgslsmith_mult_vec3_u32(~arg_0.e.xwz, arg_0.e.wwx)), Struct_1(false, vec4<i32>(2147483647i, ~_wgslsmith_mult_i32(-14640i, arg_1), ~(arg_1 >> (arg_0.e.x % 32u)), abs(1i)), _wgslsmith_add_i32(-1i, firstTrailingBit(~1i)), vec3<bool>(true, any(!vec3<bool>(false, arg_0.a, true)), true), firstLeadingBit(vec4<u32>(u_input.a.x, 90010u, 4294967295u, u_input.a.x | arg_0.e.x))));
    return ~firstTrailingBit(firstTrailingBit(max(1u, 31630u))) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x >> (var_0.c.e.x % 32u), abs(102766u), 7558u, ~arg_0.e.x), reverseBits(vec4<u32>(4294967295u, 63782u, 4294967295u, 65172u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~u_input.a.x, u_input.a.x, ~firstTrailingBit(~(u_input.a.x ^ u_input.a.x)), u_input.a.x);
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, ~firstLeadingBit(_wgslsmith_add_u32(0u, 6438u)), _wgslsmith_div_u32(~52740u, u_input.a.x), _wgslsmith_sub_u32(var_0.x >> ((0u | u_input.a.x) % 32u), u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, ~(~9770u), firstLeadingBit(1u), var_0.x), vec4<u32>(u_input.a.x, _wgslsmith_div_u32(~25609u, ~u_input.a.x), _wgslsmith_clamp_u32(func_1(Struct_1(false, vec4<i32>(-27451i, -42090i, 2147483647i, -1i), 2147483647i, vec3<bool>(false, false, false), vec4<u32>(u_input.a.x, 1u, 55095u, 2221u)), -1280i), ~77945u, var_0.x), ~select(1u, 1u, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2724f), 617f, _wgslsmith_f_op_f32(-287f + -1385f), _wgslsmith_f_op_f32(abs(376f))), vec4<f32>(_wgslsmith_f_op_f32(-1055f + -1138f), _wgslsmith_f_op_f32(-360f - -407f), _wgslsmith_div_f32(772f, 1096f), -720f)))));
    var_0 = ~(max(_wgslsmith_div_vec4_u32(select(vec4<u32>(12893u, 0u, u_input.a.x, var_0.x), vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x), vec4<bool>(true, false, false, false)), ~vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, 4294967295u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 94813u, 27905u, u_input.a.x), vec4<u32>(25787u, var_0.x, u_input.a.x, var_0.x), vec4<u32>(27878u, 4294967295u, u_input.a.x, u_input.a.x))) >> (~reverseBits(vec4<u32>(u_input.a.x, 7110u, 11338u, var_0.x)) % vec4<u32>(32u)));
    let var_2 = Struct_4(false, func_2(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(min(var_1.x, -1636f)))) > var_1.x, min(_wgslsmith_mod_vec2_i32(vec2<i32>(757i, 44289i), vec2<i32>(1i, 1i)) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(max(23371i, 27670i), i32(-1i) * -1715i))));
    var_0 = var_2.b.b.e;
    let var_3 = var_1.x >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(607f)), var_1.x), _wgslsmith_f_op_f32(floor(var_1.x))))));
    var_0 = var_2.b.b.e;
    var_0 = var_2.b.b.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-941f, 107f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1032f, _wgslsmith_f_op_f32(f32(-1f) * -727f)) * vec2<f32>(-1000f, _wgslsmith_div_f32(var_1.x, 978f)))), func_1(Struct_1(false, ~vec4<i32>(var_2.b.b.c, 57005i, -29041i, var_2.b.b.b.x), var_2.b.a.x, func_2(!var_3, vec2<i32>(-19287i, 10444i)).b.d, var_2.b.b.e), ~(-(-2147483647i >> (u_input.a.x % 32u)))));
}

