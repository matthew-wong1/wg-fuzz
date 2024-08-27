struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4) -> f32 {
    var var_0 = Struct_3(~_wgslsmith_mult_vec2_i32(vec2<i32>(~2147483647i, u_input.c.x), _wgslsmith_sub_vec2_i32(~vec2<i32>(arg_1.a.x, arg_1.a.x), u_input.c.yx)), select(firstTrailingBit(vec2<u32>(15636u, u_input.a)) >> (vec2<u32>(arg_1.c.b, abs(u_input.a)) % vec2<u32>(32u)), ~(~(~u_input.b.wx)), arg_1.c.c), Struct_1(abs(firstLeadingBit(1i)), 4294967295u, arg_1.d.c), Struct_1(u_input.c.x ^ arg_1.d.a, 4294967295u, all(select(!vec2<bool>(arg_1.d.c, true), !vec2<bool>(arg_1.d.c, arg_1.c.c), !vec2<bool>(false, arg_1.d.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1213f + _wgslsmith_f_op_f32(arg_0.a.a - -674f))));
    var_0 = arg_1;
    let var_1 = Struct_4(arg_2.a);
    var_0 = arg_1;
    var var_2 = var_0.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(989f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(218f, arg_2.a.a), arg_2.a.a))) + -107f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e - _wgslsmith_f_op_f32(arg_2.a.a - 146f))))));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec4<i32>) -> bool {
    var var_0 = any(!vec2<bool>(arg_2.c.c, any(select(vec4<bool>(arg_2.d.c, arg_2.c.c, arg_2.c.c, true), vec4<bool>(arg_2.d.c, arg_2.d.c, true, false), arg_2.c.c))));
    let var_1 = vec3<bool>(all(select(vec3<bool>(arg_2.d.c, !arg_2.c.c, arg_2.c.c), !(!vec3<bool>(arg_2.c.c, arg_2.d.c, false)), !vec3<bool>(arg_2.c.c, arg_2.d.c, arg_2.c.c))), !arg_2.c.c, !(!(true && arg_2.c.c)));
    var_0 = false;
    var var_2 = vec3<f32>(arg_2.e, -1173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(arg_2.e)), arg_2, Struct_4(Struct_2(arg_2.e))))));
    var_0 = true;
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> i32 {
    var var_0 = vec4<bool>(false, all(vec2<bool>(any(vec4<bool>(true, true, false, true)), !select(true, true, false))), true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(func_2(562f, vec3<i32>(2147483647i, u_input.c.x, u_input.c.x), Struct_3(u_input.c.xy, u_input.b.zx, Struct_1(6266i, u_input.b.x, true), Struct_1(2147483647i, 4294967295u, false), 643f), vec4<i32>(u_input.c.x, -35752i, u_input.c.x, u_input.c.x)), true, false, any(vec3<bool>(true, true, true))), true)));
    var_0 = select(!select(!vec4<bool>(var_0.x, false, true, true), vec4<bool>(func_2(arg_1, vec3<i32>(-2147483647i, -54304i, 16224i), Struct_3(u_input.c.zy, vec2<u32>(u_input.b.x, u_input.a), Struct_1(u_input.c.x, 4294967295u, var_0.x), Struct_1(-20690i, u_input.b.x, false), -867f), vec4<i32>(-9878i, 1i, u_input.c.x, 28280i)), var_0.x, false, var_0.x), vec4<bool>(!var_0.x, all(var_0.wzy), !var_0.x, var_0.x)), vec4<bool>(true, !(!select(true, true, false)), !any(select(vec2<bool>(false, false), vec2<bool>(true, var_0.x), var_0.wy)), func_2(969f, -(~vec3<i32>(2419i, 1i, -1i)), Struct_3(vec2<i32>(54505i, u_input.c.x) >> (u_input.b.yw % vec2<u32>(32u)), vec2<u32>(0u, 0u), Struct_1(0i, arg_0.x, false), Struct_1(u_input.c.x, 1u, true), _wgslsmith_f_op_f32(-1590f + arg_1)), vec4<i32>(-u_input.c.x, 2790i ^ u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x), _wgslsmith_add_i32(u_input.c.x, u_input.c.x)))), all(select(!vec3<bool>(false, var_0.x, true), !var_0.wxy, !(!var_0.yzy))));
    var var_1 = Struct_4(Struct_2(arg_1));
    var_0 = select(vec4<bool>(true, !(var_0.x || var_0.x), any(!var_0.yyw), true && !var_0.x), vec4<bool>(!(select(false, var_0.x, var_0.x) == (arg_1 < var_1.a.a)), !select(true, all(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), true), true, select(var_0.x, true, (u_input.b.x << (arg_0.x % 32u)) < ~0u)), !select(vec4<bool>(false, any(var_0.zyy), true, false), !vec4<bool>(var_0.x, true, false, false), !select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), false)));
    let var_2 = Struct_1(u_input.c.x, 1u, all(select(var_0.xw, vec2<bool>(var_0.x, var_0.x), !(!var_0.x))));
    return ~_wgslsmith_div_i32(max(-28128i, 32928i), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, 1u, 41266u), min(u_input.b.xyx, _wgslsmith_div_vec3_u32(u_input.b.xzw, vec3<u32>(12012u, u_input.a, 55020u))), _wgslsmith_mod_vec3_u32(firstLeadingBit(u_input.b.yxz), ~u_input.b.yzx)), -650f), select(abs(25527u), 1u, all(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), !select(true, any(vec3<bool>(false, false, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))));
    let var_1 = var_0.c;
    let var_2 = _wgslsmith_div_vec4_i32(-u_input.c << (u_input.b % vec4<u32>(32u)), u_input.c) ^ (vec4<i32>(-var_0.a & 1i, -1i, -1i, countOneBits(u_input.c.x)) & -vec4<i32>(2147483647i & u_input.c.x, _wgslsmith_mult_i32(1i, -2147483647i), u_input.c.x | u_input.c.x, var_0.a | var_0.a));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1130f, 2023f, -1380f), vec3<f32>(-977f, -874f, 418f), false)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(778f, -1000f, -1000f) * vec3<f32>(-1709f, -292f, -228f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(681f, 1353f, 257f) + vec3<f32>(-731f, -274f, 326f))))));
    var_3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, var_3.x))), var_3.x, var_3.x)));
    var var_4 = Struct_1(12123i, ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.zw | vec2<u32>(80879u, u_input.a)), ~4294967295u & u_input.b.x), func_2(_wgslsmith_f_op_f32(-424f - -1497f), var_2.zzz, Struct_3(select(u_input.c.xx, abs(var_2.yw), !vec2<bool>(var_0.c, false)), u_input.b.wy << (~vec2<u32>(101877u, var_0.b) % vec2<u32>(32u)), var_0, var_0, var_3.x), var_2));
    var var_5 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + -476f), var_3.x))), abs(-var_2), firstLeadingBit(u_input.c.wx), var_0.b, _wgslsmith_mult_vec3_i32(select(u_input.c.zww, select(var_2.zwx, ~vec3<i32>(-1i, 8525i, var_4.a), select(vec3<bool>(var_0.c, true, false), vec3<bool>(var_0.c, var_0.c, var_1), vec3<bool>(true, var_1, var_4.c))), true), var_2.xxy));
}

