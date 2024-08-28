struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-398f, 695f, 1000f, 398f, -1123f, 745f, -1010f, -158f);

var<private> global1: array<vec2<bool>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_4(u_input.b, select(vec2<i32>(-1i) * -(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(4294967295u, 109864u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(max(vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.a, -13068i)), select(vec2<i32>(-13661i, u_input.b), vec2<i32>(60139i, u_input.c), vec2<bool>(true, false))) >> (reverseBits(_wgslsmith_add_vec2_u32(arg_0.yy, vec2<u32>(arg_0.x, arg_0.x))) % vec2<u32>(32u)), !(!select(global1[_wgslsmith_index_u32(arg_0.x, 8u)], vec2<bool>(true, true), false))), Struct_1(u_input.b, global0[_wgslsmith_index_u32(arg_0.x, 8u)], true, vec2<f32>(global0[_wgslsmith_index_u32(arg_0.x, 8u)], _wgslsmith_f_op_f32(floor(1038f))), true), vec3<i32>(u_input.a >> (~4294967295u % 32u), -1i, _wgslsmith_add_i32(-u_input.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, 1i, 0i), vec4<i32>(0i, u_input.c, 15976i, u_input.b)), u_input.c))), Struct_2(Struct_1(13161i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1053f)), true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(551f, global0[_wgslsmith_index_u32(24980u, 8u)]))), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(382f, global0[_wgslsmith_index_u32(39455u, 8u)])) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 8u)], -1394f) + vec2<f32>(global0[_wgslsmith_index_u32(arg_0.x, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)])))), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, 33304u, arg_0.x), select(arg_0.www, arg_0.yzx, false)) | arg_0.wwy, vec4<u32>(reverseBits(max(115947u, arg_0.x)), arg_0.x, ~arg_0.x, arg_0.x)));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-320f * _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(73671u, 8u)], -210f))))), var_0.e.a.d.x))));
    global1 = array<vec2<bool>, 8>();
    global1 = array<vec2<bool>, 8>();
    let var_2 = _wgslsmith_div_vec2_i32(var_0.d.yx, ~vec2<i32>(u_input.a, u_input.b) & ~(-vec2<i32>(1016i, -1i)));
    return var_1;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> u32 {
    var var_0 = -(i32(-1i) * -1i);
    global1 = array<vec2<bool>, 8>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~arg_0.ww, arg_0.wz), 8u)];
    let var_2 = Struct_2(Struct_1(firstTrailingBit(u_input.c << (40789u % 32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(8805u, 9307u, arg_1, arg_0.x))) - _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(51859u, 8u)], global0[_wgslsmith_index_u32(arg_1, 8u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 8u)])))), true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1365f, global0[_wgslsmith_index_u32(arg_1, 8u)])))), any(vec4<bool>(true, true, any(global1[_wgslsmith_index_u32(arg_0.x, 8u)]), any(vec4<bool>(true, false, true, true))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~arg_1, 8u)])), _wgslsmith_f_op_f32(f32(-1f) * -1936f)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(40818u, 46925u, 60858u), ~max(arg_0.wzx, arg_0.xwz), arg_0.zxy), _wgslsmith_mult_vec3_u32(max(_wgslsmith_sub_vec3_u32(arg_0.zyw, arg_0.wwy), vec3<u32>(45779u, 22108u, arg_1)), ~vec3<u32>(4294967295u, arg_1, 0u))), max(vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(55527u), 1u), countOneBits(arg_1) >> (21802u % 32u), arg_1, 4294967295u), min(arg_0 ^ arg_0, arg_0)));
    let var_3 = i32(-1i) * -u_input.c;
    return var_2.d.x;
}

fn func_1() -> Struct_4 {
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    var var_0 = select(1u, _wgslsmith_clamp_u32((select(1u, 4294967295u, false) ^ _wgslsmith_mod_u32(1u, 71804u)) ^ min(abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u))), _wgslsmith_sub_u32(func_2(abs(vec4<u32>(20995u, 1u, 44591u, 40789u)), ~98731u), ~4294967295u), ~50252u), !(countOneBits(u_input.a) < (i32(-1i) * -u_input.a)));
    let var_1 = Struct_4(~(~(~9658i)), -firstLeadingBit(vec2<i32>(~u_input.c, u_input.a)), Struct_1(-(i32(-1i) * -u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(34332u, 8u)] + -1105f)) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(50713u, 65289u, 31847u, 0u), vec4<u32>(0u, 0u, 0u, 42156u), vec4<bool>(true, false, true, false)), vec4<u32>(1u, 1u, 1u, 1u)), 8u)]), true, vec2<f32>(_wgslsmith_f_op_f32(-386f * 386f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 8u)])), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))) || (_wgslsmith_dot_vec4_u32(vec4<u32>(83868u, 14138u, 1u, 31403u), vec4<u32>(1u, 21913u, 0u, 42979u)) == ~0u)), _wgslsmith_clamp_vec3_i32(select(~vec3<i32>(-1i, -6509i, u_input.b), abs(vec3<i32>(u_input.b, u_input.a, 2147483647i)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.a, 41600i), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -5288i, -11304i), vec3<i32>(u_input.b, u_input.c, u_input.a), vec3<i32>(u_input.b, -16881i, -44534i)))) | _wgslsmith_sub_vec3_i32(~(-vec3<i32>(31973i, u_input.b, u_input.b)), reverseBits(vec3<i32>(11788i, -2147483647i, 0i)) ^ vec3<i32>(23387i, u_input.c, 1i)), Struct_2(Struct_1(-1i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(12862u, 8u)], global0[_wgslsmith_index_u32(16480u, 8u)], false)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 8u)]))), true, vec2<f32>(_wgslsmith_f_op_f32(min(1449f, global0[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_div_f32(1305f, -739f)), !all(vec2<bool>(true, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1002f, global0[_wgslsmith_index_u32(61376u, 8u)]) - vec2<f32>(-769f, 872f)), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 8u)] - global0[_wgslsmith_index_u32(58079u, 8u)]), global0[_wgslsmith_index_u32(abs(18904u), 8u)])), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 62397u, 1u), vec3<u32>(7550u, 0u, 26751u)), vec4<u32>(1u, 1u, 1u, 1u)));
    let var_2 = var_1;
    return Struct_4(var_2.e.a.a, _wgslsmith_mult_vec2_i32(vec2<i32>(abs(-85897i), 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, var_2.d.x), vec2<i32>(-2147483647i, u_input.a)) ^ vec2<i32>(74597i, -1i)) ^ min(vec2<i32>(~var_2.e.a.a, -var_1.a), firstLeadingBit(-var_2.b)), var_2.e.a, -vec3<i32>(select(-u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(15112i, var_1.c.a, -53666i), var_1.d), !var_1.c.c), ~(-u_input.b), max(_wgslsmith_mod_i32(1i, var_2.a), select(var_2.b.x, 0i, var_2.e.a.e))), var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, all(vec2<bool>(true, true)));
    global0 = array<f32, 8>();
    var var_1 = func_1();
    var var_2 = ~(-firstLeadingBit(-abs(vec4<i32>(-1i, var_1.d.x, -1i, -28457i))));
    var_1 = func_1();
    var_1 = Struct_4(-2147483647i, select(-_wgslsmith_add_vec2_i32(~var_1.d.zx, abs(vec2<i32>(u_input.b, -1i))), var_1.d.zx, true), Struct_1(-var_1.e.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.e.d.x, 8u)])))), false || any(vec4<bool>(var_1.e.a.e, var_1.c.c, false, false)), var_1.c.d, ~var_1.e.d.x >= 1u), -(~vec3<i32>(u_input.a, var_1.e.a.a, u_input.b) ^ var_2.xzw) ^ vec3<i32>(-1i, var_2.x, 5530i), func_1().e);
    let var_3 = var_1.e.d.yw;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_3.x, 37270u), var_2.ywy ^ vec3<i32>(36064i, 1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(1318i, u_input.c), u_input.b)), -reverseBits(vec2<i32>(_wgslsmith_div_i32(-9681i, var_2.x), 0i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 231f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2045f, var_1.c.b), _wgslsmith_f_op_vec2_f32(-var_1.e.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.d - vec2<f32>(global0[_wgslsmith_index_u32(37996u, 8u)], 120f))))));
}

