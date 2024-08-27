struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: u32 = 67107u;

var<private> global2: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global3: array<bool, 26> = array<bool, 26>(true, false, true, false, false, false, false, false, true, true, false, true, true, false, false, true, true, false, false, false, true, true, true, false, true, false);

var<private> global4: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-1i, -1i, 16242i), vec3<i32>(11702i, -28356i, -7925i), vec3<i32>(-1i, -1i, -48533i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(-67852i, 0i, -27938i), vec3<i32>(-1i, 0i, 48846i), vec3<i32>(31820i, 0i, 4555i), vec3<i32>(1i, 8816i, 2147483647i), vec3<i32>(-17957i, 13876i, 0i), vec3<i32>(0i, -1i, -13317i), vec3<i32>(40002i, i32(-2147483648), 26710i), vec3<i32>(-20436i, 0i, -38261i), vec3<i32>(2147483647i, 1i, 27927i), vec3<i32>(1i, -8028i, 0i), vec3<i32>(13185i, 28722i, -1i), vec3<i32>(11363i, -49977i, -34510i), vec3<i32>(1i, -1i, -18353i), vec3<i32>(-9707i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -20265i, 1i), vec3<i32>(1i, -3164i, 1i), vec3<i32>(10723i, 11542i, 33321i), vec3<i32>(i32(-2147483648), 7544i, -11431i), vec3<i32>(1968i, 0i, -59593i), vec3<i32>(38210i, 30288i, -1i), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(27789i, 2465i, 0i), vec3<i32>(0i, 27978i, 1i), vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(0i, -3183i, i32(-2147483648)), vec3<i32>(61629i, 2147483647i, 43370i), vec3<i32>(0i, -23372i, 1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: i32) -> Struct_3 {
    return Struct_3(global0.x, -global0.x);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec4_i32(-(~arg_1 | -arg_1), arg_1);
    global1 = 0u;
    var var_1 = 699f;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(764f, _wgslsmith_f_op_f32(ceil(1876f)))))))));
    let var_3 = arg_0;
    return ~(~reverseBits(vec4<u32>(var_3.a.x, 0u, arg_0.a.x, 4294967295u) ^ vec4<u32>(var_3.a.x, arg_0.a.x, 1u, 4294967295u)) >> (min(vec4<u32>(~24579u, var_3.a.x, var_3.a.x, arg_0.a.x), countOneBits(countOneBits(vec4<u32>(var_3.a.x, var_3.a.x, 15935u, var_3.a.x)))) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_3) -> vec2<u32> {
    global2 = array<vec2<bool>, 28>();
    var var_0 = Struct_3(_wgslsmith_mult_i32(~9712i, 5387i), -global0.x & ~global0.x);
    var var_1 = Struct_1(global0.x, func_3(Struct_2(countOneBits(vec2<u32>(1u, 1u))), vec4<i32>(global0.x, global0.x, global0.x, ~(~9500i))), !(!global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(35134u, 15236u), 1u), 26u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -527f), 439f, _wgslsmith_div_f32(-1265f, 559f))))), firstTrailingBit(54483u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-181f)), _wgslsmith_f_op_f32(464f + var_1.d.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.d.x))));
    var var_3 = vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 56541u, 1u) >> (vec3<u32>(_wgslsmith_add_u32(var_1.b.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(29670u, var_1.e, 4294967295u, var_1.b.x), var_1.b), _wgslsmith_clamp_u32(var_1.e, var_1.e, 7661u)) % vec3<u32>(32u)), var_1.b.zzw), 4294967295u & _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.b, vec4<u32>(var_1.e, 1u, var_1.e, var_1.b.x)), var_1.b), ~97704u << ((11574u << (var_1.b.x % 32u)) % 32u), ~(var_1.b.x << (var_1.b.x % 32u))));
    return ~_wgslsmith_sub_vec2_u32(vec2<u32>(~var_1.b.x, ~abs(0u)), ~var_3.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(select(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(24083u, 52770u, 0u), vec3<u32>(1u, 1u, 1u)), 28176u), _wgslsmith_dot_vec2_u32(func_2(func_1(vec4<f32>(-299f, 313f, 394f, 709f), select(vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 26u)]), global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)]), u_input.a.x)), vec2<u32>(1u, 1u)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 1u), 26u)]), 26u)];
    let var_1 = 957f;
    var var_2 = reverseBits(-_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(~2147483647i, ~global0.x)));
    var_2 = vec2<i32>(-1i, ~min(-1i, ~(~(-2147483647i))));
    var var_3 = Struct_1(-39851i, (vec4<u32>(~0u, 4294967295u, _wgslsmith_sub_u32(12474u, 1u), _wgslsmith_sub_u32(0u, 0u)) << (firstTrailingBit(max(vec4<u32>(22166u, 34083u, 42718u, 10203u), vec4<u32>(82792u, 0u, 32599u, 8705u))) % vec4<u32>(32u))) & ~(select(vec4<u32>(79930u, 42123u, 4294967295u, 521u), vec4<u32>(1u, 1u, 91134u, 1u), vec4<bool>(true, global3[_wgslsmith_index_u32(10848u, 26u)], global3[_wgslsmith_index_u32(89023u, 26u)], true)) | vec4<u32>(1u, 1u, 1u, 1u)), any(!select(select(vec3<bool>(global3[_wgslsmith_index_u32(59184u, 26u)], true, false), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], false, true), vec3<bool>(true, global3[_wgslsmith_index_u32(9770u, 26u)], true)), select(vec3<bool>(true, global3[_wgslsmith_index_u32(44725u, 26u)], true), vec3<bool>(false, true, false), vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 26u)], false)), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1665f, var_1))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-455f, var_1, var_1)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, var_1, 441f), vec3<f32>(var_1, var_1, -764f), global3[_wgslsmith_index_u32(31696u, 26u)])))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, 1000f, 1617f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(911f, 559f, var_1)), true)))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u) & _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(7588u, 4294967295u, 0u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, ~0u, 8978u)));
    var var_4 = _wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(var_3.e, 31u)], global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_3.b.x, ~var_3.e), 31u)]);
    global0 = u_input.a;
    global3 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~var_3.e & 0u, var_3.e) ^ (0u & ~_wgslsmith_mod_u32(66659u, var_3.e)), var_2.x, ~(~35110u));
}

