struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 12u)];
    global0 = array<Struct_1, 12>();
    let var_1 = ~(-14921i);
    let var_2 = var_0.c;
    global0 = array<Struct_1, 12>();
    return ~(~(-(var_0.a << (u_input.c.x % 32u)) | 32107i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    return vec2<bool>(true, !(false && (-33059i != arg_2.a)) || (any(vec4<bool>(true, true, true, true)) || true));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: bool) -> vec2<u32> {
    let var_0 = Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-772f, 376f)), 1f, _wgslsmith_f_op_f32(step(-413f, -559f)), 942f) * vec4<f32>(436f, -1885f, _wgslsmith_f_op_f32(step(-261f, -342f)), -127f))), vec2<i32>(arg_0, -(~arg_0) >> (u_input.c.x % 32u)));
    let var_1 = 20295i;
    global0 = array<Struct_1, 12>();
    let var_2 = global0[_wgslsmith_index_u32(28016u << (~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(43138u, u_input.c.x, 0u, u_input.c.x), vec4<u32>(21867u, 17243u, u_input.c.x, 82132u) ^ vec4<u32>(u_input.c.x, 29240u, 4294967295u, 1u)), vec4<u32>(u_input.c.x ^ u_input.c.x, u_input.c.x, 32068u, countOneBits(1u))) % 32u), 12u)];
    var var_3 = min(u_input.b, abs(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_div_i32(0i, -19431i))));
    return u_input.c.zx | u_input.c.xz;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> i32 {
    global0 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x >> (108990u % 32u), ~4294967295u, abs(u_input.c.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c.x, abs(u_input.c.x)), reverseBits(_wgslsmith_div_u32(u_input.c.x, 44527u)))), ~max(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(48658u, u_input.c.x, 4294967295u, u_input.c.x)), ~vec4<u32>(u_input.c.x, 2709u, u_input.c.x, u_input.c.x)), select(~vec4<u32>(4294967295u, u_input.c.x, 0u, 0u), vec4<u32>(u_input.c.x, 0u, 21842u, 0u), vec4<bool>(true, true, true, true))));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(20198u, ~(~4294967295u)) ^ vec2<u32>(4294967295u, ~max(u_input.c.x, u_input.c.x)), firstLeadingBit(var_0.zx), ~(~func_4(func_2(), func_3(Struct_1(var_1.a, var_1.b, vec2<i32>(arg_0, 1i)), global0[_wgslsmith_index_u32(u_input.c.x, 12u)], Struct_1(u_input.b, arg_1.b, u_input.a.yz), arg_1), true)));
    let var_3 = _wgslsmith_mult_vec3_i32(u_input.a.wyz, abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, arg_1.a, 2147483647i), ~u_input.a.wzz)) ^ ~_wgslsmith_add_vec3_i32(u_input.a.yxw, u_input.a.zzw | u_input.a.yzy));
    return -(~(~21642i ^ arg_1.c.x) >> (_wgslsmith_clamp_u32(var_0.x, min(var_0.x, ~var_0.x), var_0.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(150f, -1000f))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1721f, 658f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-943f + 2072f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(910f - -1489f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(302f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(841f * -255f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(811f * 1953f))))));
    global0 = array<Struct_1, 12>();
    var var_1 = ~(~func_1(~u_input.b, global0[_wgslsmith_index_u32(~(~4294967295u), 12u)]));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1096f, 684f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(529f, 455f, -562f))))))));
    var var_2 = u_input.a.yw << (u_input.c.yx % vec2<u32>(32u));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1051f, -1411f) * vec3<f32>(-1249f, -281f, 1151f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1000f, 1738f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(-145f, -794f, 359f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(~59688u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 6588u, 1u, 17810u), vec4<u32>(1u, u_input.c.x, 81586u, u_input.c.x)), u_input.c.x, 30573u), max(select(vec4<u32>(u_input.c.x, 13791u, 12069u, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), false), max(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 0u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u)))) ^ vec4<u32>(u_input.c.x, ~31560u, ~42155u, ~u_input.c.x));
}

