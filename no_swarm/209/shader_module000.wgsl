struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = false;
    global0 = Struct_1(select(~(vec4<u32>(u_input.d, 0u, 1u, global2.a.x) & global1.b) ^ ~global2.b, reverseBits(vec4<u32>(arg_1, min(13393u, arg_1), 0u, 0u)), true), global0.b, ~arg_1 ^ u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, -348f, 582f, 1137f) * vec4<f32>(-287f, 1342f, -968f, global1.d.x)), global1.d)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global1.d))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.d - vec4<f32>(arg_0, global0.d.x, 847f, -554f)) - global0.d))));
    var_0 = true;
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(global1.b, ~global1.b), ~global0.a, global2.a.x, vec4<f32>(arg_0, 937f, -353f, _wgslsmith_f_op_f32(f32(-1f) * -138f)));
    var var_2 = Struct_1(select(max(global1.a, reverseBits(select(vec4<u32>(0u, 1u, global1.a.x, global1.a.x), var_1.a, false))), abs(global2.b), !(945f < _wgslsmith_f_op_f32(1266f * arg_0))), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, global0.a.x), var_1.a.xw), 4294967295u, 37961u), global0.a), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(max(global0.b.x, 4294967295u), reverseBits(global2.b.x), 4241u), min(vec3<u32>(3806u, var_1.a.x, global2.c), global0.b.yxy), ~countOneBits(global2.a.wxz)), vec3<u32>(global0.b.x, firstLeadingBit(19440u), 31314u)), _wgslsmith_div_vec4_f32(global2.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - global2.d.x)), 1087f, _wgslsmith_f_op_f32(round(global2.d.x)), global0.d.x)));
    return ~(~(~countOneBits(~u_input.d)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> u32 {
    global1 = Struct_1(select(countOneBits(reverseBits(firstTrailingBit(vec4<u32>(u_input.d, u_input.d, global0.a.x, global0.b.x)))), vec4<u32>(1u, 62366u, abs(~global2.b.x), 0u), select(arg_1.x, select(true, arg_1.x, any(vec4<bool>(false, true, false, false))), !arg_1.x)), reverseBits(global1.b), 54009u, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(global0.d.x - -100f), global1.d.x, _wgslsmith_f_op_f32(-1240f * _wgslsmith_f_op_f32(abs(353f)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(539f, -1000f, _wgslsmith_f_op_f32(sign(-113f)), global0.d.x), vec4<f32>(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(global1.d.x * 1000f), -1000f)))));
    return firstLeadingBit(1u);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_1(reverseBits(firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(0u, 979u), func_2(1000f, arg_2.c), _wgslsmith_mod_u32(1u, 29967u), firstLeadingBit(1u)))), _wgslsmith_mult_vec4_u32(vec4<u32>(~1u, global1.b.x, 1u | func_3(0i, vec4<bool>(false, true, true, false)), ~12456u), vec4<u32>(~global0.b.x << (56519u % 32u), ~func_2(arg_2.d.x, u_input.d), ~countOneBits(9192u), _wgslsmith_clamp_u32(global0.a.x, 4294967295u, select(0u, u_input.d, false)))), ~_wgslsmith_mod_u32(arg_0.a.x, 18158u | arg_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, global2.d.x, 1f, global1.d.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global2.d, global2.d, vec4<bool>(false, false, true, true)))))));
    global1 = Struct_1(vec4<u32>(~global2.a.x, ~abs(arg_2.a.x), 0u, ~_wgslsmith_mult_u32(~u_input.d, global1.b.x | 4294967295u)), vec4<u32>(global1.a.x, _wgslsmith_div_u32(global0.a.x, _wgslsmith_mult_u32(u_input.d, select(arg_2.b.x, 12211u, false))), _wgslsmith_dot_vec4_u32(arg_2.a, firstTrailingBit(max(global2.b, vec4<u32>(0u, 1u, 9279u, 1u)))), ~2504u), 17943u, arg_2.d);
    let var_0 = arg_2.d.x;
    var var_1 = arg_0;
    var_1 = arg_2;
    return arg_2;
}

fn func_1(arg_0: vec4<u32>) -> vec4<u32> {
    let var_0 = func_4(Struct_1(vec4<u32>(~(1u >> (arg_0.x % 32u)), ~func_2(-1000f, global0.c), func_3(~11993i, select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), 6101u | arg_0.x), ~(vec4<u32>(global1.c, 0u, 4107u, global1.c) >> (vec4<u32>(23205u, 33852u, arg_0.x, global2.c) % vec4<u32>(32u))), _wgslsmith_mult_u32(~global0.c, ~global2.b.x), global1.d), select(~(-(~u_input.c)), min(_wgslsmith_add_i32(u_input.b.x, -u_input.c), countOneBits(1i)), true), Struct_1(~global1.a, _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(global0.b.x, 4294967295u, 1u, 33022u)), ~global1.b) | ~vec4<u32>(4294967295u, 13930u, global0.b.x, 285u), _wgslsmith_sub_u32(4294967295u, (global2.b.x & arg_0.x) >> (20030u % 32u)), global2.d));
    global2 = Struct_1(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(arg_0.x, global0.a.x, 64821u, 0u), vec4<u32>(4294967295u, 1u, u_input.d, 8238u)) >> (arg_0 % vec4<u32>(32u)), global1.b << (_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.d, 1u, u_input.d), vec4<u32>(1u, 1u, global0.b.x, 4294967295u)), global1.a) % vec4<u32>(32u)), global0.a), arg_0, global2.a.x, vec4<f32>(global1.d.x, -105f, _wgslsmith_f_op_f32(f32(-1f) * -1188f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(731f * var_0.d.x) * global2.d.x), _wgslsmith_div_f32(global1.d.x, _wgslsmith_f_op_f32(step(575f, -363f)))))));
    global0 = func_4(Struct_1(vec4<u32>(abs(u_input.d >> (0u % 32u)), var_0.a.x, 0u, ~4294967295u), ~global2.a, func_2(-1207f, 1u), vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(-1201f * _wgslsmith_f_op_f32(select(global0.d.x, -731f, false))), var_0.d.x, _wgslsmith_f_op_f32(-func_4(var_0, u_input.b.x, var_0).d.x))), u_input.a.x, Struct_1(global0.b, arg_0 >> (~(vec4<u32>(global0.c, global2.b.x, 1u, 0u) | arg_0) % vec4<u32>(32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_div_u32(global2.b.x, global0.b.x)), global0.b.xx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.d, vec4<f32>(-333f, -1529f, 253f, 312f), vec4<bool>(true, false, true, true)))))));
    let var_1 = ~abs(vec4<i32>(u_input.c, _wgslsmith_clamp_i32(-u_input.a.x, firstTrailingBit(u_input.a.x), 19594i), max(firstTrailingBit(u_input.b.x), 0i), u_input.c));
    global0 = var_0;
    return global2.a;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, true)), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)));
    let var_1 = func_1(vec4<u32>(~(~37827u), countOneBits(70u), func_3(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, 1i, -36080i), u_input.a), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true)), 4294967295u)).x;
    let var_2 = global1.a.xz;
    let var_3 = arg_0;
    let var_4 = 4294967295u;
    return func_4(var_3, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-(~vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(-31220i, u_input.a.x)), max(u_input.a.zy, (vec2<i32>(-1i, u_input.a.x) & vec2<i32>(u_input.c, 2147483647i)) << (abs(arg_0.b.zy) % vec2<u32>(32u)))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(Struct_1(firstTrailingBit(_wgslsmith_mod_vec4_u32(func_1(global0.a), ~global2.a)), global2.a, 21835u, global2.d));
    let var_0 = u_input.c;
    global1 = func_4(func_5(func_5(func_5(func_4(Struct_1(global0.b, global1.a, global0.b.x, vec4<f32>(-1729f, global1.d.x, 160f, global0.d.x)), u_input.b.x, Struct_1(global0.b, global0.a, 42480u, vec4<f32>(global1.d.x, 549f, global1.d.x, global1.d.x)))))), var_0, func_4(func_5(Struct_1(max(global1.a, global1.b), global2.b, global1.a.x & 1u, _wgslsmith_f_op_vec4_f32(-global1.d))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_0, var_0), vec3<i32>(-4443i, 1i, var_0)), var_0), u_input.b.x), Struct_1(global2.a, select(~global1.a, ~vec4<u32>(37486u, 1u, 0u, global1.b.x), all(vec2<bool>(false, true))), _wgslsmith_div_u32(_wgslsmith_mod_u32(9974u, global0.c), _wgslsmith_mod_u32(0u, u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-369f, -140f, global0.d.x, global2.d.x) + vec4<f32>(global2.d.x, global0.d.x, -347f, 1748f))))));
    let var_1 = ~_wgslsmith_dot_vec3_u32(global1.a.yzw, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, global0.a.x, 41320u), countOneBits(vec3<u32>(27774u, global1.c, 0u))), ~global0.b.xxz));
    global1 = func_5(Struct_1(_wgslsmith_div_vec4_u32(global0.b, vec4<u32>(1u, ~global0.c, ~var_1, 1u)), (~global0.b >> (max(vec4<u32>(1u, 20106u, 15934u, 32u), vec4<u32>(u_input.d, 55533u, global2.a.x, 4498u)) % vec4<u32>(32u))) & ~global1.b, global2.b.x, _wgslsmith_f_op_vec4_f32(global2.d - vec4<f32>(_wgslsmith_f_op_f32(abs(-1105f)), -1506f, global1.d.x, 1144f))));
    let x = u_input.a;
    s_output = StorageBuffer(24137u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(func_4(Struct_1(vec4<u32>(24351u, u_input.d, 1u, 32369u), global2.b, global0.c, global0.d), u_input.b.x, Struct_1(vec4<u32>(global2.a.x, u_input.d, global2.a.x, global2.c), global1.a, global1.c, vec4<f32>(2819f, 1021f, global2.d.x, global0.d.x)))).d.x) - global1.d.x), u_input.b.x >> (27429u % 32u));
}

