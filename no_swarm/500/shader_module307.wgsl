struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = select(vec2<bool>(all(vec2<bool>(true, false)), false), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), select(!vec2<bool>(true, select(false, false, false)), vec2<bool>(all(vec3<bool>(false, true, true)) || false, true), !(6270i <= (arg_1.d.x | arg_1.d.x))));
    let var_1 = !(!select(!(!vec3<bool>(var_0.x, false, true)), !select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), true || !var_0.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x))))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * arg_1.a.x));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a + arg_1.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(18159u, firstLeadingBit(0u | arg_1.b.x), 1u), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b.x, 26523u, arg_1.b.x), select(vec3<u32>(39680u, arg_1.b.x, arg_1.b.x), vec3<u32>(arg_1.b.x, 2577u, 43115u), true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(334f - _wgslsmith_f_op_f32(select(arg_1.a.x, -404f, false))), _wgslsmith_f_op_f32(f32(-1f) * -1159f), _wgslsmith_f_op_f32(-var_2))), vec4<i32>(u_input.a, max(-u_input.a, arg_1.d.x), reverseBits(u_input.a << (6117u % 32u)), -2147483647i), vec2<i32>(-11376i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(abs(u_input.a), firstLeadingBit(-2147483647i)), u_input.a)));
    let var_4 = vec2<i32>(~(-_wgslsmith_sub_i32(45809i, abs(var_3.d.x))), abs(~0i));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_3.c, vec3<f32>(280f, var_3.c.x, arg_1.c.x)))) * _wgslsmith_f_op_vec3_f32(arg_1.a.xzx * var_3.c)) * arg_1.a.zwx) * vec3<f32>(_wgslsmith_f_op_f32(sign(-876f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(-arg_1.a.x)));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = -select(-vec3<i32>(u_input.a, 1i, u_input.a) | vec3<i32>(arg_3.d.x, ~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, -10138i))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.e.x, 2147483647i), vec2<i32>(u_input.a, arg_3.e.x)) | 1i, firstTrailingBit(74588i), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_3.d.x, arg_3)).x * arg_1) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_3.a.x, arg_1, true)))));
    let var_1 = Struct_2(select(vec2<bool>((true && arg_0) || all(vec4<bool>(arg_0, true, false, true)), true), select(vec2<bool>(true, true), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), arg_0), vec2<bool>(true, true), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), true)), any(vec2<bool>(arg_0, true))), select(select(vec2<bool>(arg_0, true), vec2<bool>(false, false), !vec2<bool>(arg_0, arg_0)), vec2<bool>(true, true), !vec2<bool>(arg_0, false))), !(!vec2<bool>(arg_0, true)), min(arg_3.b, min(arg_3.b, arg_3.b) ^ select(vec3<u32>(arg_3.b.x, 26471u, arg_3.b.x), vec3<u32>(44141u, 0u, 8287u), !arg_0)), arg_3, arg_3);
    let var_2 = var_1.e;
    var var_3 = ~select(-abs(~(-60232i)), i32(-1i) * -max(arg_3.e.x, var_2.e.x), all(select(!vec4<bool>(arg_0, arg_0, false, var_1.a.x), vec4<bool>(true, false, var_1.b.x, true), vec4<bool>(var_1.a.x, var_1.b.x, var_1.b.x, true))));
    var var_4 = vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a.x))), arg_3.a.x, -259f);
    return 0u;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: i32) -> vec2<bool> {
    let var_0 = func_4(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-618f))), -1073f, _wgslsmith_f_op_f32(round(-329f))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-128f, 187f, 2753f, -1033f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-837f, 855f, -1000f, 561f), vec4<f32>(-1270f, -1164f, -814f, 557f), vec4<bool>(arg_1.x, arg_1.x, false, false)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-475f, -682f, 371f, -1000f)))), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(11302u, arg_0.x, 0u), arg_2, arg_2), _wgslsmith_sub_vec3_u32(~arg_2, abs(vec3<u32>(arg_2.x, 4294967295u, arg_2.x))), false != arg_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(11690i, Struct_1(vec4<f32>(2081f, -1502f, -305f, -628f), vec3<u32>(59003u, arg_2.x, arg_0.x), vec3<f32>(-1000f, 693f, 863f), vec4<i32>(arg_3, u_input.a, -2147483647i, arg_3), vec2<i32>(15715i, 51764i)))))) + vec3<f32>(_wgslsmith_f_op_f32(abs(123f)), _wgslsmith_f_op_f32(ceil(-510f)), _wgslsmith_f_op_f32(f32(-1f) * -1772f))), max(~vec4<i32>(arg_3, 37624i, 13384i, -42820i), _wgslsmith_sub_vec4_i32(max(vec4<i32>(arg_3, -46550i, u_input.a, -27200i), vec4<i32>(-64915i, arg_3, u_input.a, 78271i)), vec4<i32>(-72901i, arg_3, u_input.a, 2098i))), -_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_3, arg_3), vec2<i32>(arg_3, u_input.a)), vec2<i32>(-108i, 46473i) >> (arg_2.xy % vec2<u32>(32u)))));
    var var_1 = vec3<u32>(1u, 53170u, var_0);
    var_1 = firstLeadingBit(arg_2);
    var var_2 = vec3<bool>(false, arg_1.x, false);
    var var_3 = Struct_2(select(!select(var_2.zy, vec2<bool>(true, true), var_2.x), !var_2.yy, var_2.x || var_2.x), vec2<bool>(!all(!arg_1), true), _wgslsmith_sub_vec3_u32(~firstTrailingBit(reverseBits(arg_2)), arg_2), Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_f32(max(-1308f, -944f)), -399f, 267f))), ~firstTrailingBit(vec3<u32>(var_0, var_1.x, 1u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), reverseBits(firstTrailingBit(vec4<i32>(arg_3, arg_3, -53739i, arg_3)) & vec4<i32>(u_input.a, 1i, arg_3, 12089i)), -(-vec2<i32>(u_input.a, u_input.a) ^ countOneBits(vec2<i32>(arg_3, -1i)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-365f, -843f, _wgslsmith_f_op_f32(round(-910f)), _wgslsmith_f_op_f32(select(-1140f, -1245f, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -729f, -1502f, -1000f)))), arg_2, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1322f)))), _wgslsmith_f_op_vec3_f32(func_3(~14032i, Struct_1(vec4<f32>(-392f, 911f, 992f, 531f), arg_2, vec3<f32>(175f, 812f, 1307f), vec4<i32>(52761i, 0i, 0i, arg_3), vec2<i32>(1i, 2147483647i)))).x, -314f), max(-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_3, 4175i, u_input.a, 33523i), vec4<i32>(26015i, 1i, u_input.a, 2147483647i)), (vec4<i32>(-25513i, arg_3, arg_3, 2147483647i) << (vec4<u32>(arg_0.x, 1u, 1u, var_0) % vec4<u32>(32u))) >> (vec4<u32>(arg_0.x, arg_0.x, 1u, arg_2.x) % vec4<u32>(32u))), firstTrailingBit(vec2<i32>(-1i, arg_3))));
    return select(var_3.a, var_3.a, any(vec2<bool>(true, !any(arg_1.zz))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = arg_1.d;
    let var_1 = select(vec3<bool>(~_wgslsmith_dot_vec2_u32(vec2<u32>(41260u, var_0.b.x), arg_2.b.yy) <= ~var_0.b.x, any(func_2(arg_1.c.yz, select(vec3<bool>(arg_1.b.x, arg_1.b.x, false), vec3<bool>(false, arg_1.b.x, false), vec3<bool>(arg_1.a.x, arg_1.b.x, arg_1.b.x)), vec3<u32>(var_0.b.x, arg_1.e.b.x, 1u), arg_1.e.e.x)), false), !select(!(!vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.a.x)), !select(vec3<bool>(true, arg_1.a.x, true), vec3<bool>(arg_1.b.x, false, false), false), -arg_0 <= (1i & var_0.e.x)), select(select(vec3<bool>(any(vec4<bool>(false, false, false, arg_1.a.x)), func_2(vec2<u32>(0u, 0u), vec3<bool>(arg_1.b.x, false, false), arg_1.c, 0i).x, true & arg_1.a.x), select(select(vec3<bool>(false, arg_1.a.x, arg_1.b.x), vec3<bool>(arg_1.b.x, arg_1.b.x, true), true), select(vec3<bool>(true, arg_1.a.x, arg_1.b.x), vec3<bool>(true, true, arg_1.b.x), arg_1.b.x), var_0.b.x >= arg_1.c.x), !(!vec3<bool>(true, arg_1.a.x, true))), !(!(!vec3<bool>(arg_1.b.x, arg_1.a.x, false))), arg_1.a.x));
    let var_2 = Struct_2(!var_1.zx, vec2<bool>(arg_0 >= _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.e.x) & arg_1.d.e, _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.e.e.x, u_input.a), vec2<i32>(16193i, u_input.a))), var_1.x), _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(~var_0.b, ~var_0.b), select(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.b.x, arg_2.b.x, 47283u), arg_1.e.b)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_1.c.x, arg_1.d.b.x), vec3<u32>(arg_1.e.b.x, 4294967295u, 11452u)), vec3<u32>(arg_1.d.b.x, 14290u, var_0.b.x)), func_2(arg_2.b.yz, !vec3<bool>(var_1.x, true, true), _wgslsmith_mult_vec3_u32(arg_1.e.b, arg_1.c), -2147483647i).x)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.a, var_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d.c.x, -1522f, -292f, 1981f), arg_1.d.a, true)))), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(var_0.b.x, 38055u, arg_2.b.x)), ~var_0.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_2.a.zxy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1480f, arg_3.x, -216f)) + _wgslsmith_f_op_vec3_f32(-var_0.a.zwx)))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-21959i, -2147483647i, arg_2.e.x, var_0.d.x) ^ vec4<i32>(1i, 1i, arg_2.e.x, u_input.a), vec4<i32>(1i, var_0.d.x, -12137i, var_0.e.x), min(arg_1.d.d, vec4<i32>(-1i, -2147483647i, arg_0, 0i))), min(arg_1.d.d, countOneBits(arg_1.d.d))), abs(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 22954i), arg_1.d.e) & vec2<i32>(-2147483647i, var_0.d.x))), var_0);
    let var_3 = false;
    let var_4 = -227f;
    return var_0;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = func_5(max(u_input.a, u_input.a & -34654i) | (~(u_input.a >> (83822u % 32u)) >> (4294967295u % 32u)), Struct_2(!vec2<bool>(any(vec2<bool>(false, arg_0)), true == arg_0), select(select(vec2<bool>(true, true), !vec2<bool>(true, arg_0), vec2<bool>(true, true)), !(!vec2<bool>(arg_0, false)), select(func_2(vec2<u32>(4294967295u, 25901u), vec3<bool>(arg_0, arg_0, true), vec3<u32>(1u, 64800u, 73489u), u_input.a), !vec2<bool>(arg_0, false), !vec2<bool>(arg_0, arg_0))), vec3<u32>(~max(0u, 33503u), _wgslsmith_add_u32(1u, 1u), 0u), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1377f, -803f, 684f, 849f)), ~(~vec3<u32>(16140u, 46003u, 4294967295u)), vec3<f32>(_wgslsmith_f_op_f32(1000f - 749f), _wgslsmith_f_op_f32(step(-254f, 409f)), _wgslsmith_f_op_f32(step(270f, -468f))), -vec4<i32>(-12075i, 18493i, -49042i, -2147483647i), vec2<i32>(_wgslsmith_mult_i32(u_input.a, 50814i), ~u_input.a)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-2737f - -356f), _wgslsmith_f_op_f32(min(-1000f, 365f)), _wgslsmith_f_op_f32(883f + 966f), _wgslsmith_f_op_f32(129f + -649f)), vec3<u32>(firstTrailingBit(2208u), ~1u, ~1u), vec3<f32>(_wgslsmith_f_op_f32(trunc(474f)), _wgslsmith_f_op_f32(1061f + 1593f), _wgslsmith_f_op_f32(-464f - 449f)), -(vec4<i32>(-32672i, u_input.a, 820i, u_input.a) >> (vec4<u32>(4294967295u, 86528u, 78591u, 1u) % vec4<u32>(32u))), vec2<i32>(u_input.a, u_input.a) ^ abs(vec2<i32>(u_input.a, -4242i)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-293f, -1000f, 591f, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(-693f, -399f, -491f, -818f), vec4<f32>(206f, -287f, -594f, -2149f)))), reverseBits(~vec3<u32>(27278u, 0u, 1u)) >> (firstTrailingBit(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), vec3<f32>(-1000f, 1f, -1715f), vec4<i32>(u_input.a, 2147483647i, _wgslsmith_mult_i32(~0i, u_input.a), _wgslsmith_add_i32(4869i, u_input.a)), _wgslsmith_mult_vec2_i32(-countOneBits(vec2<i32>(u_input.a, 2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-17439i, u_input.a))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-517f, 698f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1424f)) - _wgslsmith_f_op_f32(632f + -395f)))));
    var_0 = func_5(u_input.a, Struct_2(!vec2<bool>(any(vec2<bool>(arg_0, arg_0)), arg_0), func_2(vec2<u32>(33037u, var_0.b.x), select(select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, true, true), arg_0), vec3<bool>(false, arg_0, arg_0), -750f == var_0.c.x), vec3<u32>(_wgslsmith_sub_u32(58599u, 0u), 0u, var_0.b.x), ~(-var_0.e.x)), ~vec3<u32>(max(1u, 45890u), 44876u, func_4(arg_0, var_0.a.x, vec3<f32>(var_0.a.x, 1215f, var_0.c.x), Struct_1(var_0.a, vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<f32>(var_0.a.x, var_0.a.x, var_0.c.x), vec4<i32>(var_0.e.x, -36305i, -61896i, 32080i), var_0.d.yz))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, 792f, var_0.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.c.x, -148f, 100f))), _wgslsmith_sub_vec3_u32(~var_0.b, reverseBits(vec3<u32>(4294967295u, 4294967295u, 0u))), vec3<f32>(337f, var_0.a.x, _wgslsmith_f_op_f32(1679f * var_0.c.x)), var_0.d, var_0.e), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(1092f + -779f), _wgslsmith_f_op_vec3_f32(func_3(u_input.a, Struct_1(vec4<f32>(var_0.a.x, 396f, 149f, 249f), vec3<u32>(var_0.b.x, 4294967295u, 54291u), vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), vec4<i32>(-19104i, -49585i, 10446i, 2147483647i), var_0.e))).x, var_0.c.x), vec3<u32>(1u, 0u, 0u), _wgslsmith_f_op_vec3_f32(-var_0.a.wwz), var_0.d, -vec2<i32>(var_0.d.x, 2147483647i))), Struct_1(var_0.a, ~(~vec3<u32>(var_0.b.x, 4294967295u, 1u)), _wgslsmith_f_op_vec3_f32(-var_0.c), min(func_5(-u_input.a, Struct_2(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), var_0.b, Struct_1(var_0.a, var_0.b, var_0.c, var_0.d, var_0.e), Struct_1(var_0.a, vec3<u32>(var_0.b.x, 8122u, 0u), vec3<f32>(-531f, var_0.a.x, -367f), vec4<i32>(u_input.a, var_0.e.x, -2147483647i, -40287i), var_0.d.xx)), func_5(-1i, Struct_2(vec2<bool>(true, false), vec2<bool>(true, false), vec3<u32>(73225u, 53994u, 1u), Struct_1(var_0.a, vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<f32>(-180f, var_0.a.x, -2116f), var_0.d, var_0.e), Struct_1(vec4<f32>(370f, 844f, 327f, var_0.a.x), vec3<u32>(0u, var_0.b.x, var_0.b.x), vec3<f32>(-119f, var_0.c.x, var_0.a.x), vec4<i32>(u_input.a, -21031i, 0i, var_0.d.x), var_0.e)), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.c.x, 371f), var_0.b, vec3<f32>(var_0.a.x, -2414f, var_0.c.x), var_0.d, vec2<i32>(var_0.d.x, -2147483647i)), var_0.c.xx), var_0.a.zw).d, _wgslsmith_mult_vec4_i32(vec4<i32>(43721i, var_0.d.x, -2147483647i, -17599i), var_0.d)), firstLeadingBit(select(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a), var_0.d.xy), var_0.e & vec2<i32>(2147483647i, 1i), all(vec4<bool>(false, false, true, arg_0))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -106f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_0.a.zw)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-717f, 556f))), select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), arg_0)))))));
    let var_1 = vec4<i32>(_wgslsmith_add_i32(var_0.e.x, firstLeadingBit(0i) & -_wgslsmith_mult_i32(u_input.a, -18302i)), u_input.a, _wgslsmith_clamp_i32(12629i, _wgslsmith_sub_i32(-8716i >> (var_0.b.x % 32u), 0i), u_input.a) >> (var_0.b.x % 32u), min(~_wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec3_i32(var_0.d.xyz, var_0.d.xwy), -2147483647i), _wgslsmith_mod_i32(62799i, _wgslsmith_add_i32(_wgslsmith_add_i32(var_0.d.x, u_input.a), i32(-1i) * -30006i))));
    var var_2 = ~reverseBits(var_0.b);
    var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)) * var_0.a), var_0.a), vec3<u32>(~(~var_2.x), ~func_5(u_input.a, Struct_2(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), var_0.b, Struct_1(var_0.a, vec3<u32>(1u, 7052u, 0u), var_0.c, var_0.d, var_1.yx), Struct_1(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), vec3<u32>(1u, 62115u, 69312u), vec3<f32>(var_0.a.x, 1252f, var_0.c.x), vec4<i32>(2147483647i, u_input.a, var_1.x, 2147483647i), vec2<i32>(0i, u_input.a))), func_5(1i, Struct_2(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), vec3<u32>(1u, var_0.b.x, 36467u), Struct_1(var_0.a, var_0.b, vec3<f32>(var_0.c.x, -364f, 1524f), var_1, var_1.yy), Struct_1(vec4<f32>(var_0.c.x, var_0.c.x, -675f, var_0.c.x), vec3<u32>(57041u, 1u, 48766u), vec3<f32>(var_0.c.x, var_0.c.x, -304f), var_0.d, vec2<i32>(var_1.x, -2147483647i))), Struct_1(var_0.a, var_0.b, var_0.c, var_1, vec2<i32>(10691i, 5537i)), vec2<f32>(-630f, var_0.c.x)), vec2<f32>(-308f, var_0.c.x)).b.x, _wgslsmith_add_u32(15068u, var_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, -476f, var_0.c.x), var_0.a.xww)) - func_5(func_5(2147483647i, Struct_2(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), var_0.b, Struct_1(var_0.a, vec3<u32>(var_0.b.x, 13449u, var_2.x), vec3<f32>(var_0.c.x, var_0.a.x, 1397f), var_0.d, vec2<i32>(28784i, 1i)), Struct_1(var_0.a, vec3<u32>(var_0.b.x, 0u, var_0.b.x), var_0.c, var_0.d, var_0.e)), Struct_1(var_0.a, var_0.b, var_0.c, vec4<i32>(45723i, 12534i, var_0.d.x, var_0.d.x), vec2<i32>(var_0.d.x, -20998i)), var_0.a.zw).e.x, Struct_2(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), var_0.b, Struct_1(var_0.a, vec3<u32>(var_0.b.x, 0u, 0u), vec3<f32>(-1000f, var_0.c.x, 457f), vec4<i32>(var_1.x, 11519i, u_input.a, var_0.e.x), var_1.xx), Struct_1(vec4<f32>(-723f, var_0.c.x, 248f, 1000f), var_0.b, var_0.c, vec4<i32>(-6066i, -27383i, var_1.x, 2147483647i), var_1.yz)), Struct_1(var_0.a, var_0.b, vec3<f32>(var_0.c.x, -927f, 1611f), vec4<i32>(-9134i, var_1.x, var_0.e.x, 2920i), var_1.yx), var_0.a.yz).a.yww) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, var_0.a.x, -1000f)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 421f, 1585f) + var_0.c))))), var_0.d, ~(~(-(~var_1.zy))));
    return func_5(0i, Struct_2(!select(vec2<bool>(false, arg_0), vec2<bool>(false, false), 1u >= var_2.x), !select(func_2(var_0.b.zx, vec3<bool>(false, arg_0, false), var_0.b, 0i), !vec2<bool>(false, arg_0), true), var_0.b, Struct_1(var_0.a, ~(~vec3<u32>(95316u, var_2.x, 7610u)), vec3<f32>(-668f, _wgslsmith_f_op_f32(var_0.a.x + 166f), -160f), select(vec4<i32>(13712i, 29227i, u_input.a, 60221i) ^ vec4<i32>(7071i, 15541i, -6183i, u_input.a), -var_0.d, true), var_0.d.ww), Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c + vec3<f32>(-679f, 425f, 1474f))), _wgslsmith_mult_vec4_i32(var_0.d, var_1), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -35974i), vec2<i32>(u_input.a, -2147483647i), var_1.xw), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_1.x), vec2<i32>(-1i, -30290i))))), func_5(_wgslsmith_mult_i32(36386i, -2849i), Struct_2(!vec2<bool>(true, arg_0), vec2<bool>(any(vec4<bool>(arg_0, arg_0, true, true)), false), ~var_0.b, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(949f, -312f, 279f, -1418f) + vec4<f32>(-505f, 712f, var_0.a.x, var_0.c.x)), ~var_0.b, _wgslsmith_f_op_vec3_f32(trunc(var_0.a.zzx)), -var_1, vec2<i32>(var_0.d.x, u_input.a)), Struct_1(_wgslsmith_div_vec4_f32(var_0.a, var_0.a), select(vec3<u32>(var_0.b.x, var_0.b.x, 13228u), var_0.b, false), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(668f, var_0.c.x, 116f))), vec4<i32>(-15302i, var_1.x, var_0.d.x, var_0.e.x) >> (vec4<u32>(var_2.x, var_2.x, var_0.b.x, var_0.b.x) % vec4<u32>(32u)), vec2<i32>(var_1.x, u_input.a))), func_5(_wgslsmith_dot_vec2_i32(reverseBits(var_1.wz), ~var_1.yw), Struct_2(!vec2<bool>(true, arg_0), !vec2<bool>(true, arg_0), vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), func_5(-37337i, Struct_2(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), vec3<u32>(4294967295u, var_2.x, 0u), Struct_1(vec4<f32>(-349f, -2006f, -262f, var_0.c.x), var_0.b, var_0.a.zzz, var_0.d, vec2<i32>(u_input.a, -3168i)), Struct_1(vec4<f32>(var_0.a.x, 183f, var_0.c.x, var_0.a.x), var_0.b, var_0.a.wxw, vec4<i32>(1i, 1i, 12660i, 0i), var_1.yz)), Struct_1(vec4<f32>(var_0.c.x, var_0.a.x, var_0.a.x, var_0.a.x), var_0.b, var_0.a.xwz, var_0.d, var_1.xy), var_0.c.zz), func_5(var_1.x, Struct_2(vec2<bool>(arg_0, true), vec2<bool>(false, false), var_0.b, Struct_1(var_0.a, var_0.b, var_0.c, var_0.d, var_1.xw), Struct_1(vec4<f32>(534f, var_0.c.x, 275f, -151f), var_0.b, vec3<f32>(661f, var_0.a.x, 1055f), var_0.d, vec2<i32>(0i, var_0.e.x))), Struct_1(var_0.a, vec3<u32>(var_2.x, 1u, 3244u), vec3<f32>(1065f, 307f, -1497f), vec4<i32>(u_input.a, var_0.d.x, u_input.a, 2909i), var_0.d.wx), vec2<f32>(182f, var_0.c.x))), func_5(-var_1.x, Struct_2(vec2<bool>(false, true), vec2<bool>(arg_0, true), vec3<u32>(var_0.b.x, 1u, var_2.x), Struct_1(vec4<f32>(var_0.c.x, var_0.c.x, 848f, var_0.c.x), vec3<u32>(var_0.b.x, var_0.b.x, var_2.x), var_0.c, var_0.d, vec2<i32>(u_input.a, var_1.x)), Struct_1(vec4<f32>(var_0.c.x, var_0.c.x, 1000f, var_0.c.x), var_0.b, vec3<f32>(-177f, var_0.c.x, var_0.a.x), vec4<i32>(2147483647i, 26523i, 23264i, 0i), var_1.ww)), Struct_1(var_0.a, vec3<u32>(1u, var_2.x, 15981u), var_0.a.wyy, var_0.d, vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(-var_0.a.ww)), _wgslsmith_f_op_vec3_f32(func_3(var_0.e.x & 0i, func_5(29579i, Struct_2(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec3<u32>(4294967295u, var_0.b.x, 6379u), Struct_1(var_0.a, var_0.b, vec3<f32>(-310f, var_0.a.x, 1231f), var_1, var_0.d.xx), Struct_1(vec4<f32>(-538f, var_0.c.x, 1829f, -703f), var_0.b, vec3<f32>(1487f, var_0.c.x, var_0.a.x), var_1, var_0.d.yy)), Struct_1(vec4<f32>(-1362f, var_0.a.x, var_0.c.x, -268f), vec3<u32>(118073u, var_0.b.x, var_0.b.x), var_0.c, vec4<i32>(-1i, 1i, u_input.a, var_0.e.x), var_0.e), vec2<f32>(var_0.a.x, var_0.c.x)))).yy), vec2<f32>(var_0.a.x, var_0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-922f)), _wgslsmith_f_op_f32(302f + 1387f)) - var_0.a.x), var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 505f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -685f);
    var var_1 = func_1(!(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, 7673i, u_input.a, 28495i), ~vec4<i32>(u_input.a, 2147483647i, u_input.a, 0i)) <= ~(i32(-1i) * -1i)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(var_1.a, vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_vec3_f32(func_3(u_input.a, Struct_1(var_1.a, vec3<u32>(var_1.b.x, var_1.b.x, 4294967295u), var_1.a.zyx, var_1.d, var_1.d.zz))).x), _wgslsmith_f_op_f32(var_1.c.x + var_1.c.x)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), vec4<bool>(false, true, 33223i == u_input.a, true), true))), vec3<u32>(var_1.b.x, max(15775u, 4687u) >> (var_1.b.x % 32u), ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, var_1.b.x)), var_1.b.yz)), _wgslsmith_f_op_vec3_f32(func_3(2147483647i, Struct_1(var_1.a, ~(~var_1.b), var_1.a.wxx, vec4<i32>(firstTrailingBit(2147483647i), var_1.e.x ^ 26824i, _wgslsmith_clamp_i32(u_input.a, var_1.d.x, 10495i), 24561i), var_1.d.zz | vec2<i32>(27277i, var_1.e.x)))), _wgslsmith_mult_vec4_i32(var_1.d, vec4<i32>(-1i) * -countOneBits(var_1.d)), vec2<i32>(u_input.a | _wgslsmith_dot_vec2_i32(var_1.e, _wgslsmith_div_vec2_i32(var_1.d.xz, var_1.d.ww)), ~u_input.a));
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(11206u >> (~abs(var_1.b.x) % 32u)), var_1.b);
}

