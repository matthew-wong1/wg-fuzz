struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(1221f, vec3<f32>(-538f, 193f, 989f), i32(-2147483648), true, 4294967295u), Struct_1(-790f, vec3<f32>(790f, -739f, 643f), -36154i, false, 4294967295u), Struct_1(-172f, vec3<f32>(391f, 1142f, 1909f), 3342i, true, 17098u)), Struct_2(Struct_1(536f, vec3<f32>(1000f, 650f, -244f), 0i, true, 22333u), Struct_1(2000f, vec3<f32>(-473f, -658f, -1062f), 1i, false, 7540u), Struct_1(-1535f, vec3<f32>(-1370f, 1001f, -107f), 28011i, false, 1u)), Struct_2(Struct_1(779f, vec3<f32>(771f, -434f, 876f), i32(-2147483648), false, 37007u), Struct_1(-369f, vec3<f32>(1147f, -251f, -1250f), -9561i, true, 4294967295u), Struct_1(338f, vec3<f32>(207f, -254f, 364f), -31273i, true, 4294967295u)), Struct_2(Struct_1(158f, vec3<f32>(-353f, -191f, 988f), 17572i, true, 75203u), Struct_1(-641f, vec3<f32>(-1274f, -433f, -791f), -30405i, true, 63089u), Struct_1(-1361f, vec3<f32>(-449f, -820f, -502f), i32(-2147483648), true, 1u)), Struct_2(Struct_1(350f, vec3<f32>(-901f, 625f, -1481f), -21617i, true, 128853u), Struct_1(-123f, vec3<f32>(-813f, -129f, -1000f), -31647i, false, 1u), Struct_1(272f, vec3<f32>(-244f, -129f, -1877f), -1i, false, 21082u)), Struct_2(Struct_1(-486f, vec3<f32>(660f, -703f, -1001f), -31536i, false, 1u), Struct_1(199f, vec3<f32>(-1099f, 704f, 504f), 1i, false, 1u), Struct_1(-235f, vec3<f32>(531f, 405f, -279f), -17343i, true, 35499u)), Struct_2(Struct_1(-163f, vec3<f32>(1180f, 1000f, 1006f), -30969i, false, 33571u), Struct_1(-1036f, vec3<f32>(-394f, -904f, 502f), 65123i, false, 11068u), Struct_1(482f, vec3<f32>(-1107f, -1215f, 1327f), 0i, true, 918u)), Struct_2(Struct_1(-170f, vec3<f32>(427f, 807f, -1000f), -2291i, true, 72904u), Struct_1(1000f, vec3<f32>(128f, -1335f, 1013f), -1i, true, 43173u), Struct_1(-156f, vec3<f32>(-1345f, 1089f, 1248f), -32403i, true, 12469u)));

var<private> global2: vec4<u32> = vec4<u32>(38860u, 1u, 62765u, 18494u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true)), !any(vec2<bool>(false, true))), vec4<bool>(!all(vec2<bool>(false, false)), true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), true);
    let var_1 = _wgslsmith_clamp_i32(u_input.a, _wgslsmith_sub_i32(-(~_wgslsmith_clamp_i32(2147483647i, u_input.a, -1943i)), ~firstTrailingBit(0i)), 42206i);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~1u, global2.x), reverseBits(_wgslsmith_mod_vec3_u32(firstLeadingBit(global2.zww), global2.xyy))), 8u)];
    global2 = vec4<u32>(~abs(1u), reverseBits(0u), u_input.b, _wgslsmith_mod_u32(84343u, _wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.b, var_2.c.e), vec4<u32>(var_2.b.e, 4294967295u, var_2.a.e, 1716u)))) << (58718u % 32u));
    var var_3 = Struct_3(select(vec3<bool>(all(select(vec4<bool>(true, false, false, var_2.c.d), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0)), true, var_2.a.d), select(vec3<bool>(var_0.x, false, true), select(var_0.yzw, var_0.xyw, !var_0.zwz), var_2.b.d), vec3<bool>(select(true, true, var_2.a.d) | all(vec4<bool>(var_2.b.d, true, true, var_2.a.d)), u_input.b >= ~4294967295u, _wgslsmith_f_op_f32(select(184f, -1000f, var_0.x)) <= _wgslsmith_f_op_f32(select(var_2.c.a, -879f, false)))));
    return u_input.b | ~u_input.b;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>) -> f32 {
    global1 = array<Struct_2, 8>();
    global1 = array<Struct_2, 8>();
    global1 = array<Struct_2, 8>();
    var var_0 = func_3();
    let var_1 = global1[_wgslsmith_index_u32(global2.x, 8u)];
    return var_1.c.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-376f, -1054f, -356f, _wgslsmith_f_op_f32(123f - -1965f)))));
    let var_1 = var_0.xx;
    var var_2 = _wgslsmith_f_op_f32(func_2(!select(!select(arg_0, arg_0, vec4<bool>(arg_2.x, false, false, true)), select(!arg_0, arg_0, select(arg_0, vec4<bool>(false, arg_2.x, arg_1.x, false), arg_0)), arg_2.x), vec3<u32>(u_input.b, 1u, ~1u)));
    var var_3 = Struct_3(arg_2);
    let var_4 = _wgslsmith_mult_u32(_wgslsmith_div_u32(global2.x, u_input.b), 4294967295u & global2.x);
    return u_input.c;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(~global2.zyw | ((vec3<u32>(u_input.b, 4294967295u, u_input.b) & global2.zyz) & vec3<u32>(72871u, u_input.b, 13199u)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, global2.x, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, global2.x, 36301u), global2.wyz))), _wgslsmith_add_u32(~116984u, u_input.b), 1u << (~u_input.b % 32u));
    global0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-964f, 446f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3))), arg_3));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - -1837f)), arg_3.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * -1158f);
    var_0 = ~abs(min(countOneBits(vec3<u32>(global2.x, 29170u, global2.x)), vec3<u32>(16158u, var_0.x, 9284u)) | _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(21696u, 0u, 27176u), global2.zwx), global2.ywy));
    return Struct_1(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1659f, 1427f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1576f, arg_3.x) - vec3<f32>(arg_3.x, var_1.x, 152f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, 566f, var_1.x), vec3<f32>(arg_3.x, -907f, var_1.x))))), !(!select(vec3<bool>(true, true, arg_0), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, false, true))))), _wgslsmith_div_i32(select(24476i, 10835i, !any(vec4<bool>(arg_0, arg_0, arg_0, true))), -16226i), arg_0, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 8>();
    let var_0 = func_4(any(vec2<bool>(true, true)), _wgslsmith_sub_i32((func_1(vec4<bool>(true, true, true, true), vec2<bool>(true, true), vec3<bool>(false, true, true)) ^ u_input.a) << (1u % 32u), max(select(u_input.c >> (7578u % 32u), func_1(vec4<bool>(true, false, true, false), vec2<bool>(false, true), vec3<bool>(false, true, true)), any(vec3<bool>(true, false, true))), u_input.c)), func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), false, true, all(vec4<bool>(false, false, false, false)))), select(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec3<bool>(true, all(vec2<bool>(true, true)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-835f, -1295f))))))));
    let var_1 = Struct_3(!vec3<bool>(_wgslsmith_mod_u32(u_input.b, global2.x) < func_4(var_0.d, var_0.c, -1i, vec2<f32>(2350f, 673f)).e, true, true));
    var var_2 = Struct_2(var_0, Struct_1(-836f, var_0.b, i32(-1i) * -2147483647i, true, global2.x), Struct_1(var_0.a, var_0.b, var_0.c & _wgslsmith_div_i32(min(55159i, u_input.a), -20188i), !var_1.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(var_0.e, global2.x, 21079u, 1u), vec4<u32>(u_input.b, var_0.e, global2.x, 0u), vec4<bool>(var_1.a.x, var_0.d, false, var_0.d)), vec4<u32>(79595u, var_0.e, 0u, 56956u) >> (vec4<u32>(67716u, u_input.b, 59224u, 1u) % vec4<u32>(32u))), ~(~vec4<u32>(var_0.e, 806u, global2.x, u_input.b)))));
    var var_3 = min(~min(~(var_2.a.e | global2.x), _wgslsmith_div_u32(var_0.e << (global2.x % 32u), 35649u)), _wgslsmith_sub_u32(var_2.a.e, ~_wgslsmith_mult_u32(global2.x, 36484u)));
    var var_4 = _wgslsmith_div_vec2_f32(var_2.a.b.yx, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.a, -590f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.b.x, -103f) * var_0.b.zx)) + _wgslsmith_f_op_vec2_f32(max(var_0.b.yx, _wgslsmith_f_op_vec2_f32(select(var_2.c.b.yy, vec2<f32>(var_0.b.x, var_0.a), var_1.a.zz))))))));
    let var_5 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(41419u, global2.x)), reverseBits(vec2<u32>(36080u, u_input.b | global2.x))));
}

