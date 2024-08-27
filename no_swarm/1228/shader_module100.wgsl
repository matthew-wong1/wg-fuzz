struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> i32 {
    let var_0 = true;
    var var_1 = Struct_2(arg_0, Struct_1(1u, arg_1.x), 21665u, 1f, vec2<u32>(arg_1.x, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.c.x, u_input.c.x)), vec2<u32>(arg_0.a >> (u_input.c.x % 32u), u_input.d))));
    let var_2 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) + _wgslsmith_f_op_f32(-var_1.d)) == 263f) | all(select(vec3<bool>(!var_0, var_0, var_0), vec3<bool>(var_0, -2147483647i < arg_2, true), !(!vec3<bool>(true, var_0, var_0))));
    var var_3 = _wgslsmith_div_vec4_i32(~vec4<i32>(arg_2, _wgslsmith_sub_i32(arg_2, u_input.e), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a) >> (1u % 32u), _wgslsmith_div_i32(41632i, 1i)), vec4<i32>(abs(u_input.a.x), u_input.a.x, -1i, -23878i));
    let var_4 = u_input.c.zx;
    return -2147483647i;
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<i32>(u_input.e, -40829i, _wgslsmith_sub_i32(max(1i, 1i), func_3(Struct_1(_wgslsmith_mod_u32(u_input.d, 4294967295u), ~u_input.d), (u_input.c & vec4<u32>(u_input.c.x, u_input.d, 39135u, 74220u)) << (vec4<u32>(u_input.d, u_input.c.x, u_input.d, 4294967295u) % vec4<u32>(32u)), -_wgslsmith_add_i32(u_input.a.x, -2147483647i))));
    let var_1 = vec2<bool>((-2147483647i >> (_wgslsmith_div_u32(~u_input.d, u_input.c.x) % 32u)) > _wgslsmith_div_i32(_wgslsmith_mod_i32(firstTrailingBit(-2147483647i), func_3(Struct_1(0u, 7545u), u_input.c, 2147483647i)), var_0.x), true);
    let var_2 = Struct_2(Struct_1(u_input.c.x, abs(~12902u) & _wgslsmith_sub_u32(~51160u, _wgslsmith_mult_u32(u_input.c.x, u_input.d))), Struct_1(_wgslsmith_mult_u32(reverseBits(u_input.d), ~(~4294967295u)), 1u << ((reverseBits(u_input.d) & ~u_input.d) % 32u)), ~reverseBits(u_input.d), -1361f, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, u_input.d), ~u_input.c.xy), _wgslsmith_sub_vec2_u32(vec2<u32>(87749u, u_input.c.x), _wgslsmith_mod_vec2_u32(vec2<u32>(4607u, 0u), u_input.c.yz))) << (u_input.c.yy % vec2<u32>(32u)));
    let var_3 = select(vec3<bool>(all(vec4<bool>(!var_1.x, true, !var_1.x, true)), true, var_1.x), vec3<bool>(var_1.x, select(all(vec3<bool>(false, var_1.x, var_1.x)) && any(vec4<bool>(var_1.x, var_1.x, false, true)), true, true), true), !(!select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, false, var_1.x)), !vec3<bool>(var_1.x, var_1.x, true), true == var_1.x)));
    let var_4 = vec4<i32>(~_wgslsmith_clamp_i32(min(max(var_0.x, 1i), u_input.b.x), i32(-1i) * -var_0.x, ~u_input.a.x >> ((47152u | u_input.d) % 32u)), i32(-1i) * -2147483647i, func_3(var_2.b, ~(~firstLeadingBit(vec4<u32>(27162u, u_input.c.x, var_2.e.x, 1996u))), var_0.x), 2147483647i ^ u_input.a.x);
    return var_2;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = func_2();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-func_2().d), -1971f, -1422f);
    let var_2 = ~u_input.c.ww;
    let var_3 = func_2().b;
    var_0 = Struct_2(var_3, Struct_1(~(~(var_3.b >> (38620u % 32u))), _wgslsmith_clamp_u32(abs(~9014u), _wgslsmith_clamp_u32(~60269u, max(4294967295u, 93114u), 69193u), ~49027u)), arg_2.b, -261f, var_2);
    return vec3<i32>(-(~(-10262i)), -1i, u_input.a.x);
}

fn func_4(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_1(~_wgslsmith_sub_u32(0u, ~abs(u_input.c.x)), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.c.x, u_input.d, u_input.d, 1u)), ~u_input.c));
    var var_1 = arg_0.x;
    var_0 = func_2().b;
    var var_2 = _wgslsmith_sub_vec4_u32(min(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(13779u, u_input.d, var_0.b, 1u)), vec4<u32>(u_input.c.x, u_input.c.x, 55300u, 66836u)), vec4<u32>(50578u, _wgslsmith_add_u32(u_input.d, 0u), 4294967295u, u_input.d)), ~(vec4<u32>(u_input.c.x, u_input.d, 4294967295u, 18151u) >> (u_input.c % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(abs(u_input.c), vec4<u32>(u_input.d, var_0.a, 38649u, 1u)) % vec4<u32>(32u))) | countOneBits(u_input.c);
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(15316u, var_2.x), firstTrailingBit(~_wgslsmith_div_vec2_u32(vec2<u32>(var_2.x, 50775u), vec2<u32>(117096u, 33818u)))), _wgslsmith_mult_u32(min(u_input.c.x, var_0.a), 62403u));
    return !(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.zw), ~_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, -24963i), vec2<i32>(-42078i, arg_0.x))) == arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!func_4(-vec3<i32>(u_input.a.x, 0i, u_input.b.x) ^ func_1(265f, Struct_1(37627u, 92683u), Struct_1(1u, u_input.c.x))), false, false);
    let var_1 = vec4<bool>(true, !select(var_0.x, !(var_0.x && var_0.x), any(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)))), var_0.x, all(select(var_0.zx, vec2<bool>(!var_0.x, true), select(select(var_0.xz, vec2<bool>(true, var_0.x), var_0.xz), vec2<bool>(false, true), var_0.yx))));
    var_0 = var_1.wxw;
    var_0 = select(select(select(var_1.wwz, var_1.yyy, select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_1.x, var_1.x, var_1.x), var_0.x), vec3<bool>(false, true, false), any(vec4<bool>(true, var_0.x, var_1.x, true)))), vec3<bool>(_wgslsmith_f_op_f32(ceil(1608f)) >= _wgslsmith_f_op_f32(960f + 725f), var_1.x | !var_0.x, true), var_1.wwz), select(!vec3<bool>(u_input.a.x != u_input.a.x, true, true), var_1.zwy, true), select(vec3<bool>(false, !any(vec2<bool>(false, var_1.x)), !func_4(vec3<i32>(-1i, u_input.a.x, 34208i))), !(!(!vec3<bool>(var_0.x, var_0.x, true))), select(!select(vec3<bool>(var_0.x, false, true), var_1.wwx, false), select(select(vec3<bool>(true, var_0.x, false), var_1.zyy, var_1.zxz), vec3<bool>(false, false, false), true), !var_1.x)));
    var var_2 = var_1.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2742f, -452f, -1766f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(981f, 2016f, 1132f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-362f, -512f, 407f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-658f, 125f, 1296f)), vec3<f32>(-1000f, 2130f, 699f), select(vec3<bool>(false, var_1.x, var_2.x), vec3<bool>(false, true, false), vec3<bool>(var_1.x, var_0.x, true)))))));
}

