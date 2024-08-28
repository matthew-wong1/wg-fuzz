struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>) -> vec2<u32> {
    var var_0 = !(~u_input.c.x >= _wgslsmith_mod_u32(18034u, ~u_input.c.x));
    var var_1 = Struct_1(722f, _wgslsmith_div_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1288u, 5577u, u_input.c.x), global0[_wgslsmith_index_u32(u_input.c.x, 5u)])), 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -157f) + arg_0.zw)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(-1076f - -881f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x)))), -1461f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1191f, arg_0.x) * 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1474f)))), !((u_input.a.x < ~(-54639i)) | any(!vec3<bool>(global1.x, global1.x, global1.x))));
    global2 = ~(~_wgslsmith_mod_u32(~103077u, 82077u));
    var_1 = Struct_1(1744f, ~_wgslsmith_dot_vec3_u32(reverseBits(u_input.c.wyz), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, u_input.c.x, 58183u, u_input.c.x), vec4<u32>(u_input.c.x, var_1.b, u_input.c.x, 0u)), abs(14712u), ~1u)), arg_0.wx, var_1.d, !any(select(vec3<bool>(false, true, true), vec3<bool>(global1.x, false, true), !vec3<bool>(true, false, global1.x))));
    return ~u_input.c.zz;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = vec4<u32>(~arg_0.b, 4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(u_input.c.zz, u_input.c.zz, global1.xy), u_input.c.wz), func_3(arg_0.d)), u_input.c.x), u_input.c.x);
    var var_1 = true;
    let var_2 = true;
    var_1 = true;
    let var_3 = arg_0;
    return i32(-1i) * -53206i;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    var var_0 = u_input.d;
    var var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = vec2<u32>(1311u, _wgslsmith_mod_u32(var_2.b, 4294967295u));
    var_1 = var_2;
    return arg_2;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_4(arg_2, abs(vec4<i32>(u_input.b, func_2(Struct_1(-889f, 80928u, vec2<f32>(arg_2.a, arg_2.c.x), arg_2.d, false)), -(u_input.b >> (arg_2.b % 32u)), u_input.a.x)), u_input.b, vec2<u32>(_wgslsmith_div_u32(1u, ~arg_0.x), _wgslsmith_add_u32(~arg_2.b, ~_wgslsmith_sub_u32(arg_2.b, arg_2.b))));
    var_0 = abs(u_input.b);
    global1 = select(vec3<bool>(false, arg_2.e, any(vec2<bool>(true, false))), select(select(vec3<bool>(all(vec4<bool>(true, arg_1.x, arg_2.e, false)), !arg_1.x, global1.x), arg_1, vec3<bool>(global1.x, true, true)), arg_1, true), global1.x);
    var_0 = -1i;
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(13359u), 49371u, ~abs(0u)), ~u_input.c.ywz), ~vec3<u32>(arg_0.x ^ ~arg_2.b, u_input.c.x, u_input.c.x));
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = false;
    var var_1 = func_1(select(~firstTrailingBit(~u_input.c.yx), vec2<u32>(countOneBits(20798u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.c.x), u_input.c.xxx)), var_0), select(select(!vec3<bool>(global1.x, var_0, false), !select(vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x), false), vec3<bool>(true, func_1(vec2<u32>(1u, 4294967295u), vec3<bool>(var_0, global1.x, false), arg_0).e, !global1.x)), vec3<bool>(false, global1.x, global1.x), global1.x), func_1(u_input.c.wy, select(vec3<bool>(var_0, !global1.x, var_0), !vec3<bool>(false, var_0, var_0), all(select(global1.zy, vec2<bool>(arg_0.e, true), vec2<bool>(false, false)))), arg_0));
    var_1 = func_1(u_input.c.wy, select(!select(select(vec3<bool>(false, arg_0.e, false), vec3<bool>(false, true, var_1.e), vec3<bool>(true, true, true)), select(vec3<bool>(var_1.e, true, var_1.e), vec3<bool>(true, var_0, arg_0.e), vec3<bool>(false, arg_0.e, global1.x)), vec3<bool>(false, global1.x, var_0)), vec3<bool>(true, var_1.e, true), select(vec3<bool>(any(vec2<bool>(false, global1.x)), true, false), select(vec3<bool>(arg_0.e, false, false), vec3<bool>(global1.x, arg_0.e, false), var_1.e), arg_0.e)), func_1(~vec2<u32>(4294967295u, abs(u_input.c.x)), !(!(!vec3<bool>(true, var_0, arg_0.e))), arg_0));
    var var_2 = false;
    var var_3 = Struct_1(arg_0.c.x, ~var_1.b, func_1(~(u_input.c.wz | _wgslsmith_add_vec2_u32(u_input.c.wz, u_input.c.yw)), !select(!vec3<bool>(true, arg_0.e, true), !vec3<bool>(arg_0.e, false, var_0), !vec3<bool>(arg_0.e, false, false)), Struct_1(var_1.c.x, ~(~arg_0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 862f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1272f, arg_1.x))), vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.x, arg_0.c.x)), arg_0.c.x, 1000f, _wgslsmith_f_op_f32(-arg_0.d.x)), false)).d.wx, var_1.d, true);
    return !vec3<bool>(any(!global1.xx), true, any(vec3<bool>(!arg_0.e, select(false, false, var_3.e), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(countOneBits(~(~vec2<u32>(u_input.c.x, 0u)) << (u_input.c.wy % vec2<u32>(32u))));
    global1 = func_5(func_1(~((vec2<u32>(22353u, var_0.x) & u_input.c.yx) & u_input.c.zy), !vec3<bool>(true, select(true, global1.x, global1.x), !global1.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -888f), min(_wgslsmith_mult_u32(var_0.x, u_input.c.x), 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(749f, 857f)) * vec2<f32>(434f, -1547f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-844f, 1869f, -334f, -774f)), select(true, any(global1.yx), true))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1347f, 2262f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-780f, -362f)), vec2<f32>(1184f, -345f)))));
    global1 = func_5(func_1(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(1u, var_0.x)), reverseBits(var_0)), select(!(!vec3<bool>(true, true, global1.x)), !select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, global1.x, true), global1.x), !select(vec3<bool>(false, true, false), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1041f - -172f)), 1u, vec2<f32>(_wgslsmith_f_op_f32(199f - 759f), func_1(var_0, vec3<bool>(global1.x, true, global1.x), Struct_1(-1275f, var_0.x, vec2<f32>(-412f, 910f), vec4<f32>(1375f, 1000f, -1787f, 273f), global1.x)).a), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1623f, -139f, -931f, 413f), vec4<f32>(-789f, -1508f, 659f, -1405f))))), any(vec3<bool>(global1.x, false, global1.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(423f, -1440f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-874f, 716f)) * vec2<f32>(1f, 1f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(2965f + -185f)), -179f))));
    global1 = vec3<bool>(true, all(!select(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(false, true, true, true))), any(vec3<bool>(global1.x, false, !(!global1.x))));
    global0 = array<vec4<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1507f, 660f, 101f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(847f, -740f, -1196f), vec3<f32>(-959f, -415f, 228f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(198f, -2147f, -996f) - vec3<f32>(1799f, 2071f, -1065f)))) * _wgslsmith_div_vec3_f32(func_1(vec2<u32>(1u, var_0.x), vec3<bool>(global1.x, global1.x, false), Struct_1(-1337f, 4294967295u, vec2<f32>(-545f, 1024f), vec4<f32>(1000f, -447f, -288f, 1622f), true)).d.wxx, _wgslsmith_div_vec3_f32(vec3<f32>(599f, 1000f, 699f), vec3<f32>(-592f, 1292f, -694f))))), ~(~countOneBits(countOneBits(var_0.x))));
}

