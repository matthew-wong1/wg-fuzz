struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(Struct_2(abs(vec2<u32>(1u, 1u)), Struct_1(vec4<f32>(919f, -448f, -1043f, 241f), vec3<u32>(1u, 1u, 1u), 0u >> (1u % 32u), _wgslsmith_div_vec3_i32(vec3<i32>(12584i, u_input.b, u_input.a), ~vec3<i32>(u_input.c, u_input.c, 2147483647i)))), u_input.c, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(759f - 1162f), -634f, true)))), select(_wgslsmith_clamp_u32(4294967295u, 0u, abs(0u)) | _wgslsmith_mult_u32(~42866u, ~4294967295u), 26827u, true));
    var var_1 = Struct_3(var_0.a, u_input.b, -811f, var_0.a.b.c);
    let var_2 = 1060f;
    var_1 = var_0;
    var var_3 = var_0;
    return firstTrailingBit(12691i);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec2<i32>) -> vec2<u32> {
    var var_0 = !vec4<bool>(true, true, arg_1.x, select(all(vec3<bool>(arg_1.x, arg_1.x, true)), any(vec2<bool>(true, arg_1.x)), false) && any(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)));
    var_0 = !vec4<bool>(true || !var_0.x, var_0.x, true, !(_wgslsmith_f_op_f32(min(arg_2.a.b.a.x, -845f)) > _wgslsmith_f_op_f32(step(arg_2.a.b.a.x, -1000f))));
    let var_1 = !(!(!vec2<bool>(false, !var_0.x)));
    var_0 = select(vec4<bool>(var_1.x, var_0.x, !(arg_1.x | arg_1.x), true), select(vec4<bool>(var_0.x, any(select(arg_1.yx, var_1, var_1.x)), !(-21292i > arg_3.x), var_0.x || false), !vec4<bool>(var_0.x, true, u_input.a > arg_3.x, false), false), arg_1.x);
    let var_2 = vec2<u32>(~(~select(29289u, 67743u, true) ^ arg_0), arg_2.a.a.x);
    return ~(~_wgslsmith_mult_vec2_u32(~arg_2.a.b.b.zy ^ select(arg_2.a.a, var_2, false), reverseBits(vec2<u32>(1u, 21664u)) ^ vec2<u32>(arg_2.d, 1u)));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_2(func_4(~12750u, vec3<bool>(select(false, false, any(vec3<bool>(false, true, false))), false, true), Struct_3(Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(5835u, 13178u), vec2<u32>(66681u, 8167u)), Struct_1(vec4<f32>(1033f, 143f, 1277f, -643f), vec3<u32>(5709u, 4294967295u, 48574u), 30612u, vec3<i32>(-5192i, 2147483647i, u_input.c))), -31323i, _wgslsmith_f_op_f32(-730f * 211f), 1u), reverseBits(vec2<i32>(max(u_input.c, 2147483647i), func_3()))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(588f, 707f, -2110f, 790f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1452f, 2572f, 1201f, -1014f)))), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(abs(1u), func_4(31196u, vec3<bool>(true, false, false), Struct_3(Struct_2(vec2<u32>(71126u, 45868u), Struct_1(vec4<f32>(942f, 402f, -2458f, 707f), vec3<u32>(1u, 1u, 4294967295u), 65704u, vec3<i32>(-51440i, -7227i, u_input.a))), u_input.a, -1279f, 4294967295u), vec2<i32>(-57244i, u_input.c)).x, firstLeadingBit(1u)), vec3<bool>(false, u_input.c <= 1i, true)), ~reverseBits(65170u) ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(34786u, 4294967295u, 44219u), vec3<u32>(4294967295u, 1u, 16607u)) | 57458u), _wgslsmith_div_vec3_i32(abs(-vec3<i32>(-28215i, 9201i, u_input.a)), ~vec3<i32>(u_input.b, 32430i, 1i) & reverseBits(vec3<i32>(u_input.b, u_input.c, u_input.a)))));
    var_0 = Struct_2(_wgslsmith_mult_vec2_u32(var_0.a & ~firstTrailingBit(var_0.a), vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(var_0.b.b.x), var_0.a.x), 20720u)), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.b.a), ~(~vec3<u32>(var_0.a.x, 0u, 74497u)), 66467u, abs(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.d.x, -83707i, u_input.c), vec3<i32>(u_input.b, 1i, var_0.b.d.x)))));
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1100f, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), var_0.b.a)))), ~(~_wgslsmith_mult_vec3_u32(var_0.b.b, var_0.b.b)), 1u, -vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.b.d, vec3<i32>(23249i, 47582i, 0i)), 20273i, firstLeadingBit(3704i))));
    let var_1 = vec3<i32>(~(-42284i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), ~var_0.b.d.zy), u_input.b), var_0.b.d.x) ^ vec3<i32>(max(0i, firstLeadingBit(23885i)) >> (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.a.x, 37084u, 13023u, var_0.a.x)), vec4<u32>(var_0.a.x, var_0.b.b.x, 0u, var_0.b.c) | vec4<u32>(var_0.b.b.x, 25631u, 17340u, var_0.b.b.x)) % 32u), ~max(41588i, ~30395i), ~(~_wgslsmith_div_i32(u_input.a, var_0.b.d.x)));
    let var_2 = _wgslsmith_f_op_f32(1579f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(427f - var_0.b.a.x)))))));
    return vec2<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.a.x))))) * -434f));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_1 = Struct_3(Struct_2(min(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), ~(~vec2<u32>(16919u, 1u))), Struct_1(vec4<f32>(1534f, _wgslsmith_f_op_f32(sign(920f)), -2372f, var_0.x), vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_u32(4294967295u, firstLeadingBit(1u)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, arg_1, u_input.b), vec3<i32>(31733i, u_input.b, -51334i)))), arg_0.x ^ arg_1, -1463f, _wgslsmith_div_u32(min(~(~50625u), min(reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(39124u, 0u), vec2<u32>(22039u, 0u)))), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 61567u)), vec4<u32>(~72357u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 20808u, 31762u), vec4<u32>(16141u, 1u, 489u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(70882u, 34966u), vec2<u32>(1u, 34189u))))));
    let var_2 = arg_0.yy;
    var var_3 = ~(~(vec2<i32>(var_1.b, ~1i) | ~max(var_2, vec2<i32>(var_1.b, 0i))));
    var var_4 = (~arg_0.zx | min(~(-vec2<i32>(2265i, var_1.b)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.c), vec2<i32>(2147483647i, u_input.a)), -12367i ^ u_input.c))) ^ vec2<i32>(countOneBits(var_2.x), -2147483647i);
    return var_1.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = !select(!vec2<bool>(true, all(vec4<bool>(false, true, false, true))), vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false)), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(false, false), true)));
    var var_1 = !(!any(vec2<bool>(true, !var_0.x)));
    var_0 = !(!(!vec2<bool>(var_0.x, arg_1.x > arg_2.a.x)));
    var_1 = !(any(vec2<bool>(true, true)) || (reverseBits(-14650i | u_input.a) == -select(1i, arg_0.b, false)));
    var var_2 = arg_0;
    return Struct_4(_wgslsmith_f_op_f32(exp2(arg_2.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a.b.a.zxw), arg_2.a.yxw), _wgslsmith_f_op_vec3_f32(trunc(var_2.a.b.a.zwz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(func_1(vec3<i32>(~u_input.c, -15900i, -4353i), -2147483647i), _wgslsmith_div_i32(u_input.c, u_input.b), -1241f, min(1u, 61146u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1506f, _wgslsmith_f_op_f32(142f - 1461f), 1480f))), func_1(vec3<i32>(-2147483647i, min(0i, u_input.b), _wgslsmith_clamp_i32(u_input.c, -1i, 1i)) << (vec3<u32>(_wgslsmith_sub_u32(0u, 0u), 95294u, ~4294967295u) % vec3<u32>(32u)), -8237i).b, func_4(~1u, !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), false), Struct_3(func_1(vec3<i32>(-2147483647i, u_input.b, 1i), abs(21045i)), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f) * _wgslsmith_f_op_f32(ceil(1096f))), 60576u), -(abs(vec2<i32>(u_input.a, u_input.c)) ^ (vec2<i32>(u_input.b, 1i) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a)), -288f, var_0.a, var_0.b.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.b.x, -359f, var_0.a)))));
}

