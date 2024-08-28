struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global0 = false;
    global0 = arg_0.x;
    global0 = false;
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = Struct_4(max(-1i, -53126i));
    return -_wgslsmith_mod_i32(var_1.a, var_1.a);
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: u32, arg_3: i32) -> i32 {
    global0 = all(!arg_0);
    var var_0 = ~0u;
    var_0 = min(67828u, reverseBits(u_input.b.x));
    var var_1 = Struct_4(~firstLeadingBit(~firstTrailingBit(arg_3)));
    var var_2 = reverseBits(_wgslsmith_mod_vec2_i32(~vec2<i32>(-26130i, arg_3), vec2<i32>(2885i, 2147483647i) >> (vec2<u32>(u_input.b.x, 18370u) % vec2<u32>(32u)))) << (_wgslsmith_div_vec2_u32(abs(u_input.b.zx) & (abs(vec2<u32>(u_input.a, 4294967295u)) >> (u_input.b.yy % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 6505u) ^ u_input.b.xy, select(vec2<u32>(30108u, arg_2), u_input.b.zy ^ vec2<u32>(27683u, u_input.a), select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, false), arg_0.zz)))) % vec2<u32>(32u));
    return -select(_wgslsmith_div_i32(16703i, var_1.a), abs(i32(-1i) * -36948i), false);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_4) -> vec3<i32> {
    var var_0 = _wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.b), ~u_input.b);
    let var_1 = min(select(select(vec4<i32>(-7978i, 53561i, arg_3.a, 2147483647i) ^ abs(vec4<i32>(arg_1.x, arg_3.a, arg_3.a, 48858i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -3644i, 33740i, arg_3.a), ~vec4<i32>(42468i, 34572i, arg_1.x, -2147483647i)), all(vec4<bool>(true, false, true, false))), vec4<i32>(arg_1.x, 8640i >> (u_input.a % 32u), arg_3.a, -2147483647i), arg_0.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) * -1842f)), max(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, arg_3.a, 23768i, arg_1.x) | vec4<i32>(arg_3.a, 11025i, arg_3.a, arg_3.a), _wgslsmith_add_vec4_i32(vec4<i32>(-22417i, 1i, 17746i, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -1i))) << (vec4<u32>(u_input.a, ~u_input.b.x, 0u, ~u_input.a) % vec4<u32>(32u)), select(abs(vec4<i32>(24484i, arg_3.a, arg_1.x, arg_1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.a, arg_1.x, -1i, -5333i), vec4<i32>(arg_1.x, -10225i, -2147483647i, arg_1.x), vec4<i32>(arg_3.a, arg_3.a, arg_1.x, arg_3.a)), false) & _wgslsmith_div_vec4_i32(abs(vec4<i32>(arg_3.a, -2147483647i, arg_1.x, 1i)), vec4<i32>(-22058i, -1i, -46633i, -29660i) >> (u_input.b % vec4<u32>(32u)))));
    var_0 = ~19118u;
    var var_2 = Struct_3(-_wgslsmith_mod_i32(arg_3.a, firstLeadingBit(_wgslsmith_clamp_i32(-1i, arg_3.a, arg_1.x))), max(32375u ^ ~u_input.b.x, _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(11537u, 84103u)), firstLeadingBit(max(u_input.b.xz, vec2<u32>(u_input.b.x, 27394u))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(trunc(arg_0.x)))) + arg_2);
    return select(arg_1, var_1.ywz, vec3<bool>(any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), false, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = countOneBits(~reverseBits(~(u_input.b.xxz ^ vec3<u32>(u_input.b.x, u_input.b.x, 0u))));
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(-88783i, _wgslsmith_sub_i32(func_1(vec4<bool>(true, false, true, false), Struct_2(var_0.x, 1u), Struct_1(true)), func_2(vec4<bool>(false, true, true, true), -938f, var_1.x, 2147483647i)), 1i) | vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(countOneBits(func_3(vec3<f32>(1f, 1f, 1f), ~vec3<i32>(1i, 1i, 1i), 244f, Struct_4(-1i))), abs(vec3<i32>(-1i) * -vec3<i32>(15810i, 60925i, 1i))));
    let var_3 = var_0.yxz << (reverseBits(var_1) % vec3<u32>(32u));
    let var_4 = Struct_4(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1135f, 483f, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-718f)), -542f)) - -1290f))), 68547u);
}

