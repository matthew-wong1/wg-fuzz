struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: vec2<i32> = vec2<i32>(67014i, 15944i);

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-5770i), Struct_1(-1i), Struct_1(441i), Struct_1(0i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-1058i), Struct_1(-9465i), Struct_1(2147483647i), Struct_1(24216i), Struct_1(-39630i), Struct_1(33481i), Struct_1(0i), Struct_1(2147483647i), Struct_1(59216i), Struct_1(8395i), Struct_1(560i), Struct_1(-31218i), Struct_1(0i), Struct_1(2147483647i), Struct_1(1i), Struct_1(0i), Struct_1(8850i), Struct_1(-27784i));

var<private> global2: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-1662f * 739f);
    global0 = ~vec2<i32>(countOneBits(select(global0.x << (4294967295u % 32u), u_input.b, true)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-75752i, -1i)) & abs(vec2<i32>(u_input.b, 2147483647i)), -select(u_input.d.xy, vec2<i32>(0i, global0.x), false)));
    var_0 = -873f;
    return arg_2;
}

fn func_3() -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-918f - 979f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1035f))))));
    global1 = array<Struct_1, 24>();
    global2 = var_0.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))));
    return func_1(_wgslsmith_sub_vec2_u32(~(~(~u_input.c.zy)), ~abs(firstTrailingBit(vec2<u32>(u_input.c.x, u_input.c.x)))), u_input.c.zx, func_1(vec2<u32>(~(~0u), u_input.e), vec2<u32>(min(u_input.c.x >> (24126u % 32u), select(7765u, 35745u, false)), u_input.c.x >> (~u_input.c.x % 32u)), Struct_2(~u_input.e), ~(-1i & abs(u_input.a))), max(-_wgslsmith_add_i32(u_input.d.x, 1i), global0.x) & u_input.d.x);
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    global1 = array<Struct_1, 24>();
    let var_0 = arg_0;
    var var_1 = _wgslsmith_sub_i32(i32(-1i) * -1i, 1i);
    var var_2 = true;
    var_1 = -14008i;
    return func_3();
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> vec3<u32> {
    global2 = _wgslsmith_f_op_f32(trunc(-1238f));
    let var_0 = !(!select(!(arg_1.x <= arg_1.x), true, false));
    var var_1 = ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, u_input.c.x, arg_0.a, arg_0.a), vec4<u32>(arg_0.a, u_input.e, arg_0.a, 0u) & vec4<u32>(arg_0.a, 26843u, u_input.e, arg_0.a)), _wgslsmith_div_vec4_u32(vec4<u32>(10918u, 4294967295u, 0u, 4294967295u), select(vec4<u32>(1u, 0u, arg_0.a, 41353u), vec4<u32>(u_input.c.x, arg_0.a, u_input.c.x, u_input.c.x), vec4<bool>(true, false, true, var_0)))));
    global1 = array<Struct_1, 24>();
    var var_2 = select(false, any(vec4<bool>(false, any(vec3<bool>(var_0, var_0, var_0)), true, false)), false);
    return vec3<u32>(var_1.x, 1u, _wgslsmith_div_u32(4294967295u, u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c << (u_input.c % vec3<u32>(32u)), vec3<u32>(45743u, u_input.c.x, 96462u)), ~(vec3<u32>(1u, u_input.e, u_input.e) & vec3<u32>(u_input.c.x, u_input.c.x, 8176u))), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 0u), vec3<u32>(u_input.e, u_input.e, u_input.c.x), u_input.c >> (vec3<u32>(4294967295u, u_input.c.x, u_input.e) % vec3<u32>(32u))))), firstTrailingBit(~vec3<u32>(u_input.e, 1u, 1u)) | func_4(func_2(func_1(u_input.c.yz, u_input.c.zy, Struct_2(31740u), u_input.b), ~u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2258f, -232f) + vec2<f32>(463f, -696f)))));
    let var_1 = func_2(func_1(vec2<u32>(func_2(func_3(), global0.x).a, (u_input.c.x | u_input.e) & (u_input.c.x | 25971u)), min(~vec2<u32>(u_input.c.x, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(19414u, u_input.e) ^ vec2<u32>(13462u, 1u), reverseBits(var_0.xz))), func_1(func_4(Struct_2(u_input.e), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-338f, 1894f), vec2<f32>(-178f, 139f)))).zx, firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.c.xx, vec2<u32>(1u, 112691u))), func_3(), -6626i), min(global0.x, ~_wgslsmith_clamp_i32(-5172i, -49682i, -57961i))), reverseBits(reverseBits(~global0.x & -2147483647i)));
    var var_2 = max(u_input.c, ~(~(u_input.c >> (vec3<u32>(95392u, 50691u, var_0.x) % vec3<u32>(32u)))));
    var var_3 = var_1.a;
    let var_4 = u_input.e;
    var var_5 = select(vec3<bool>(true, true, true), vec3<bool>((u_input.c.x ^ (36473u ^ var_4)) == var_4, (true && any(vec4<bool>(false, true, false, true))) | (true | any(vec2<bool>(false, false))), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)) | false), !(u_input.d.x != (~u_input.a << (1u % 32u))));
    global1 = array<Struct_1, 24>();
    var_2 = func_4(Struct_2(~(reverseBits(var_4) & _wgslsmith_mod_u32(0u, var_4))), vec2<f32>(_wgslsmith_f_op_f32(430f * _wgslsmith_f_op_f32(max(-832f, _wgslsmith_f_op_f32(f32(-1f) * -1448f)))), -379f));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_3(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1265f, -674f) * vec2<f32>(1302f, 523f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(204f, 154f)), vec2<f32>(-725f, 601f))))).x);
}

