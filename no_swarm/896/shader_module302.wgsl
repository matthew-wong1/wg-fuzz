struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: vec4<f32> = vec4<f32>(-1847f, 1476f, 1000f, -1166f);

var<private> global2: bool;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_4(~(~(~u_input.b.xy)) | (~vec2<u32>(u_input.a.x, u_input.b.x) ^ _wgslsmith_add_vec2_u32(firstTrailingBit(u_input.b.wy), ~u_input.a.zx)), Struct_3(Struct_2(arg_0, _wgslsmith_add_vec3_i32(select(vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(-11685i, u_input.c, u_input.d), true), firstTrailingBit(vec3<i32>(-2147483647i, -14150i, -2147483647i))), _wgslsmith_f_op_f32(min(arg_0.a, -400f)), vec3<bool>(!arg_0.d, any(arg_0.e), false | global0.x), arg_0), false));
    var var_1 = var_0.b.a.b.xz;
    global2 = any(var_0.b.a.d.xx);
    return _wgslsmith_f_op_f32(f32(-1f) * -1200f);
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(1766f, u_input.b.x, vec4<f32>(global1.x, global1.x, -888f, -282f), global0.x, vec2<bool>(global0.x, global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1313f))))), u_input.a.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 1400f, global1.x, global1.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-661f, -979f, global1.x, 1419f)), vec4<f32>(942f, 1142f, global1.x, global1.x)), !(!vec4<bool>(global0.x, true, false, global0.x)))), true, !global0.yw), vec3<i32>(_wgslsmith_clamp_i32(firstLeadingBit(1i), -1i, abs(u_input.c)), -arg_0.x, 1950i), -839f, !(!vec3<bool>(any(vec3<bool>(global0.x, false, global0.x)), true, global0.x)), Struct_1(137f, u_input.b.x & abs(reverseBits(16992u)), vec4<f32>(-1671f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-998f)) - _wgslsmith_f_op_f32(global1.x - 220f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(282f, global1.x, true)))), ~(-93579i) < _wgslsmith_mult_i32(u_input.c << (u_input.b.x % 32u), u_input.d), global0.xx));
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_0.a.c - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, -367f, var_0.e.c.x, global1.x) - var_0.a.c))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.a.c))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, var_1.x, -1377f))))) * _wgslsmith_div_vec3_f32(var_0.a.c.xyx, _wgslsmith_f_op_vec3_f32(vec3<f32>(1892f, -371f, 1000f) + global1.wzz))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.wzw))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.yxz), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1030f, var_0.a.a, -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(531f - var_1.x), _wgslsmith_f_op_f32(min(247f, var_0.c)))))));
    let var_3 = Struct_3(Struct_2(Struct_1(var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(77398u, var_0.a.b, 51869u, var_0.a.b), vec4<u32>(u_input.a.x, 12941u, u_input.b.x, var_0.a.b)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, global1.x, -577f, var_1.x))))), true, !var_0.d.zz), firstLeadingBit(arg_0.xyx), -2274f, !vec3<bool>(all(vec2<bool>(global0.x, true)), false, !global0.x), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1365f)), _wgslsmith_f_op_f32(-global1.x))), var_0.e.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1537f, var_2.x, var_1.x, -384f) - var_0.a.c)), all(select(var_0.d, global0.wzx, global0.x)), !global0.ww)), all(!select(select(vec4<bool>(true, true, true, global0.x), vec4<bool>(var_0.a.e.x, false, true, false), vec4<bool>(true, var_0.d.x, false, true)), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, false, false, true), var_0.d.x), global0.x)));
    return 106097u;
}

fn func_1(arg_0: bool) -> StorageBuffer {
    let var_0 = global0.zzz;
    let var_1 = Struct_1(global1.x, 20227u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) * _wgslsmith_f_op_f32(global1.x + -804f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1705f, _wgslsmith_f_op_f32(336f - global1.x)))), 537f, _wgslsmith_f_op_f32(-237f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(299f, global1.x)))), func_2(~firstTrailingBit(vec4<i32>(u_input.c, 7704i, u_input.c, 16968i))) != (_wgslsmith_div_u32(~u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 1u)) ^ u_input.a.x), var_0.xz);
    global2 = all(vec2<bool>(!global0.x, arg_0)) & !any(select(vec2<bool>(true, true), global0.ww, !var_0.x));
    global0 = !vec4<bool>(any(select(global0.zw, var_0.zy, !var_1.e)), arg_0, false, true);
    global1 = _wgslsmith_f_op_vec4_f32(select(var_1.c, vec4<f32>(369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1741f) - _wgslsmith_f_op_f32(-346f - _wgslsmith_div_f32(-629f, -289f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_3(Struct_1(170f, 4294967295u, var_1.c, var_0.x, global0.yw)))), 1000f), vec4<bool>(!var_1.e.x, true, false, false)));
    return StorageBuffer(vec2<f32>(1000f, _wgslsmith_f_op_f32(-var_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(any(select(vec2<bool>(global0.x || true, !global0.x), vec2<bool>(global1.x < -294f, true), any(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x))))));
}

