struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: bool) -> vec3<u32> {
    let var_0 = arg_0;
    var var_1 = Struct_2(-select(u_input.a.zz, _wgslsmith_mult_vec2_i32(vec2<i32>(-14257i, arg_0.b.b.b), var_0.b.b.a << (var_0.a.zx % vec2<u32>(32u))), arg_2), min(-2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, arg_0.b.b.a.x, -11270i, -37587i), _wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.c, -39764i, u_input.a.x, 0i), vec4<i32>(arg_0.b.b.a.x, -1i, var_0.b.b.b, 36312i)), vec4<i32>(38843i, u_input.c, -2147483647i, arg_0.b.b.b)))), var_0.b.b.c);
    let var_2 = _wgslsmith_div_f32(var_0.b.a, -1168f);
    var_1 = arg_0.b.b;
    var_1 = Struct_2(abs(vec2<i32>(-1i) * -(~arg_0.b.b.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, var_1.b), u_input.a.xx), select(!var_0.b.b.c, !vec3<bool>(true, var_0.b.b.c.x, true), var_1.c.x));
    return arg_0.a;
}

fn func_2() -> f32 {
    global0 = array<vec3<f32>, 19>();
    var var_0 = vec4<u32>(0u, 44574u, ~u_input.d.x, abs(u_input.b));
    var_0 = select(vec4<u32>(_wgslsmith_dot_vec3_u32(func_3(Struct_5(vec3<u32>(var_0.x, 4294967295u, 89494u), Struct_3(-629f, Struct_2(vec2<i32>(1i, -1i), -37622i, vec3<bool>(true, true, false)))), false, true), var_0.xyx) & ~41916u, ~u_input.d.x, abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(30873u, 4294967295u), u_input.d.yx)), 21470u), u_input.d, vec4<bool>(true, true, true, true));
    var_0 = ~_wgslsmith_div_vec4_u32(min(u_input.d, ~u_input.d), u_input.d);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-311f)) * 1177f), Struct_2(~vec2<i32>(_wgslsmith_mod_i32(u_input.c, -1i), u_input.c), u_input.a.x, vec3<bool>(true, true, all(vec4<bool>(true, true, true, true)))));
    return _wgslsmith_f_op_f32(min(-642f, _wgslsmith_f_op_f32(max(var_1.a, var_1.a))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_3 {
    var var_0 = arg_2.b;
    return arg_2.b;
}

fn func_1(arg_0: vec2<f32>) -> Struct_5 {
    let var_0 = vec4<i32>(~_wgslsmith_div_i32(1i, ~(-51398i)), abs(-70079i), -2147483647i, -firstTrailingBit(1i) >> (1u % 32u));
    global0 = array<vec3<f32>, 19>();
    let var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), 281f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-591f * _wgslsmith_f_op_f32(f32(-1f) * -200f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(263f)))), _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(1000f + 569f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1186f) - 643f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1168f + -568f)), 2209f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1075f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(max(arg_0.x, 2108f)), 924f) + vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(select(1155f, arg_0.x, false)), -595f, _wgslsmith_div_f32(-614f, 716f))))), Struct_4(-53173i, Struct_3(935f, Struct_2(reverseBits(vec2<i32>(u_input.a.x, var_0.x)), u_input.c ^ u_input.a.x, vec3<bool>(true, true, true))), Struct_2(~firstLeadingBit(vec2<i32>(u_input.c, 26197i)), -18865i, select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))));
    var var_2 = !any(!(!select(vec4<bool>(var_1.b.c.x, true, true, var_1.b.c.x), vec4<bool>(var_1.b.c.x, true, var_1.b.c.x, false), vec4<bool>(var_1.b.c.x, true, false, var_1.b.c.x))));
    let var_3 = -1000f;
    return Struct_5(~(u_input.d.xxy ^ (~vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x) | (u_input.e << (u_input.e % vec3<u32>(32u))))), var_1);
}

fn func_5(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: vec3<u32>) -> i32 {
    let var_0 = arg_0.b;
    let var_1 = var_0.b.b;
    var var_2 = _wgslsmith_f_op_f32(ceil(-574f));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(0u, 19u)] * global0[_wgslsmith_index_u32(u_input.b, 19u)]) - _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.b, 19u)] + global0[_wgslsmith_index_u32(12206u, 19u)])) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(215f, 471f, arg_0.b.a)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(0u, 19u)]))))));
    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1834f))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-154f + var_3.x) * _wgslsmith_f_op_f32(sign(arg_0.b.a))))))));
    return -27045i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~vec2<i32>(func_5(func_1(vec2<f32>(-1000f, 261f)), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -2147483647i) | vec4<i32>(u_input.c, u_input.c, u_input.c, -1i), ~vec3<u32>(u_input.b, u_input.d.x, u_input.b)), u_input.c), firstLeadingBit(i32(-1i) * -43403i), !func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -289f)))))).b.b.c);
    let var_1 = Struct_1(reverseBits(firstTrailingBit(~1i) ^ ~0i));
    global0 = array<vec3<f32>, 19>();
    let var_2 = Struct_4(~(-6707i), Struct_3(917f, var_0), Struct_2(vec2<i32>(u_input.a.x, _wgslsmith_div_i32(0i, var_1.a)) | _wgslsmith_mod_vec2_i32(~var_0.a, ~var_0.a), -func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-245f, -1000f, 1016f, -2177f), vec4<f32>(-127f, -946f, 1000f, 2306f), vec4<bool>(var_0.c.x, false, var_0.c.x, false))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(483f, 395f, 1465f, 841f), vec4<f32>(-233f, -455f, -1000f, -2053f))), Struct_4(var_0.a.x, Struct_3(506f, var_0), Struct_2(vec2<i32>(2147483647i, var_0.a.x), 25819i, var_0.c))).b.b, var_0.c));
    var var_3 = _wgslsmith_sub_vec2_u32((_wgslsmith_mult_vec2_u32(u_input.d.zy, u_input.d.zx) << (_wgslsmith_add_vec2_u32(~vec2<u32>(19762u, u_input.b), u_input.d.xz << (u_input.d.yz % vec2<u32>(32u))) % vec2<u32>(32u))) ^ ~select(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.e.x), u_input.e.xz), min(vec2<u32>(4294967295u, u_input.e.x), vec2<u32>(1u, u_input.b)), select(false, var_2.b.b.c.x, var_2.b.b.c.x)), _wgslsmith_add_vec2_u32(~u_input.e.yz, u_input.d.xx));
    var var_4 = _wgslsmith_div_f32(-2003f, 1668f);
    var var_5 = ~(-firstLeadingBit(select(u_input.a << (u_input.e % vec3<u32>(32u)), abs(u_input.a), vec3<bool>(true, var_0.c.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(var_0.a, ~vec2<i32>(~var_1.a, -var_2.b.b.a.x)));
}

