struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(84060u, vec3<bool>(false, true, true), -28717i, vec4<bool>(true, false, true, true)), Struct_1(0u, vec3<bool>(true, true, false), 2035i, vec4<bool>(true, false, false, true)), Struct_1(2213u, vec3<bool>(false, true, true), -21991i, vec4<bool>(true, false, true, false)), Struct_1(2172u, vec3<bool>(true, false, false), 18626i, vec4<bool>(true, true, true, false)), Struct_1(66961u, vec3<bool>(false, true, true), -9168i, vec4<bool>(false, true, true, true)), Struct_1(5847u, vec3<bool>(true, true, true), -21573i, vec4<bool>(true, true, false, true)), Struct_1(71410u, vec3<bool>(false, true, true), -10156i, vec4<bool>(true, false, true, true)), Struct_1(32917u, vec3<bool>(true, false, false), 0i, vec4<bool>(true, false, false, false)), Struct_1(35206u, vec3<bool>(true, true, false), -21481i, vec4<bool>(true, false, false, true)), Struct_1(1u, vec3<bool>(false, true, true), -19289i, vec4<bool>(true, true, true, false)), Struct_1(44762u, vec3<bool>(true, false, true), 1i, vec4<bool>(true, false, true, true)), Struct_1(33476u, vec3<bool>(false, true, true), -2847i, vec4<bool>(true, false, true, true)), Struct_1(23762u, vec3<bool>(true, false, true), 2147483647i, vec4<bool>(false, false, false, true)), Struct_1(4294967295u, vec3<bool>(false, true, false), 2147483647i, vec4<bool>(false, true, false, false)), Struct_1(48975u, vec3<bool>(true, true, false), 1i, vec4<bool>(true, false, false, false)), Struct_1(76940u, vec3<bool>(true, false, true), 0i, vec4<bool>(true, true, true, false)), Struct_1(50429u, vec3<bool>(false, true, false), -58542i, vec4<bool>(false, true, true, false)), Struct_1(1u, vec3<bool>(true, true, false), 1i, vec4<bool>(true, false, false, true)), Struct_1(37756u, vec3<bool>(true, false, true), 29179i, vec4<bool>(true, true, false, true)), Struct_1(42828u, vec3<bool>(true, false, true), -1i, vec4<bool>(true, false, false, false)), Struct_1(21082u, vec3<bool>(false, true, false), 450i, vec4<bool>(true, true, false, false)), Struct_1(1u, vec3<bool>(true, true, false), 2147483647i, vec4<bool>(true, false, true, false)), Struct_1(13023u, vec3<bool>(false, true, false), 12623i, vec4<bool>(false, false, false, true)), Struct_1(20695u, vec3<bool>(false, false, true), 1i, vec4<bool>(true, false, true, true)), Struct_1(0u, vec3<bool>(false, true, false), 2147483647i, vec4<bool>(false, false, false, true)), Struct_1(1u, vec3<bool>(false, true, false), 27120i, vec4<bool>(false, false, false, true)), Struct_1(4294967295u, vec3<bool>(false, true, true), i32(-2147483648), vec4<bool>(true, false, false, true)), Struct_1(0u, vec3<bool>(false, false, true), -32069i, vec4<bool>(true, false, false, true)));

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, 2147483647i, 1i, -18990i);

var<private> global4: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    global0 = array<vec2<bool>, 13>();
    var var_0 = ~1u;
    let var_1 = Struct_1(select(0u, countOneBits(firstTrailingBit(4294967295u)) ^ ~u_input.a.x, false), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))), global3.x, vec4<bool>(true | (global3.x != 0i), true, true, (_wgslsmith_f_op_f32(select(1551f, -852f, true)) < _wgslsmith_f_op_f32(f32(-1f) * -381f)) || true));
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.a.x), firstLeadingBit(78442u) ^ var_1.a) >> (1u % 32u), 28u)], !(!any(vec3<bool>(var_1.d.x, var_1.b.x, var_1.d.x))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-975f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1564f))) + 142f)));
    let var_3 = true;
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 36411u, u_input.a.x) << (vec4<u32>(29633u, arg_0.x, arg_0.x, arg_1) % vec4<u32>(32u)), vec4<u32>(40271u, arg_1, 0u, 4294967295u) << (vec4<u32>(4294967295u, u_input.a.x, 2683u, arg_0.x) % vec4<u32>(32u))), ~arg_0.x), 28u)], true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1462f, 630f))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(738f, 1000f))))));
    global3 = vec4<i32>(~firstLeadingBit(1i), -2147483647i, var_0.a.c, 10571i ^ ~global3.x);
    let var_1 = vec2<f32>(var_0.c.x, 1125f);
    let var_2 = Struct_3(global3.xx, _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(global3.x, _wgslsmith_add_i32(1i, 1i)), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_sub_i32(~global3.x, 26177i))), global2[_wgslsmith_index_u32(20962u, 28u)], Struct_1(_wgslsmith_div_u32(select(~86774u, arg_1 & arg_1, var_0.b), u_input.a.x), !var_0.a.d.zyw, (-2147483647i | _wgslsmith_div_i32(var_0.a.c, global3.x)) | _wgslsmith_add_i32(0i, ~2147483647i), vec4<bool>(~var_0.a.a <= arg_0.x, true, select(var_0.a.c != global3.x, true, true), func_3())));
    global3 = vec4<i32>(var_0.a.c, _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_2.c, -2147483647i), -_wgslsmith_sub_i32(var_2.d.c, arg_2)) << (min(arg_0.x, 4009u) % 32u), _wgslsmith_add_i32(-var_0.a.c, _wgslsmith_sub_i32(_wgslsmith_add_i32(-8818i, var_0.a.c), global3.x ^ -19591i)) | abs(var_0.a.c), ~var_2.d.c);
    return var_2.e;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0.c ^ global3.x;
    global1 = true;
    let var_1 = func_2(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, 36922u) ^ (u_input.a.x & arg_0.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 28452u), u_input.a.xz), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, 0u), u_input.a.x)), u_input.a.x, 0u), 1u, firstTrailingBit(select(~(arg_0.c | -1i), firstTrailingBit(-65214i), !(u_input.a.x <= arg_0.a))));
    let var_2 = var_1.a | 1u;
    let var_3 = var_1.b.zy;
    return 1329f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-319f, -243f, _wgslsmith_f_op_f32(func_1(Struct_1(u_input.a.x, vec3<bool>(true, true, true), -8014i, vec4<bool>(true, false, true, false)))), 280f), vec4<f32>(-876f, 634f, -1518f, _wgslsmith_f_op_f32(sign(-478f)))))) * vec4<f32>(_wgslsmith_f_op_f32(603f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-797f - -401f), _wgslsmith_f_op_f32(max(268f, -650f))))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -576f))) - 122f), -1440f));
    let var_1 = true;
    let var_2 = !select(!(!global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), func_2(~(u_input.a & vec3<u32>(u_input.a.x, u_input.a.x, 70685u)), ~u_input.a.x, ~min(global3.x, global3.x)).b.yx, false);
    var var_3 = u_input.a.x <= ~u_input.a.x;
    global3 = firstTrailingBit(vec4<i32>(u_input.b.x, ~(-u_input.c), u_input.b.x, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(-980f, -u_input.b.xy, 28924u, 116133u);
}

