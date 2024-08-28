struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = select(!arg_1, vec4<bool>(false, true || !(0i == u_input.c), all(!arg_1.zxw), arg_1.x), arg_1);
    let var_1 = u_input.d;
    var var_2 = u_input.b.xy;
    let var_3 = Struct_1(u_input.b.yx);
    let var_4 = ~(~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(var_1 >> (u_input.b % vec4<u32>(32u)), var_1), u_input.d));
    return var_3.a.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-507f - 1615f), _wgslsmith_div_f32(273f, -953f))))) * _wgslsmith_f_op_f32(f32(-1f) * -1197f));
    let var_1 = vec4<bool>(abs(14390i) == _wgslsmith_mod_i32(max(u_input.a.x, 8468i) << (4294967295u % 32u), u_input.c), false, true, !(false == (firstLeadingBit(1u) != (arg_0.x | u_input.b.x))));
    let var_2 = Struct_1(vec2<u32>(func_3(vec2<i32>(-1i, -25561i), vec4<bool>(var_1.x | false, var_1.x | var_1.x, true, !var_1.x)), ~select(u_input.b.x, arg_0.x, !var_1.x)));
    var var_3 = Struct_2(-_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-28642i, u_input.c, u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_i32(u_input.d, u_input.d), true), reverseBits(vec4<i32>(-6033i, 1i, 51554i, u_input.d.x)) >> (vec4<u32>(5998u, arg_0.x, arg_0.x, 111890u) % vec4<u32>(32u)), min(u_input.d, vec4<i32>(u_input.d.x, -21153i, u_input.a.x, u_input.a.x)) & vec4<i32>(u_input.c, 1278i, u_input.d.x, u_input.d.x)), var_2, 50854i, _wgslsmith_sub_i32(-countOneBits(-45068i), -u_input.d.x) >> ((min(arg_0.x, var_2.a.x) << (_wgslsmith_clamp_u32(~var_2.a.x, abs(12712u), ~u_input.b.x) % 32u)) % 32u), -1i);
    let var_4 = u_input.c;
    return Struct_4(-var_3.a, Struct_3(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-661f, -553f))), _wgslsmith_f_op_f32(f32(-1f) * -708f))), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-616f, -413f) + vec2<f32>(840f, -247f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -716f), _wgslsmith_f_op_f32(124f + -1830f)))), var_2, Struct_3(vec2<f32>(-1631f, _wgslsmith_f_op_f32(1356f * _wgslsmith_f_op_f32(step(-794f, 1769f))))));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = -1000f;
    var_0 = -1000f;
    var var_1 = func_2(u_input.b.zww);
    var_1 = Struct_4(u_input.a, func_2(u_input.b.ywy).e, func_2(~(~countOneBits(u_input.b.xzw))).c, func_2(_wgslsmith_sub_vec3_u32(max(u_input.b.zwy, _wgslsmith_add_vec3_u32(u_input.b.wzw, u_input.b.wxx)), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.d.a.x, 50682u, 49695u), u_input.b.xxz))).d, var_1.e);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -532f), -1331f, 1545f, -1606f));
    return all(vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2016f, _wgslsmith_f_op_f32(1432f + 189f), 646f)))));
    let var_2 = vec4<f32>(var_1.x, -779f, -702f, var_1.x);
    var var_3 = select(vec2<u32>(0u, _wgslsmith_clamp_u32(0u, firstTrailingBit(u_input.b.x ^ u_input.b.x), u_input.b.x >> (_wgslsmith_div_u32(u_input.b.x, u_input.b.x) % 32u))), u_input.b.wx, !func_1(_wgslsmith_div_f32(var_2.x, var_1.x)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-999f, 755f, var_2.x), vec3<f32>(1055f, var_1.x, var_1.x), vec3<bool>(false, false, true)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1084f, var_2.x, -275f), var_2.zyy)))) * var_2.zzz);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_1.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x - 1959f))), 990f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(var_2, _wgslsmith_f_op_vec4_f32(-var_2)), u_input.a.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-246f, var_2.x) + _wgslsmith_f_op_f32(abs(var_1.x))), (var_3.x >> (u_input.b.x % 32u)) == ~27364u))), abs(u_input.c));
}

