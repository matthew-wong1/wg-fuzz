struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<u32>(34252u, 4294967295u, 26029u, 11142u), -1244f, vec3<i32>(30299i, i32(-2147483648), -1i)), Struct_1(vec4<u32>(4294967295u, 51641u, 21237u, 4294967295u), -854f, vec3<i32>(-1i, -23897i, 8493i)), Struct_1(vec4<u32>(2961u, 8221u, 84829u, 1u), -950f, vec3<i32>(-22618i, 1i, 1i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), 965f, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_1(vec4<u32>(53637u, 1u, 1u, 10336u), -614f, vec3<i32>(2147483647i, -16820i, -1i)), Struct_1(vec4<u32>(1u, 28368u, 19317u, 43514u), -1441f, vec3<i32>(4558i, 22182i, i32(-2147483648))), Struct_1(vec4<u32>(30540u, 26642u, 0u, 4294967295u), -243f, vec3<i32>(i32(-2147483648), -57418i, 20026i)), Struct_1(vec4<u32>(0u, 1u, 23365u, 40829u), -1000f, vec3<i32>(2147483647i, -7151i, -11762i)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), 1724f, vec3<i32>(-38365i, 13887i, 11696i)), Struct_1(vec4<u32>(1u, 4460u, 4294967295u, 4294967295u), 788f, vec3<i32>(-29318i, 1i, 66142i)), Struct_1(vec4<u32>(4294967295u, 1u, 16818u, 1u), 1303f, vec3<i32>(2147483647i, 2147483647i, 2147483647i)));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<bool>) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + -1359f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(727f + 1070f), arg_1) - _wgslsmith_f_op_f32(max(arg_1, arg_1)))), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(804f))))), _wgslsmith_f_op_f32(-arg_1));
    let var_1 = Struct_1(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -627f), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), -2147483647i ^ u_input.a, u_input.a >> (1u % 32u)), countOneBits(vec3<i32>(-17473i, -19786i, 54218i))), u_input.a, 1i));
    let var_2 = -(~(-max(var_1.c, firstLeadingBit(vec3<i32>(-29245i, u_input.a, 32380i)))));
    global0 = array<Struct_1, 11>();
    let var_3 = select(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, -_wgslsmith_mult_i32(var_2.x, u_input.a)), select(u_input.a, _wgslsmith_sub_i32(596i, abs(u_input.a)), !all(vec2<bool>(false, arg_0.x)))), _wgslsmith_mult_vec2_i32(-vec2<i32>(var_1.c.x, u_input.a), var_2.xz) & _wgslsmith_mod_vec2_i32(min(vec2<i32>(-1i, -57898i), vec2<i32>(u_input.a, -27937i)), _wgslsmith_div_vec2_i32(~vec2<i32>(0i, u_input.a), vec2<i32>(var_1.c.x, 55239i))), arg_2.wz);
    return true;
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = !(0i > u_input.a);
    let var_1 = all(vec4<bool>(true, _wgslsmith_sub_i32(-2147483647i, arg_0.x) < 0i, true, all(vec3<bool>(false, true, true)))) || true;
    let var_2 = Struct_1(reverseBits(~vec4<u32>(~46250u, ~4294967295u, 4294967295u, 2106u)), _wgslsmith_f_op_f32(f32(-1f) * -1665f), _wgslsmith_div_vec3_i32(-(arg_0.yyx ^ vec3<i32>(-1i, -1i, 2147483647i)), arg_0.wyz));
    var_0 = true;
    var_0 = _wgslsmith_div_u32(~var_2.a.x >> (_wgslsmith_add_u32(0u, abs(1u)) % 32u), var_2.a.x) <= ~max(0u, 1u);
    return var_2.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: u32) -> vec3<i32> {
    var var_0 = Struct_1(vec4<u32>(~(~_wgslsmith_div_u32(7404u, arg_1)), 1u, arg_2 ^ arg_1, arg_2), _wgslsmith_f_op_f32(func_3(-max(vec4<i32>(arg_0.x, u_input.a, 1i, 30483i), vec4<i32>(arg_0.x, u_input.a, -1i, arg_0.x)))), vec3<i32>(arg_0.x, abs(u_input.a), 0i));
    let var_1 = -firstLeadingBit(vec2<i32>(abs(u_input.a), firstTrailingBit(2147483647i)) << (var_0.a.yy % vec2<u32>(32u)));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, arg_1), 11u)];
    var var_2 = false || (_wgslsmith_div_f32(1804f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b, var_0.b)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(169f * var_0.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(-824f + -103f))));
    let var_3 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.b)), 478f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - 1014f) - _wgslsmith_div_f32(-970f, var_0.b))))), -vec3<i32>(_wgslsmith_dot_vec3_i32(max(var_0.c, vec3<i32>(20610i, arg_0.x, u_input.a)), ~vec3<i32>(var_0.c.x, u_input.a, var_1.x)), 1i, firstLeadingBit(u_input.a) >> (arg_1 % 32u)));
    return firstLeadingBit(max(~var_0.c, vec3<i32>(var_3.c.x, _wgslsmith_dot_vec3_i32(var_0.c, var_3.c) ^ _wgslsmith_clamp_i32(u_input.a, 51214i, var_1.x), max(0i, var_3.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(false, !(!all(vec4<bool>(false, true, false, true))), any(vec2<bool>(true, true)), false), vec4<bool>(!func_1(select(vec2<bool>(false, true), vec2<bool>(false, false), true), -1307f, vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), false, true), !(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)))));
    let var_1 = 15162u;
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_2 = Struct_1(~vec4<u32>(var_1, ~(~0u), var_1, 1u), _wgslsmith_f_op_f32(f32(-1f) * -415f), abs(vec3<i32>(u_input.a, firstTrailingBit(25743i), ~(-2147483647i))) | _wgslsmith_clamp_vec3_i32(func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -47886i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_div_u32(var_1, 0u), 1u & var_1), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 13086i), vec3<i32>(u_input.a, 2147483647i, u_input.a))), -(~vec3<i32>(u_input.a, -23334i, u_input.a))));
    var_2 = Struct_1(_wgslsmith_add_vec4_u32(~vec4<u32>(abs(12937u), 0u, 1u, var_1), reverseBits(vec4<u32>(var_1, var_1, var_2.a.x, var_2.a.x)) >> (abs(vec4<u32>(var_2.a.x, 29312u, var_1, var_2.a.x) << (var_2.a % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(sign(var_2.b)))), -var_2.c);
    let var_3 = -827f;
    let var_4 = _wgslsmith_mod_u32(min(6545u, firstTrailingBit(var_2.a.x)), _wgslsmith_mod_u32(var_2.a.x, ~1u));
    var var_5 = Struct_1(var_2.a >> (max(firstLeadingBit(~vec4<u32>(0u, var_1, var_2.a.x, 4294967295u)), var_2.a) % vec4<u32>(32u)), var_3, _wgslsmith_mod_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 37020i, u_input.a), vec3<i32>(-1i, -36266i, var_2.c.x))), firstTrailingBit((vec3<i32>(14359i, u_input.a, 0i) | vec3<i32>(var_2.c.x, -1i, 2147483647i)) << (abs(vec3<u32>(0u, 1u, 52406u)) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-14260i & (u_input.a & var_5.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.b), -360f, _wgslsmith_f_op_f32(f32(-1f) * -1006f), var_3)), 25974u);
}

