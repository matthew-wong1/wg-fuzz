struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    var var_0 = select(all(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), all(vec4<bool>(true, true && any(vec4<bool>(false, true, true, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), any(vec4<bool>(false, true, true, true)))), any(!vec2<bool>(true, all(vec3<bool>(true, true, false)))));
    return -104f;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4) -> vec3<i32> {
    let var_0 = vec3<bool>(arg_0.x, !((all(arg_0.zyw) | (arg_0.x == arg_0.x)) & !(arg_1.c.a.c.x >= arg_1.c.a.c.x)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a.a.x) * -507f) <= _wgslsmith_f_op_f32(func_3())));
    let var_1 = Struct_2(~vec4<u32>(abs(arg_1.a.x), 36347u, 0u, arg_1.a.x));
    let var_2 = arg_1.b;
    let var_3 = vec4<f32>(1036f, arg_1.d.a.x, arg_1.b.c.x, arg_1.d.a.x);
    var var_4 = _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, firstTrailingBit(2147483647i)), _wgslsmith_sub_vec2_i32(min(_wgslsmith_add_vec2_i32(firstTrailingBit(arg_1.b.b.zz), abs(var_2.b.yy)), -arg_1.c.a.b.yz | _wgslsmith_div_vec2_i32(arg_1.b.b.yz, var_2.b.xz)), vec2<i32>(-1i, firstLeadingBit(~35899i))));
    return max(vec3<i32>(~(-arg_1.c.a.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 15889i, 6514i, 1i), vec4<i32>(-2147483647i, 0i, 0i, 20606i)), -vec4<i32>(2147483647i, 2954i, 13948i, var_4.x)) ^ 1i, abs(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, -61453i, arg_1.c.a.b.x), arg_1.c.a.b, true), vec3<i32>(arg_1.b.b.x, 2147483647i, -16325i)))), ~max(abs(var_2.b), arg_1.b.b));
}

fn func_1() -> Struct_3 {
    let var_0 = true;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f * 1283f), _wgslsmith_f_op_f32(889f * -1303f))), _wgslsmith_add_vec3_i32(func_2(select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(true, var_0, true, true), var_0), Struct_4(vec3<u32>(0u, 28485u, u_input.a.x), Struct_1(vec2<f32>(375f, -2268f), vec3<i32>(-24138i, -32309i, -8395i), vec2<f32>(1000f, 2418f)), Struct_3(Struct_1(vec2<f32>(-445f, 592f), vec3<i32>(0i, -11330i, 16338i), vec2<f32>(-774f, 1234f))), Struct_1(vec2<f32>(1000f, 1353f), vec3<i32>(-19667i, -2147483647i, 1i), vec2<f32>(1000f, 979f)))), -min(vec3<i32>(-2147483647i, 2147483647i, -1i), vec3<i32>(2147483647i, -5039i, 2147483647i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(157f, -618f), vec2<f32>(513f, 1465f), vec2<bool>(var_0, var_0)))))));
    let var_2 = vec4<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a), countOneBits(u_input.a.x), ~firstTrailingBit(~u_input.a.x)) << (~_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(53339u, u_input.a.x, 35980u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 19329u, 1u)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(67714u, u_input.a.x, 89000u, 75253u), vec4<u32>(u_input.a.x, u_input.a.x, 22124u, u_input.a.x), vec4<bool>(false, var_0, var_0, true)), vec4<u32>(30106u, u_input.a.x, u_input.a.x, 17519u), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u));
    let var_3 = var_1.a.c.x;
    var var_4 = Struct_4(var_2.zyx, var_1.a, Struct_3(var_1.a), var_1.a);
    return var_4.c;
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> vec3<i32> {
    let var_0 = vec2<i32>(countOneBits(33290i), -1i);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -552f) - _wgslsmith_f_op_f32(f32(-1f) * -430f)) - _wgslsmith_f_op_f32(max(arg_0.a.a.x, -1580f))), -446f, _wgslsmith_f_op_f32(sign(func_1().a.c.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_f_op_f32(-1293f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1405f)) + 662f)), _wgslsmith_f_op_f32(1022f * _wgslsmith_f_op_f32(trunc(655f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c.x - arg_0.a.c.x) - var_1.x)))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.a.x + _wgslsmith_f_op_f32(sign(-980f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-875f))), arg_0.a.c.x), arg_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-730f * _wgslsmith_f_op_f32(select(-219f, var_1.x, true)))))));
    var var_2 = func_1().a;
    return reverseBits(arg_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = -1085f;
    var var_2 = true;
    var var_3 = func_4(func_1(), countOneBits(-firstLeadingBit(-2147483647i)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1126f, _wgslsmith_f_op_f32(floor(var_1))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 611f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_1 * var_1), var_1))), any(vec4<bool>(!var_0, !var_0, var_0, true)))), ~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.x, -8144i, var_3.x), _wgslsmith_mult_vec3_i32(vec3<i32>(43683i, -1i, var_3.x), vec3<i32>(var_3.x, var_3.x, var_3.x))), ~func_1().a.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-780f * -1571f) * var_1), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1 + 733f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1567f, var_1) + vec2<f32>(var_1, var_1)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(185f, var_1))), vec2<f32>(_wgslsmith_f_op_f32(-var_1), -1586f)))));
    let var_5 = vec4<i32>(-1i, ~(-max(var_4.b.x, -1i)) >> (u_input.a.x % 32u), _wgslsmith_sub_i32(-2147483647i << (u_input.a.x % 32u), var_4.b.x), -1i | _wgslsmith_dot_vec4_i32(-vec4<i32>(var_4.b.x, var_3.x, -1i, 1i), -vec4<i32>(var_3.x, -17514i, 1i, -1i) << (vec4<u32>(u_input.a.x, 31806u, 6770u, u_input.a.x) % vec4<u32>(32u))));
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(39959u, ~(~0u), ~39795u, 23324u), var_5, vec4<f32>(898f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-562f + var_1), -481f, var_6)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), var_4.c.x), _wgslsmith_sub_u32(firstLeadingBit(abs(u_input.a.x)), u_input.a.x));
}

