struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<bool>) -> bool {
    global0 = array<Struct_1, 20>();
    var var_0 = vec3<f32>(468f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -216f), arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(641f)))));
    var var_1 = Struct_2(~countOneBits(u_input.c.zz), !vec4<bool>(-u_input.c.x == -1i, arg_2.x, _wgslsmith_f_op_f32(arg_1 - -1183f) > _wgslsmith_f_op_f32(round(arg_0.x)), arg_2.x), global0[_wgslsmith_index_u32(u_input.a.x, 20u)]);
    var_0 = arg_0.wxx;
    var var_2 = ~firstLeadingBit(u_input.a.ywz & u_input.a.ywz) >> (firstTrailingBit(vec3<u32>(1u, ~abs(var_1.c.a), ~u_input.e)) % vec3<u32>(32u));
    return all(vec4<bool>(true, all(vec3<bool>(!var_1.b.x, true, true)), !var_1.b.x, true));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> Struct_3 {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    var var_0 = Struct_5(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d, 125903u, 1u, 4210u), vec4<u32>(0u, 4015u, 1u, 69395u)) ^ vec4<u32>(u_input.a.x, 1u, u_input.e, ~1u), vec4<u32>(u_input.b.x ^ ~u_input.e, abs(0u), u_input.b.x, ~(~u_input.e))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(1u, firstLeadingBit(u_input.d))), vec2<u32>(~(u_input.d & 4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(0u, 0u)))), 20u)], _wgslsmith_div_i32(-1i, (u_input.c.x >> (21172u % 32u)) >> (~firstTrailingBit(92867u) % 32u)), countOneBits(countOneBits(_wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, u_input.c.x, arg_1), u_input.c))));
    let var_1 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(~2232u, 1u, abs(u_input.e))) & u_input.b.xxy, ~var_0.a.zzw);
    var var_2 = vec2<bool>(false, false);
    return Struct_3(var_0.b, Struct_2(countOneBits(min(-vec2<i32>(1i, arg_1), _wgslsmith_mult_vec2_i32(u_input.c.zx, vec2<i32>(-17608i, u_input.c.x)))), !(!vec4<bool>(false, true, arg_0.x, false)), Struct_1(~(u_input.a.x >> (u_input.b.x % 32u)))), -2147483647i, Struct_2(u_input.c.yy, select(select(vec4<bool>(true, arg_0.x, arg_0.x, var_2.x), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), arg_0, var_2.x), select(arg_0, arg_0, false)), vec4<bool>(true, arg_0.x, false, true), vec4<bool>(var_2.x, arg_0.x, any(vec3<bool>(var_2.x, false, var_2.x)), !arg_0.x)), Struct_1(13131u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-591f + 1f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1237f))))), -603f, 1f));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.e, arg_1.e, select(arg_1.b.b.ywz, select(arg_1.b.b.zyx, arg_2.wxx, arg_1.d.b.x), !arg_1.d.b.zzx)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.e, arg_1.e) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e.x, arg_1.e.x, arg_1.e.x)))));
    let var_1 = ~(~vec4<i32>(-1296i, -14810i << (~arg_0.x % 32u), ~(-2147483647i | u_input.c.x), arg_1.c));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * arg_1.e.x), 587f)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.xx >> (arg_0.yy % vec2<u32>(32u)), ~u_input.a.wz), 20u)]);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1168f, _wgslsmith_f_op_f32(-var_2.a))), func_3(vec4<bool>(false, arg_2.x, false, false), ~(-66037i)).e.x, arg_1.e.x)));
    var_2 = Struct_4(1093f, func_3(select(arg_1.d.b, select(select(vec4<bool>(true, false, false, arg_1.b.b.x), vec4<bool>(false, arg_2.x, false, true), arg_1.d.b.x), !vec4<bool>(arg_2.x, true, arg_2.x, arg_1.b.b.x), arg_1.b.b.x), func_3(!vec4<bool>(arg_2.x, arg_1.b.b.x, arg_1.d.b.x, arg_2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 1i, 22415i), vec4<i32>(var_1.x, 2147483647i, 1i, var_1.x))).d.b), ~_wgslsmith_mod_i32(~u_input.c.x, 1i)).b.c);
    return Struct_2(min(vec2<i32>(-u_input.c.x, u_input.c.x), ~select(min(vec2<i32>(2147483647i, var_1.x), arg_1.d.a), -vec2<i32>(0i, -12909i), func_2(vec4<f32>(-337f, -587f, -330f, -1000f), var_0.x, arg_1.d.b))), vec4<bool>(true, func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, -787f, var_2.a, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1457f, -611f, -602f, arg_1.e.x) - vec4<f32>(var_2.a, var_0.x, -434f, var_0.x)), func_3(arg_2, var_1.x).d.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_1.e.x)), vec4<bool>(func_3(arg_1.d.b, u_input.c.x).b.b.x, all(vec3<bool>(arg_1.b.b.x, arg_1.b.b.x, arg_1.b.b.x)), true, !arg_2.x)), any(!func_3(arg_1.b.b, var_1.x).d.b), arg_2.x), var_2.b);
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_5(_wgslsmith_sub_vec4_u32(~(abs(vec4<u32>(u_input.b.x, arg_0.x, 55456u, arg_0.x)) | u_input.a), u_input.b), global0[_wgslsmith_index_u32(u_input.d, 20u)], u_input.c.x, vec3<i32>(12481i, -_wgslsmith_clamp_i32(-41401i, -2147483647i, u_input.c.x), -(i32(-1i) * -24294i)) & u_input.c);
    let var_1 = func_4(var_0.a.wwz, func_3(vec4<bool>(abs(-24499i) > _wgslsmith_sub_i32(-49021i, u_input.c.x), all(vec2<bool>(true, true)), true, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-517f, 524f, -821f, 687f) - vec4<f32>(-1009f, -1155f, -1422f, 1127f)), -1000f, vec4<bool>(true, true, true, true))), _wgslsmith_add_i32(u_input.c.x, min(var_0.c, 1i))), vec4<bool>(false, true, !all(vec2<bool>(true, true)), 1i <= u_input.c.x));
    var_0 = Struct_5(~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, var_0.b.a, arg_0.x, arg_0.x), u_input.a))), Struct_1(_wgslsmith_mult_u32(arg_0.x, var_1.c.a)), -46394i, u_input.c);
    var var_2 = !var_1.b.x;
    var var_3 = var_0.c;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a.wwy), vec3<u32>(993u, 1u, 25720u)), ~(~5187u)), _wgslsmith_div_u32(reverseBits(4294967295u), 8348u ^ ~arg_0.x), 1u, 4294967295u), abs(var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<u32>(1u, _wgslsmith_clamp_u32(53779u, abs(func_1(vec2<u32>(u_input.a.x, 4294967295u))), 1u), min(81595u, func_4(~u_input.b.wwx, func_3(vec4<bool>(false, false, true, false), u_input.c.x), vec4<bool>(true, false, true, true)).c.a), _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 115332u), vec3<u32>(u_input.d, 4294967295u, u_input.a.x)), u_input.a.x << (u_input.b.x % 32u), u_input.b.x), ~min(vec4<u32>(5969u, 3693u, 37042u, 1u), u_input.a))), ~(~u_input.b), !((u_input.e >= u_input.e) | all(vec2<bool>(true, true))) || true);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1458f * -957f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(381f + 224f) + _wgslsmith_f_op_f32(ceil(319f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1214f)), _wgslsmith_f_op_f32(trunc(303f)))))), true));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-967f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(154f)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b, firstTrailingBit(select(~vec4<u32>(var_0.x, 23562u, u_input.e, var_0.x), vec4<u32>(1u, u_input.a.x, u_input.b.x, u_input.a.x), true)), false));
}

