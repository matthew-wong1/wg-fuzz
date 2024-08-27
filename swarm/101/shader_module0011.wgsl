struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b * 384f)));
    let var_1 = u_input.b & u_input.b;
    let var_2 = Struct_1(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.b))), firstLeadingBit(arg_2.c), arg_2.d);
    global0 = array<i32, 17>();
    let var_3 = Struct_1(~_wgslsmith_clamp_u32(0u, 4294967295u | arg_0.x, ~67103u) != var_2.d.x, _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(max(413f, _wgslsmith_f_op_f32(step(660f, -520f))))), select(max(~max(var_2.c, vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(arg_0.x, 17u)], 38466i, 2147483647i)), u_input.a), vec4<i32>(0i, arg_2.c.x, -46016i, -u_input.b), vec4<bool>(arg_0.x <= ~45112u, true, all(vec3<bool>(true, var_2.a, var_2.a)), any(vec4<bool>(true, true, true, true)))), ~vec2<u32>(arg_2.d.x, _wgslsmith_div_u32(0u, u_input.c.x)));
    return ~var_3.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: f32, arg_3: vec4<i32>) -> vec4<bool> {
    var var_0 = Struct_1(true, arg_1, max(arg_3, ~(~func_3(vec4<u32>(u_input.d, u_input.d, u_input.c.x, u_input.c.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), Struct_1(arg_0.x, arg_2, vec4<i32>(u_input.b, arg_3.x, -2147483647i, u_input.b), u_input.c.zy)))), firstTrailingBit(vec2<u32>(u_input.d, u_input.c.x) >> ((vec2<u32>(u_input.d, u_input.c.x) >> (u_input.c.wy % vec2<u32>(32u))) % vec2<u32>(32u))) << (vec2<u32>(38273u, 12051u) % vec2<u32>(32u)));
    var var_1 = var_0.b;
    var_0 = Struct_1(var_0.a, 2044f, vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a.xwx >> (~vec3<u32>(1u, u_input.d, 57631u) % vec3<u32>(32u)), firstTrailingBit(reverseBits(vec3<i32>(-1i, 15005i, 2147483647i)))), ~max(-1i, -1i), -16796i, min(countOneBits(~arg_3.x), func_3(vec4<u32>(u_input.c.x, 14237u, u_input.d, var_0.d.x), select(vec4<bool>(var_0.a, arg_0.x, var_0.a, true), vec4<bool>(var_0.a, arg_0.x, arg_0.x, var_0.a), arg_0.x), Struct_1(arg_0.x, -1000f, u_input.a, var_0.d)).x)), u_input.c.zx);
    var var_2 = -var_0.c.yww;
    let var_3 = arg_0.xy;
    return vec4<bool>(all(var_3), any(select(vec4<bool>(true, var_0.a, true, false), select(!vec4<bool>(arg_0.x, var_0.a, var_3.x, false), !vec4<bool>(var_3.x, true, true, var_3.x), true && var_0.a), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, arg_0.x, var_0.a), vec4<bool>(var_3.x, false, var_3.x, false)))), var_0.d.x >= ~(max(0u, var_0.d.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(32493u, var_0.d.x), var_0.d) % 32u)), any(select(select(!arg_0.yy, var_3, !arg_0.x), select(select(var_3, var_3, var_0.a), select(vec2<bool>(var_3.x, arg_0.x), vec2<bool>(var_3.x, true), vec2<bool>(var_3.x, arg_0.x)), vec2<bool>(false, true)), vec2<bool>(arg_0.x, false))));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-339f)) - 1277f);
    let var_1 = u_input.c.yzx;
    global0 = array<i32, 17>();
    let var_2 = firstTrailingBit(vec4<u32>(4294967295u, ~_wgslsmith_clamp_u32(u_input.c.x, 48724u, var_1.x) << (13797u % 32u), var_1.x ^ u_input.d, min(976u, firstLeadingBit(arg_0.d.x))));
    var var_3 = func_2(!vec3<bool>(!select(true, true, true), any(vec4<bool>(arg_0.a, true, arg_0.a, false)), true), -954f, arg_0.b, ~_wgslsmith_add_vec4_i32(-u_input.a, select(u_input.a << (var_2 % vec4<u32>(32u)), -vec4<i32>(arg_0.c.x, -32827i, 1i, u_input.b), !vec4<bool>(false, true, arg_0.a, arg_0.a))));
    return select(!func_2(var_3.zyy, _wgslsmith_f_op_f32(step(-433f, var_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(2203f)), _wgslsmith_f_op_f32(step(var_0, 161f)))), _wgslsmith_div_vec4_i32(arg_0.c, vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(var_1.x, 17u)], 10008i, -2147483647i)) ^ (arg_0.c << (u_input.c % vec4<u32>(32u)))), select(vec4<bool>(-7943i <= u_input.a.x, false, true, true), select(!vec4<bool>(arg_0.a, var_3.x, true, false), !vec4<bool>(false, arg_0.a, arg_0.a, var_3.x), !(!vec4<bool>(arg_0.a, arg_0.a, false, false))), all(!(!vec4<bool>(var_3.x, true, var_3.x, arg_0.a)))), select(arg_0.a, !(12621i >= arg_0.c.x), !(!arg_0.a || all(vec2<bool>(var_3.x, arg_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 80087u;
    var var_1 = vec3<bool>(any(vec2<bool>(true, true)), select(any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), any(vec3<bool>(true, true, true)), !select(false, select(false, true, false), true)), (var_0 <= _wgslsmith_add_u32(7175u, 1u)) && false);
    var var_2 = !vec3<bool>(any(func_1(Struct_1(false, -402f, u_input.a, u_input.c.wz))), select(var_1.x, var_1.x, all(!vec3<bool>(false, var_1.x, var_1.x))), var_1.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-164f, -1389f, 1617f, -1317f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-3246f, 1218f, -1362f, 3031f) * vec4<f32>(1445f, 523f, 342f, -166f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-365f, _wgslsmith_f_op_f32(-985f - 572f), _wgslsmith_f_op_f32(ceil(-1075f)), _wgslsmith_f_op_f32(f32(-1f) * -596f)))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1550f)) - _wgslsmith_f_op_f32(f32(-1f) * -1457f)))) * var_3.x);
    let var_5 = Struct_1(~(~var_0 | select(0u, var_0, false)) > 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1440f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.x + var_3.x))))), _wgslsmith_add_vec4_i32(u_input.a, ~(u_input.a & vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)], u_input.b, 2147483647i))), firstTrailingBit(vec2<u32>(max(u_input.d | 59420u, _wgslsmith_div_u32(u_input.d, 17877u)), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(-21633i, var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_5.b))), var_5.b)), var_5.d.x);
}

