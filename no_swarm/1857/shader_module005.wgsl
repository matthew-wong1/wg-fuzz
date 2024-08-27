struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(4233i, vec4<i32>(-94157i, i32(-2147483648), -3688i, 10686i), true, -27902i, vec3<u32>(4294967295u, 2480u, 1u)), Struct_1(2147483647i, vec4<i32>(2147483647i, i32(-2147483648), -58157i, 1i), true, -8670i, vec3<u32>(4294967295u, 1u, 0u)), Struct_1(2147483647i, vec4<i32>(28078i, 20112i, 1i, -8210i), true, 8933i, vec3<u32>(1u, 3629u, 4294967295u)), Struct_1(28692i, vec4<i32>(-27760i, -1i, 2147483647i, 14155i), false, -46961i, vec3<u32>(0u, 91724u, 29363u)), Struct_1(1i, vec4<i32>(2147483647i, 59547i, 14323i, 0i), false, i32(-2147483648), vec3<u32>(46263u, 0u, 4294967295u)));

var<private> global1: vec4<u32>;

var<private> global2: f32 = 1398f;

var<private> global3: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(4294967295u, 28742u), vec2<u32>(19445u, 24033u), vec2<u32>(77994u, 108974u), vec2<u32>(1u, 1758u), vec2<u32>(4294967295u, 47455u), vec2<u32>(1u, 21244u));

var<private> global4: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(-1i, -7970i, 73164i, 65392i), vec4<i32>(i32(-2147483648), 0i, -39462i, -35460i), vec4<i32>(0i, 1i, 2147483647i, -66963i), vec4<i32>(-37250i, i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(0i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(0i, -3760i, -7423i, 8317i), vec4<i32>(35786i, 60548i, -10491i, 59254i), vec4<i32>(i32(-2147483648), 2147483647i, -29416i, -1i), vec4<i32>(46000i, -18476i, -19344i, -31058i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>) -> bool {
    global2 = 1f;
    let var_0 = ((global4[_wgslsmith_index_u32(arg_1.x, 9u)] >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_1.x, 36535u, 2850u), vec4<u32>(arg_1.x, u_input.b.x, global1.x, 1u)) % vec4<u32>(32u))) >> ((reverseBits(~vec4<u32>(64560u, 119784u, global1.x, 0u)) >> (_wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.b.x, arg_1.x, u_input.b.x, arg_1.x), vec4<u32>(4294967295u, 8081u, u_input.b.x, 0u)), vec4<u32>(u_input.b.x, global1.x, 35492u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(arg_1.x, u_input.c.x, 31683u, global1.x))) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ global4[_wgslsmith_index_u32(arg_1.x, 9u)];
    let var_1 = _wgslsmith_clamp_i32(2147483647i, arg_0.x, ~(arg_0.x >> (1u % 32u)));
    global1 = ~abs(_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.b.x, u_input.b.x), vec4<u32>(72438u, 0u, 1u, 81439u)), vec4<u32>(_wgslsmith_div_u32(global1.x, arg_1.x), 31915u << (u_input.c.x % 32u), 1u, ~0u)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1196f) + -1761f) - -1258f) + _wgslsmith_f_op_f32(sign(-1324f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-754f + 1609f))))), _wgslsmith_f_op_f32(1000f * 425f));
    return true;
}

fn func_2() -> Struct_2 {
    var var_0 = func_3((vec3<i32>(1i, 1i, 1i) >> (~vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) % vec3<u32>(32u))) ^ vec3<i32>(1i, 1i, 1i), _wgslsmith_div_vec3_u32(global1.xwz, vec3<u32>(49036u | u_input.b.x, u_input.c.x, firstLeadingBit(global1.x)))) | true;
    global0 = array<Struct_1, 5>();
    global4 = array<vec4<i32>, 9>();
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-755f, 644f, 1752f), vec3<f32>(1455f, 879f, 1539f)))), firstTrailingBit(_wgslsmith_div_u32(reverseBits(u_input.a), 1u >> (u_input.a % 32u))), 1000f);
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c, -180f, _wgslsmith_f_op_f32(max(var_0.c, 1075f)), _wgslsmith_f_op_f32(f32(-1f) * -873f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1087f, var_0.c, var_0.c, -308f) + vec4<f32>(var_0.a.x, var_0.a.x, var_0.c, -870f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(518f, var_0.a.x, 1000f, var_0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 1061f, 288f, var_0.a.x))))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))))))));
    let var_3 = select(select(vec4<bool>(true, true, 1u == abs(var_0.b), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true))), select(vec4<bool>(true, true, true, true), vec4<bool>(func_3(vec3<i32>(arg_0, arg_0, -95768i), vec3<u32>(1u, var_0.b, 1u)), true, true, select(true, true, false)), true & (54714u < var_0.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1002f, -402f)))) < var_1.x), !vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true, all(vec3<bool>(true, true, true))), vec4<bool>((var_0.b == 23415u) == true, any(vec2<bool>(true, true)) & (_wgslsmith_f_op_f32(f32(-1f) * -302f) <= _wgslsmith_f_op_f32(ceil(var_0.c))), true, any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), select(true, false, true)))));
    let var_4 = -918f;
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(~(arg_0.b.wyx & arg_0.b.wzx)), vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -7186i), select(arg_0.b.xy, arg_0.b.wy, false)), 2147483647i, 0i)), select(_wgslsmith_add_vec3_i32(abs(-arg_0.b.xwz), _wgslsmith_mod_vec3_i32(-arg_0.b.xzz, arg_0.b.wyw)), abs(arg_0.b.zzw ^ arg_0.b.zxy) | vec3<i32>(arg_0.b.x >> (38981u % 32u), arg_0.a, arg_0.d << (u_input.b.x % 32u)), select(select(vec3<bool>(false, arg_0.c, true), !vec3<bool>(false, arg_0.c, arg_0.c), arg_0.d == arg_0.d), !(!vec3<bool>(arg_0.c, arg_0.c, true)), vec3<bool>(arg_0.c, arg_0.c, !arg_0.c))));
    global1 = _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, u_input.a, arg_0.e.x) | vec4<u32>(25515u, arg_0.e.x, arg_0.e.x, 3082u), vec4<u32>(firstLeadingBit(arg_0.e.x), ~52586u, ~arg_0.e.x, u_input.b.x)), firstTrailingBit(~(~vec4<u32>(u_input.c.x, 5965u, 7062u, 64444u))));
    let var_1 = ~vec2<u32>(global1.x, ~u_input.c.x);
    let var_2 = -_wgslsmith_add_i32(~(~2147483647i), arg_0.a & ~(~var_0.x));
    let var_3 = true;
    return countOneBits(vec4<u32>(~(~var_1.x), 1u, ~_wgslsmith_clamp_u32(31582u, _wgslsmith_add_u32(arg_0.e.x, 29399u), _wgslsmith_add_u32(0u, var_1.x)), _wgslsmith_mod_u32(arg_0.e.x, select(firstTrailingBit(22895u), _wgslsmith_clamp_u32(4294967295u, 42563u, 78055u), var_3))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    global1 = func_4(Struct_1(~1i, -min(global4[_wgslsmith_index_u32(10903u, 9u)], global4[_wgslsmith_index_u32(59647u, 9u)]), any(vec2<bool>(false, false)), func_1(i32(-1i) * -7969i), ~(~u_input.b))) & vec4<u32>(~reverseBits(u_input.b.x), ~40448u, abs(1u), u_input.c.x);
    let var_0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(231f, 719f)) - 1824f) + 1345f);
    global4 = array<vec4<i32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mod_u32(~66897u, _wgslsmith_div_u32(4294967295u, global1.x)) ^ ~86043u));
}

