struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(538f, 1202f, -620f, -859f, 1000f, -634f, 955f, -1584f, -845f, -173f, -412f, -781f, -1000f, -371f, -1439f, 1553f, 679f, 1034f, -1936f, 1000f, 321f, 969f, -1984f, -1206f, -760f, -2458f, 1663f);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(49309u, 1u, 89731u), true, vec2<f32>(-968f, -487f)), Struct_1(vec3<u32>(35172u, 1u, 28791u), true, vec2<f32>(-1000f, 610f)), Struct_1(vec3<u32>(14971u, 48159u, 4294967295u), false, vec2<f32>(199f, -1113f)), Struct_1(vec3<u32>(34660u, 29424u, 0u), true, vec2<f32>(-1867f, 954f)), Struct_1(vec3<u32>(44236u, 38962u, 19505u), false, vec2<f32>(-775f, 771f)), Struct_1(vec3<u32>(0u, 1u, 34985u), false, vec2<f32>(-1441f, -927f)), Struct_1(vec3<u32>(1u, 0u, 4294967295u), false, vec2<f32>(995f, 774f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), true, vec2<f32>(-431f, 129f)), Struct_1(vec3<u32>(56246u, 40310u, 4294967295u), false, vec2<f32>(613f, -1000f)), Struct_1(vec3<u32>(34389u, 64852u, 1u), true, vec2<f32>(-596f, -1541f)), Struct_1(vec3<u32>(53320u, 14515u, 38823u), true, vec2<f32>(-478f, -1180f)), Struct_1(vec3<u32>(1u, 4634u, 72326u), true, vec2<f32>(1714f, 929f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.b, 12u)];
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    var var_1 = vec4<u32>(var_0.a.x, ~26996u, u_input.b, var_0.a.x) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, ~var_0.a.x, var_0.a.x << (1u % 32u), u_input.b), vec4<u32>(var_0.a.x, 1u, ~1u, var_0.a.x));
    var var_2 = 43049u;
    return ~(-7844i);
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-397f + _wgslsmith_f_op_f32(197f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -562f))))));
    let var_1 = Struct_1(vec3<u32>(arg_0.x, 17658u << (~(~u_input.b) % 32u), 12989u), !(!(!(u_input.b >= 0u))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(280f, global0[_wgslsmith_index_u32(arg_0.x, 27u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-309f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, -657f), vec2<f32>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(7236u, 27u)])))))), vec2<bool>(true, true))));
    var var_2 = var_1.a.zx;
    let var_3 = select(abs(abs(~vec4<u32>(1u, var_1.a.x, u_input.b, var_2.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 59813u, 39831u), ~var_1.a), _wgslsmith_mult_u32(firstTrailingBit(26761u), ~var_1.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 52786u) ^ arg_0, var_1.a.yz), arg_0.x), var_1.b) | vec4<u32>(_wgslsmith_add_u32(~(u_input.b >> (arg_0.x % 32u)), _wgslsmith_clamp_u32(4294967295u, var_1.a.x, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(33121u), ~0u), vec2<u32>(_wgslsmith_mod_u32(arg_0.x, 6457u), 8056u)), ~1u, arg_0.x);
    let var_4 = Struct_2(global1[_wgslsmith_index_u32(var_3.x, 12u)], _wgslsmith_f_op_f32(var_1.c.x * var_0), global1[_wgslsmith_index_u32(4294967295u, 12u)], Struct_1(vec3<u32>(countOneBits(var_1.a.x) ^ ~33255u, 29686u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, arg_0.x, var_2.x, u_input.b), var_3)), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.c.x, -1817f))))));
    return 1407f;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global1 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 14865u), ~vec2<u32>(u_input.b, u_input.b)))))));
    let var_1 = vec3<bool>(select(!all(vec4<bool>(true, true, true, true)), true, false), true, !all(vec2<bool>(true, true)));
    var var_2 = ~abs((1u >> (u_input.b % 32u)) >> (_wgslsmith_mult_u32(20426u, u_input.b) % 32u)) | 4294967295u;
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(~u_input.b, 12u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(100376u, 27u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(-1018f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(5840u, 27u)])))))), Struct_1(~reverseBits(vec3<u32>(42481u, 43716u, 4294967295u)) >> (vec3<u32>(~u_input.b, u_input.b ^ u_input.b, 0u | u_input.b) % vec3<u32>(32u)), any(var_1), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 24103u), 27u)], _wgslsmith_f_op_f32(675f + global0[_wgslsmith_index_u32(u_input.b, 27u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(108246u, 27u)], 677f))))))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(1u), u_input.b), 12u)]);
    return 0u;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_4) -> Struct_1 {
    let var_0 = ~reverseBits(reverseBits(_wgslsmith_add_vec3_u32(arg_0.wxz, arg_2.d.b.a) & ~arg_0.zxx));
    var var_1 = any(!vec3<bool>(arg_2.d.b.b, true, true & arg_2.b));
    var var_2 = ~(~(~vec4<u32>(54518u, 9437u, 0u, 0u))) | arg_2.d.c;
    var var_3 = _wgslsmith_mult_u32(arg_0.x, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(72502u, arg_1, arg_1, u_input.b), arg_0) ^ _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.x, var_0.x), var_0.x | 17568u), ~(~21712u)));
    let var_4 = Struct_1(~_wgslsmith_clamp_vec3_u32(arg_2.c.a, firstLeadingBit(~arg_0.xww), vec3<u32>(firstTrailingBit(38261u), 60824u, 0u)), !any(!(!vec4<bool>(false, arg_2.d.b.b, arg_2.c.b, false))), vec2<f32>(-327f, _wgslsmith_f_op_f32(-arg_2.c.c.x)));
    return Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(~(~var_2.x), ~39202u, 0u), ~max(var_0, var_4.a) | vec3<u32>(116490u, arg_2.c.a.x, 4294967295u)), !(global0[_wgslsmith_index_u32(0u, 27u)] <= _wgslsmith_f_op_f32(sign(arg_2.c.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_4.a.x, 27u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 27u)] - _wgslsmith_f_op_f32(-593f * -168f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<f32, 27>();
    let var_1 = func_4(vec4<u32>(~(func_2(vec2<i32>(u_input.d, 2147483647i)) | ~4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(41605u, 36201u, u_input.b), ~vec3<u32>(u_input.b, 1u, 0u)) & u_input.b, ~(u_input.b << (u_input.b % 32u)) >> (u_input.b % 32u), ~(29713u | _wgslsmith_add_u32(u_input.b, u_input.b))), min(_wgslsmith_add_u32(~7571u, max(u_input.b, 19413u)), 40967u), Struct_4(~(~vec3<i32>(var_0, var_0, u_input.a.x)), false, Struct_1(vec3<u32>(u_input.b, u_input.b, _wgslsmith_sub_u32(4294967295u, 0u)), true, vec2<f32>(-188f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 27u)]))), Struct_3(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 27u)]), Struct_1(countOneBits(vec3<u32>(u_input.b, u_input.b, u_input.b)), 0i < u_input.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(8975u, 27u)]))), vec4<u32>(1u, countOneBits(4294967295u), u_input.b >> (u_input.b % 32u), 0u))));
    global1 = array<Struct_1, 12>();
    global0 = array<f32, 27>();
    var var_2 = Struct_2(var_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec2<u32>(35560u, 5933u))))), _wgslsmith_f_op_f32(-1000f - -582f)))), global1[_wgslsmith_index_u32(u_input.b, 12u)], var_1);
    global1 = array<Struct_1, 12>();
    let var_3 = 2221f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-383f - global0[_wgslsmith_index_u32(20896u, 27u)]), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_div_f32(314f, var_1.c.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, global0[_wgslsmith_index_u32(36580u, 27u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.c.x, var_3, 664f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.c.x, 342f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.c.x, global0[_wgslsmith_index_u32(var_2.d.a.x, 27u)], 130f) + vec3<f32>(var_1.c.x, var_1.c.x, global0[_wgslsmith_index_u32(0u, 27u)]))), true))), vec2<u32>(u_input.b, var_2.c.a.x ^ 0u));
}

