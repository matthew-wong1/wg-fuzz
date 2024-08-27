struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec4<u32>(2450u, 36301u, 14699u, 78897u)), Struct_2(vec4<u32>(19084u, 1428u, 4294967295u, 0u)), Struct_2(vec4<u32>(56528u, 4294967295u, 17718u, 69309u)), Struct_2(vec4<u32>(83611u, 16402u, 85498u, 1u)), Struct_2(vec4<u32>(1u, 11761u, 4294967295u, 51442u)), Struct_2(vec4<u32>(14887u, 0u, 0u, 32189u)), Struct_2(vec4<u32>(0u, 69139u, 1u, 4294967295u)), Struct_2(vec4<u32>(0u, 17514u, 35888u, 1u)));

var<private> global1: Struct_2 = Struct_2(vec4<u32>(20637u, 0u, 1u, 15856u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = Struct_1(vec3<i32>(u_input.e, _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.d, -36806i)), vec2<i32>(u_input.e, u_input.d))), max(~(~(-46422i)), u_input.c.x)), vec3<u32>(countOneBits(_wgslsmith_mult_u32(global1.a.x, 154934u)), _wgslsmith_dot_vec2_u32(global1.a.xz, firstTrailingBit(global1.a.zy)), 39185u) | vec3<u32>(_wgslsmith_div_u32(~4294967295u, min(global1.a.x, 27548u)), 1u, u_input.a), ~(~global1.a.yw), -_wgslsmith_add_vec4_i32(min(vec4<i32>(-1i, u_input.e, u_input.c.x, 18177i), select(u_input.c, u_input.c, vec4<bool>(false, true, true, true))), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(u_input.c.x, u_input.d, u_input.d, u_input.d), vec4<i32>(u_input.d, u_input.c.x, -23535i, 3366i)), ~u_input.c, vec4<i32>(36482i, 2357i, -30273i, u_input.d))), select(all(vec3<bool>(true, true, false)), any(vec3<bool>(true, any(vec4<bool>(true, false, false, false)), false)), 1u < ~(24913u >> (u_input.a % 32u))));
    let var_1 = ~_wgslsmith_sub_u32(global1.a.x, 65655u);
    var var_2 = -(~18832i);
    var_0 = Struct_1(~_wgslsmith_sub_vec3_i32(vec3<i32>(5013i, -1i, var_0.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-22854i, -12533i, u_input.b), var_0.d.zyz)) | ~(u_input.c.wzy & abs(vec3<i32>(13850i, var_0.d.x, 2147483647i))), var_0.b, ~_wgslsmith_add_vec2_u32(var_0.c, ~_wgslsmith_mult_vec2_u32(vec2<u32>(global1.a.x, var_0.b.x), global1.a.xy)), select(vec4<i32>(~(-1i), select(1i, -u_input.d, true), ~(u_input.c.x ^ u_input.d), ~1i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, u_input.e, u_input.c.x, u_input.e) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 84722u, u_input.a, global1.a.x), vec4<u32>(48759u, var_0.c.x, 103450u, u_input.a)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(var_0.a.x, u_input.e), var_0.d.x, ~0i, var_0.a.x)), !var_0.e), !var_0.e);
    global0 = array<Struct_2, 8>();
    return true;
}

fn func_2() -> Struct_3 {
    global1 = Struct_2(vec4<u32>(_wgslsmith_sub_u32(global1.a.x, global1.a.x) | ~u_input.a, ~(~global1.a.x), global1.a.x, abs(global1.a.x) & firstLeadingBit(63343u)) & abs(firstTrailingBit(vec4<u32>(43774u, u_input.a, 47922u, global1.a.x))));
    let var_0 = vec4<i32>(max(u_input.d, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d, ~1i), _wgslsmith_div_i32(max(u_input.d, 1i), -16413i >> (1u % 32u)))), ~u_input.c.x, u_input.d, _wgslsmith_sub_i32(u_input.c.x, min(_wgslsmith_dot_vec3_i32(vec3<i32>(822i, -1i, u_input.c.x), ~u_input.c.xzz), u_input.c.x ^ u_input.d)));
    let var_1 = select(vec2<i32>(u_input.e, 0i), vec2<i32>(_wgslsmith_dot_vec2_i32(-u_input.c.ww, countOneBits(vec2<i32>(var_0.x, u_input.c.x))), u_input.e) | _wgslsmith_clamp_vec2_i32(firstLeadingBit(u_input.c.zy), var_0.yw, -var_0.xx), vec2<bool>(all(vec3<bool>(func_3(), true, false)), false));
    global1 = Struct_2(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, 1u), ~u_input.a) | (u_input.a | u_input.a), u_input.a, abs(_wgslsmith_clamp_u32(4294967295u, global1.a.x, firstLeadingBit(4294967295u))), abs(global1.a.x) << (~(~global1.a.x) % 32u)));
    var var_2 = global0[_wgslsmith_index_u32(~global1.a.x, 8u)];
    return Struct_3(u_input.a, _wgslsmith_f_op_f32(631f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(477f - -1242f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-266f)), -1061f))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_3 {
    var var_0 = u_input.c;
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -560f);
    var var_3 = global0[_wgslsmith_index_u32(25163u | ~(max(0u, var_1.a) | 4294967295u), 8u)];
    let var_4 = select(!(!vec4<bool>(arg_1 || arg_1, arg_0.b < 1000f, any(vec4<bool>(true, true, arg_1, arg_1)), !arg_1)), !vec4<bool>(select(arg_1 || false, false, !arg_1), !arg_1 | (arg_1 && true), !any(vec4<bool>(arg_1, arg_1, false, true)), true), !(!(!arg_1) & true));
    return func_2();
}

fn func_1() -> Struct_2 {
    global1 = Struct_2(select(~vec4<u32>(~u_input.a, global1.a.x, abs(4294967295u), ~9792u), global1.a >> (global1.a % vec4<u32>(32u)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_0 = ~(-(~u_input.c.yy));
    let var_1 = func_4(func_2(), true);
    let var_2 = Struct_1(~(-(~vec3<i32>(0i, 2147483647i, u_input.d))), global1.a.yxz, ~global1.a.zx, ~u_input.c, !(!func_3()));
    global1 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 1u, u_input.a), ~(~vec4<u32>(48222u, global1.a.x, 8562u, var_2.b.x) & countOneBits(global1.a))));
    return Struct_2(vec4<u32>(countOneBits(58060u), firstTrailingBit(~global1.a.x << (u_input.a % 32u)), global1.a.x ^ ~max(var_2.b.x, 0u), 53554u << (global1.a.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.zzz;
    let var_1 = Struct_1(u_input.c.yzy, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, u_input.a) >> (_wgslsmith_mult_u32(u_input.a, 8557u) % 32u), global1.a.x), _wgslsmith_div_u32(~global1.a.x, 1u), 1u), global1.a.wz, firstTrailingBit(_wgslsmith_sub_vec4_i32(max(u_input.c >> (global1.a % vec4<u32>(32u)), max(vec4<i32>(u_input.c.x, u_input.d, u_input.e, -1i), vec4<i32>(u_input.d, u_input.b, u_input.e, u_input.d))), -u_input.c >> (global1.a % vec4<u32>(32u)))), true);
    var var_2 = 32191i;
    var var_3 = func_1();
    let var_4 = max(var_1.b.x, 4294967295u);
    let var_5 = var_1;
    let var_6 = -(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-31997i, 0i, var_5.d.x, u_input.d)), vec4<i32>(-29157i, var_5.a.x, var_5.a.x, u_input.e)), vec4<i32>(-24774i, 0i, -1i, u_input.d) << (var_3.a % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(var_4, 14547u, var_0.x, var_3.a.x)), ~(var_3.a ^ var_3.a)) % vec4<u32>(32u)));
    var_2 = 28131i ^ _wgslsmith_sub_i32(min(-17142i, _wgslsmith_dot_vec3_i32(var_5.a, ~u_input.c.zzz)), 2147483647i);
    let var_7 = Struct_1(vec3<i32>(-_wgslsmith_dot_vec4_i32(~var_6, abs(vec4<i32>(var_1.a.x, -29111i, -1i, var_1.d.x))), -u_input.d, -u_input.d), global1.a.wzz, var_1.c, select(var_6, countOneBits(reverseBits(var_1.d)), select(select(!vec4<bool>(var_5.e, true, true, false), select(vec4<bool>(var_1.e, true, var_1.e, var_5.e), vec4<bool>(false, true, var_1.e, var_1.e), false), !vec4<bool>(true, var_1.e, var_5.e, var_1.e)), vec4<bool>(!var_1.e, true, select(var_5.e, false, var_5.e), var_1.e), true)), all(!vec2<bool>(true, all(vec2<bool>(false, var_1.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(vec2<i32>(~var_7.a.x, -1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(911f, -1210f, 771f, -1771f) * vec4<f32>(-556f, 1554f, -825f, 310f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-723f, -997f, -685f, -482f) - vec4<f32>(-1020f, -705f, 1284f, 842f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1008f, -1579f, 854f, 1610f) + vec4<f32>(315f, -236f, -633f, 151f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-270f, 233f, 1641f, -1029f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2490f, -1000f, -1000f, 668f) - vec4<f32>(-934f, 634f, -669f, -146f))))))), -1572f);
}

