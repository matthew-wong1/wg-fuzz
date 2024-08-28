struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: u32) -> vec4<u32> {
    var var_0 = true;
    var_0 = arg_2 != u_input.a.x;
    let var_1 = vec3<i32>(arg_0.d.b.b.x, -abs(arg_0.d.b.b.x) ^ (select(arg_0.d.b.b.x, arg_0.d.b.b.x, true) >> ((_wgslsmith_clamp_u32(arg_0.a.a, 0u, 4294967295u) >> (~arg_0.a.a % 32u)) % 32u)), arg_0.a.b.x << (arg_0.e % 32u));
    var var_2 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(false, true)), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true), all(vec2<bool>(false, true)))));
    let var_3 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), true), select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true), all(vec4<bool>(!any(vec3<bool>(true, true, false)), false, !(-119f > arg_1), select(arg_0.d.a > 502f, true, true))));
    return vec4<u32>(max(firstLeadingBit(0u), ~arg_2), u_input.a.x, abs(arg_2 >> (45211u % 32u)), ~(~(1u & arg_0.e)));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_add_vec4_u32(arg_0, func_3(Struct_4(Struct_1(30478u, vec4<i32>(2147483647i, -70094i, -41631i, -59212i)), arg_1, Struct_1(26584u, vec4<i32>(-48962i, 1i, 1i, -48343i)), Struct_3(1000f, Struct_1(arg_0.x, vec4<i32>(0i, 1i, 2093i, 1i))), min(35064u, 56746u)), -281f, countOneBits(u_input.a.x))) ^ ~firstTrailingBit(~_wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(29136u, arg_0.x, u_input.a.x, u_input.a.x)));
    var_0 = abs(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.zw, _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(arg_0.x, u_input.a.x))), ~(~arg_0.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), arg_0.x)) ^ max(~(~abs(arg_0)), vec4<u32>(64442u, 1u, abs(arg_0.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_0.x, 97367u), arg_0.x)));
    var var_1 = var_0.zww;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1232f + _wgslsmith_f_op_f32(floor(957f))))), -237f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * -306f)) * arg_1), arg_1));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = arg_1.a.x;
    var var_1 = arg_1.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, -744f, 826f, 1596f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1000f, arg_0, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-200f, arg_2.a, arg_2.a, arg_0) + vec4<f32>(200f, -991f, -135f, -853f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(982f)), 543f, -728f, -1652f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_2(~countOneBits(vec4<u32>(arg_2.b.a, 1u, 4294967295u, 22163u)), _wgslsmith_f_op_f32(select(arg_1.c, -391f, false))))))));
    return _wgslsmith_add_vec2_u32(func_3(Struct_4(arg_2.b, _wgslsmith_f_op_f32(-var_2.x), arg_2.b, Struct_3(var_2.x, arg_1.e), ~1u), arg_2.a, firstTrailingBit(func_3(Struct_4(Struct_1(0u, var_1.b), -301f, Struct_1(arg_2.b.a, vec4<i32>(arg_1.e.b.x, arg_1.b.b.x, arg_1.d.b.x, arg_2.b.b.x)), arg_2, var_1.a), arg_2.a, arg_2.b.a).x) >> (9855u % 32u)).xw, countOneBits(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(u_input.a, ((func_1(-1006f, Struct_2(vec4<bool>(false, false, true, true), Struct_1(u_input.a.x, vec4<i32>(1i, -19830i, -17254i, -7511i)), 371f, Struct_1(1u, vec4<i32>(1i, 0i, 2147483647i, 1i)), Struct_1(105533u, vec4<i32>(40956i, 2147483647i, 12873i, -2147483647i))), Struct_3(-732f, Struct_1(u_input.a.x, vec4<i32>(0i, 2147483647i, -1i, -43455i)))) << (~vec2<u32>(4294967295u, 18879u) % vec2<u32>(32u))) & vec2<u32>(max(0u, 0u), ~u_input.a.x)) >> (abs(u_input.a) % vec2<u32>(32u)));
    var_0 = abs(vec2<u32>(u_input.a.x & ~0u, u_input.a.x));
    var_0 = u_input.a;
    var var_1 = Struct_2(vec4<bool>(true, true, true, true), Struct_1(1u, (firstTrailingBit(vec4<i32>(-25536i, -16236i, -55164i, -67773i)) | vec4<i32>(1i, 1i, 1i, 1i)) << (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, 1404u, var_0.x), vec4<u32>(u_input.a.x, 3115u, var_0.x, var_0.x)), vec4<u32>(var_0.x, var_0.x, 6773u, 4294967295u) & vec4<u32>(0u, u_input.a.x, 4294967295u, 29343u)) % vec4<u32>(32u))), 1f, Struct_1(~u_input.a.x, vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(reverseBits(u_input.a.x), vec4<i32>(1i, ~1i, 0i, ~1i)));
    var var_2 = ~var_1.e.b.ww >> (u_input.a % vec2<u32>(32u));
    var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-28723i, var_1.b.b.x), vec2<i32>(-19442i, var_2.x)) ^ vec2<i32>(var_2.x, 26259i), max(~vec2<i32>(var_1.b.b.x, var_2.x), reverseBits(var_1.b.b.zw))), -reverseBits(var_2.x) << (var_1.e.a % 32u)), vec2<i32>(var_2.x & var_1.e.b.x, ~0i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.b.b.x ^ ~var_2.x, -19813i, _wgslsmith_add_i32(-35680i, 5689i), var_1.e.b.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_1.c))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1.c, var_1.c)), var_1.c)), -1291f)), var_1.c, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(f32(-1f) * -2032f))))), -1i);
}

