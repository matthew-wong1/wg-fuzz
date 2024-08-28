struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> bool {
    let var_0 = abs(31009u ^ max(reverseBits(4294967295u) ^ (1u | arg_0), ~firstTrailingBit(14578u)));
    var var_1 = select(4294967295u, _wgslsmith_sub_u32(var_0, _wgslsmith_dot_vec2_u32(select(u_input.c.zx, u_input.c.yz, vec2<bool>(false, false)), vec2<u32>(arg_0, 0u)) ^ arg_0), any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false))));
    var_1 = ~4294967295u;
    var_1 = ~countOneBits(1u);
    var_1 = u_input.e & abs(0u);
    return false;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> bool {
    let var_0 = !(!vec2<bool>(arg_0.a.c.x, arg_0.a.b.x > _wgslsmith_f_op_f32(-1011f - arg_0.a.b.x)));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b.x) - arg_0.a.b.x)))));
    var_1 = arg_0.a.b.x;
    return !all(!arg_0.a.c);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = select(vec2<bool>(arg_0.a.x, all(arg_0.c.xz)), arg_0.a.yz, vec2<bool>(false, arg_1));
    var var_1 = func_2(~(~u_input.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, 108f, -814f) - vec3<f32>(695f, -1647f, arg_0.b.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, 817f, -624f) - vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 633f, 603f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x) * -447f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1051f * arg_0.b.x)))));
    var_2 = arg_0.b.x;
    let var_3 = vec3<bool>(true, _wgslsmith_f_op_f32(-arg_0.b.x) >= -2859f, arg_0.c.x && true);
    return func_3(Struct_2(Struct_1(arg_0.a, vec2<f32>(428f, _wgslsmith_f_op_f32(arg_0.b.x - -497f)), select(vec3<bool>(false, var_3.x, var_3.x), var_3, !var_3.x), vec2<u32>(~4294967295u, ~u_input.e), vec3<u32>(10894u >> (u_input.c.x % 32u), u_input.e, arg_0.d.x))), ~vec2<i32>(_wgslsmith_clamp_i32(-u_input.a.x, -33062i, u_input.d.x), 10359i));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_1(vec4<bool>(any(vec4<bool>(select(false, arg_0.x, true), 42169u > u_input.c.x, arg_0.x || false, true)), ~_wgslsmith_sub_i32(-19819i, -8447i) > ~(-u_input.d.x), true, func_3(Struct_2(Struct_1(vec4<bool>(arg_0.x, true, true, arg_0.x), vec2<f32>(-1000f, 494f), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_1.xz, arg_1)), countOneBits(abs(vec2<i32>(-1i, 0i))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2116f, 639f), vec2<f32>(1000f, 1142f))))))), select(!vec3<bool>(arg_0.x, select(arg_0.x, arg_0.x, arg_0.x), all(vec4<bool>(false, true, false, arg_0.x))), vec3<bool>(arg_2 > _wgslsmith_mult_i32(u_input.d.x, -26878i), arg_0.x, true), (!arg_0.x && !arg_0.x) && arg_0.x), vec2<u32>(81792u, 0u), vec3<u32>(0u, ~6218u, firstTrailingBit(0u)));
    let var_1 = -u_input.b;
    var_0 = Struct_1(var_0.a, vec2<f32>(-443f, -149f), !vec3<bool>(_wgslsmith_f_op_f32(-var_0.b.x) <= 1227f, !var_0.a.x, all(select(var_0.a, vec4<bool>(arg_0.x, true, arg_0.x, false), arg_0.x))), var_0.d, vec3<u32>(var_0.e.x, _wgslsmith_mod_u32(32931u, 41669u), abs(u_input.c.x)));
    var_0 = Struct_1(vec4<bool>(true, ~_wgslsmith_mult_i32(var_1, u_input.a.x) <= _wgslsmith_mult_i32(-1i, reverseBits(-2147483647i)), any(var_0.c.xy), (!var_0.a.x != !var_0.c.x) && true), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), vec2<f32>(-1200f, _wgslsmith_f_op_f32(-var_0.b.x))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1132f, var_0.b.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2110f, 688f))), var_0.b))), vec3<bool>(var_0.a.x, true, true), ((~u_input.c.ww & vec2<u32>(arg_1.x, arg_1.x)) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.e), u_input.c.yy) % vec2<u32>(32u))) & max(u_input.c.yz, vec2<u32>(~25227u, 4294967295u)), _wgslsmith_mod_vec3_u32(var_0.e, select(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), abs(17513u), 33760u), vec3<u32>(min(0u, 63582u), _wgslsmith_mult_u32(0u, var_0.e.x), 1u), false)));
    var_0 = Struct_1(vec4<bool>(!func_3(Struct_2(Struct_1(vec4<bool>(false, var_0.c.x, false, var_0.a.x), vec2<f32>(-686f, var_0.b.x), var_0.c, var_0.d, u_input.c.wwx)), ~u_input.d.xy), var_0.b.x < _wgslsmith_f_op_f32(152f + 1f), !(!var_0.c.x), var_0.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b.x, var_0.b.x), vec2<f32>(1490f, -413f))), _wgslsmith_f_op_vec2_f32(-var_0.b))) - var_0.b), arg_0, ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(30985u, 4294967295u, var_0.e.x), 4294967295u), u_input.c.wy << (min(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(arg_1.x, 20760u)) % vec2<u32>(32u))), var_0.e);
    return Struct_2(Struct_1(select(var_0.a, vec4<bool>(true, true, true, true), select(arg_0.x, func_1(Struct_1(var_0.a, vec2<f32>(var_0.b.x, -885f), vec3<bool>(false, false, false), vec2<u32>(0u, 27328u), vec3<u32>(arg_1.x, arg_1.x, arg_1.x)), false), true)), vec2<f32>(936f, -1290f), vec3<bool>(all(vec4<bool>(var_0.c.x, true, true, arg_0.x)), true, var_0.c.x), var_0.e.yx >> (firstTrailingBit(select(var_0.e.xz, vec2<u32>(9955u, var_0.d.x), var_0.a.zx)) % vec2<u32>(32u)), var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(vec3<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true)), true, select(true, any(vec3<bool>(false, false, false)), true)), !vec3<bool>(func_1(Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(483f, -1000f), vec3<bool>(false, true, false), vec2<u32>(u_input.c.x, 0u), u_input.c.xxz), true), true, false), true), reverseBits(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.c.x, u_input.e, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.e, 36205u), vec3<u32>(u_input.c.x, u_input.c.x, 35530u) & u_input.c.zwy))), countOneBits(~firstTrailingBit(31199i) ^ -_wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(42267i, 12722i))));
    var var_1 = ~vec2<u32>(~(~var_0.a.d.x), var_0.a.e.x);
    var var_2 = countOneBits(reverseBits(u_input.b & (firstLeadingBit(u_input.a.x) & -44066i)));
    var var_3 = var_0.a;
    let var_4 = Struct_2(var_0.a);
    let var_5 = var_4.a;
    var_3 = func_4(!var_0.a.a.yyy, ~vec3<u32>(_wgslsmith_sub_u32(var_5.e.x, ~var_1.x), var_0.a.e.x | 69163u, u_input.e), u_input.d.x).a;
    let var_6 = func_4(!var_3.a.wxw, vec3<u32>(0u, 0u, ~(~4294967295u)), -(~min(-2147483647i, 1i))).a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, u_input.c, _wgslsmith_add_vec4_i32(~(~u_input.a) << ((vec4<u32>(1u, 24777u, var_6.e.x, var_4.a.d.x) << (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.a));
}

