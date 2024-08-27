struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = Struct_2(!vec2<bool>(false, any(vec2<bool>(true, true)) | true), u_input.e.zz, Struct_1(vec2<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), select(1844f >= arg_0, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -539f), arg_0, true)))));
    let var_1 = _wgslsmith_f_op_f32(trunc(var_0.c.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 484f, var_1, arg_0) - vec4<f32>(-1586f, -1606f, 1506f, 908f))), vec4<f32>(_wgslsmith_div_f32(-1181f, var_1), _wgslsmith_f_op_f32(arg_0 - 2362f), _wgslsmith_f_op_f32(-var_1), -738f)))));
    let var_3 = Struct_2(vec2<bool>(false, any(select(var_0.a, var_0.c.a, var_0.a))), vec2<i32>(-(i32(-1i) * -var_0.b.x), var_0.b.x), Struct_1(select(vec2<bool>(!var_0.a.x, !var_0.a.x), var_0.a, var_0.c.a), 531f));
    return !(!var_0.a);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = any(select(select(select(select(vec3<bool>(false, true, arg_0), vec3<bool>(false, true, arg_1.a.x), true), !vec3<bool>(true, false, arg_0), !vec3<bool>(true, false, arg_2.a.x)), vec3<bool>(any(vec3<bool>(arg_2.a.x, true, false)), arg_0, !arg_1.a.x), !vec3<bool>(arg_1.a.x, arg_0, arg_0)), vec3<bool>(true, all(vec2<bool>(true, arg_2.c.a.x)), true), all(!select(vec4<bool>(true, true, arg_2.c.a.x, arg_1.a.x), vec4<bool>(arg_2.a.x, false, false, false), vec4<bool>(arg_0, false, arg_1.a.x, true)))));
    var var_1 = arg_2.c;
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(-(~9556i ^ arg_2.b.x), u_input.d.x), _wgslsmith_mult_i32(u_input.e.x, _wgslsmith_sub_i32(~(-72266i), _wgslsmith_mod_i32(-1i, -2147483647i))), 96372i);
    var_1 = Struct_1(vec2<bool>(func_2(505f).x, var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(200f, _wgslsmith_f_op_f32(f32(-1f) * -983f))))));
    let var_3 = 52983u;
    return arg_1;
}

fn func_1(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = func_3(true, Struct_1(func_2(arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f))), Struct_2(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), func_2(arg_0.x), all(vec4<bool>(false, false, false, false))), vec2<i32>(-(~(-26638i)), u_input.d.x), Struct_1(vec2<bool>(u_input.a > 20556i, true), _wgslsmith_f_op_f32(sign(-321f)))));
    var var_1 = !var_0.a;
    var_1 = !func_3(var_1.x, var_0, Struct_2(select(!var_0.a, vec2<bool>(var_0.a.x, var_0.a.x), !var_0.a), vec2<i32>(-2147483647i, 1i) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1u)) % vec2<u32>(32u)), func_3(true, func_3(false, Struct_1(vec2<bool>(false, var_0.a.x), var_0.b), Struct_2(vec2<bool>(var_1.x, var_1.x), u_input.d.zz, Struct_1(vec2<bool>(false, var_0.a.x), 1187f))), Struct_2(var_0.a, vec2<i32>(2147483647i, u_input.d.x), var_0)))).a;
    var var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(abs(-u_input.e), vec3<i32>(~(-5022i), 0i, 1i)), -12281i, -min(2147483647i, 45450i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, _wgslsmith_div_i32(-1i, u_input.e.x)), vec2<i32>(abs(u_input.d.x), countOneBits(64058i))), -(i32(-1i) * -u_input.d.x)));
    var var_3 = Struct_2(vec2<bool>(((u_input.b & 0u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 43287u))) >= 4294967295u, var_1.x), vec2<i32>(abs(countOneBits(var_2.x & u_input.d.x)), firstLeadingBit(0i)), func_3(!(!all(vec4<bool>(true, var_1.x, false, false))), Struct_1(var_0.a, _wgslsmith_f_op_f32(abs(arg_0.x))), Struct_2(vec2<bool>(var_1.x, select(false, var_0.a.x, true)), select(_wgslsmith_add_vec2_i32(u_input.e.zz, vec2<i32>(-2926i, -2147483647i)), _wgslsmith_add_vec2_i32(u_input.e.zy, u_input.d.yz), all(var_0.a)), func_3(true, var_0, Struct_2(var_0.a, vec2<i32>(u_input.c, u_input.e.x), Struct_1(vec2<bool>(var_1.x, true), var_0.b))))));
    return !vec2<bool>(var_0.a.x, true);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = Struct_2(func_3(false, arg_0.c, arg_0).a, -select(vec2<i32>(var_0.b.x, u_input.a & var_0.b.x), arg_0.b, true), var_0.c);
    var var_1 = vec4<f32>(var_0.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-425f + _wgslsmith_f_op_f32(-arg_0.c.b)) * -1546f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -243f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -511f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-255f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0.c.b)), -219f))), -618f)));
    let var_2 = arg_0.c.b;
    var var_3 = func_3(arg_0.c.a.x, func_3(all(vec3<bool>(true, true, true)), var_0.c, Struct_2(vec2<bool>(true, true), -(vec2<i32>(21628i, 45698i) >> (vec2<u32>(u_input.b, 47719u) % vec2<u32>(32u))), func_3(30425i >= arg_0.b.x, var_0.c, Struct_2(vec2<bool>(false, true), vec2<i32>(var_0.b.x, -2147483647i), Struct_1(vec2<bool>(true, true), var_0.c.b))))), Struct_2(!vec2<bool>(any(vec4<bool>(true, true, true, false)), all(vec2<bool>(false, arg_0.a.x))), vec2<i32>(i32(-1i) * -2147483647i, -2147483647i), var_0.c));
    return func_3(!(!all(select(vec3<bool>(var_3.a.x, false, var_3.a.x), vec3<bool>(arg_0.c.a.x, true, var_3.a.x), var_0.a.x))), Struct_1(vec2<bool>(all(select(vec3<bool>(arg_0.a.x, true, arg_0.c.a.x), vec3<bool>(false, arg_0.a.x, var_3.a.x), true)), var_3.b <= var_2), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1000f))))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<bool>(~(~u_input.e.x) >= -2147483647i, true), vec2<i32>(-2147483647i, u_input.c) | min(vec2<i32>(6174i & u_input.c, u_input.c), select(abs(vec2<i32>(u_input.d.x, 2147483647i)), u_input.d.yx, u_input.d.x > u_input.d.x)), func_4(Struct_2(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(3011f, 308f))), _wgslsmith_div_vec2_i32(u_input.e.yy, vec2<i32>(u_input.a, u_input.a)) >> (~vec2<u32>(50480u, u_input.b) % vec2<u32>(32u)), Struct_1(vec2<bool>(true, true), -1309f))));
    let var_1 = Struct_1(var_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.b, var_0.c.b)) * 1814f));
    var var_2 = var_1;
    let var_3 = firstTrailingBit(vec4<u32>(u_input.b & 87296u, ~(~_wgslsmith_sub_u32(4294967295u, 71873u)), abs(_wgslsmith_sub_u32(~0u, 14316u ^ u_input.b)), 23116u));
    var var_4 = u_input.b & 0u;
    var_4 = 4769u;
    var var_5 = !select(!vec4<bool>(true, var_0.c.a.x, -1132f > var_2.b, true && var_0.c.a.x), select(select(vec4<bool>(var_0.a.x, var_1.a.x, false, true), vec4<bool>(var_1.a.x, false, var_1.a.x, var_2.a.x), var_1.a.x), !vec4<bool>(var_1.a.x, var_0.a.x, var_1.a.x, var_1.a.x), vec4<bool>(any(vec4<bool>(true, var_0.c.a.x, false, var_0.a.x)), var_1.a.x, true, !var_1.a.x)), select(!select(vec4<bool>(var_0.c.a.x, var_1.a.x, var_0.a.x, var_2.a.x), vec4<bool>(var_0.c.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(false, false, var_2.a.x, false)), vec4<bool>(var_0.c.a.x, var_1.a.x, all(vec3<bool>(true, true, true)), select(true, var_0.c.a.x, false)), false));
    var_2 = var_1;
    var_2 = func_4(Struct_2(var_2.a, vec2<i32>(0i, _wgslsmith_div_i32(u_input.e.x, i32(-1i) * -1i)), Struct_1(!func_2(var_2.b), 834f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, 2262f, -1660f) * vec3<f32>(187f, 2055f, 366f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(123f, -940f, -340f))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.b), 301f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(145f, var_2.b, true))), 762f)), _wgslsmith_sub_u32(~(var_3.x | 24449u), 23091u) ^ (var_3.x << (u_input.b % 32u)));
}

