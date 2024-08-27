struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_4,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global1: Struct_2;

var<private> global2: vec3<i32> = vec3<i32>(-1i, 823i, -14175i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<u32> {
    var var_0 = global1.a.x;
    global2 = _wgslsmith_mult_vec3_i32(select(max(_wgslsmith_mult_vec3_i32(min(vec3<i32>(-2147483647i, 62738i, 6946i), vec3<i32>(global2.x, global2.x, -9096i)), vec3<i32>(global2.x, global2.x, 0i)), ~firstLeadingBit(vec3<i32>(global2.x, -31217i, global2.x))), vec3<i32>(global2.x, _wgslsmith_div_i32(2147483647i, 1i), 21149i) >> (vec3<u32>(23127u, arg_2.x, _wgslsmith_dot_vec3_u32(arg_2.yxz, vec3<u32>(u_input.c, u_input.c, u_input.a.x))) % vec3<u32>(32u)), select(global1.a.wxw, select(select(global1.a.xzw, vec3<bool>(true, false, false), global1.a.zyw), vec3<bool>(global1.a.x, true, false), global1.a.wzw), (global2.x >> (19705u % 32u)) > abs(global2.x))), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(global2.x, global2.x, global2.x)), ~(~vec3<i32>(12156i, -34384i, global2.x)), vec3<i32>(1i, -2147483647i, _wgslsmith_clamp_i32(-22440i, global2.x, 2147483647i))) | vec3<i32>(~(i32(-1i) * -26211i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i, global2.x), 1i, 24753i), global2.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(709f, -456f), vec2<f32>(1000f, -412f)))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 + arg_0) * _wgslsmith_f_op_vec2_f32(min(arg_0, arg_0)))))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, arg_1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_1.b) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-405f, 1085f), vec2<f32>(-756f, arg_0.x), global1.a.x))))))));
    global1 = Struct_2(!global1.a);
    var_0 = true | (~select(arg_2.x, _wgslsmith_sub_u32(u_input.a.x, u_input.d), !global1.a.x) != (_wgslsmith_add_u32(1u >> (arg_2.x % 32u), _wgslsmith_add_u32(4294967295u, arg_2.x)) | _wgslsmith_clamp_u32(u_input.a.x, max(arg_2.x, 116664u), ~arg_2.x)));
    return vec3<u32>(_wgslsmith_sub_u32(~72631u, max(arg_2.x, ~1u)), ~u_input.b, 4294967295u);
}

fn func_4(arg_0: vec3<u32>) -> i32 {
    global2 = ~(vec3<i32>(2147483647i, ~global2.x | (-1796i << (0u % 32u)), -global2.x) << (arg_0 % vec3<u32>(32u)));
    global0 = array<vec2<bool>, 29>();
    global1 = Struct_2(global1.a);
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, 1i), ~vec2<i32>(11823i, global2.x)), abs(vec2<i32>(global2.x, -4375i) & _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 22276i), global2.zy, vec2<i32>(global2.x, -9167i))), _wgslsmith_sub_vec2_i32(-global2.yz, max(vec2<i32>(global2.x, 31746i), _wgslsmith_mod_vec2_i32(global2.xy, vec2<i32>(global2.x, global2.x))))), global2.zx);
    let var_1 = vec4<bool>(!all(global1.a.xxx), any(global0[_wgslsmith_index_u32(4294967295u >> (abs(min(arg_0.x, 1u)) % 32u), 29u)]), false, all(global1.a.zzy));
    return var_0;
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(~(~45474i), func_4(func_3(vec2<f32>(-862f, -574f), Struct_1(935f, 779f), vec4<u32>(4294967295u, u_input.a.x, u_input.d, 75126u)) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 15004u, 47584u), vec3<u32>(1u, 0u, u_input.d)))), countOneBits(~firstTrailingBit(-10442i)));
    let var_1 = !(all(!vec3<bool>(global1.a.x, true, true)) | all(global0[_wgslsmith_index_u32(u_input.b, 29u)]));
    var_0 = 1i;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.wx) * _wgslsmith_f_op_vec2_f32(-arg_0.a.yx)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.yz - vec2<f32>(-604f, arg_0.a.x)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f)) * arg_0.a.x);
    return arg_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec4<u32> {
    return select(_wgslsmith_add_vec4_u32(abs(arg_2), ~arg_2), _wgslsmith_div_vec4_u32(~arg_2, _wgslsmith_mod_vec4_u32(arg_2, arg_2)), select(vec4<bool>(_wgslsmith_f_op_f32(func_2(Struct_3(vec4<f32>(arg_1.a, 497f, 1481f, 1085f)), arg_1.a)) >= arg_1.a, (0u & arg_2.x) >= ~50783u, global1.a.x, global1.a.x), global1.a, !select(vec4<bool>(global1.a.x, false, true, global1.a.x), !global1.a, vec4<bool>(false, true, global1.a.x, global1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 29>();
    global0 = array<vec2<bool>, 29>();
    let var_0 = _wgslsmith_div_u32(~_wgslsmith_add_u32(u_input.d, ~(~25713u)), _wgslsmith_mult_u32(select(~4294967295u, ~12970u, all(global1.a)), _wgslsmith_dot_vec4_u32(func_1(vec3<i32>(global2.x, 20632i, -2147483647i), Struct_1(166f, -967f), vec4<u32>(u_input.a.x, u_input.b, u_input.d, u_input.a.x), vec4<i32>(62216i, 20646i, global2.x, global2.x)) >> (reverseBits(vec4<u32>(u_input.a.x, 84435u, 1u, u_input.a.x)) % vec4<u32>(32u)), ~min(vec4<u32>(u_input.a.x, u_input.b, 3559u, 1u), vec4<u32>(0u, u_input.a.x, u_input.c, 4294967295u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-121f, 2232f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1685f, -589f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-314f, -397f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(393f, 1089f))))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(428f, -753f)))))) - vec2<f32>(782f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(902f * -175f)))));
    let var_2 = ~u_input.a;
    global1 = Struct_2(vec4<bool>(global1.a.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(404f))) < var_1.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(~firstTrailingBit(var_0), _wgslsmith_sub_u32(min(var_2.x, 26704u), 0u), 0u), select(vec3<u32>(11169u, _wgslsmith_sub_u32(25631u, u_input.a.x), ~u_input.c), ~vec3<u32>(var_0, var_2.x, 17790u), vec3<bool>(true, true, global1.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 633f, -242f, 665f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, -712f, 724f, 309f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(694f, 236f, var_1.x, var_1.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -622f, var_1.x, var_1.x), vec4<f32>(1801f, var_1.x, var_1.x, -734f), false))))));
}

