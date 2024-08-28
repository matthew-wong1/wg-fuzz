struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: array<vec3<f32>, 23>;

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_3 {
    let var_0 = ~vec3<u32>(u_input.a, u_input.a, select(~countOneBits(u_input.a), min(reverseBits(4294967295u), select(0u, 7350u, global3.x)), !all(vec4<bool>(true, true, false, global2.x))));
    let var_1 = -2147483647i;
    let var_2 = Struct_4(Struct_2(Struct_1(true), u_input.a << (select(12525u, 12064u, !global2.x) % 32u), Struct_1(all(!vec4<bool>(global2.x, global3.x, true, false)))), ~_wgslsmith_div_vec2_u32(var_0.xz, _wgslsmith_mod_vec2_u32(var_0.yx, var_0.xz)) | ~(~var_0.xy));
    let var_3 = var_0.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-774f, 347f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))));
    return global0[_wgslsmith_index_u32(4294967295u, 4u)];
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec2<f32> {
    global0 = array<Struct_3, 4>();
    var var_0 = _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(16717u, arg_3.b)), vec2<u32>(u_input.a, ~59615u));
    var var_1 = ~u_input.c.x <= _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(~u_input.d.x, u_input.b.x, 1i), -select(u_input.c.x, 0i, global2.x)), u_input.d.x);
    global0 = array<Struct_3, 4>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(4294967295u, 23u)], vec3<f32>(-854f, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(898f, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(605f, 968f, arg_0.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(arg_3.b, 23u)]) + vec3<f32>(arg_0.x, 477f, arg_0.x)))));
    return vec2<f32>(var_2.x, _wgslsmith_div_f32(-741f, arg_0.x));
}

fn func_1(arg_0: i32, arg_1: bool) -> i32 {
    let var_0 = Struct_1(any(global2.xw));
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(0u << (1u % 32u), 23u)], !global3.x, func_2().b, Struct_2(var_0, 1u, Struct_1(var_1.a.x)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_1.e, 432f, true))))), 1111f));
    var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1187f - -1114f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-137f))), all(select(vec4<bool>(true, var_0.a, var_1.b.a, true), vec4<bool>(arg_1, var_0.a, false, global2.x), var_1.b.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_1.e)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(252f, var_1.e)))), vec2<f32>(530f, _wgslsmith_f_op_f32(-var_1.e)), vec2<bool>(global2.x, true)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.e))), var_2.x));
    return abs(32671i);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: i32) -> Struct_1 {
    global0 = array<Struct_3, 4>();
    var var_0 = func_2();
    global0 = array<Struct_3, 4>();
    var var_1 = arg_1;
    global1 = array<vec3<f32>, 23>();
    return var_0.b;
}

fn func_5(arg_0: Struct_4) -> StorageBuffer {
    global1 = array<vec3<f32>, 23>();
    return StorageBuffer(func_2().d.x, countOneBits(~vec4<u32>(_wgslsmith_sub_u32(arg_0.b.x, 55133u), countOneBits(39815u), 4294967295u, u_input.a)), abs(91553u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1307f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f))) * 1815f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<bool>(all(!vec2<bool>(any(vec3<bool>(true, true, false)), true)), !any(!(!global2.xyz)), true, false);
    global1 = array<vec3<f32>, 23>();
    var var_0 = ~vec3<i32>(u_input.c.x, -min(select(14014i, u_input.b.x, false), u_input.b.x), -2147483647i);
    global2 = vec4<bool>(false, global2.x, global3.x, false);
    global3 = select(global2.zx, !global2.wy, !(!vec2<bool>(!global2.x, u_input.a > u_input.a)));
    let x = u_input.a;
    s_output = func_5(Struct_4(Struct_2(Struct_1(global2.x), select(9432u << (u_input.a % 32u), u_input.a, global3.x), func_4(_wgslsmith_dot_vec3_i32(u_input.d.wxz, u_input.d.xyw), u_input.a, var_0.x, func_1(-2147483647i, global2.x))), ~vec2<u32>(u_input.a, u_input.a) << ((max(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u)) << (firstTrailingBit(vec2<u32>(0u, u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

