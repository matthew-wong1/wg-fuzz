struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> vec2<bool> {
    var var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    var var_1 = Struct_5(vec4<bool>(true, true, true, true), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32((vec3<i32>(arg_1, u_input.b, 30443i) & vec3<i32>(u_input.c.x, -2147483647i, 2147483647i)) & vec3<i32>(u_input.b, -9579i, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, arg_1, u_input.b), vec3<i32>(arg_1, u_input.b, arg_1))), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-22417i, -1i, -21263i) | vec3<i32>(arg_1, 0i, u_input.b)), ~(-vec3<i32>(39359i, 26993i, 20286i)))), vec2<i32>(~(~arg_1), arg_1 & 36868i), reverseBits(firstTrailingBit(~(u_input.b ^ arg_1))));
    var_1 = Struct_5(var_1.a, vec3<i32>(21608i, _wgslsmith_div_i32(var_1.b.x, i32(-1i) * -1i), var_1.b.x), var_1.b.yz, reverseBits(u_input.c.x));
    let var_2 = any(var_1.a.zwz);
    return var_1.a.zz;
}

fn func_3() -> bool {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -505f))))));
    let var_2 = true;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(890f, 1299f)), -331f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-515f)) * 240f))) * _wgslsmith_div_f32(722f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1526f, -1379f, var_2))))));
    var var_3 = Struct_3(Struct_2(vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, u_input.b) >> (abs(4294967295u) % 32u), i32(-1i) * -1i, _wgslsmith_add_i32(max(1i, u_input.c.x), _wgslsmith_add_i32(-34902i, -24892i)), -17021i), vec2<bool>(!var_0, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1901f - 925f), -421f, _wgslsmith_f_op_f32(1220f + 381f), 1f))), !vec3<bool>(false, !select(var_0, var_0, var_2), false), Struct_2(-vec4<i32>(firstLeadingBit(u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.c.x), vec3<i32>(u_input.c.x, -27686i, u_input.c.x)), i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.c.x, 2147483647i))), func_2(select(max(vec4<u32>(u_input.d.x, 4294967295u, 1u, 0u), vec4<u32>(u_input.d.x, u_input.d.x, 32735u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 20484u, 0u), u_input.d), true), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, 0i, u_input.c.x), ~vec3<i32>(u_input.c.x, 28667i, -49294i)))), 30200i);
    return var_3.d.b.x;
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = func_2(firstTrailingBit(u_input.a), u_input.c.x);
    var_0 = vec2<bool>(func_3(), var_0.x);
    let var_1 = func_2(u_input.d, -_wgslsmith_sub_i32(arg_0, 2147483647i));
    var var_2 = !select(!select(select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(var_0.x, false, true, true), var_0.x), select(vec4<bool>(true, var_0.x, var_1.x, var_1.x), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_1.x, var_1.x, true, false)), var_1.x), !(!select(vec4<bool>(false, var_0.x, true, var_1.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_1.x, true, var_1.x, false))), vec4<bool>(!var_0.x | var_0.x, false, var_1.x, true));
    var_2 = select(!(!select(!vec4<bool>(true, var_1.x, var_0.x, true), !vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_2.x, var_1.x, var_1.x, false))), select(!select(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(var_2.x, false, true, var_0.x), var_0.x), vec4<bool>(var_2.x, false, var_1.x, var_0.x), var_0.x), select(vec4<bool>(false, true, false, all(var_2.zxz)), vec4<bool>(true, true, true, true), vec4<bool>(select(var_1.x, true, var_0.x), true, true, all(vec2<bool>(true, var_1.x)))), !(!var_1.x && true)), select(select(select(!vec4<bool>(false, false, var_1.x, false), vec4<bool>(false, var_0.x, true, true), select(false, var_0.x, false)), select(!vec4<bool>(var_2.x, var_1.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, false, var_1.x, var_2.x), vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(var_0.x, true, false, var_2.x)), select(vec4<bool>(var_1.x, var_2.x, var_1.x, false), vec4<bool>(true, var_1.x, var_0.x, var_1.x), vec4<bool>(true, var_2.x, var_1.x, true))), false), !(!select(vec4<bool>(var_2.x, var_0.x, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, var_2.x, false))), select(select(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, var_1.x, var_0.x, true), vec4<bool>(var_0.x, false, false, true)), !vec4<bool>(var_1.x, var_2.x, var_1.x, false), vec4<bool>(var_2.x, var_1.x, true, var_1.x)), select(vec4<bool>(false, var_0.x, true, false), !vec4<bool>(var_1.x, var_0.x, var_0.x, false), true), select(vec4<bool>(var_0.x, var_2.x, var_0.x, false), select(vec4<bool>(var_2.x, true, var_0.x, true), vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_1.x, false, false, false)), false))));
    return Struct_3(Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -1i, -2147483647i, arg_0) >> (vec4<u32>(u_input.a.x, 81497u, u_input.a.x, 4294967295u) % vec4<u32>(32u)), vec4<i32>(arg_0, 0i, -13322i, u_input.b) & vec4<i32>(0i, u_input.c.x, 1i, -2147483647i)) >> (~(~u_input.a) % vec4<u32>(32u)), var_1), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(193f + 2737f), -505f, _wgslsmith_f_op_f32(trunc(-2483f)), _wgslsmith_f_op_f32(-1388f - 568f)))), !vec3<bool>(true, var_2.x, true), Struct_2(-_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, 37838i, -37193i, arg_0), -vec4<i32>(arg_0, u_input.b, -2147483647i, -17633i)), var_1), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.d.x, u_input.d.x);
    var var_1 = func_1(-1i);
    let var_2 = var_1.d.b;
    var_1 = Struct_3(Struct_2(-var_1.d.a, !(!var_1.a.b)), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(-652f)), _wgslsmith_f_op_f32(var_1.b.a.x - -153f), var_1.b.a.x, -1278f)))), vec3<bool>(!func_1(0i).c.x, false, var_2.x | !var_2.x), func_1(-1i).a, u_input.c.x);
    let var_3 = func_1(_wgslsmith_dot_vec3_i32(var_1.a.a.wxz, _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.d.a.yyz, vec3<i32>(-37843i, 24105i, var_1.e)), var_1.a.a.wyy) | ~vec3<i32>(u_input.b, -7526i, -24161i))).b;
    let var_4 = Struct_5(!vec4<bool>(var_2.x, false, false, true), -select(max(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.a.x, var_1.d.a.x, var_1.d.a.x), var_1.a.a.xyw), vec3<i32>(var_1.d.a.x, u_input.b, 52013i)), vec3<i32>(2147483647i, var_1.a.a.x, var_1.d.a.x) >> (u_input.a.xzx % vec3<u32>(32u)), var_1.c), -var_1.a.a.xz, var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(var_1.a.a.yw, u_input.c), var_1.b.a.zz, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(var_0.x, var_0.x))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_0.x), u_input.a.yw), _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, ~u_input.a.x)), u_input.d.x), firstTrailingBit(vec3<u32>(var_0.x, min(~var_0.x, ~1u), select(_wgslsmith_add_u32(40441u, 51060u), _wgslsmith_mult_u32(u_input.a.x, 4294967295u), true))), var_1.b.a.xx);
}

