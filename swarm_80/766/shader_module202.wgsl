struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = vec2<bool>(false, !arg_0);
    let var_1 = firstTrailingBit(~(~u_input.a));
    var var_2 = vec4<u32>(reverseBits(1u), var_1 | 1u, _wgslsmith_sub_u32(1u, var_1), firstTrailingBit(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 33037u, 11814u, u_input.a), vec4<u32>(u_input.a, 1u, var_1, 11153u), arg_0), vec4<u32>(u_input.a, var_1, 0u, 1u) >> (vec4<u32>(4294967295u, 115420u, u_input.a, var_1) % vec4<u32>(32u)))));
    var var_3 = !vec4<bool>(false, any(!(!vec2<bool>(true, arg_0))), arg_0, !var_0.x);
    var_3 = !select(select(!select(vec4<bool>(var_3.x, true, arg_0, arg_0), vec4<bool>(true, var_0.x, var_0.x, var_3.x), vec4<bool>(false, true, false, false)), !vec4<bool>(var_0.x, var_3.x, true, false), !vec4<bool>(false, false, var_0.x, false)), select(!select(vec4<bool>(var_3.x, arg_0, arg_0, var_3.x), vec4<bool>(var_0.x, arg_0, var_0.x, true), arg_0), vec4<bool>(true, false, all(var_3.zzw), var_2.x >= 1u), arg_0), vec4<bool>(true, true, true, true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-755f, -1394f)) * _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(round(-656f))) + 2053f);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-357f)) + _wgslsmith_f_op_f32(func_3(arg_0.b.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -911f) + _wgslsmith_f_op_f32(-arg_2.c.x)), arg_2.c.x, arg_2.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.xy)) - _wgslsmith_f_op_vec2_f32(arg_2.c + _wgslsmith_f_op_vec2_f32(step(arg_2.c, arg_2.c))))));
    var var_2 = arg_0.b.xy;
    var_2 = arg_0.b.xy;
    var_2 = !vec2<bool>(!(arg_2.c.x > 1334f), false);
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(abs(~max(vec2<i32>(0i, 32187i), vec2<i32>(0i, 3647i))), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, 2147483647i), arg_1.xx, vec2<i32>(arg_1.x, -13911i))) >> (select(arg_0.c.yy, firstLeadingBit(arg_0.c.zz), true) % vec2<u32>(32u))), 2147483647i);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_u32(~(~(~vec2<u32>(22720u, u_input.a)) ^ countOneBits(~vec2<u32>(u_input.a, 57869u))), ~(~countOneBits(abs(vec2<u32>(u_input.a, 1869u)))));
    var_0 = ~(~vec2<u32>(u_input.a, 16436u));
    var_0 = ~min(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(60814u, u_input.a, 26371u, u_input.a), vec4<u32>(4294967295u, var_0.x, var_0.x, 2159u))), vec2<u32>(firstTrailingBit(0u), 546u)) | vec2<u32>(u_input.a, u_input.a);
    var var_1 = true;
    let var_2 = false;
    return Struct_1(firstTrailingBit(~firstLeadingBit(vec2<u32>(var_0.x, 25051u) | vec2<u32>(94332u, 1u))), arg_1.yy, vec2<f32>(813f, -768f));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<f32>, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = func_4(!(-func_2(Struct_2(false, vec3<bool>(false, true, false), vec3<u32>(106231u, 4294967295u, u_input.a)), vec4<i32>(28839i, -1i, 55735i, 19928i), Struct_1(vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, true), vec2<f32>(-376f, arg_0.x))) < 35039i), !select(vec4<bool>(true, all(vec3<bool>(true, true, false)), all(vec3<bool>(false, true, false)), true), vec4<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(true, false)), false, any(vec4<bool>(false, false, false, false))), vec4<bool>(arg_1 < 4294967295u, true, all(vec4<bool>(false, false, false, false)), true)));
    var var_1 = ~0i;
    var var_2 = var_0;
    var var_3 = Struct_2(var_2.b.x, !select(vec3<bool>(var_2.b.x && var_0.b.x, true, !var_2.b.x), !select(vec3<bool>(true, true, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(var_2.b.x, var_2.b.x, var_0.b.x)), all(!vec3<bool>(var_2.b.x, false, true))), _wgslsmith_sub_vec3_u32(firstTrailingBit(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(19376u, var_2.a.x, 67479u), vec3<u32>(13735u, 6864u, 3089u), vec3<u32>(5736u, u_input.a, var_0.a.x)), vec3<u32>(4294967295u, u_input.a, 1u), var_2.b.x)), ~(~(~vec3<u32>(4294967295u, arg_1, 30964u)))));
    let var_4 = _wgslsmith_add_u32(~func_4(select(false, var_2.b.x || var_3.a, !var_2.b.x), !vec4<bool>(false, var_3.b.x, var_0.b.x, var_0.b.x)).a.x, 0u);
    return select(vec4<bool>(any(var_2.b), func_4(true, select(!vec4<bool>(var_2.b.x, var_2.b.x, false, var_2.b.x), !vec4<bool>(true, var_3.a, true, false), !vec4<bool>(var_3.a, false, false, false))).b.x, true, false), vec4<bool>(true, var_2.b.x, true, false || all(select(vec4<bool>(true, var_0.b.x, var_3.a, var_3.a), vec4<bool>(var_0.b.x, false, var_0.b.x, var_3.b.x), var_2.b.x))), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(countOneBits(reverseBits(4294967295u)), ~(~17043u), ~(28738u >> (u_input.a % 32u)), u_input.a) & vec4<u32>(_wgslsmith_sub_u32(0u, 0u), u_input.a, ~u_input.a, 36302u);
    let var_1 = !(true | all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(false, true))));
    let var_2 = abs(select(_wgslsmith_add_vec2_u32(var_0.wz, var_0.yx) | _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 24757u), var_0.yx), min(vec2<u32>(37896u, var_0.x), abs(var_0.zy)), vec2<bool>(var_1, !var_1))) ^ _wgslsmith_clamp_vec2_u32(var_0.xz, vec2<u32>(u_input.a ^ ~69291u, u_input.a), ~min(~var_0.yx, vec2<u32>(var_0.x, u_input.a)));
    var var_3 = any(select(!(!vec4<bool>(true, false, var_1, false)), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2245f, -1000f, -1834f))) - vec3<f32>(-1469f, -382f, -950f)), ~var_0.x | ~33205u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(522f, 472f, 1423f), vec3<f32>(517f, 303f, -893f), vec3<bool>(false, true, false)))))), vec4<bool>(var_1, -1i != (-2147483647i >> (var_2.x % 32u)), !(!var_1), var_1 || true)));
    let var_4 = i32(-1i) * -(-1i << (_wgslsmith_div_u32(~1u, max(var_0.x, 4294967295u)) % 32u));
    let var_5 = min(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(127419u), 4294967295u, var_2.x << (16126u % 32u), ~var_2.x), select(~var_0, vec4<u32>(var_2.x, 40663u, var_2.x, 34755u), select(vec4<bool>(false, false, var_1, var_1), vec4<bool>(false, var_1, true, false), vec4<bool>(false, var_1, false, var_1)))), var_0), ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(23828u, var_0.x, 22740u, var_2.x), _wgslsmith_clamp_vec4_u32(var_0, var_0, var_0)), func_4(all(vec4<bool>(false, var_1, true, var_1)), vec4<bool>(true, false, true, var_1)).a.x));
    var_3 = true;
    var_3 = !((abs(-41828i) > (var_4 >> (u_input.a % 32u))) != true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-370f)));
}

