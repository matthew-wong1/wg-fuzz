struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_5) -> i32 {
    var var_0 = 54635u;
    var_0 = 1u;
    var_0 = u_input.b.x >> (countOneBits(u_input.b.x) % 32u);
    var_0 = ~1u;
    var var_1 = Struct_1(arg_0.c.a);
    return -34053i >> ((u_input.b.x & ~u_input.a.x) % 32u);
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(-892f, _wgslsmith_div_f32(-1476f, -1590f))));
    var var_1 = u_input.c.x;
    var_1 = func_3(Struct_5(max(_wgslsmith_add_vec3_i32(~u_input.c.wwx, u_input.c.zwz), vec3<i32>(~u_input.d.x, _wgslsmith_dot_vec3_i32(u_input.c.yxy, u_input.c.zxz), -35115i)), Struct_2(true, Struct_1(_wgslsmith_f_op_f32(exp2(var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), Struct_1(var_0.a), var_0), var_0));
    return select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !all(vec2<bool>(false, true)) && true), select(!vec4<bool>(all(vec2<bool>(false, true)), true, false, true), !vec4<bool>(all(vec4<bool>(true, true, true, false)), false, u_input.a.x < u_input.b.x, true), true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a))) <= _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-562f, var_0.a))))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = select(select(func_2(), vec4<bool>(all(vec2<bool>(arg_1.a, true)), func_2().x, false, any(!vec4<bool>(arg_1.a, true, arg_1.a, false))), !(select(true, arg_1.a, false) || any(vec3<bool>(false, false, arg_1.a)))), vec4<bool>(func_2().x, !select(arg_1.a, !arg_1.a, arg_1.a), false, false), true | any(vec2<bool>(all(vec4<bool>(true, false, true, false)), true)));
    var var_1 = 1u;
    var_1 = _wgslsmith_div_u32(22724u, firstTrailingBit(firstLeadingBit(6133u)));
    var_1 = ~_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_sub_u32(select(u_input.b.x, 0u, var_0.x), u_input.b.x)), countOneBits(1u));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.d.a, -1000f, 164f)))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_1.e.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - 1000f)))), select(vec3<bool>(!any(vec3<bool>(false, true, arg_1.a)), false, !(arg_2.x == 126f)), vec3<bool>(all(vec4<bool>(var_0.x, arg_1.a, true, arg_1.a)), false, var_0.x), select(select(vec3<bool>(var_0.x, true, true), var_0.zxw, !var_0.xyz), select(vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(true, false, arg_1.a), vec3<bool>(var_0.x, true, false)), false || func_2().x))));
    return arg_1.e;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    return arg_1;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<f32> {
    let var_0 = arg_0;
    var var_1 = select(vec4<bool>(!(!arg_1.a.a), false, arg_1.a.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, u_input.b.x), u_input.a.yy) == var_0), !(!vec4<bool>(true, all(vec2<bool>(false, arg_1.a.a)), u_input.c.x < arg_3.x, true)), select(!select(!vec4<bool>(true, arg_1.a.a, arg_1.a.a, true), func_2(), vec4<bool>(true, arg_1.a.a, true, true)), !vec4<bool>(true, arg_1.a.a, arg_3.x < arg_1.b, false), any(!vec4<bool>(false, true, arg_1.a.a, arg_1.a.a))));
    var_1 = !(!(!select(vec4<bool>(arg_1.a.a, var_1.x, false, var_1.x), vec4<bool>(false, arg_1.a.a, true, var_1.x), true)));
    var var_2 = ~(~(var_0 >> (u_input.b.x % 32u)));
    var var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0, ~30433u), vec2<u32>(arg_0, ~var_0), var_1.x), ~vec2<u32>(abs(var_0), arg_0)), 4294967295u, ~1u >> (min(arg_0, ~_wgslsmith_mod_u32(80370u, 4294967295u)) % 32u), 82681u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -232f, 272f, -135f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1679f, -1934f, -1000f, arg_1.a.d.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, arg_2.a, arg_1.a.c, 366f))), !(-791f == arg_1.a.e.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-350f, -590f, 2326f, 661f), vec4<f32>(-657f, 618f, -1265f, -1000f)))), _wgslsmith_f_op_vec4_f32(func_5(u_input.a.x, func_4(func_1(0i, Struct_2(true, Struct_1(529f), 147f, Struct_1(384f), Struct_1(450f)), vec2<f32>(-343f, 238f), u_input.e), Struct_3(Struct_2(false, Struct_1(-899f), -882f, Struct_1(871f), Struct_1(1247f)), u_input.e)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1245f)), u_input.c.xy << (~u_input.b.xz % vec2<u32>(32u)))))), vec4<f32>(_wgslsmith_f_op_f32(-158f * 106f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(171f)))), _wgslsmith_f_op_f32(max(-1635f, _wgslsmith_f_op_f32(f32(-1f) * -1398f))), _wgslsmith_f_op_f32(round(-909f)))));
    var var_1 = _wgslsmith_sub_i32(firstLeadingBit(~1i), u_input.c.x);
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(-1481f)))))), Struct_3(func_4(Struct_1(func_4(Struct_1(var_0.x), Struct_3(Struct_2(true, Struct_1(199f), 1000f, Struct_1(-416f), Struct_1(-445f)), u_input.c.x)).a.c), Struct_3(func_4(Struct_1(var_0.x), Struct_3(Struct_2(false, Struct_1(112f), var_0.x, Struct_1(var_0.x), Struct_1(var_0.x)), u_input.d.x)).a, u_input.e)).a, i32(-1i) * -75351i)).a;
    let var_3 = vec3<u32>(u_input.b.x ^ _wgslsmith_div_u32(0u, 49125u), 1u >> (u_input.b.x % 32u), u_input.b.x);
    var_1 = 1i;
    let var_4 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_3.x, var_3.x), u_input.a.x << (89768u % 32u), countOneBits(4294967295u), u_input.a.x), reverseBits(~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.a, vec3<u32>(67338u, u_input.b.x << (firstTrailingBit(u_input.a.x) % 32u), _wgslsmith_div_u32(u_input.b.x, 1u)) & _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, max(var_3.x, 103947u), 30388u), ~vec3<u32>(46499u, 4294967295u, 0u)));
}

