struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5) -> f32 {
    let var_0 = !select(select(!vec4<bool>(true, arg_0.a.c.x, true, arg_0.a.c.x), select(select(vec4<bool>(true, false, arg_0.a.c.x, true), vec4<bool>(false, arg_0.a.c.x, false, arg_0.a.c.x), vec4<bool>(false, true, arg_0.a.c.x, true)), vec4<bool>(false, true, arg_0.a.c.x, arg_0.a.c.x), !vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x, false)), select(select(vec4<bool>(false, arg_0.a.c.x, false, false), vec4<bool>(arg_0.a.c.x, true, true, true), vec4<bool>(true, false, arg_0.a.c.x, arg_0.a.c.x)), !vec4<bool>(true, arg_0.a.c.x, false, arg_0.a.c.x), arg_0.a.c.x)), vec4<bool>(!arg_0.a.c.x & arg_0.a.c.x, arg_0.a.c.x, false, !any(vec4<bool>(arg_0.a.c.x, false, false, true))), arg_0.a.c.x);
    var var_1 = vec2<f32>(1065f, _wgslsmith_div_f32(-1598f, arg_0.a.b));
    var var_2 = Struct_5(Struct_3(-vec3<i32>(arg_0.d.a.x, -u_input.a.x, -41893i), arg_0.a.b, !select(!vec2<bool>(false, var_0.x), var_0.ww, select(arg_0.a.c, var_0.zz, true)), arg_0.a.d), vec3<f32>(_wgslsmith_f_op_f32(775f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(413f, -930f)))), _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b - arg_0.a.b) + 854f)))), vec4<u32>(countOneBits(arg_0.c.x), _wgslsmith_clamp_u32(~(~4294967295u), 4294967295u, max(_wgslsmith_dot_vec2_u32(arg_0.c.xw, arg_0.c.zx), ~1u)), u_input.c, arg_0.c.x), arg_0.d);
    var_2 = arg_0;
    var var_3 = var_0.x && true;
    return var_1.x;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_f_op_f32(select(arg_0.a.b, _wgslsmith_div_f32(arg_0.b.x, -409f), arg_0.a.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-479f, -828f))))))), false));
    var var_2 = Struct_5(arg_0.a, arg_0.b, vec4<u32>(_wgslsmith_mult_u32((arg_1.b << (arg_1.d % 32u)) ^ arg_0.c.x, _wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(arg_0.c.x, 68509u, 1u, 6358u))), u_input.c, ~u_input.d.x, 15102u), arg_0.d);
    var var_3 = !(!(!select(!vec4<bool>(var_2.a.c.x, arg_0.a.c.x, var_2.a.c.x, var_2.a.c.x), select(vec4<bool>(var_2.a.c.x, arg_0.a.c.x, false, true), vec4<bool>(arg_0.a.c.x, var_2.a.c.x, false, false), false), vec4<bool>(true, arg_0.a.c.x, var_2.a.c.x, true))));
    var var_4 = Struct_5(Struct_3(~vec3<i32>(arg_0.d.a.x, -2147483647i, i32(-1i) * -11937i), _wgslsmith_f_op_f32(-810f - _wgslsmith_f_op_f32(-arg_0.b.x)), vec2<bool>(true, arg_0.a.c.x & (true | arg_0.a.c.x)), var_2.d), arg_0.b, _wgslsmith_sub_vec4_u32(arg_0.c, arg_0.c), Struct_2(vec2<i32>(countOneBits(var_2.d.a.x), -arg_1.c)));
    return vec3<f32>(arg_0.a.b, var_4.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.b.x - _wgslsmith_f_op_f32(-var_4.b.x)), _wgslsmith_f_op_f32(step(arg_0.a.b, -2383f))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> i32 {
    var var_0 = Struct_5(Struct_3(_wgslsmith_sub_vec3_i32(-u_input.a.yzx, arg_0.xyw), _wgslsmith_f_op_f32(-208f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f) - _wgslsmith_f_op_f32(trunc(-2356f)))), vec2<bool>(true, true), Struct_2(~(~arg_0.yy))), _wgslsmith_f_op_vec3_f32(func_4(Struct_5(Struct_3(arg_0.zww, _wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(u_input.b.xww, -1931f, vec2<bool>(false, false), Struct_2(arg_0.zy)), vec3<f32>(-2264f, -1281f, -2470f), vec4<u32>(4294967295u, u_input.c, 5488u, 4294967295u), Struct_2(u_input.a.yx)))), vec2<bool>(true, true), Struct_2(arg_0.yx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2128f, 1019f, 663f) - vec3<f32>(1064f, -469f, 1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-400f, -280f, -872f) + vec3<f32>(-1351f, -757f, 641f))), abs(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) | vec4<u32>(u_input.c, 0u, u_input.d.x, u_input.d.x)), Struct_2(-u_input.a.zy)), Struct_1(vec4<u32>(94413u, u_input.c, select(u_input.d.x, 45901u, false), _wgslsmith_clamp_u32(u_input.c, u_input.d.x, 38441u)), _wgslsmith_div_u32(u_input.d.x & 27400u, u_input.d.x), ~select(arg_0.x, 34803i, true), ~21451u), u_input.c)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d.x ^ u_input.d.x, 4294967295u, _wgslsmith_add_u32(u_input.d.x, 23465u), u_input.d.x), ~countOneBits(vec4<u32>(48865u, 0u, u_input.c, 99509u) & vec4<u32>(u_input.c, u_input.c, u_input.c, 1u))), Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(arg_0, u_input.b) & ~(-2147483647i), arg_1)));
    var_0 = Struct_5(Struct_3(-firstLeadingBit(var_0.a.a >> (u_input.d % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1095f) * -444f), var_0.a.c, var_0.d), var_0.b, var_0.c, var_0.d);
    global0 = array<i32, 30>();
    var_0 = Struct_5(var_0.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(174f, var_0.b.x, 1200f)) * _wgslsmith_f_op_vec3_f32(-var_0.b))), var_0.b)), vec4<u32>(u_input.d.x, u_input.d.x, _wgslsmith_add_u32(~68457u, ~u_input.c), _wgslsmith_sub_u32(66708u ^ u_input.c, u_input.d.x | var_0.c.x)) >> (var_0.c % vec4<u32>(32u)), Struct_2(-_wgslsmith_div_vec2_i32(abs(vec2<i32>(88059i, 0i)), arg_0.yy)));
    var var_1 = _wgslsmith_clamp_vec2_i32(-u_input.a.xz, -abs(-vec2<i32>(var_0.d.a.x, arg_0.x)), min(countOneBits(vec2<i32>(2147483647i, abs(arg_1))), firstTrailingBit(abs(~vec2<i32>(-6962i, global0[_wgslsmith_index_u32(u_input.d.x, 30u)])))));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(arg_0, u_input.a), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 37728i, 2147483647i, arg_1), vec4<i32>(u_input.b.x, 45690i, arg_1, 44917i)) << (vec4<u32>(u_input.c, ~u_input.d.x, u_input.d.x, min(var_0.c.x, 37289u)) % vec4<u32>(32u)), u_input.b));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: f32) -> vec2<bool> {
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    var var_0 = -func_2(vec4<i32>(-1i) * -u_input.a, 1i);
    global0 = array<i32, 30>();
    let var_1 = 0i;
    return select(vec2<bool>(arg_0.d || arg_0.d, arg_0.d), !select(select(!vec2<bool>(arg_0.d, true), select(vec2<bool>(false, false), vec2<bool>(arg_0.d, true), true), true), vec2<bool>(all(vec3<bool>(true, false, arg_0.d)), true), false), all(select(select(select(vec4<bool>(arg_0.d, true, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, true, arg_0.d), vec4<bool>(true, arg_0.d, arg_0.d, arg_0.d), arg_0.d), arg_0.d), select(select(vec4<bool>(false, arg_0.d, true, true), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d), arg_0.d), vec4<bool>(true, true, true, true), select(vec4<bool>(false, arg_0.d, false, arg_0.d), vec4<bool>(false, arg_0.d, arg_0.d, false), arg_0.d)), all(select(vec4<bool>(arg_0.d, arg_0.d, false, arg_0.d), vec4<bool>(true, arg_0.d, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, false, arg_0.d, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 30>();
    var var_0 = !all(vec3<bool>(select(any(vec4<bool>(false, true, true, true)), false, true), all(vec2<bool>(true, true)) | any(vec2<bool>(false, false)), all(func_1(Struct_4(-989f, 411i, u_input.d.x, true, vec4<i32>(0i, u_input.b.x, 0i, u_input.b.x)), -468f, 352f))));
    let var_1 = u_input.a.zyx;
    var var_2 = all(select(vec2<bool>(func_1(Struct_4(-103f, u_input.b.x, 12635u, false, u_input.b), 1380f, _wgslsmith_f_op_f32(1000f - -561f)).x, true), !vec2<bool>(any(vec4<bool>(true, false, false, false)), false), !(!func_1(Struct_4(-1227f, u_input.e, u_input.c, true, vec4<i32>(var_1.x, var_1.x, u_input.b.x, -1i)), 1000f, 263f))));
    var var_3 = vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.c, 30u)], min(31567i, firstTrailingBit(-global0[_wgslsmith_index_u32(0u, 30u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-391f - 401f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1205f))), select(true, true, false) && true)), vec3<u32>(~u_input.d.x, ~4294967295u, u_input.d.x), -1i);
}

