struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_2(arg_1, Struct_1(abs(vec4<u32>(arg_1.a.x, 21522u, u_input.b.x, 1u) ^ arg_1.a), !(arg_0.x <= (u_input.a >> (arg_1.a.x % 32u)))), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2)), 1682f, _wgslsmith_f_op_f32(sign(-2275f))), select(select(vec4<bool>(true, all(vec3<bool>(arg_1.b, false, false)), any(vec4<bool>(false, true, false, arg_1.b)), all(vec4<bool>(false, arg_1.b, arg_1.b, true))), !select(vec4<bool>(true, false, true, false), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), arg_1.b), true), select(!select(vec4<bool>(true, arg_1.b, false, arg_1.b), vec4<bool>(false, arg_1.b, arg_1.b, arg_1.b), arg_1.b), !vec4<bool>(arg_1.b, arg_1.b, true, true), select(!vec4<bool>(arg_1.b, false, true, false), !vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b), select(vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, true, true, arg_1.b), false))), all(vec4<bool>(true, true, true, arg_1.a.x > u_input.b.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-800f, -1346f)), _wgslsmith_f_op_f32(f32(-1f) * -558f)) + var_0.c.xy))));
    let var_2 = Struct_2(Struct_1(~(~vec4<u32>(var_0.a.a.x, 1u, 0u, 1u)), arg_1.b && var_0.d.x), var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(var_0.c))))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))), var_0.c.x, var_0.c.x)), vec4<bool>(true, arg_1.b, ~(u_input.a << (var_0.b.a.x % 32u)) <= ~arg_0.x, var_0.b.b));
    let var_3 = Struct_3(var_0.a, arg_0.x);
    var_0 = var_2;
    return Struct_1(abs(vec4<u32>(var_0.a.a.x, arg_1.a.x, 0u, var_0.b.a.x)) ^ countOneBits(~arg_1.a), var_0.a.b);
}

fn func_1(arg_0: vec4<f32>) -> bool {
    var var_0 = ~(vec2<i32>(11120i, -2147483647i) >> (_wgslsmith_add_vec2_u32(~u_input.b.xy, u_input.b.yz) % vec2<u32>(32u)));
    let var_1 = 303f;
    var var_2 = Struct_2(Struct_1(firstLeadingBit(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 43263u), vec4<u32>(u_input.b.x, u_input.b.x, 48750u, 11374u)), select(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(true, false, false, true)), true)), true), Struct_1(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 0u, 37597u, 21035u), vec4<u32>(u_input.b.x, 23814u, u_input.b.x, 23448u))), true), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -675f, 391f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(845f, arg_0.x, var_1), arg_0.xwy, false))) * vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_vec3_f32(floor(arg_0.xzy)))), vec4<bool>(!(all(vec3<bool>(true, true, false)) == true), true, all(vec2<bool>(true, var_1 >= var_1)), all(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, false, true)))));
    let var_3 = var_2.d.ywy;
    var var_4 = Struct_3(func_2(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(-7833i, 17597i, 0i, -6943i), vec4<i32>(u_input.a, u_input.a, 1310i, 2147483647i))), Struct_1(~_wgslsmith_div_vec4_u32(var_2.b.a, var_2.a.a), u_input.b.x >= 4294967295u), _wgslsmith_f_op_f32(round(var_2.c.x))), firstLeadingBit(-2147483647i));
    return var_2.a.b;
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = ~(i32(-1i) * -52798i) << (~(abs(_wgslsmith_add_u32(0u, 34001u)) ^ (u_input.b.x ^ 50058u)) % 32u);
    var_0 = select(~u_input.a, ~((arg_0 << (func_2(vec4<i32>(u_input.a, -1i, 12502i, arg_0), Struct_1(vec4<u32>(56432u, 0u, 30802u, u_input.b.x), true), 1178f).a.x % 32u)) ^ ~(~(-40731i))), !arg_1.x);
    let var_1 = 0u;
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(var_1, abs(var_1)), ~var_1, func_2(select(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(-2147483647i, arg_0), ~arg_0, 1i), vec4<i32>(_wgslsmith_mod_i32(arg_0, arg_0), arg_0, firstTrailingBit(u_input.a), ~u_input.a), vec4<bool>(false, arg_1.x, true, true)), func_2(max(~vec4<i32>(2147483647i, 30426i, -2147483647i, 0i), vec4<i32>(29735i, u_input.a, u_input.a, u_input.a)), func_2(vec4<i32>(-1i, 2147483647i, 0i, u_input.a), Struct_1(vec4<u32>(u_input.b.x, var_1, 0u, var_1), arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -980f)), _wgslsmith_f_op_f32(step(407f, 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(228f))))).a.x);
    var_2 = firstTrailingBit((vec3<u32>(11806u, ~var_1, ~var_1) << (_wgslsmith_mult_vec3_u32(abs(u_input.b), abs(vec3<u32>(var_1, 0u, 39931u))) % vec3<u32>(32u))) | ~(~(~u_input.b)));
    return Struct_3(func_2(vec4<i32>(arg_0, _wgslsmith_mult_i32(u_input.a, u_input.a) >> (~u_input.b.x % 32u), u_input.a, -31447i), Struct_1(vec4<u32>(var_1, 51086u, var_2.x, var_1) ^ ~vec4<u32>(u_input.b.x, u_input.b.x, 0u, var_1), any(select(vec3<bool>(false, arg_1.x, false), vec3<bool>(false, arg_1.x, arg_1.x), false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(234f, -1387f)), _wgslsmith_f_op_f32(f32(-1f) * -809f), !(!arg_1.x)))), -(~arg_0 & ~countOneBits(-39982i)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(arg_0, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -727f) - _wgslsmith_f_op_f32(ceil(-704f))), -108f)))));
    return func_3(_wgslsmith_mod_i32(u_input.a, ~(-2147483647i) >> (((u_input.b.x << (arg_1.a.a.x % 32u)) >> (6573u % 32u)) % 32u)), !vec2<bool>(any(vec3<bool>(true, false, arg_1.a.b)) && false, 9063u != ~u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(vec4<i32>(~u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-14459i, 1i, 301i), vec3<i32>(1i, -25509i, 1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(45312i, u_input.a), vec2<i32>(-27499i, -34590i))) & firstLeadingBit(vec4<i32>(u_input.a, 35145i, u_input.a, u_input.a)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-219f + 1218f), 393f);
    var var_2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1028f), _wgslsmith_f_op_f32(trunc(var_1))), func_3(-(-var_0.x >> (~u_input.b.x % 32u)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), func_1(vec4<f32>(var_1, -1365f, var_1, -1895f))), vec2<bool>(all(vec4<bool>(true, false, true, false)), false), vec2<bool>(true, true))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -1384f, var_1) * vec3<f32>(-391f, 319f, var_1)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1249f, var_1)) + vec3<f32>(var_1, 2048f, _wgslsmith_f_op_f32(var_1 + -1000f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, -349f) * _wgslsmith_f_op_f32(118f - -199f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1)), var_1), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(593f + var_1), _wgslsmith_f_op_f32(var_1 - var_1))))), var_2.a.b));
    var_2 = Struct_3(Struct_1(~(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.b.x) >> (~vec4<u32>(8680u, var_2.a.a.x, 4294967295u, 4294967295u) % vec4<u32>(32u))), true || (_wgslsmith_f_op_f32(-var_1) <= var_3.x)), -2147483647i);
    let var_4 = vec3<f32>(var_3.x, -1001f, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.yy, _wgslsmith_add_vec2_i32(vec2<i32>(var_2.b, u_input.a), ~vec2<i32>(var_2.b, 37628i >> (u_input.b.x % 32u))));
}

