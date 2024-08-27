struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<f32>) -> bool {
    var var_0 = Struct_3(_wgslsmith_mod_u32(23504u, select(1u, 1u, arg_0)), Struct_2(reverseBits(min(u_input.b, _wgslsmith_div_i32(arg_1.c, 2255i))), -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a, -30886i), -25932i, i32(-1i) * -12357i), arg_1, ~select(vec3<u32>(1u, 1772u, 4754u), ~vec3<u32>(arg_1.b.x, 71587u, 1u), arg_0), arg_1), 2147483647i, vec3<f32>(arg_3.x, -375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f))));
    var_0 = Struct_3(~(~(~81378u)), Struct_2(select(-2147483647i, var_0.b.c.c, arg_0), countOneBits(_wgslsmith_mult_i32(-2147483647i, arg_1.c) & arg_1.c), var_0.b.e, var_0.b.d, var_0.b.c), -arg_1.c, vec3<f32>(-261f, 937f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2138f + var_0.d.x) - _wgslsmith_f_op_f32(arg_3.x * 384f))))));
    var var_1 = select(select(!(!(!vec4<bool>(true, arg_0, arg_0, arg_0))), vec4<bool>(true, _wgslsmith_f_op_f32(step(var_0.d.x, arg_3.x)) != _wgslsmith_f_op_f32(ceil(var_0.d.x)), arg_0, arg_0), true), select(select(select(!vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(true, arg_0, true, arg_0), true), vec4<bool>(arg_0, var_0.b.d.x <= 24043u, arg_0 | true, true), !(!vec4<bool>(false, arg_0, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(false, true, false)), arg_0, false), var_0.d.x > 102f), select(!vec4<bool>(true, true, arg_0, false), vec4<bool>(true, true, true, true), !select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, true, arg_0), arg_0))), !vec4<bool>(arg_0, true, any(vec4<bool>(false, arg_0, false, false)), false));
    let var_2 = -var_0.b.a;
    var var_3 = firstTrailingBit(-_wgslsmith_mult_i32(_wgslsmith_div_i32(~26i, ~(-2147483647i)), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, 71478i), u_input.b)));
    return any(vec3<bool>(all(var_1.yy), all(vec4<bool>(!arg_0, !var_1.x, !var_1.x, arg_0)), all(vec3<bool>(true, arg_0, var_1.x))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_div_i32(abs(_wgslsmith_div_i32(1i, -16754i)), u_input.a);
    var_0 = firstLeadingBit(-31262i);
    var var_1 = arg_3.xzw;
    let var_2 = arg_2.x;
    var_0 = arg_1.c;
    return _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, ~(i32(-1i) * -1i)), countOneBits(4187i));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: Struct_2) -> u32 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_clamp_i32(abs(arg_3.e.c), 39199i & min(-(arg_3.e.c & u_input.b), _wgslsmith_div_i32(2147483647i, arg_0.c)), ~(-9733i));
    let var_2 = vec3<i32>(func_4(func_3(false, arg_0.b.e, arg_3.e.b, _wgslsmith_f_op_vec3_f32(-arg_0.d)), arg_3.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-182f, arg_0.d.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.d.x, arg_0.d.x, -821f, 252f)))), -firstTrailingBit(arg_2.x) ^ (u_input.a & arg_2.x), ~_wgslsmith_div_i32(arg_0.c, -11667i)) << (~abs(arg_0.b.d) % vec3<u32>(32u));
    var var_3 = Struct_2(arg_2.x, arg_3.b, Struct_1(arg_0.b.e.b, vec2<u32>(_wgslsmith_mod_u32(~arg_3.c.b.x, abs(arg_0.b.e.a.x)), _wgslsmith_dot_vec3_u32(arg_3.d, vec3<u32>(4294967295u, arg_0.b.e.a.x, 4294967295u))), min(var_2.x, 47751i)), _wgslsmith_sub_vec3_u32(~max(reverseBits(vec3<u32>(32034u, arg_0.a, 5837u)), ~vec3<u32>(39233u, arg_0.a, 18179u)), ~arg_0.b.d), arg_0.b.c);
    var_1 = var_2.x;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~0u, arg_0.a), var_3.d.x, 1u, reverseBits(~arg_0.b.e.b.x)), vec4<u32>(~firstLeadingBit(0u), arg_0.a, _wgslsmith_sub_u32(_wgslsmith_mult_u32(63108u, 0u), arg_3.c.a.x), ~firstLeadingBit(4294967295u)), ~vec4<u32>(_wgslsmith_mult_u32(107535u, arg_0.a), select(7648u, arg_3.d.x, true), select(26587u, 0u, false), ~arg_0.a)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_0.a, 85099u), _wgslsmith_mult_u32(63946u, _wgslsmith_div_u32(arg_3.d.x, 34391u)), ~4294967295u, ~24046u), vec4<u32>(13385u, _wgslsmith_mult_u32(arg_0.b.c.b.x, 0u), ~abs(arg_3.c.b.x), ~arg_0.b.d.x)));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: u32) -> vec2<u32> {
    let var_0 = Struct_2(7099i, max(_wgslsmith_mult_i32(max(arg_0, 22103i) ^ countOneBits(-2147483647i), _wgslsmith_div_i32(arg_0, ~10141i)), -37287i), Struct_1(reverseBits(arg_2.d.yz), _wgslsmith_div_vec2_u32(~arg_2.c.b & arg_2.c.a, vec2<u32>(~4294967295u, ~1u)), -countOneBits(~13203i)), ~firstLeadingBit(vec3<u32>(4294967295u, arg_3 << (arg_2.d.x % 32u), func_2(Struct_3(45925u, Struct_2(-3672i, -1i, Struct_1(arg_2.e.b, vec2<u32>(arg_3, 4294967295u), arg_2.b), arg_2.d, Struct_1(arg_2.d.zy, vec2<u32>(arg_2.d.x, arg_3), u_input.a)), 69103i, vec3<f32>(-339f, 1128f, 1587f)), vec2<i32>(arg_0, arg_0), vec3<i32>(u_input.b, -2147483647i, u_input.b), Struct_2(arg_0, -1i, arg_2.c, arg_2.d, arg_2.c)))), Struct_1(arg_2.c.a, firstLeadingBit(vec2<u32>(0u, arg_3) << (~vec2<u32>(0u, arg_2.d.x) % vec2<u32>(32u))), -1i));
    var var_1 = abs(abs(~arg_2.e.a.x));
    let var_2 = vec3<u32>(90u >> (~min(~55957u, _wgslsmith_clamp_u32(arg_2.d.x, var_0.c.a.x, arg_3)) % 32u), ~var_0.e.b.x, var_0.c.a.x);
    return ~vec2<u32>(~_wgslsmith_sub_u32(~2495u, abs(17081u)), _wgslsmith_mult_u32(var_0.d.x, abs(var_0.e.a.x)) | var_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>(77290u, _wgslsmith_mult_u32(firstLeadingBit(1u), 1u)), ~min(vec2<u32>(1u, 1u), select(func_1(u_input.b, vec3<bool>(false, true, true), Struct_2(u_input.a, -2147483647i, Struct_1(vec2<u32>(14452u, 1u), vec2<u32>(2812u, 1141u), -31830i), vec3<u32>(13574u, 14592u, 4294967295u), Struct_1(vec2<u32>(26464u, 1u), vec2<u32>(23892u, 56852u), 8594i)), 0u), min(vec2<u32>(12585u, 1u), vec2<u32>(84617u, 1u)), all(vec3<bool>(false, false, false)))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-u_input.a, 1i, -37905i, _wgslsmith_mult_i32(5319i, u_input.a)), ~select(vec4<i32>(-16087i, 37095i, u_input.a, u_input.b), vec4<i32>(u_input.a, u_input.a, 1i, u_input.b), false)), vec4<i32>(~u_input.a, 59101i, _wgslsmith_mod_i32(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b, 16223i), vec3<i32>(u_input.a, 1i, 11604i))), 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(17992u, var_0.b.x, 1u)), 4294967295u), var_0.a.x), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + 530f))), _wgslsmith_f_op_f32(abs(-1054f)))), -2147483647i);
}

