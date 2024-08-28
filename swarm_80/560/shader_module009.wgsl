struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> bool {
    let var_0 = firstLeadingBit(_wgslsmith_mult_vec2_i32(select(~reverseBits(global0.a), abs(global0.a) | vec2<i32>(arg_1, -43122i), arg_0.x <= _wgslsmith_f_op_f32(min(arg_0.x, -1000f))), select(u_input.a, firstLeadingBit(global0.a << (vec2<u32>(35005u, u_input.e) % vec2<u32>(32u))), global0.b)));
    let var_1 = Struct_1(var_0, all(vec3<bool>(true, global0.b, any(!vec3<bool>(global0.b, false, global0.b)))));
    global0 = var_1;
    global0 = Struct_1(u_input.a, any(!select(!vec4<bool>(global0.b, true, true, true), !vec4<bool>(false, var_1.b, var_1.b, true), global0.b)));
    var var_2 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_1, var_1.a.x), _wgslsmith_sub_i32(-1i, var_1.a.x)), 1i) << ((max(u_input.b, select(21720u, 1u, var_1.b)) & _wgslsmith_add_u32(u_input.d, u_input.e)) % 32u), -reverseBits(var_0.x), -48191i, var_0.x);
    return any(vec2<bool>(false, !(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) != _wgslsmith_f_op_f32(floor(567f)))));
}

fn func_2(arg_0: bool, arg_1: u32) -> bool {
    global0 = Struct_1(vec2<i32>(~(~1i), u_input.c), true);
    var var_0 = Struct_4(~global0.a.x, select(vec4<i32>(_wgslsmith_div_i32(-1i, -21177i), 1i, _wgslsmith_mult_i32(-22115i, reverseBits(u_input.c)), ~_wgslsmith_dot_vec2_i32(global0.a, u_input.a)), vec4<i32>(-(~61368i), 21819i, global0.a.x, max(firstLeadingBit(u_input.c), ~u_input.c)), select(vec4<bool>(!arg_0, func_3(vec2<f32>(-710f, 2092f), 8567i), global0.b, arg_0), select(select(vec4<bool>(global0.b, false, arg_0, false), vec4<bool>(false, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(vec4<bool>(true, true, global0.b, arg_0), vec4<bool>(false, arg_0, arg_0, false), true), !arg_0), global0.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-995f, 1341f))), 1909f)), u_input.a);
    let var_1 = ~select(_wgslsmith_clamp_vec2_i32(u_input.a, select(vec2<i32>(var_0.d.x, u_input.a.x) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(global0.a.x, 1i), select(vec2<bool>(true, arg_0), vec2<bool>(global0.b, true), global0.b)), var_0.d), -var_0.b.yy, all(select(select(vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, false), global0.b), !vec2<bool>(true, arg_0), global0.b)));
    global0 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-1i, var_0.d.x), 2147483647i), -global0.a) << (select(firstLeadingBit(reverseBits(vec2<u32>(1u, arg_1))), ~select(vec2<u32>(4142u, u_input.d), vec2<u32>(34265u, 0u), vec2<bool>(false, true)), all(!vec3<bool>(true, false, global0.b))) % vec2<u32>(32u)), arg_1 <= reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(19329u, u_input.e), vec2<u32>(9222u, 0u)), arg_1)));
    var var_2 = Struct_5(Struct_2(true), Struct_1(min(vec2<i32>(_wgslsmith_sub_i32(global0.a.x, 1i), global0.a.x), vec2<i32>(-3058i, var_0.a)), !(~49375i == ~u_input.a.x)), Struct_1(-var_1, arg_0), Struct_1(var_0.d, arg_0));
    return ~arg_1 <= (u_input.e >> (~select(arg_1, ~arg_1, false) % 32u));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2535f)) + -375f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1199f), 1f)))));
    let var_1 = global0.a;
    global0 = Struct_1(_wgslsmith_sub_vec2_i32(~(~u_input.a), select(-arg_0, global0.a, !global0.b)) | vec2<i32>(var_1.x, var_1.x), func_2(true, ~_wgslsmith_div_u32(u_input.b, ~4294967295u)));
    global0 = Struct_1(arg_0, 31256u <= (abs(~15726u) | u_input.b));
    let var_2 = -(-(~u_input.a) >> (vec2<u32>(u_input.b, _wgslsmith_div_u32(u_input.e, 0u)) % vec2<u32>(32u)));
    return Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-var_2.x << ((u_input.d ^ 93076u) % 32u), u_input.c), ~(_wgslsmith_add_vec2_i32(global0.a, arg_0) << (select(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, u_input.b), true) % vec2<u32>(32u))), var_2), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~11091i, _wgslsmith_sub_vec4_i32(vec4<i32>(-43688i, _wgslsmith_sub_i32(reverseBits(global0.a.x), abs(u_input.c)), global0.a.x, global0.a.x), _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 17936i, u_input.c, u_input.c), vec4<i32>(-9261i, global0.a.x, u_input.c, -24072i)), firstLeadingBit(vec4<i32>(global0.a.x, -45389i, u_input.a.x, global0.a.x)) & vec4<i32>(global0.a.x, u_input.c, 41614i, 1i))), _wgslsmith_f_op_f32(-1155f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(284f)), _wgslsmith_f_op_f32(f32(-1f) * -1329f), true))), vec2<i32>(1i, u_input.c) ^ max(_wgslsmith_add_vec2_i32(countOneBits(global0.a), max(global0.a, vec2<i32>(1i, global0.a.x))), ~(~global0.a)));
    var var_1 = func_1(u_input.a);
    let var_2 = Struct_5(Struct_2(true), func_1(func_1(global0.a).a), func_1(-var_1.a), Struct_1(reverseBits(select(abs(var_0.b.zy), global0.a, true)), ~(var_0.b.x & var_1.a.x) <= global0.a.x));
    var var_3 = Struct_5(Struct_2(global0.b), Struct_1(~_wgslsmith_clamp_vec2_i32(-u_input.a, var_2.c.a, ~vec2<i32>(var_2.c.a.x, 1017i)), any(!(!vec4<bool>(var_2.a.a, true, false, true)))), var_2.c, var_2.b);
    var_3 = Struct_5(Struct_2(true), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-73802i, -var_0.d.x), _wgslsmith_add_vec2_i32(global0.a, ~var_0.b.zx)), false), Struct_1(~(~u_input.a), false), var_3.b);
    let var_4 = Struct_3(vec2<i32>(~_wgslsmith_mult_i32(firstTrailingBit(-52571i), -1i), -24167i), var_1.a, select(vec3<bool>(all(vec4<bool>(global0.b, global0.b, global0.b, true)) | var_3.a.a, all(select(vec2<bool>(var_2.b.b, true), vec2<bool>(var_3.c.b, true), vec2<bool>(var_1.b, true))), false), vec3<bool>(func_2(global0.b, u_input.e), any(!vec3<bool>(false, var_2.d.b, global0.b)), all(vec3<bool>(global0.b, global0.b, false)) == (-982f <= var_0.c)), !(!vec3<bool>(false, true, var_3.b.b))));
    let x = u_input.a;
    s_output = StorageBuffer(select(select(57001u, 1u, false) & 4294967295u, abs(u_input.d), func_1(-vec2<i32>(-4231i, -11285i)).b) & _wgslsmith_clamp_u32(u_input.b << (~u_input.d % 32u), ~abs(20948u), abs(u_input.e)), ~vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.e, 4294967295u, 0u), vec3<u32>(u_input.d, 6338u, 41812u), var_4.c), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, 135806u, 47999u), vec3<u32>(42499u, 23130u, u_input.d))), u_input.d), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(728f, -2103f, var_0.c, -645f), vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<bool>(var_1.b, global0.b, var_4.c.x, false)))))))), var_4.a.x, u_input.d);
}

