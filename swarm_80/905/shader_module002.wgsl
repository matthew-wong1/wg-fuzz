struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(22157u, Struct_1(true), vec4<u32>(29362u, 43949u, 0u, 4294967295u), vec4<f32>(564f, 2041f, 1000f, 1000f)), Struct_3(56927u, Struct_1(false), vec4<u32>(0u, 528u, 0u, 1u), vec4<f32>(-348f, -1660f, -1640f, -1000f)), Struct_3(1u, Struct_1(true), vec4<u32>(52412u, 4294967295u, 0u, 4294967295u), vec4<f32>(-597f, -1494f, -513f, -778f)), Struct_3(1u, Struct_1(false), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<f32>(-1172f, 436f, -1000f, 2105f)), Struct_3(4294967295u, Struct_1(true), vec4<u32>(66673u, 0u, 4294967295u, 13190u), vec4<f32>(-2250f, 1000f, 1640f, -721f)), Struct_3(17528u, Struct_1(false), vec4<u32>(1605u, 30614u, 22979u, 28002u), vec4<f32>(446f, -702f, 234f, -1696f)), Struct_3(4294967295u, Struct_1(true), vec4<u32>(71209u, 64942u, 1u, 4294967295u), vec4<f32>(-268f, 958f, -354f, -708f)), Struct_3(23677u, Struct_1(false), vec4<u32>(0u, 4294967295u, 0u, 58404u), vec4<f32>(-117f, 694f, -1268f, 921f)), Struct_3(55003u, Struct_1(false), vec4<u32>(44097u, 70448u, 4294967295u, 4294967295u), vec4<f32>(-268f, 921f, -713f, -962f)), Struct_3(0u, Struct_1(false), vec4<u32>(4294967295u, 1u, 1u, 37173u), vec4<f32>(2444f, 410f, 709f, 1922f)), Struct_3(4294967295u, Struct_1(true), vec4<u32>(12405u, 34752u, 4294967295u, 72960u), vec4<f32>(-1376f, -333f, 1790f, 1277f)), Struct_3(11136u, Struct_1(false), vec4<u32>(28684u, 4294967295u, 0u, 4294967295u), vec4<f32>(-1599f, 1126f, -195f, 997f)), Struct_3(74839u, Struct_1(false), vec4<u32>(89593u, 433u, 1u, 24094u), vec4<f32>(-291f, 418f, -1000f, -774f)), Struct_3(7018u, Struct_1(true), vec4<u32>(0u, 14265u, 14330u, 0u), vec4<f32>(-1000f, 1000f, 184f, -195f)), Struct_3(74617u, Struct_1(true), vec4<u32>(0u, 0u, 28637u, 26007u), vec4<f32>(-252f, 282f, 1407f, -1634f)), Struct_3(0u, Struct_1(false), vec4<u32>(1u, 4294967295u, 4294967295u, 25748u), vec4<f32>(-2521f, 849f, -586f, 2555f)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = select(select(vec2<bool>(all(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)), true), vec2<bool>(arg_0.a, arg_0.a & arg_0.a), vec2<bool>(true, all(!vec3<bool>(arg_0.a, false, false)))), !select(select(vec2<bool>(arg_0.a, arg_0.a), select(vec2<bool>(false, true), vec2<bool>(false, true), arg_0.a), vec2<bool>(false, arg_0.a)), !(!vec2<bool>(arg_0.a, arg_0.a)), select(vec2<bool>(false, false), select(vec2<bool>(arg_0.a, false), vec2<bool>(true, false), true), arg_0.a)), !select(select(vec2<bool>(arg_0.a, true), select(vec2<bool>(false, true), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true)), vec2<bool>(arg_0.a, arg_0.a)), select(!vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true), any(vec4<bool>(false, arg_0.a, arg_0.a, false))), vec2<bool>(any(vec4<bool>(true, arg_0.a, false, arg_0.a)), true)));
    let var_1 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 30234u), u_input.c.zy)), vec2<u32>(_wgslsmith_sub_u32(u_input.d.x & u_input.a, reverseBits(u_input.d.x)), ~(~u_input.c.x))) > _wgslsmith_div_u32(u_input.d.x, reverseBits(u_input.c.x));
    let var_2 = select(select(var_0, vec2<bool>(false, var_0.x), !(!vec2<bool>(false, arg_0.a))), select(vec2<bool>(any(var_0), !var_0.x), vec2<bool>(any(vec3<bool>(true, true, true)), (arg_1.x > 0i) != any(vec2<bool>(arg_0.a, var_0.x))), !var_0), true);
    global0 = array<Struct_3, 16>();
    let var_3 = ~u_input.d;
    return select(vec4<bool>(arg_0.a, var_2.x, !(true != !var_2.x), all(vec3<bool>(!var_1, true, true))), vec4<bool>(false, all(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_2.x, false), vec4<bool>(var_0.x, var_2.x, var_0.x, var_1)), !vec4<bool>(arg_0.a, false, arg_0.a, var_2.x), select(vec4<bool>(var_1, arg_0.a, true, var_1), vec4<bool>(var_0.x, var_0.x, true, false), var_1))), var_2.x == (_wgslsmith_f_op_f32(-181f - -1523f) != _wgslsmith_f_op_f32(round(693f))), true), true);
}

fn func_2(arg_0: vec3<f32>) -> vec2<f32> {
    global0 = array<Struct_3, 16>();
    var var_0 = Struct_1(all(func_3(Struct_1(all(vec3<bool>(true, true, true))), vec4<i32>(abs(u_input.e.x), firstTrailingBit(u_input.b), _wgslsmith_dot_vec2_i32(u_input.e.xy, u_input.e.xw), firstLeadingBit(-39846i)))));
    let var_1 = u_input.d.wxx;
    let var_2 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.yz, abs(vec2<u32>(u_input.d.x, 4294967295u))), _wgslsmith_clamp_u32(firstLeadingBit(1u), var_1.x, countOneBits(u_input.c.x >> (69335u % 32u))));
    global0 = array<Struct_3, 16>();
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-250f, -1000f)), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x), any(select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, true), true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)) + -695f)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    let var_0 = 15502i;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.xww, u_input.c.wzy), _wgslsmith_mult_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(72937u, 1u, 4294967295u))), vec3<u32>(~u_input.c.x, _wgslsmith_mod_u32(20409u, 44369u), u_input.c.x)) ^ u_input.d.xwx), 16u)];
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(-577f, -123f, var_1.d.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, 2189f)))) + vec2<f32>(_wgslsmith_f_op_f32(round(-1160f)), _wgslsmith_f_op_f32(var_1.d.x * 640f)))), u_input.d.x);
    global0 = array<Struct_3, 16>();
    var var_3 = vec4<bool>(true, all(select(vec4<bool>(var_1.b.a, all(vec4<bool>(true, var_1.b.a, true, arg_0.a)), true, true), vec4<bool>(true, !arg_0.a, false, 35610u <= u_input.c.x), func_3(var_1.b, ~vec4<i32>(-26051i, 1i, u_input.b, 0i)))), !(false || all(select(vec4<bool>(arg_0.a, true, true, arg_0.a), vec4<bool>(false, true, false, true), false))), true);
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -212f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f), _wgslsmith_f_op_f32(f32(-1f) * -319f)) + -368f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)), false);
    var var_1 = firstLeadingBit(vec3<u32>(max(u_input.c.x, 16090u), ~abs(u_input.a), 1u << (~(~u_input.d.x) % 32u)));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1218f, -476f) - vec2<f32>(253f, 490f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1563f, -2321f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-876f, -1747f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(688f, -333f)) - _wgslsmith_f_op_vec2_f32(func_1(Struct_1(true), 77899i)))))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(23736u, (46684u ^ u_input.a) & 0u, u_input.c.x), u_input.c.x | u_input.c.x, u_input.d.x));
    global0 = array<Struct_3, 16>();
    let var_3 = vec2<u32>(~1u, ~_wgslsmith_mod_u32(32012u, 33456u));
    var var_4 = false;
    var_1 = select(~vec3<u32>(~33746u, abs(1u), _wgslsmith_mod_u32(abs(var_3.x), _wgslsmith_clamp_u32(var_1.x, 0u, u_input.a))), min(select(vec3<u32>(~10498u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, var_1.x), vec2<u32>(1u, u_input.a)), ~var_1.x), min(~vec3<u32>(var_2.b, 0u, 1u), u_input.c.zzw << (vec3<u32>(19941u, var_2.b, var_2.b) % vec3<u32>(32u))), select(vec3<bool>(true, true, true), func_3(Struct_1(false), vec4<i32>(u_input.e.x, -3031i, u_input.b, 2147483647i)).xww, var_0.x)), vec3<u32>(~1u, _wgslsmith_add_u32(~1u, 0u), var_3.x)), select(vec3<bool>(var_0.x, var_0.x, func_3(Struct_1(var_0.x), ~vec4<i32>(-19947i, u_input.e.x, u_input.e.x, -1800i)).x), !vec3<bool>(var_2.a.x != var_2.a.x, var_0.x, true), func_3(Struct_1(false || var_0.x), u_input.e).xxx));
    global0 = array<Struct_3, 16>();
    var var_5 = Struct_4(_wgslsmith_f_op_vec2_f32(-var_2.a), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.a.x, var_2.a.x, var_5.a.x))))))), _wgslsmith_f_op_f32(select(var_5.a.x, _wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(_wgslsmith_f_op_f32(var_5.a.x - var_2.a.x), 1f, -949f))).x, true)));
}

