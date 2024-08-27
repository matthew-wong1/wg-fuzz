struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-438f, -1112f, 804f, 173f), -133f, true, vec3<bool>(false, true, true));

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<f32>(1106f, -1239f, -350f, -1072f), -618f, false, vec3<bool>(false, false, false)), Struct_1(vec4<f32>(719f, -965f, 980f, 2083f), 1740f, true, vec3<bool>(false, false, false)), Struct_1(vec4<f32>(-205f, 978f, 372f, 406f), 706f, true, vec3<bool>(false, true, false)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~_wgslsmith_clamp_u32(~max(u_input.a, 4294967295u), u_input.a, 25587u)), 3u)];
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1508f, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, global0.b))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(102f, -615f, 345f) - _wgslsmith_f_op_vec3_f32(round(global0.a.xyz))), vec3<f32>(_wgslsmith_f_op_f32(-global0.b), 448f, 324f), global0.d))));
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(322f * 280f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -355f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -238f) - _wgslsmith_f_op_f32(f32(-1f) * -757f)))), global0.a.x, _wgslsmith_f_op_f32(-855f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -296f), global0.c, select(vec3<bool>(true, global0.c, global0.d.x), global0.d, !(true & global0.d.x)));
    global1 = array<Struct_1, 3>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.a, vec4<f32>(-868f, 1000f, -675f, var_0.x)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b, 559f, -879f, global0.a.x))))) + global0.a), vec4<bool>(global0.d.x, true, true, global0.c))), global0.b, false, !(!(!(!vec3<bool>(global0.c, global0.c, true)))));
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 9294u, 0u, 1u) >> (~vec4<u32>(13092u, u_input.a, 0u, u_input.a) % vec4<u32>(32u))), firstLeadingBit(~(~vec4<u32>(u_input.a, u_input.a, 150u, u_input.a)))), ~_wgslsmith_mod_u32(~u_input.a, u_input.a | ~u_input.a));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 40798u), vec2<u32>(u_input.a, 8018u)) >> (firstTrailingBit(vec2<u32>(42146u, u_input.a)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 30297u), vec2<u32>(35116u, 0u)), ~vec2<u32>(52434u, u_input.a))), vec2<u32>(4294967295u, countOneBits(u_input.a))));
    let var_1 = Struct_3(!global0.c, arg_0);
    var var_2 = Struct_1(var_1.b.a, arg_0.b, arg_0.d.x, arg_0.d);
    var var_3 = global0.c;
    var var_4 = Struct_1(arg_0.a, _wgslsmith_div_f32(arg_0.b, arg_0.a.x), ~(~func_3()) == var_0.a.x, select(select(vec3<bool>(var_2.c, false, !var_1.a), !select(var_2.d, vec3<bool>(true, var_2.d.x, false), var_1.b.d), !select(var_1.b.d, var_1.b.d, arg_0.d)), vec3<bool>(any(select(arg_0.d.zz, var_2.d.yy, vec2<bool>(var_2.c, true))), u_input.a != ~3041u, any(vec3<bool>(global0.d.x, false, arg_0.c)) != var_1.a), select(false, !var_2.d.x && all(var_2.d), var_0.a.x <= u_input.a)));
    return _wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(43270u, 33036u, var_0.a.x), vec3<u32>(var_0.a.x, var_0.a.x, u_input.a)), 0u, countOneBits(u_input.a)), abs(vec4<u32>(1u, var_0.a.x, var_0.a.x, 1u)))), (~min(vec4<u32>(0u, 63053u, var_0.a.x, u_input.a), vec4<u32>(1u, var_0.a.x, var_0.a.x, var_0.a.x)) & vec4<u32>(u_input.a, firstLeadingBit(u_input.a), 0u, ~var_0.a.x)) << (~vec4<u32>(u_input.a, ~u_input.a, 1u, u_input.a) % vec4<u32>(32u)), vec4<u32>(4294967295u, var_0.a.x, _wgslsmith_sub_u32(~u_input.a, u_input.a) | u_input.a, ~_wgslsmith_add_u32(max(var_0.a.x, var_0.a.x), ~u_input.a)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>) -> StorageBuffer {
    let var_0 = all(arg_0.yz);
    var var_1 = firstLeadingBit(abs(countOneBits(func_2(Struct_1(vec4<f32>(global0.a.x, arg_1.x, global0.a.x, -820f), arg_1.x, var_0, vec3<bool>(global0.d.x, global0.d.x, false))) & (vec4<u32>(4294967295u, 20769u, u_input.a, 17448u) ^ vec4<u32>(1u, u_input.a, u_input.a, 0u)))));
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    var var_2 = vec4<u32>(4294967295u, u_input.a, ~(~(~13929u) >> (0u % 32u)), 35084u);
    return StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b))))), vec3<i32>(countOneBits(_wgslsmith_div_i32(countOneBits(11198i), 2147483647i & u_input.b)), _wgslsmith_div_i32(min(~u_input.b, i32(-1i) * -2147483647i), select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, -1i, u_input.b), vec4<i32>(-2147483647i, 1i, u_input.d, 13585i)), u_input.d, true)), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 3u)];
    let var_1 = ~u_input.c;
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1, u_input.c, u_input.b, var_1) & -vec4<i32>(-2147483647i, -1i, -17571i, 51716i), ~vec4<i32>(-1i, 1460i, u_input.b, 30633i), true), _wgslsmith_sub_vec4_i32(vec4<i32>(~var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(18774i, u_input.b)), ~u_input.d, 1i), vec4<i32>(-19536i, var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(var_1, var_1)), ~var_1))), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(var_1, u_input.d, var_1)), -select(firstLeadingBit(vec3<i32>(47524i, 45112i, 1i)), firstTrailingBit(vec3<i32>(var_1, -24899i, var_1)), var_0.d)), firstLeadingBit(~var_1));
    var var_3 = Struct_2(~(~vec2<u32>(23210u, u_input.a)));
    let x = u_input.a;
    s_output = func_1(vec4<bool>(any(!var_0.d.zy), (_wgslsmith_f_op_f32(global0.a.x * global0.b) < _wgslsmith_f_op_f32(sign(var_0.a.x))) & all(select(global0.d.zx, vec2<bool>(true, true), var_0.d.yx)), false, all(!global0.d)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.a.x, global0.a.x, 232f))))));
}

