struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1413f - _wgslsmith_f_op_f32(-1312f - -686f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(936f, 407f)), -1010f)), 1f), 564f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(505f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2286f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-var_0.x), -1094f, -1062f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-841f, var_0.x, -908f, var_0.x))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, var_0.x, -542f)))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -2029f)), var_0.x))));
    var var_2 = true;
    var var_3 = ~1u;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1328f)) - _wgslsmith_f_op_f32(select(var_1.x, -1087f, true))))));
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.d.x;
    var var_1 = firstTrailingBit(firstLeadingBit(1u));
    return Struct_3(Struct_2(vec4<i32>(u_input.d.x, _wgslsmith_sub_i32(2147483647i, u_input.b.x), u_input.b.x, -17019i), ~u_input.a.x, -42606i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(184f - 458f), _wgslsmith_f_op_f32(1121f * -842f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-299f, 1695f, -849f, -957f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(433f, -140f, -282f, 201f))) * vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(min(670f, -140f)), _wgslsmith_f_op_f32(-612f + -288f), -1304f))), 1f, Struct_2(firstTrailingBit(u_input.b), _wgslsmith_sub_u32(u_input.a.x, 16752u), max(i32(-1i) * -1i, var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1385f, -949f)))));
}

fn func_4(arg_0: Struct_3) -> i32 {
    var var_0 = arg_0;
    var var_1 = -u_input.b.x;
    let var_2 = 16843u;
    let var_3 = -vec3<i32>(var_0.a.a.x, -arg_0.d.c, ~abs(-51295i) ^ (0i | var_0.a.a.x));
    var var_4 = var_0.a.b >> (u_input.c % 32u);
    return var_0.d.a.x;
}

fn func_1() -> vec4<bool> {
    let var_0 = func_4(func_2());
    let var_1 = Struct_3(Struct_2(max(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, 0i, u_input.b.x, u_input.d.x), u_input.b)), vec4<i32>(var_0 >> (23088u % 32u), firstTrailingBit(5763i), u_input.b.x, ~u_input.b.x)), u_input.c, u_input.d.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-223f, -474f), vec2<f32>(-453f, 543f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1239f) * vec2<f32>(628f, 312f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1510f, -1097f) * vec2<f32>(2013f, -1374f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(745f, 1311f, 656f, -1000f) - vec4<f32>(-263f, -262f, 768f, 1286f)) + vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(701f, -282f, 801f, -724f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -496f, -845f, -1048f), vec4<f32>(-514f, 506f, 1009f, 371f))), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 564f, -1513f, -409f) * _wgslsmith_div_vec4_f32(vec4<f32>(-325f, -1071f, -1278f, -1305f), vec4<f32>(437f, 741f, 661f, -566f))))), -458f, Struct_2(-(vec4<i32>(-17902i, 2147483647i, 16392i, u_input.d.x) ^ u_input.b) & vec4<i32>(-41246i, _wgslsmith_mod_i32(var_0, u_input.b.x), u_input.b.x, -u_input.b.x), ~u_input.c, i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(146f, -1000f)))));
    let var_2 = func_2();
    let var_3 = true;
    var var_4 = Struct_5(vec3<u32>(0u, ~4294967295u >> ((_wgslsmith_sub_u32(var_2.d.b, var_1.d.b) & ~u_input.a.x) % 32u), 0u));
    return !(!vec4<bool>(var_3, any(!vec4<bool>(true, var_3, var_3, var_3)), var_3, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec3<u32>(u_input.c, 14352u, u_input.c) | vec3<u32>(1u, countOneBits(4294967295u) << (reverseBits(u_input.a.x) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 36767u) ^ vec4<u32>(4294967295u, 33018u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.a.x, 35863u))));
    var var_1 = select(_wgslsmith_add_vec2_u32(~(~(u_input.a << (vec2<u32>(var_0.a.x, u_input.c) % vec2<u32>(32u)))), min(~var_0.a.zy, reverseBits(~var_0.a.xx))), ~(~vec2<u32>(u_input.c, ~59058u)), u_input.b.x <= (-2897i | u_input.b.x));
    let var_2 = select(!select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), !func_1(), true), vec4<bool>(!all(vec4<bool>(true, true, true, true)), true, !((u_input.b.x >= u_input.d.x) | (u_input.d.x <= 31716i)), u_input.a.x != countOneBits(~16308u)), false & func_1().x);
    let var_3 = Struct_2(vec4<i32>(-1i) * -select(-vec4<i32>(-49660i, 1i, -2147483647i, u_input.b.x), reverseBits(vec4<i32>(u_input.b.x, u_input.d.x, u_input.d.x, -2147483647i)), var_2.x), 1u, _wgslsmith_clamp_i32(~(~(~u_input.d.x)), u_input.d.x, -u_input.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1117f + _wgslsmith_f_op_f32(-1267f + 676f)), _wgslsmith_f_op_f32(-func_2().d.d.x)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(652f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(546f, -2188f))))))));
    var_1 = vec2<u32>(~u_input.c, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, -1i, 1u, select(countOneBits(abs(firstTrailingBit(vec3<i32>(u_input.d.x, var_3.c, u_input.d.x)))), _wgslsmith_mod_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(var_3.a.zwx, var_3.a.xwx)), ~vec3<i32>(u_input.b.x, -18268i, 4829i)), !var_2.x));
}

