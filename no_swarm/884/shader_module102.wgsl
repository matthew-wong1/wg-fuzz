struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-42927i, i32(-2147483648), 1i);

var<private> global1: array<Struct_2, 13>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5) -> u32 {
    var var_0 = Struct_3(1i, Struct_1(~4294967295u));
    var_0 = Struct_3(global0.x, var_0.b);
    var_0 = Struct_3(reverseBits(global0.x), var_0.b);
    var_0 = Struct_3(-2147483647i & _wgslsmith_dot_vec2_i32(global0.xy, _wgslsmith_mult_vec2_i32(u_input.b.zz, -global0.xx)), Struct_1(u_input.c));
    global0 = select(~(-u_input.b), firstLeadingBit(vec3<i32>(countOneBits(u_input.b.x), var_0.a, 38171i)), true);
    return ~(~u_input.a.x);
}

fn func_2() -> Struct_1 {
    let var_0 = max(min(func_3(Struct_5(-138f)), _wgslsmith_sub_u32(u_input.a.x, ~u_input.c)), min(14584u, u_input.e));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -612f)));
    global0 = _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(_wgslsmith_div_i32(abs(-global0.x), -6368i), countOneBits(global0.x), 1i));
    let var_2 = !(!(!vec2<bool>(233f < var_1, true)));
    var var_3 = Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(414f)) - var_1))));
    return Struct_1(~var_0);
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    global0 = -_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-select(vec3<i32>(u_input.b.x, 5164i, global0.x), vec3<i32>(-2147483647i, u_input.b.x, global0.x), vec3<bool>(true, true, true)), reverseBits(vec3<i32>(-1i, 35552i, global0.x))), u_input.b, u_input.b);
    let var_0 = global1[_wgslsmith_index_u32(func_3(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-259f, _wgslsmith_f_op_f32(sign(-1000f)))))), 13u)];
    let var_1 = ~_wgslsmith_add_u32(295u, 73048u ^ ~(~u_input.d));
    global0 = _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(~_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), global0.x, _wgslsmith_add_i32(firstTrailingBit(u_input.b.x), i32(-1i) * -3468i))), ~((vec3<i32>(global0.x, global0.x, u_input.b.x) & vec3<i32>(u_input.b.x, 1i, global0.x)) & vec3<i32>(-u_input.b.x, firstTrailingBit(21684i), ~u_input.b.x)));
    let var_2 = _wgslsmith_clamp_vec4_i32(firstTrailingBit(~((vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<i32>(global0.x, u_input.b.x, 1i, -1i)) | _wgslsmith_sub_vec4_i32(vec4<i32>(11828i, global0.x, 14559i, -1i), vec4<i32>(-39230i, global0.x, -15878i, 2147483647i)))), vec4<i32>(-2357i, global0.x, u_input.b.x, global0.x), select(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, -2147483647i, global0.x, global0.x), vec4<i32>(global0.x, u_input.b.x, u_input.b.x, 4475i), ~vec4<i32>(global0.x, -14836i, -2147483647i, global0.x)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, u_input.b.x, -24318i, 2147483647i), vec4<i32>(0i, 18597i, -58721i, 19557i), vec4<i32>(33565i, 0i, -50047i, u_input.b.x)))), vec4<i32>(global0.x, global0.x, 41742i, ~firstLeadingBit(9502i)), vec4<bool>(true, true, ~1u != _wgslsmith_clamp_u32(1u, var_0.d.a, 45076u), true)));
    return Struct_4(global0.yy, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.zxx - _wgslsmith_f_op_vec3_f32(-vec3<f32>(327f, var_0.b.x, var_0.b.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.b.zzz, var_0.b.wzy, vec3<bool>(true, var_0.c, true))), _wgslsmith_div_vec3_f32(vec3<f32>(-1959f, var_0.b.x, var_0.b.x), var_0.b.xzz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 884f, var_0.b.x)))), vec3<bool>(var_0.c, var_0.c, all(select(vec4<bool>(var_0.c, var_0.c, var_0.c, true), vec4<bool>(true, var_0.c, var_0.c, false), vec4<bool>(false, var_0.c, false, var_0.c)))))), firstLeadingBit(vec3<u32>(~(var_0.d.a ^ 41175u), firstLeadingBit(reverseBits(0u)), ~select(89203u, var_1, false))), Struct_3(abs(countOneBits(-16768i >> (u_input.a.x % 32u))), func_2()));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> Struct_5 {
    var var_0 = func_4(func_2());
    let var_1 = vec4<i32>(~(~(arg_2 ^ _wgslsmith_clamp_i32(1i, u_input.b.x, 1i))), ~global0.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(-vec2<i32>(global0.x, var_0.d.a)), ~(~global0.zx), firstLeadingBit(vec2<i32>(-1i, arg_2))), _wgslsmith_add_vec2_i32(firstTrailingBit(max(vec2<i32>(-1477i, 0i), vec2<i32>(-2147483647i, arg_2))), var_0.a)), firstTrailingBit(-2147483647i));
    let var_2 = -select(-global0.x, ~_wgslsmith_sub_i32(0i, u_input.b.x), arg_0.a.x < 1u);
    return Struct_5(827f);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -397f);
    let var_1 = func_4(func_2());
    let var_2 = 0i;
    var var_3 = vec3<bool>(all(vec4<bool>(true, true, true, true)), (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.e), u_input.a.zy), ~4294967295u) & u_input.e) < u_input.c, -40898i < global0.x);
    let var_4 = arg_1.a;
    return !select(!select(select(vec4<bool>(true, true, var_3.x, var_3.x), vec4<bool>(false, false, true, true), var_3.x), vec4<bool>(false, var_3.x, var_3.x, false), vec4<bool>(true, var_3.x, var_3.x, var_3.x)), vec4<bool>(var_3.x, true, !all(vec3<bool>(var_3.x, var_3.x, true)), any(vec2<bool>(true, var_3.x))), var_3.x != !var_3.x);
}

fn func_6(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: bool) -> vec2<i32> {
    var var_0 = abs(~u_input.e);
    global0 = u_input.b;
    let var_1 = global1[_wgslsmith_index_u32(~34839u, 13u)];
    var var_2 = vec3<u32>(u_input.e, 0u, select(~var_1.e.a, var_1.a.x, all(arg_1.wx)));
    var var_3 = var_1.b.x;
    return max(vec2<i32>(27261i, ~_wgslsmith_mod_i32(i32(-1i) * -2147483647i, ~global0.x)), ~vec2<i32>(61617i, -(~global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 13>();
    var var_0 = func_6(u_input.a.x >= _wgslsmith_div_u32(u_input.c, ~(u_input.d & u_input.a.x)), select(select(func_5(func_1(Struct_2(u_input.a.wx, vec4<f32>(-986f, 568f, 598f, 133f), true, Struct_1(u_input.c), Struct_1(1u)), Struct_2(u_input.a.yw, vec4<f32>(-1034f, -1000f, -1705f, -1329f), true, Struct_1(71105u), Struct_1(15698u)), global0.x), Struct_1(u_input.d)), vec4<bool>(global0.x >= 2147483647i, select(false, false, true), true, true), all(vec2<bool>(true, true))), vec4<bool>(func_4(Struct_1(u_input.a.x)).b.x <= -345f, func_5(Struct_5(-319f), Struct_1(u_input.a.x)).x, all(vec3<bool>(true, true, true)), _wgslsmith_mult_i32(global0.x, global0.x) <= _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), false), select(vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(u_input.b), vec3<i32>(global0.x, -1i, -2147483647i) >> (u_input.a.zwy % vec3<u32>(32u))), -2147483647i, -77801i >> ((u_input.c & u_input.d) % 32u)), -firstTrailingBit(~u_input.b), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), true)), func_5(Struct_5(1f), func_2()).x);
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a, vec3<u32>(~u_input.c, _wgslsmith_mod_u32(_wgslsmith_mult_u32(36097u << (u_input.e % 32u), 1u), _wgslsmith_mod_u32(15795u, u_input.a.x) & u_input.e), ~(~u_input.e)), 0i, 51076u << (~(~0u) % 32u));
}

