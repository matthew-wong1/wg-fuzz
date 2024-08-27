struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = countOneBits(~(~(vec4<u32>(0u, u_input.a, arg_0, arg_1.c.a.x) >> (vec4<u32>(u_input.c, 1u, 7879u, arg_1.c.a.x) % vec4<u32>(32u))))) & (~select(~vec4<u32>(arg_1.c.a.x, 4294967295u, 58397u, 14001u), max(vec4<u32>(arg_0, arg_2.a.x, u_input.a, 0u), vec4<u32>(1u, 70217u, arg_2.a.x, 0u)), vec4<bool>(true, true, false, false)) | _wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(48937u, arg_2.a.x, arg_0, 80683u), vec4<u32>(60848u, 27667u, 1u, u_input.a))), vec4<u32>(4294967295u, ~arg_0, 36759u, ~arg_1.c.a.x)));
    var var_1 = abs(~max(var_0.wx, ~vec2<u32>(16957u, 0u)));
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-909f, _wgslsmith_f_op_f32(-arg_1.b), arg_1.b) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(198f, arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -484f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1592f, -1105f, arg_1.b))))))), arg_1, Struct_2(vec2<i32>(-13062i << (arg_0 % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, u_input.d, arg_2.b, u_input.e), -vec4<i32>(-2147483647i, 1i, 1i, arg_1.c.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_1.b, -481f)))))), arg_2), 2147483647i);
    let var_3 = Struct_3(countOneBits(114350i), Struct_1(arg_2.a, max(~2174i, select(u_input.b, _wgslsmith_dot_vec2_i32(arg_1.a, vec2<i32>(u_input.b, arg_2.b)), any(vec2<bool>(false, true))))), !vec3<bool>(true, true, select(false, select(true, false, true), true)));
    let var_4 = abs(1u);
    return 5352u;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<f32>) -> vec4<i32> {
    return -vec4<i32>(2147483647i, min(u_input.b, u_input.e), ~(-5274i & u_input.b), -(u_input.b & 1i)) << (_wgslsmith_div_vec4_u32(abs(abs(~vec4<u32>(12699u, u_input.c, 1u, 0u))), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 74998u, 21707u, arg_0), vec4<u32>(22819u, u_input.a, u_input.a, 1u), vec4<u32>(arg_0, 44963u, 4294967295u, u_input.c)) & ~vec4<u32>(arg_0, u_input.a, 4294967295u, u_input.a), vec4<u32>(arg_0, arg_0, u_input.a, 0u) >> (firstLeadingBit(vec4<u32>(u_input.c, 1u, u_input.a, 4990u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
}

fn func_2() -> Struct_2 {
    let var_0 = all(select(vec3<bool>(true, true, true), !vec3<bool>(all(vec2<bool>(false, true)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = Struct_1(vec3<u32>(u_input.a, 0u, u_input.a), u_input.b);
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_add_i32(4114i, -1i) | var_1.b, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-39076i, u_input.d, u_input.b, u_input.b), vec4<i32>(u_input.b, var_1.b, 52450i, -2147483647i)), vec4<i32>(select(u_input.d, -1i, true), -var_1.b, 2147483647i | u_input.e, ~1i)), firstTrailingBit(var_1.b), _wgslsmith_dot_vec2_i32(firstLeadingBit(firstLeadingBit(vec2<i32>(0i, 1i))), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(2147483647i, var_1.b)) ^ ~vec2<i32>(var_1.b, u_input.b))), reverseBits(min(func_4(func_3(1u, Struct_2(vec2<i32>(1i, 0i), -2285f, Struct_1(vec3<u32>(66446u, var_1.a.x, var_1.a.x), -17607i)), var_1), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1397f, 2013f, -1225f))), vec4<f32>(1839f, -275f, -1415f, -111f)), vec4<i32>(u_input.e, ~var_1.b, _wgslsmith_div_i32(u_input.e, var_1.b), var_1.b))));
    var var_3 = vec2<u32>(~(1515u >> (u_input.c % 32u)) ^ _wgslsmith_mod_u32(u_input.c, var_1.a.x), firstLeadingBit((0u >> (1u % 32u)) >> (_wgslsmith_mult_u32(max(4294967295u, u_input.c), 26441u & u_input.c) % 32u)));
    var_3 = reverseBits((vec2<u32>(abs(var_1.a.x), ~var_1.a.x) | _wgslsmith_sub_vec2_u32(~var_1.a.zx, var_1.a.zx)) | var_1.a.zx);
    return Struct_2(select(~vec2<i32>(-2147483647i, u_input.e) | vec2<i32>(var_2, var_2), -firstLeadingBit(vec2<i32>(31260i, 1i)), var_0) >> ((var_1.a.yz >> (~(~var_1.a.yz) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-743f + 142f))), -603f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(f32(-1f) * -279f)))))), var_1);
}

fn func_1() -> Struct_4 {
    var var_0 = ~u_input.c;
    let var_1 = func_2();
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.b, -467f, var_1.b)))), var_1, var_1, -1i & _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-61030i, u_input.e), _wgslsmith_mult_vec2_i32(var_1.a, vec2<i32>(u_input.d, 8986i))), var_1.a));
    var_0 = abs(89235u);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f * 459f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1411f)), _wgslsmith_f_op_f32(f32(-1f) * -2474f)))))) - 322f);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(143f, -1063f)), _wgslsmith_div_vec2_f32(vec2<f32>(-266f, 776f), vec2<f32>(-301f, 1000f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 1538f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-923f, 1321f), vec2<f32>(1000f, 177f))))))));
    let var_1 = u_input.c;
    let var_2 = Struct_5(func_1(), var_0.x, false);
    var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1560f, -244f), vec2<f32>(var_0.x, -189f)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_2.a.a.zy)) * _wgslsmith_f_op_vec2_f32(select(var_2.a.a.yx, _wgslsmith_f_op_vec2_f32(abs(var_2.a.a.zz)), false))))));
    let var_3 = Struct_3(-1i, var_2.a.c.c, !select(!select(vec3<bool>(false, false, var_2.c), vec3<bool>(false, true, var_2.c), false), vec3<bool>(true, false, true), vec3<bool>(69822u == var_2.a.b.c.a.x, var_2.c, true)));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -166f)) + _wgslsmith_f_op_vec2_f32(-var_2.a.a.xy)) * _wgslsmith_f_op_vec2_f32(-var_2.a.a.xy)), var_2.a.a.zx, true | ((_wgslsmith_mult_i32(var_2.a.c.a.x, var_3.a) != -u_input.b) & true)));
    let var_4 = false;
    var_0 = vec2<f32>(1451f, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(var_2.a.d, 1i));
}

