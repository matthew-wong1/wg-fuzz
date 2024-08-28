struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(1829f, Struct_1(2147483647i, vec2<f32>(899f, -1469f))), Struct_3(-143f, Struct_1(43280i, vec2<f32>(-936f, 660f))), Struct_3(126f, Struct_1(-4765i, vec2<f32>(-2569f, 2454f))), Struct_3(323f, Struct_1(1i, vec2<f32>(-2240f, -453f))), Struct_3(-1000f, Struct_1(0i, vec2<f32>(378f, 1839f))), Struct_3(293f, Struct_1(-1i, vec2<f32>(587f, 198f))), Struct_3(530f, Struct_1(i32(-2147483648), vec2<f32>(-257f, 1000f))), Struct_3(-395f, Struct_1(i32(-2147483648), vec2<f32>(822f, 403f))), Struct_3(983f, Struct_1(0i, vec2<f32>(-264f, 1027f))), Struct_3(349f, Struct_1(-47678i, vec2<f32>(-2221f, -1561f))), Struct_3(-307f, Struct_1(0i, vec2<f32>(504f, -179f))), Struct_3(-430f, Struct_1(-20127i, vec2<f32>(-1072f, 1075f))), Struct_3(-235f, Struct_1(-23915i, vec2<f32>(-923f, -154f))), Struct_3(681f, Struct_1(-43785i, vec2<f32>(1893f, 138f))), Struct_3(-1021f, Struct_1(-28453i, vec2<f32>(-674f, 1191f))), Struct_3(713f, Struct_1(17990i, vec2<f32>(246f, 651f))));

var<private> global1: vec2<i32>;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_1.b.x, arg_1.b.x) * _wgslsmith_f_op_vec3_f32(-global2.zzy)))) + _wgslsmith_f_op_vec3_f32(min(global2.xzy, global2.wzy)));
    global1 = max(u_input.a, -u_input.a);
    global1 = vec2<i32>(abs(arg_1.a), -1i);
    global0 = array<Struct_3, 16>();
    global1 = u_input.b.xz;
    return u_input.a.x;
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_2(~(-func_3(reverseBits(u_input.d.yz), Struct_1(0i, vec2<f32>(-238f, global2.x)))));
    let var_1 = ~1i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global2.wzy, _wgslsmith_f_op_vec3_f32(global2.yyy - vec3<f32>(-460f, global2.x, global2.x)), true)) * vec3<f32>(_wgslsmith_f_op_f32(1125f - global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1304f), _wgslsmith_f_op_f32(ceil(global2.x))))));
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(2719f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -401f))), _wgslsmith_f_op_f32(trunc(global2.x))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 1000f, 424f)))));
    let var_3 = !(global2.x <= -812f);
    return select(u_input.d.yx, abs(~u_input.d.zz) & ~u_input.d.xz, vec2<bool>(var_3, select(var_3, var_3 | var_3, var_3)));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_4) -> i32 {
    let var_0 = min(u_input.d.zz, func_2());
    global1 = vec2<i32>(-arg_2.b.a, func_3(u_input.d.zx, Struct_1(54053i, global2.xx)));
    let var_1 = !vec3<bool>(false, arg_1, ~(~var_0.x) != (15927u >> (1u % 32u)));
    global1 = vec2<i32>(1i, max(min(-global1.x, ~arg_2.b.a), ~_wgslsmith_sub_i32(2147483647i, 2147483647i)) | firstLeadingBit(arg_2.b.a));
    global2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(3046f - 167f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.a)) * -1000f))), arg_2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_2.a, -673f, arg_2.a) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, global2.x, 864f, arg_2.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a, global2.x, -1681f, global2.x), vec4<f32>(arg_2.a, arg_2.a, 103f, -1000f), vec4<bool>(arg_1, true, var_1.x, arg_2.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1776f, arg_0.x, 1000f, -125f) - vec4<f32>(arg_0.x, global2.x, 782f, 702f))))))));
    return select(16854i, countOneBits(_wgslsmith_add_i32(2147483647i, _wgslsmith_sub_i32(global1.x, 1i >> (u_input.e % 32u)))), _wgslsmith_f_op_f32(-637f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x * arg_2.a)))) >= 912f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -select(u_input.b.ww, u_input.b.wx, false) | vec2<i32>(-1i, u_input.a.x);
    let var_0 = -1000f;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, 917f, var_0))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0, 1186f) - global2.wxz)), global2.wyw)) + global2.wyx);
    global0 = array<Struct_3, 16>();
    global1 = _wgslsmith_mod_vec2_i32(firstTrailingBit(~vec2<i32>(u_input.a.x, -u_input.b.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(max(-33761i, u_input.a.x), -global1.x), u_input.a), select(u_input.b.x, _wgslsmith_sub_i32(func_1(global2.xz, true, Struct_4(global2.x, Struct_2(-1i), true)), global1.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -738f))))), vec3<i32>(u_input.b.x, 2147483647i, i32(-1i) * -global1.x), _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, 1i), firstTrailingBit(u_input.a)));
}

