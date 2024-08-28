struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(31893u, vec3<u32>(1u, 42542u, 21762u), vec4<u32>(31092u, 4294967295u, 63584u, 4294967295u));

var<private> global2: bool = false;

var<private> global3: array<vec3<f32>, 15>;

var<private> global4: array<vec2<i32>, 17>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool) -> f32 {
    global2 = false;
    global3 = array<vec3<f32>, 15>();
    global4 = array<vec2<i32>, 17>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-724f - 1005f) + _wgslsmith_f_op_f32(min(499f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-354f - -594f) * _wgslsmith_f_op_f32(max(-437f, 308f)))))));
    global4 = array<vec2<i32>, 17>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1324f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = arg_1.e.yyy;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1149f)), _wgslsmith_div_f32(1412f, -201f))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) * 801f) - arg_0.x));
    let var_2 = Struct_5(u_input.a.yx | vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(arg_1.e), vec4<i32>(4141i, arg_1.d.x, u_input.b, -45461i)), arg_2.x), false, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1203f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_3(var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.b, arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x))))), !any(!select(vec4<bool>(var_1, false, true, false), vec4<bool>(true, false, var_1, true), var_1)), Struct_2(u_input.c.x, countOneBits(_wgslsmith_add_vec4_u32(arg_1.a.b, ~global1.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(f32(-1f) * -253f), !var_1))));
    var var_3 = _wgslsmith_add_i32(abs(_wgslsmith_clamp_i32(arg_2.x, ~(-26395i), reverseBits(var_2.a.x))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(4195i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -47575i), u_input.a.xx), u_input.a.x ^ arg_2.x), _wgslsmith_mod_vec3_i32(~arg_2.xyz, vec3<i32>(19984i, u_input.b, arg_2.x))), _wgslsmith_mod_i32(0i, _wgslsmith_div_i32(firstTrailingBit(-2147483647i), var_0.x))));
    let var_4 = Struct_1(var_2.e.b.x, firstLeadingBit(firstLeadingBit(~arg_1.a.b.zzx)), arg_1.a.b);
    return !select(vec2<bool>(all(vec2<bool>(var_1, var_1)) && !var_2.d, false | var_1), select(!select(vec2<bool>(true, false), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1)), vec2<bool>(all(vec2<bool>(true, var_1)), !var_1), select(select(vec2<bool>(var_2.d, false), vec2<bool>(false, var_2.b), vec2<bool>(var_2.d, true)), vec2<bool>(true, true), var_2.d)), false);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_2(59334u, select(select(countOneBits(reverseBits(vec4<u32>(arg_1.x, u_input.c.x, arg_1.x, 45381u))), vec4<u32>(arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), u_input.c.xy), 1u, 0u), !vec4<bool>(arg_2.x, arg_2.x, true, false)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.zxy, u_input.c.wwx), 4294967295u << (global1.c.x % 32u), 86607u, arg_1.x | 19468u), vec4<bool>(!arg_2.x, !(!arg_2.x), any(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), !func_2(arg_0.xzx, Struct_4(Struct_2(global1.c.x, vec4<u32>(arg_1.x, 5173u, global1.b.x, u_input.c.x), 1000f), 109f, u_input.b, vec3<i32>(6767i, 0i, -1i), vec4<i32>(2147483647i, 2147483647i, 15084i, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, -46143i, 0i)).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -1772f) * _wgslsmith_f_op_f32(floor(-192f))));
    global4 = array<vec2<i32>, 17>();
    var var_1 = Struct_1(5283u, ~(~max(vec3<u32>(27228u, 0u, 36563u), vec3<u32>(27026u, 0u, var_0.a))), vec4<u32>(firstTrailingBit(firstTrailingBit(var_0.a)), 1u, _wgslsmith_mult_u32(max(reverseBits(0u), ~51782u), arg_1.x), arg_1.x));
    global0 = -672f;
    global4 = array<vec2<i32>, 17>();
    return var_1.b.x;
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 551f, 1349f, 2303f), vec4<f32>(-1000f, 1672f, 932f, -262f))), abs(firstTrailingBit(global1.c.xxz & global1.b)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), func_2(vec3<f32>(-219f, -408f, 295f), Struct_4(Struct_2(global1.c.x, global1.c, -2170f), -454f, u_input.b, vec3<i32>(u_input.b, 2068i, -46810i), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.a.x)), vec4<i32>(2147483647i, -18685i, u_input.b, -1740i))), vec2<bool>(true, true), true)), _wgslsmith_add_vec4_u32(vec4<u32>(global1.c.x, 81049u, u_input.c.x, countOneBits(firstLeadingBit(global1.c.x))), vec4<u32>(global1.c.x, ~(~global1.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(66843u, global1.a, global1.c.x), _wgslsmith_add_vec3_u32(u_input.c.zww, global1.c.zww)), ~_wgslsmith_div_u32(0u, 4294967295u))), 2180f);
    global1 = Struct_1(var_0.a, vec3<u32>(28638u, 0u, _wgslsmith_div_u32(~global1.a, u_input.c.x)), vec4<u32>(4294967295u, u_input.c.x, abs(2169u), var_0.a));
    global4 = array<vec2<i32>, 17>();
    let var_1 = select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false)), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), !(!vec4<bool>(true, all(vec2<bool>(false, false)), true, false)), true);
    global3 = array<vec3<f32>, 15>();
    return select(reverseBits(~vec4<i32>(-3809i, u_input.b, u_input.b, 0i) & ~_wgslsmith_clamp_vec4_i32(vec4<i32>(26522i, u_input.b, u_input.a.x, 38673i), vec4<i32>(u_input.b, u_input.a.x, u_input.b, u_input.a.x), vec4<i32>(23221i, u_input.b, 9261i, -2147483647i))), min(vec4<i32>(~u_input.b, u_input.b, u_input.a.x, u_input.a.x), countOneBits(select(vec4<i32>(-39694i, -2147483647i, u_input.b, -25067i), vec4<i32>(-1i, u_input.a.x, u_input.b, -3949i), var_1.x))) & (_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, -34202i, u_input.a.x, u_input.b), vec4<i32>(45224i, -71235i, 2147483647i, -7403i)) | vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(u_input.b, -31148i)), countOneBits(1i), _wgslsmith_clamp_i32(20291i, 2147483647i, -21355i), i32(-1i) * -2147483647i)), select(select(select(select(vec4<bool>(true, true, var_1.x, var_1.x), var_1, var_1), var_1, select(var_1.x, false, var_1.x)), vec4<bool>(!var_1.x, !var_1.x, true, any(var_1.yx)), !var_1), !var_1, select(var_1, vec4<bool>(true, u_input.b <= -1i, !var_1.x, true), vec4<bool>(false, true, var_1.x != false, true))));
}

fn func_5(arg_0: vec4<i32>) -> Struct_2 {
    global1 = Struct_1(select(firstTrailingBit(func_4(vec4<f32>(1000f, -857f, -615f, 1000f), u_input.c.xww, vec2<bool>(false, true)) >> (1u % 32u)), global1.a, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b, u_input.b), _wgslsmith_div_i32(arg_0.x, u_input.a.x), arg_0.x) <= ~arg_0.x), ~_wgslsmith_mult_vec3_u32(max(vec3<u32>(59911u, global1.a, 4294967295u), vec3<u32>(24834u, 15711u, global1.b.x)) << (u_input.c.xyx % vec3<u32>(32u)), ~vec3<u32>(65567u, 1u, 0u) << (u_input.c.wzx % vec3<u32>(32u))), firstLeadingBit(~vec4<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), firstLeadingBit(1u), max(31253u, global1.a), ~global1.b.x)));
    global4 = array<vec2<i32>, 17>();
    var var_0 = Struct_3(-_wgslsmith_dot_vec2_i32(vec2<i32>(~36063i, _wgslsmith_div_i32(u_input.b, 1i)), vec2<i32>(u_input.b << (global1.c.x % 32u), select(u_input.b, 2147483647i, true))), (~(~u_input.c.yxx) << (vec3<u32>(reverseBits(0u), 0u, u_input.c.x) % vec3<u32>(32u))) & vec3<u32>(0u, abs(global1.a), ~_wgslsmith_mult_u32(global1.b.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(737f, -1000f, 1726f, 1103f), vec4<f32>(636f, -427f, 527f, 1775f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-200f, -627f, 517f, -845f) * vec4<f32>(1313f, 114f, 1436f, 983f)), false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(827f, 1178f, 1047f, 444f)))));
    let var_1 = func_1();
    let var_2 = _wgslsmith_div_i32(reverseBits(-2147483647i), -(~arg_0.x));
    return Struct_2(var_0.b.x, u_input.c, var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(~_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, u_input.a.x)) ^ ~vec2<i32>(-30703i, 61352i), ~_wgslsmith_sub_vec2_i32(global4[_wgslsmith_index_u32(global1.a, 17u)], u_input.a.xx)), any(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec4<f32>(-502f, _wgslsmith_f_op_f32(f32(-1f) * -1298f), 441f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(759f, -127f)) * _wgslsmith_f_op_f32(f32(-1f) * -804f))), true, func_5(-(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, -2147483647i), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 27120i)) | func_1())));
    global4 = array<vec2<i32>, 17>();
    var var_1 = select(vec4<bool>(all(select(select(vec3<bool>(false, false, var_0.d), vec3<bool>(true, var_0.b, var_0.d), false), select(vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(false, var_0.d, false), true), select(vec3<bool>(var_0.b, var_0.d, true), vec3<bool>(var_0.d, var_0.d, false), vec3<bool>(true, true, false)))), var_0.b, var_0.d, (37325u < _wgslsmith_dot_vec3_u32(vec3<u32>(24283u, var_0.e.a, global1.c.x), var_0.e.b.yxz)) && var_0.d), !vec4<bool>(select(any(vec4<bool>(true, false, false, true)), var_0.b, var_0.d && var_0.d), func_2(_wgslsmith_f_op_vec3_f32(exp2(global3[_wgslsmith_index_u32(4294967295u, 15u)])), Struct_4(Struct_2(0u, vec4<u32>(var_0.e.a, u_input.c.x, global1.a, u_input.c.x), var_0.e.c), -1000f, var_0.a.x, vec3<i32>(var_0.a.x, var_0.a.x, u_input.b), vec4<i32>(1i, -8294i, var_0.a.x, 1i)), vec4<i32>(u_input.a.x, u_input.a.x, var_0.a.x, 2147483647i) << (vec4<u32>(4294967295u, global1.c.x, global1.b.x, u_input.c.x) % vec4<u32>(32u))).x, !any(vec4<bool>(false, var_0.d, false, var_0.d)), true == var_0.d), var_0.b);
    let var_2 = -max(~(-u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_0.a.x, -1i, -29402i)), ~u_input.a.x, abs(var_0.a.x)), u_input.a));
    let var_3 = var_1.wxw;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x | 12422u, countOneBits(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-15331i, u_input.a.x) << (vec2<u32>(1u, global1.b.x) % vec2<u32>(32u)), u_input.a.yz), -30859i)), var_2.x);
}

