struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1912f, -1168f, 1696f);

var<private> global1: array<u32, 3> = array<u32, 3>(49737u, 12706u, 6703u);

var<private> global2: vec3<u32>;

var<private> global3: array<vec2<i32>, 29>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> u32 {
    global1 = array<u32, 3>();
    global1 = array<u32, 3>();
    let var_0 = select(!vec3<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, (-9442i <= u_input.a) || true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true), true);
    global1 = array<u32, 3>();
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.xyx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -825f, 932f)))))), _wgslsmith_f_op_vec3_f32(arg_0.a.yyw - vec3<f32>(1000f, -237f, -1122f)));
    return ~(global1[_wgslsmith_index_u32(~(~min(20952u, 34104u)), 3u)] << (max(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(arg_1.x, 3u)]), 3u)], 0u) % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = vec3<bool>(any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), all(vec3<bool>(false, false, true)) & true)), true, true);
    var var_1 = Struct_3(!(!(!var_0.yy)), (global2.yz | ~(~global2.xz)) >> (firstTrailingBit(firstLeadingBit(min(vec2<u32>(1u, 1u), global2.yx))) % vec2<u32>(32u)), vec4<u32>(func_3(arg_0, vec3<u32>(abs(arg_2.a), 46364u, _wgslsmith_sub_u32(arg_2.a, 13025u))), countOneBits(abs(0u)) >> (select(global2.x, ~4294967295u, any(var_0)) % 32u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a, arg_2.a, arg_2.a, 66613u), vec4<u32>(1u, global2.x, 1u, global1[_wgslsmith_index_u32(4294967295u, 3u)])), vec4<u32>(1u, arg_2.a, 10763u, 0u) >> (max(vec4<u32>(global1[_wgslsmith_index_u32(global2.x, 3u)], 20878u, 4294967295u, global2.x), vec4<u32>(1892u, 4294967295u, 4294967295u, 0u)) % vec4<u32>(32u))), 3u)], abs(arg_2.a)));
    var var_2 = vec3<bool>(!(u_input.a == arg_2.b), any(!vec4<bool>(true, !var_0.x, false, all(vec4<bool>(true, var_1.a.x, true, false)))), !(~u_input.a > 54186i));
    var var_3 = arg_0.a.x;
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(226f, 767f, global0.x))) - vec3<f32>(-104f, global0.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(560f, arg_1, -511f)), !(!var_0)))))));
    return global1[_wgslsmith_index_u32(global2.x, 3u)];
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    global2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~(vec3<u32>(global2.x, global1[_wgslsmith_index_u32(global2.x, 3u)], global2.x) ^ vec3<u32>(global1[_wgslsmith_index_u32(global2.x, 3u)], global2.x, 0u)), min(vec3<u32>(global1[_wgslsmith_index_u32(0u, 3u)], 4294967295u, 723u), _wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], global2.x, global2.x), vec3<u32>(41282u, 4294967295u, global2.x)))) & vec3<u32>(42995u, 1u, abs(global2.x)), select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global2.x, 3u)], 0u, 22222u), vec3<u32>(global1[_wgslsmith_index_u32(89531u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(372u, 3u)], 3u)], 3u)], 9456u), vec3<u32>(0u, 1u, global1[_wgslsmith_index_u32(13394u, 3u)])) ^ (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(126590u, 3u)], 3u)], 1u, global2.x) ^ ~vec3<u32>(global2.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 3u)], 3u)], 3u)], 0u)), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global2.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2551u, 3u)], 3u)], 3u)], 3u)], 3u)]) >> (vec3<u32>(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], 4294967295u) % vec3<u32>(32u)), vec3<u32>(global2.x, 1u, global1[_wgslsmith_index_u32(14311u, 3u)])), ~vec3<u32>(26642u, 1u, 0u) ^ (vec3<u32>(global1[_wgslsmith_index_u32(global2.x, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], global2.x) >> (vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], 8372u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6455u, 3u)], 3u)]) % vec3<u32>(32u)))), true), countOneBits(vec3<u32>(global2.x, 41418u, _wgslsmith_sub_u32(func_2(Struct_2(vec4<f32>(915f, arg_2, -100f, arg_3.a.x)), -1159f, Struct_1(global2.x, -28703i)), global2.x))));
    var var_0 = Struct_3(vec2<bool>(select(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))), any(vec4<bool>(true, false, false, true)), select(false, true, false)), (true || any(vec4<bool>(false, false, false, true))) && select(true, true, true)), _wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global2.xz, global2.xx), 3u)], 1u), ~(~global2.yx ^ global2.zy)), vec4<u32>(24169u, global2.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(global2.x, 12172u, global2.x, global1[_wgslsmith_index_u32(global2.x, 3u)]), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], 4294967295u, 1u, 21709u)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(8992u, global2.x, 40615u, 95057u), vec4<u32>(global2.x, 4294967295u, 1u, 7666u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 0u, 4294967295u, global1[_wgslsmith_index_u32(1u, 3u)]), vec4<u32>(global2.x, 20974u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 3u)], 3u)], global2.x), vec4<u32>(46749u, 0u, 0u, global2.x)))), ~global1[_wgslsmith_index_u32(global2.x, 3u)] << (1u % 32u)));
    let var_1 = var_0.c;
    var var_2 = arg_1.xy;
    var_0 = Struct_3(vec2<bool>(global2.x <= ~(~29583u), any(vec2<bool>(false != var_0.a.x, var_0.a.x))), global2.zx, vec4<u32>(~var_0.c.x, countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global2.x, _wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(0u, 3u)])), 3u)], 3u)]), 0u, 13597u));
    return select(vec3<bool>(false, var_0.a.x, all(vec2<bool>(true, any(var_0.a)))), select(vec3<bool>(all(vec4<bool>(var_0.a.x, true, true, var_0.a.x)), any(vec3<bool>(true, false, var_0.a.x)), false || (-6934i == u_input.a)), select(vec3<bool>(var_0.a.x | true, var_0.a.x, var_0.a.x), !(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(false, false, true), !vec3<bool>(true, true, var_0.a.x))), (abs(1u) >> ((global2.x << (21395u % 32u)) % 32u)) < _wgslsmith_mod_u32(~var_0.c.x, ~53749u)), vec3<bool>(!(!var_0.a.x), _wgslsmith_clamp_i32(abs(u_input.a), i32(-1i) * -33953i, _wgslsmith_add_i32(-11751i, u_input.a)) != countOneBits(-9208i), true));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(ceil(global0.x));
    global3 = array<vec2<i32>, 29>();
    let var_1 = arg_3;
    global3 = array<vec2<i32>, 29>();
    var var_2 = arg_3;
    return select(select(arg_1.zz, arg_1.xx, vec2<bool>(arg_1.x, arg_1.x)), !func_1(arg_3, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.x, -276f, 506f, 1000f) - vec4<f32>(-821f, arg_2, -168f, 693f)) - var_2.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(414f, arg_2))), Struct_2(_wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(-588f, -624f, 1000f, arg_3.a.x)))).yx, 91438u == ~(~global1[_wgslsmith_index_u32(~1u, 3u)]));
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> vec3<u32> {
    return vec3<u32>(21738u, global1[_wgslsmith_index_u32(84334u, 3u)], ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(75923u, 3u)], 9734u, 0u), ~4294967295u)) ^ ~vec3<u32>(reverseBits(global2.x), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], global2.x), 1u, arg_1.b.x), 5742u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-_wgslsmith_clamp_i32(24175i, -2147483647i, ~abs(2147483647i)), Struct_3(!func_4(_wgslsmith_sub_u32(global2.x, global1[_wgslsmith_index_u32(4294967295u, 3u)]), func_1(Struct_2(vec4<f32>(global0.x, global0.x, global0.x, global0.x)), vec4<f32>(1000f, 276f, -220f, -1000f), -220f, Struct_2(vec4<f32>(global0.x, global0.x, -1320f, global0.x))), -2464f, Struct_2(vec4<f32>(1257f, -950f, global0.x, global0.x))), (~vec2<u32>(global2.x, 101949u) << (vec2<u32>(13058u, 1u) % vec2<u32>(32u))) << ((global2.yx << (firstLeadingBit(vec2<u32>(1u, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(46780u, global2.x >> (global1[_wgslsmith_index_u32(1u, 3u)] % 32u), ~1u, 0u), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 50132u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14781u, 3u)], 3u)], 3u)], 27939u), countOneBits(vec4<u32>(7297u, 1u, global2.x, 46713u))))));
    var var_1 = -30070i;
    global3 = array<vec2<i32>, 29>();
    let var_2 = _wgslsmith_clamp_vec2_u32(~var_0.yy, min(func_5(~countOneBits(u_input.a), Struct_3(func_4(3470u, vec3<bool>(false, false, true), global0.x, Struct_2(vec4<f32>(474f, global0.x, global0.x, global0.x))), ~vec2<u32>(10943u, 0u), select(vec4<u32>(38822u, var_0.x, 4294967295u, 39941u), vec4<u32>(global2.x, global2.x, 80022u, 54917u), true))).zx, ~(~vec2<u32>(global1[_wgslsmith_index_u32(1u, 3u)], 1u))), select(func_5(~(~u_input.a), Struct_3(vec2<bool>(true, true), _wgslsmith_mod_vec2_u32(global2.yz, global2.zy), countOneBits(vec4<u32>(39250u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], 4294967295u, 1u)))).zz, vec2<u32>(1u, min(global2.x, 0u)), true));
    var var_3 = func_4(global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_0, var_0), var_0)), 3u)], !(!select(func_1(Struct_2(vec4<f32>(196f, -400f, 444f, global0.x)), vec4<f32>(global0.x, global0.x, -702f, 1138f), global0.x, Struct_2(vec4<f32>(global0.x, global0.x, global0.x, global0.x))), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, -590f, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1000f, global0.x, 980f))))))).x;
    let var_4 = max(abs(_wgslsmith_sub_vec2_u32(var_0.zx, select(var_0.yy, ~var_2, vec2<bool>(true, true)))), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(36588u, 1u), vec2<u32>(var_2.x, var_2.x)) >> (vec2<u32>(~global2.x, var_0.x) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-_wgslsmith_div_i32(abs(42863i), -37862i), 73347i), select(countOneBits(vec3<i32>(u_input.a, _wgslsmith_clamp_i32(-2147483647i, 0i, -1i), 0i)), firstLeadingBit(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(38320i, -1i, 1i))), !vec3<bool>(any(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, false, true)))), global0.x, vec2<i32>(-1i) * -abs(max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))));
}

