struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_4(Struct_1(true, ~u_input.e.yz ^ u_input.e.yz, abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, u_input.c, u_input.c), vec4<u32>(76798u, 32411u, 0u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.a))), -select(u_input.e, vec3<i32>(u_input.d, -7605i, 2147483647i), false)), Struct_1(arg_0, select(~firstLeadingBit(vec2<i32>(u_input.e.x, 2147483647i)), u_input.e.zz, arg_0), vec4<u32>(u_input.a, max(24485u, u_input.c), _wgslsmith_dot_vec4_u32(select(vec4<u32>(39047u, u_input.a, u_input.a, 10629u), vec4<u32>(u_input.a, 4294967295u, 13053u, u_input.a), arg_0), _wgslsmith_div_vec4_u32(vec4<u32>(14120u, 3602u, 1u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u))), countOneBits(30794u)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.e.x, 0i, u_input.e.x), vec3<i32>(u_input.e.x, 2147483647i, u_input.d), arg_0), u_input.e), vec3<i32>(-41063i, u_input.d, u_input.d))), ~(~(~vec4<u32>(u_input.c, 0u, u_input.c, u_input.c) | vec4<u32>(u_input.a, 0u, 40258u, 7668u))), Struct_2(~(~(~26155u))));
    let var_1 = var_0.a.c.xx;
    let var_2 = true;
    let var_3 = Struct_3(~_wgslsmith_mod_i32(~u_input.e.x, i32(-1i) * -23804i), Struct_2(_wgslsmith_mult_u32(~u_input.c << (1u % 32u), ~(~2800u))), select(!(!(!vec3<bool>(true, var_0.a.a, true))), select(vec3<bool>(!var_0.a.a, false, var_0.a.a), !vec3<bool>(var_2, var_2, var_0.b.a), vec3<bool>(arg_0, var_0.a.b.x >= u_input.b, true)), (u_input.d == (u_input.d | u_input.b)) && all(select(vec4<bool>(var_0.a.a, var_2, false, var_2), vec4<bool>(false, false, true, var_0.a.a), true))));
    let var_4 = _wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(abs(min(~1u, _wgslsmith_sub_u32(4294967295u, var_1.x))), abs(_wgslsmith_dot_vec2_u32(~var_1, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 59977u), var_1)))));
    return countOneBits(1u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_4) -> u32 {
    var var_0 = arg_2.b;
    var_0 = Struct_1(var_0.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-37729i, arg_2.b.b.x), _wgslsmith_sub_vec2_i32(var_0.b, vec2<i32>(arg_2.b.b.x, -2147483647i))), var_0.b, u_input.e.yx), var_0.c, arg_0 << (reverseBits(arg_2.c.wyw | (vec3<u32>(u_input.a, 0u, 38335u) & arg_2.a.c.yxz)) % vec3<u32>(32u)));
    var var_1 = ~1u;
    let var_2 = select(max(select(_wgslsmith_sub_vec3_i32(-u_input.e, firstTrailingBit(u_input.e)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-29096i, var_0.b.x, u_input.b), u_input.e, abs(arg_2.a.d)), !vec3<bool>(arg_2.a.a, arg_2.a.a, true)), u_input.e), ~vec3<i32>(var_0.b.x, reverseBits(u_input.b), 0i), !any(vec4<bool>(true, false, false, true)));
    var var_3 = ~(~(1u & func_3(arg_2.a.a)));
    return abs(select(abs(reverseBits(~37910u)), ~(var_0.c.x << (_wgslsmith_clamp_u32(arg_2.d.a, 9290u, 4294967295u) % 32u)), var_0.a));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> u32 {
    let var_0 = ~firstLeadingBit(min(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, u_input.b, arg_0.a, u_input.b) >> (vec4<u32>(75329u, 94206u, 7383u, arg_0.b.a) % vec4<u32>(32u)), vec4<i32>(arg_0.a, -56763i, -34639i, arg_0.a)), vec4<i32>(-16647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, arg_0.a, arg_0.a), u_input.e), u_input.e.x >> (12270u % 32u), 24760i)));
    let var_1 = ~firstLeadingBit(~vec2<u32>(4294967295u, firstLeadingBit(u_input.c)));
    var var_2 = arg_0.c;
    let var_3 = _wgslsmith_div_i32(-1i, max(~abs(abs(var_0.x)), reverseBits(_wgslsmith_div_i32(1i, -1i)) >> (~func_2(vec3<i32>(var_0.x, u_input.d, -7156i), var_2.xy, Struct_4(Struct_1(arg_0.c.x, vec2<i32>(arg_0.a, u_input.d), vec4<u32>(31916u, u_input.a, var_1.x, 1u), u_input.e), Struct_1(arg_0.c.x, var_0.zx, vec4<u32>(var_1.x, arg_0.b.a, 61252u, u_input.c), u_input.e), vec4<u32>(1u, arg_0.b.a, arg_1, 60066u), arg_0.b)) % 32u)));
    let var_4 = var_1;
    return 20113u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_div_u32(43175u, ~reverseBits(u_input.c)));
    var_0 = Struct_2(~(~(~(~var_0.a))));
    let var_1 = 32904u;
    var_0 = Struct_2(var_0.a);
    var var_2 = !(~var_1 == _wgslsmith_div_u32(var_1, func_1(Struct_3(u_input.e.x, Struct_2(4294967295u), vec3<bool>(true, true, false)), var_0.a)));
    var var_3 = reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, ~_wgslsmith_sub_i32(u_input.d, 30464i), u_input.e.x, u_input.d), -vec4<i32>(48805i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -30200i, u_input.e.x), vec4<i32>(-1i, 0i, -1i, u_input.d)), 21720i, ~u_input.b)));
    var_0 = Struct_2(u_input.a);
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -812f);
    let var_5 = u_input.e.yy;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_clamp_i32(var_5.x, i32(-1i) * -13831i, abs(2147483647i)) & -1i) << (20443u % 32u), ~var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-235f, 927f, -1339f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1361f) + _wgslsmith_f_op_f32(-196f - 1187f)), -175f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1471f)), -342f)))));
}

