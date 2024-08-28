struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = u_input.b & 0u;
    let var_1 = vec2<i32>(u_input.c, _wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(-41756i, 2147483647i, u_input.c)), ~(~vec3<i32>(11162i, -5563i, 2147483647i))));
    var var_2 = reverseBits(_wgslsmith_clamp_i32(0i, u_input.c, 1i) << ((54545u >> (0u % 32u)) % 32u));
    var var_3 = Struct_1(~vec4<i32>(var_1.x, _wgslsmith_mod_i32(var_1.x, u_input.c), abs(u_input.c), _wgslsmith_sub_i32(40069i, reverseBits(-18315i))), vec2<bool>(!select(var_0 > var_0, all(vec4<bool>(true, false, false, false)), false), true));
    var var_4 = Struct_1(select(var_3.a, (abs(vec4<i32>(var_1.x, var_1.x, 0i, -1i)) & var_3.a) << (vec4<u32>(44903u, select(4294967295u, 4294967295u, var_3.b.x), _wgslsmith_mod_u32(19061u, var_0), 14396u) % vec4<u32>(32u)), true && any(select(vec3<bool>(var_3.b.x, false, var_3.b.x), vec3<bool>(var_3.b.x, var_3.b.x, true), vec3<bool>(var_3.b.x, true, false)))), var_3.b);
    return vec4<i32>(-_wgslsmith_mult_i32(~var_1.x, -var_3.a.x ^ var_3.a.x), ~1i, 0i, firstTrailingBit(var_3.a.x));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(arg_1.b.a, vec2<bool>(arg_1.b.b.x, true));
    var var_1 = Struct_2(Struct_1(firstTrailingBit(func_3()), select(vec2<bool>(arg_1.a.b.x, false), select(!var_0.b, vec2<bool>(arg_1.a.b.x, true), false), select(select(vec2<bool>(false, arg_1.a.b.x), vec2<bool>(false, var_0.b.x), arg_1.a.b.x), vec2<bool>(false, false), !vec2<bool>(arg_1.a.b.x, var_0.b.x)))), Struct_1(min(vec4<i32>(2147483647i, _wgslsmith_clamp_i32(-1i, 2147483647i, 30730i), _wgslsmith_sub_i32(u_input.c, 49651i), min(arg_1.b.a.x, 1i)), vec4<i32>(arg_0, 0i, -1i & arg_0, var_0.a.x & 18889i)), arg_1.b.b), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(238f)) - _wgslsmith_div_f32(-281f, arg_1.c.x)), _wgslsmith_f_op_f32(arg_1.e - _wgslsmith_f_op_f32(f32(-1f) * -1089f))))), reverseBits(arg_0 ^ (i32(-1i) * -1i)), -878f);
    let var_2 = -1i;
    var_1 = arg_1;
    var var_3 = Struct_2(Struct_1(-func_3(), select(vec2<bool>(true, 1u < u_input.a), vec2<bool>(arg_1.b.b.x, !var_0.b.x), ~0u != ~u_input.a)), var_0, _wgslsmith_div_vec2_f32(var_1.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(763f, 709f) - vec2<f32>(var_1.c.x, 1536f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(870f, var_1.c.x) + vec2<f32>(-1109f, 1000f)), var_1.a.b))))), ~1i, arg_1.e);
    return (1i ^ _wgslsmith_dot_vec3_i32(abs(func_3().zyz), _wgslsmith_add_vec3_i32(var_0.a.zxw, vec3<i32>(46774i, var_2, 2147483647i)))) << (_wgslsmith_dot_vec2_u32(vec2<u32>(max(62639u, 0u), 4294967295u << (max(4294967295u, u_input.b) % 32u)), abs(vec2<u32>(0u, 15755u)) >> (~firstTrailingBit(vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))) % 32u);
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(-28420i, abs(u_input.c & -39984i), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, -2147483647i))), u_input.c), firstLeadingBit(vec4<i32>(u_input.c | u_input.c, 4670i, u_input.c, abs(-1i))), vec4<i32>(_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(0i, u_input.c, 0i), -9765i | u_input.c), firstLeadingBit(_wgslsmith_clamp_i32(-u_input.c, ~u_input.c, u_input.c)), _wgslsmith_add_i32(-u_input.c, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.c, u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -1i, u_input.c), vec3<i32>(u_input.c, -1i, 9097i)), func_2(2147483647i, Struct_2(Struct_1(vec4<i32>(u_input.c, 2147483647i, u_input.c, 40524i), vec2<bool>(true, true)), Struct_1(vec4<i32>(-20506i, -2147483647i, u_input.c, u_input.c), vec2<bool>(true, false)), vec2<f32>(1347f, 356f), u_input.c, 548f)))), ~(-u_input.c) | (~3286i >> (u_input.b % 32u))));
    var var_1 = Struct_1(-vec4<i32>(-(var_0.x >> (u_input.a % 32u)), 37799i ^ _wgslsmith_dot_vec3_i32(var_0.yzx, var_0.yyw), i32(-1i) * -1i, 0i), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, true))), vec2<bool>(true, true)), select(vec2<bool>(all(vec4<bool>(false, false, true, false)), true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var_1 = Struct_1(vec4<i32>(-(~0i), max(func_2(u_input.c, Struct_2(Struct_1(var_1.a, vec2<bool>(var_1.b.x, var_1.b.x)), Struct_1(var_1.a, vec2<bool>(var_1.b.x, true)), vec2<f32>(-597f, -1036f), 1i, 355f)), -1i & u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-53442i, var_1.a.x, var_0.x), var_0.zzz), -2147483647i) ^ vec4<i32>(~(i32(-1i) * -2147483647i), func_3().x, reverseBits(var_0.x), var_0.x | -28597i), select(vec2<bool>(true, true), var_1.b, true));
    var var_2 = Struct_2(Struct_1(var_1.a, select(!var_1.b, select(vec2<bool>(true, true), !var_1.b, true), var_1.b.x)), Struct_1(vec4<i32>(-16273i, select(_wgslsmith_mod_i32(0i, -17909i), -var_1.a.x, true), (var_0.x & u_input.c) | -34366i, var_0.x), var_1.b), vec2<f32>(_wgslsmith_f_op_f32(step(793f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-684f)) * _wgslsmith_f_op_f32(trunc(1356f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1457f))), -822f)), -1i, 800f);
    var_2 = Struct_2(var_2.a, var_2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-304f, -1702f)), _wgslsmith_mult_i32(func_3().x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, -1i, -2147483647i), vec4<i32>(-1i, var_0.x, u_input.c, 15059i)), -var_0.x, u_input.c), var_2.a.a)), _wgslsmith_f_op_f32(-var_2.c.x));
    return !var_2.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-285f, 766f, -140f)))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(-vec4<i32>(-1i, -9667i, u_input.c, 2147483647i), firstTrailingBit(vec4<i32>(1i, -29849i, 11348i, u_input.c))), vec2<bool>(select(func_1(), false, true), true)), Struct_1(~select(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, 0i, u_input.c)), vec4<i32>(2147483647i, 2147483647i, u_input.c, u_input.c), all(vec3<bool>(false, false, false))), vec2<bool>(false, true)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1260f))))), i32(-1i) * -1i, var_0.x);
    var var_2 = firstTrailingBit(countOneBits(_wgslsmith_sub_vec4_i32(var_1.a.a, var_1.b.a)));
    let var_3 = vec2<bool>(var_1.b.b.x, !var_1.b.b.x);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.e, -513f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))) + var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -262f)), _wgslsmith_f_op_f32(exp2(var_1.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c.x, var_1.e)) - _wgslsmith_f_op_f32(f32(-1f) * -662f))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(1i, -1i, firstTrailingBit(var_2.x), u_input.c), var_1.b.a) ^ var_1.b.a, 1u, -6132i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1708f, 1315f, var_1.e, 1316f))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c.x, var_4.x, var_4.x, -1559f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.c.x, -1000f, -1066f, -839f), vec4<f32>(-1671f, 269f, -536f, var_4.x))))))), ~(~(~vec3<u32>(50952u, u_input.b, 0u))));
}

