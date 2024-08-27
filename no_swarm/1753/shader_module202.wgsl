struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -207f;

var<private> global1: array<Struct_3, 29>;

var<private> global2: i32;

var<private> global3: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(23547u, 4294967295u, 4737u), vec3<u32>(1u, 1u, 0u), vec3<u32>(1680u, 34898u, 54466u), vec3<u32>(5957u, 6768u, 0u), vec3<u32>(6142u, 0u, 0u), vec3<u32>(1u, 1u, 6085u), vec3<u32>(0u, 4294967295u, 4294967295u));

var<private> global4: array<Struct_1, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(526f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))));
    let var_1 = arg_1.a.ywz;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1764f - _wgslsmith_f_op_f32(min(117f, -1886f)))));
    var var_2 = -vec4<i32>(-_wgslsmith_clamp_i32(abs(2147483647i), u_input.b, -1i >> (0u % 32u)), 2147483647i, ~arg_1.b, u_input.b ^ 34805i);
    var var_3 = Struct_3(all(vec4<bool>(var_1.x, all(arg_1.a.zxw), true, arg_1.a.x)), Struct_1(-1657f), Struct_2(_wgslsmith_div_i32(1i, u_input.b) ^ -20869i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(~u_input.b, -20249i), ~arg_1.b)));
    return arg_1.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec3<i32>) -> Struct_4 {
    var var_0 = ~(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.wx, u_input.c.xw), u_input.c.wx), firstLeadingBit(_wgslsmith_div_vec2_u32(u_input.c.wx, vec2<u32>(u_input.c.x, 1u)))) ^ countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x) & u_input.c.xz, u_input.c.wy)));
    var var_1 = select(vec3<bool>(all(vec4<bool>(true, true, false, false)) && func_3(Struct_1(1000f), Struct_4(vec4<bool>(true, false, false, false), u_input.b, arg_2.x, 694f)), true, all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(false, false))), arg_2.x > 1001f);
    let var_2 = !all(select(var_1.zz, var_1.xy, any(vec3<bool>(true, true, true))));
    var var_3 = var_0.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, -2382f, _wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(1423f * arg_2.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -202f, 307f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(959f, arg_2.x, arg_2.x, arg_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-402f, 749f, arg_2.x, arg_1), vec4<f32>(1409f, 329f, 1500f, arg_0.x))), any(!var_1.zx))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_div_f32(-1142f, 736f), _wgslsmith_f_op_f32(round(820f)), _wgslsmith_div_f32(arg_0.x, 350f))), var_1.x))));
    return Struct_4(select(!select(vec4<bool>(false, var_2, true, var_1.x), select(vec4<bool>(var_1.x, var_2, false, var_1.x), vec4<bool>(false, true, var_2, var_1.x), var_2), any(vec4<bool>(var_1.x, var_2, true, var_2))), select(vec4<bool>(false, true, true || var_1.x, true), select(select(vec4<bool>(var_1.x, var_2, false, var_1.x), vec4<bool>(false, var_2, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_2, var_2)), select(vec4<bool>(var_1.x, var_1.x, var_2, true), vec4<bool>(false, var_2, false, var_1.x), vec4<bool>(false, var_2, var_1.x, var_2)), true), var_2), false), -u_input.b, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -298f))), _wgslsmith_f_op_f32(ceil(-160f)));
}

fn func_4(arg_0: Struct_4) -> bool {
    var var_0 = 2147483647i;
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-930f)), 1000f)), arg_0.d), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1462f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(698f)), _wgslsmith_f_op_f32(arg_0.c + -992f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, arg_0.c))) + 2089f));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x));
    var var_3 = var_1;
    var var_4 = Struct_5(_wgslsmith_f_op_vec4_f32(-var_1), abs(firstTrailingBit(~(~vec4<i32>(u_input.b, arg_0.b, u_input.b, -1i)))), Struct_3(arg_0.a.x, Struct_1(162f), Struct_2(-37300i, -18778i)));
    return any(select(!vec4<bool>(select(arg_0.a.x, arg_0.a.x, var_4.c.a), any(arg_0.a.xwy), true, !var_4.c.a), vec4<bool>(_wgslsmith_f_op_f32(ceil(-866f)) > _wgslsmith_f_op_f32(var_2.x + var_4.a.x), true, false, true | func_2(var_4.a.xwy, 749f, vec2<f32>(-175f, var_2.x), vec3<i32>(2147483647i, 0i, 3490i)).a.x), func_2(vec3<f32>(_wgslsmith_f_op_f32(765f * -789f), -448f, -1157f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_3.x, var_1.x)), -1255f, !arg_0.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, var_3.x)) * vec2<f32>(arg_0.c, var_3.x)), var_4.b.wxw).a));
}

fn func_1() -> bool {
    let var_0 = u_input.c;
    var var_1 = Struct_3(any(vec2<bool>(any(vec4<bool>(true, false, true, false)), func_4(func_2(vec3<f32>(809f, 1096f, -539f), 378f, vec2<f32>(1674f, 1412f), vec3<i32>(u_input.b, u_input.b, 0i))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-907f - _wgslsmith_f_op_f32(-1027f + -1494f)))), Struct_2(u_input.b >> (33272u % 32u), u_input.b));
    let var_2 = abs(26314i | ((1i & var_1.c.a) >> (_wgslsmith_mult_u32(40924u, _wgslsmith_mod_u32(98224u, var_0.x)) % 32u)));
    global4 = array<Struct_1, 7>();
    global1 = array<Struct_3, 29>();
    return select(true, false, func_4(func_2(vec3<f32>(-1000f, _wgslsmith_div_f32(1721f, 2105f), 1219f), -574f, _wgslsmith_f_op_vec2_f32(vec2<f32>(731f, var_1.b.a) * _wgslsmith_div_vec2_f32(vec2<f32>(1067f, -1070f), vec2<f32>(290f, var_1.b.a))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(19929i, -1i, var_1.c.b), vec3<i32>(var_1.c.b, 0i, var_2)), 30728i, -36182i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), false)) && func_1(), global4[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 7u)], Struct_2((_wgslsmith_mult_i32(u_input.b, -10372i) ^ u_input.b) | ~u_input.b, _wgslsmith_clamp_i32(u_input.b, u_input.b, -21998i)));
    var var_1 = u_input.c.x;
    let var_2 = vec4<i32>(54203i, -select(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.c.a, u_input.b, -39682i, -20531i), vec4<i32>(-9352i, 0i, 0i, -2147483647i)), var_0.a || true), var_0.c.a, firstTrailingBit(1i));
    var var_3 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.a + _wgslsmith_f_op_f32(-var_0.b.a)), var_0.b.a, var_0.b.a, var_0.b.a), -vec4<i32>(-var_0.c.b, _wgslsmith_clamp_i32(~var_2.x, 1i, var_2.x), var_0.c.b, u_input.b), Struct_3(var_0.a & all(select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, true))), Struct_1(_wgslsmith_f_op_f32(min(-167f, _wgslsmith_f_op_f32(round(-1137f))))), Struct_2(var_2.x, var_0.c.a)));
    let var_4 = !vec4<bool>(var_3.c.a, false, (~(-2147483647i) != (u_input.b << (20880u % 32u))) & func_4(func_2(var_3.a.zwy, -387f, var_3.a.xw, vec3<i32>(u_input.b, 1i, 24174i))), !(u_input.c.x != 102745u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.yzw, func_2(var_3.a.yxy, var_3.c.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.a.x, var_0.b.a), vec2<f32>(-1000f, var_3.a.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1844f, 337f), vec2<f32>(1536f, var_3.c.b.a), vec2<bool>(var_4.x, true))) + var_3.a.zx)), abs(vec3<i32>(-var_3.b.x, var_3.b.x << (4294967295u % 32u), func_2(var_3.a.xwx, var_3.c.b.a, var_3.a.xz, var_3.b.yzw).b))).c, (_wgslsmith_mult_u32(u_input.a << (0u % 32u), 91515u) << (0u % 32u)) & u_input.c.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(max(2366f, -1397f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1247f, 1000f) - var_0.b.a), _wgslsmith_f_op_f32(sign(-743f))))));
}

