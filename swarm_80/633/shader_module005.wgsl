struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global0 = Struct_5(vec3<u32>(4294967295u, ~_wgslsmith_dot_vec2_u32(global0.a.zz, abs(vec2<u32>(arg_1.b, global0.a.x))), 4294967295u));
    global0 = Struct_5(_wgslsmith_div_vec3_u32(min(vec3<u32>(firstTrailingBit(arg_0.b), 4294967295u, 4294967295u), vec3<u32>(_wgslsmith_add_u32(72297u, arg_1.c), firstLeadingBit(arg_0.b), _wgslsmith_clamp_u32(global0.a.x, arg_0.b, u_input.a))), vec3<u32>(abs(3476u), global0.a.x, ~3914u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(global0.a.x, 1u, global0.a.x), vec3<u32>(4960u, arg_0.b, 27697u)), select(vec3<u32>(global0.a.x, arg_1.c, u_input.a), global0.a, false))));
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(~1u, 1u), _wgslsmith_mult_u32(~global0.a.x, 0u >> (1u % 32u))) >> (abs(4294967295u) % 32u);
    global0 = Struct_5(global0.a);
    let var_1 = _wgslsmith_add_u32(max(_wgslsmith_sub_u32(4294967295u & u_input.a, _wgslsmith_mult_u32(arg_0.c, 26932u)), ~(~18148u)), ~_wgslsmith_div_u32(_wgslsmith_div_u32(42727u, 43690u), ~u_input.a)) | ~firstLeadingBit(~_wgslsmith_mult_u32(1157u, 24277u));
    return !vec2<bool>(false != any(vec3<bool>(true, true, false)), !(-281f == _wgslsmith_div_f32(arg_0.a, -590f)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(-1328f, 1285f)), max(min(~8347u, global0.a.x), 4294967295u), countOneBits(global0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(733f, 1642f, -294f, 1050f))))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), !func_3(Struct_1(501f, u_input.a, 4294967295u, vec4<f32>(1045f, -2326f, -208f, -1171f)), Struct_1(1351f, u_input.a, global0.a.x, vec4<f32>(-2004f, -601f, -1337f, 192f)))), ~vec3<i32>(-_wgslsmith_mult_i32(2147483647i, u_input.b), -_wgslsmith_clamp_i32(u_input.b, u_input.c, u_input.b), ~_wgslsmith_add_i32(-1i, -20386i)), any(vec4<bool>(!select(false, true, false), true, true, false)));
    let var_1 = Struct_3(var_0.a, vec2<bool>(var_0.c.x, all(vec4<bool>(select(var_0.e, false, var_0.b.x), var_0.b.x, var_0.b.x, all(vec3<bool>(true, var_0.c.x, var_0.c.x))))), select(vec2<bool>(true, all(vec4<bool>(var_0.b.x, var_0.b.x, false, true)) & any(vec2<bool>(var_0.b.x, var_0.b.x))), !select(vec2<bool>(var_0.e, var_0.c.x), vec2<bool>(var_0.c.x, true), select(vec2<bool>(true, false), vec2<bool>(var_0.e, var_0.e), var_0.b)), (_wgslsmith_clamp_u32(4294967295u, u_input.a, 4294967295u) >= _wgslsmith_clamp_u32(u_input.a, global0.a.x, 772u)) || any(vec3<bool>(false, var_0.c.x, var_0.c.x))), firstTrailingBit(-vec3<i32>(-1i >> (var_0.a.b % 32u), firstLeadingBit(0i), -63349i)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(5953u, 64995u, 1u), global0.a), ~global0.a), select(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, global0.a.x), global0.a), ~global0.a, true)) == 0u);
    let var_2 = ~var_1.d.zz;
    var var_3 = var_0.d.xx;
    let var_4 = _wgslsmith_mod_i32(min(1i, _wgslsmith_add_i32(2147483647i, -_wgslsmith_div_i32(-19350i, var_0.d.x))), i32(-1i) * -1i);
    return Struct_2(2199f, !(!vec2<bool>(true, var_0.e)), Struct_1(var_0.a.a, _wgslsmith_mult_u32(var_1.a.b, ~(~u_input.a)), ~min(~54767u, 23220u), vec4<f32>(558f, var_1.a.d.x, -309f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.a - 1812f))))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> Struct_5 {
    var var_0 = Struct_4(any(vec3<bool>(global0.a.x < firstTrailingBit(8691u), arg_0.b.x, select(true, arg_0.c.c < 1u, any(vec4<bool>(true, arg_1, false, arg_1))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1617f)), _wgslsmith_f_op_f32(-arg_0.c.a), arg_0.c.d.x, arg_0.c.d.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(arg_0.c.d)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.a * 577f), _wgslsmith_f_op_f32(-692f + arg_0.c.d.x), -2797f, _wgslsmith_f_op_f32(-arg_0.c.a)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1853f, arg_0.c.d.x, arg_0.c.d.x, -1078f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0.c.d)) * vec4<f32>(-708f, 608f, -2261f, 601f)), true)), _wgslsmith_f_op_vec4_f32(-arg_0.c.d), true)), u_input.a);
    let var_1 = var_0.a;
    let var_2 = arg_1;
    global0 = Struct_5(vec3<u32>(arg_0.c.c, 21813u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(12939u, 18499u, u_input.a), vec3<u32>(global0.a.x, 38043u, 4294967295u)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.d, global0.a.x), vec3<u32>(var_0.d, 0u, var_0.d)), reverseBits(~vec3<u32>(4294967295u, u_input.a, global0.a.x)))));
    var var_3 = Struct_4(reverseBits(4294967295u) >= _wgslsmith_div_u32(u_input.a, countOneBits(_wgslsmith_clamp_u32(37527u, u_input.a, u_input.a))), arg_0.c.d, arg_0.c.d, ~firstLeadingBit(arg_0.c.c));
    return Struct_5(firstTrailingBit(~global0.a));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    global0 = func_4(func_2(), u_input.c < max(_wgslsmith_mod_i32(~34487i, -4691i), -1i), 39081i);
    var var_0 = func_2().c;
    return var_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(global0.a);
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-449f * 787f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1227f, -199f, true)))))), -1120f));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(func_1(~(-vec4<i32>(u_input.b, 0i, u_input.b, u_input.b)))), _wgslsmith_div_u32(~global0.a.x, func_4(Struct_2(535f, vec2<bool>(true, true), Struct_1(155f, u_input.a, 64127u, vec4<f32>(1278f, 279f, 2170f, 641f))), all(vec2<bool>(true, false)), countOneBits(-40839i)).a.x), ~global0.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(918f, -716f) - -770f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(983f - -443f)), _wgslsmith_f_op_f32(323f - _wgslsmith_f_op_f32(ceil(383f))), -878f)), vec2<bool>(true, select(true, false, true)), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), select(vec2<bool>(true, true), func_2().b, true), !(all(vec3<bool>(false, false, true)) && false)), vec3<i32>(_wgslsmith_mult_i32(~(u_input.c ^ u_input.c), -45027i), abs(max(min(u_input.c, u_input.c), _wgslsmith_add_i32(u_input.b, 8874i))), _wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, u_input.b), -1i << (~4294967295u % 32u))), select(select(any(vec4<bool>(true, false, true, false)), global0.a.x <= u_input.a, func_2().b.x), true, true) && all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))));
    var var_2 = true;
    let var_3 = Struct_3(func_2().c, func_3(func_2().c, Struct_1(_wgslsmith_f_op_f32(sign(var_1.a.d.x)), ~_wgslsmith_sub_u32(global0.a.x, 43972u), min(global0.a.x ^ 10038u, 2745u), var_1.a.d)), select(!var_1.c, vec2<bool>(true, var_1.e || var_1.b.x), vec2<bool>(!all(var_1.c), any(func_3(Struct_1(var_1.a.d.x, 0u, 52911u, var_1.a.d), Struct_1(-566f, 53871u, 4294967295u, vec4<f32>(var_1.a.d.x, var_1.a.a, 620f, -2254f)))))), vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b, u_input.c), _wgslsmith_mult_i32(-35636i, u_input.b)), 1i, u_input.c), (var_1.b.x || true) || !(!(!var_1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1u, max(~abs(20552u), 4294967295u) & ~_wgslsmith_dot_vec3_u32(min(global0.a, vec3<u32>(36479u, var_3.a.c, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.x, var_1.a.b, var_3.a.b), vec3<u32>(u_input.a, u_input.a, u_input.a), global0.a)), vec2<i32>(_wgslsmith_dot_vec3_i32(-var_1.d << (global0.a % vec3<u32>(32u)), var_3.d), ((var_3.d.x | 1457i) << (~1u % 32u)) | 54633i), select(1i, u_input.c, true));
}

