struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-54928i, -57482i);

var<private> global1: array<Struct_1, 12>;

var<private> global2: vec2<f32>;

var<private> global3: array<vec2<f32>, 5>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> vec2<i32> {
    return vec2<i32>(~global0.x, _wgslsmith_dot_vec4_i32(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global0.x, u_input.b, u_input.b), vec4<i32>(global0.x, 2147483647i, global0.x, u_input.a))), (~vec4<i32>(-43723i, 0i, u_input.b, global0.x) >> (u_input.d % vec4<u32>(32u))) >> (vec4<u32>(1u, 27171u, _wgslsmith_mod_u32(1u, 4294967295u), ~u_input.e) % vec4<u32>(32u))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> vec4<u32> {
    global0 = _wgslsmith_mult_vec2_i32(func_3(arg_1.a.zzw), vec2<i32>(u_input.b, ~func_3(_wgslsmith_div_vec3_f32(vec3<f32>(1198f, arg_1.a.x, -290f), arg_1.a.ywy)).x));
    global1 = array<Struct_1, 12>();
    let var_0 = vec4<i32>(~(u_input.a & 956i), i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a, _wgslsmith_clamp_i32(global0.x, global0.x, -2147483647i), global0.x, ~u_input.b), ~(-vec4<i32>(1363i, global0.x, u_input.b, global0.x))), i32(-1i) * -7088i) << (~vec4<u32>(arg_2, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, arg_2)), select(vec2<u32>(arg_2, 11943u), u_input.c.yx, vec2<bool>(arg_0, false))), ~13516u, _wgslsmith_add_u32(firstLeadingBit(71586u), u_input.e)) % vec4<u32>(32u));
    global3 = array<vec2<f32>, 5>();
    let var_1 = Struct_1(vec4<f32>(490f, _wgslsmith_f_op_f32(trunc(667f)), -461f, arg_1.a.x));
    return ~vec4<u32>(u_input.d.x, abs(u_input.c.x), max(1195u, (1019u | u_input.c.x) ^ 25870u), _wgslsmith_mod_u32(~arg_2, ~4294967295u));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = min(u_input.d, min(u_input.d, func_2(true, Struct_1(arg_1.a), 0u))) >> (u_input.d % vec4<u32>(32u));
    let var_1 = Struct_1(arg_1.a);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(var_1.a, vec4<f32>(1620f, 429f, -730f, -719f), arg_2))))));
    global1 = array<Struct_1, 12>();
    global1 = array<Struct_1, 12>();
    return arg_2.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(true, true), vec2<bool>(36458i != firstTrailingBit(1i), u_input.c.x == countOneBits(1u)), true), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), func_1(~(~vec3<i32>(-16164i, u_input.b, 0i)), Struct_1(vec4<f32>(global2.x, global2.x, global2.x, global2.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), true), u_input.d.x > u_input.c.x);
    global1 = array<Struct_1, 12>();
    global0 = ~(-firstLeadingBit(vec2<i32>(-1i, _wgslsmith_clamp_i32(-2147483647i, u_input.a, -2147483647i))));
    var var_1 = global0.x;
    var_1 = -reverseBits(18026i);
    var var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, global0.x & u_input.a), select(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.b), vec3<i32>(u_input.b, global0.x, u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(24350i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.a, -2147483647i)), vec3<bool>(false, false, var_0.x))), -firstLeadingBit(0i)), firstLeadingBit(min(vec2<i32>(-3830i, global0.x), select(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(global0.x, global0.x), var_0.x))) << (u_input.d.wx % vec2<u32>(32u)), ~abs(~(~vec2<i32>(global0.x, 37235i))));
    var_0 = !select(vec2<bool>(any(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(true, false))), func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -1i, 4051i), vec3<i32>(var_2.x, u_input.b, 4573i), vec3<i32>(var_2.x, var_2.x, global0.x)), Struct_1(vec4<f32>(576f, 1320f, -1000f, global2.x)), !vec4<bool>(var_0.x, false, false, var_0.x)).x), select(!vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), !var_0.x), vec2<bool>(true, true)), !(!select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec3_i32(firstLeadingBit(~vec3<i32>(1i, -49357i, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, u_input.b, u_input.b), vec3<i32>(var_2.x, u_input.b, 1i)))), _wgslsmith_mod_vec4_i32(-_wgslsmith_add_vec4_i32(~vec4<i32>(var_2.x, 10586i, -2147483647i, var_2.x), vec4<i32>(u_input.a, u_input.b, -1i, var_2.x) << (vec4<u32>(u_input.d.x, 1u, u_input.e, u_input.e) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-1777i, 2147483647i, u_input.a, 0i)), vec4<i32>(var_2.x | global0.x, 2147483647i, min(-6948i, u_input.a), 0i))), u_input.d, 123f);
}

