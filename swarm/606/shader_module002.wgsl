struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<f32>,
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = arg_2.ywx;
    var var_1 = arg_0.xwz;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0.xyz))) + _wgslsmith_f_op_vec3_f32(-arg_0.yxw)));
    var var_2 = Struct_3(!select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), var_0.x, -(arg_3 ^ ~(-u_input.a)));
    var var_3 = ~33774u;
    return Struct_1(arg_1, ~vec3<i32>(reverseBits(-2147483647i), 1i, ~1i) >> (abs(~min(u_input.c, vec3<u32>(u_input.c.x, 33225u, arg_1))) % vec3<u32>(32u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = vec4<i32>(~1i, abs(u_input.b.x), _wgslsmith_mult_i32(-_wgslsmith_div_i32(_wgslsmith_div_i32(-13938i, u_input.b.x), u_input.b.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x), func_1(vec4<f32>(520f, 653f, 2053f, -857f), ~102332u, u_input.b | vec4<i32>(-10225i, u_input.b.x, 2147483647i, -1i), -vec2<i32>(u_input.a.x, 2147483647i)).b)), u_input.a.x);
    var var_1 = u_input.b.yww;
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1325f, -1008f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-250f, 1000f) * vec2<f32>(-767f, 2079f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1324f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-113f, -1000f) + vec2<f32>(-2939f, 941f)))))));
    var var_3 = Struct_3(vec4<bool>(all(vec4<bool>(true, true, var_1.x >= -2147483647i, false)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, u_input.a), u_input.a ^ vec2<i32>(u_input.a.x, var_1.x)) <= var_1.x, true, any(vec4<bool>(any(vec4<bool>(false, false, true, true)), false, true, false))), _wgslsmith_dot_vec2_i32(reverseBits(select(vec2<i32>(0i, 39293i), _wgslsmith_clamp_vec2_i32(var_1.xz, var_1.xx, var_1.yz), all(vec3<bool>(true, true, false)))), abs(vec2<i32>(max(var_0.x, -4120i), 1i))), min(max(-(~var_0.xx), reverseBits(select(vec2<i32>(var_1.x, u_input.a.x), vec2<i32>(1i, 2147483647i), vec2<bool>(false, false)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 2147483647i) ^ abs(vec2<i32>(var_1.x, -10468i)), _wgslsmith_sub_vec2_i32(-var_0.xy, var_0.yw), var_1.xx)));
    let var_4 = Struct_4(0i, abs(u_input.c.x), var_2.x, reverseBits(u_input.a.x), _wgslsmith_add_vec3_u32(u_input.c, select(u_input.c, max(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) & u_input.c, countOneBits(u_input.c)), all(select(var_3.a.ywy, vec3<bool>(true, var_3.a.x, var_3.a.x), var_3.a.wyw)))));
    return select(select(var_3.a, select(var_3.a, vec4<bool>(var_3.a.x != false, var_4.c <= var_4.c, true & var_3.a.x, any(vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.a.x))), vec4<bool>(var_3.a.x & false, !var_3.a.x, true, true)), select(select(var_3.a, select(vec4<bool>(false, false, var_3.a.x, true), vec4<bool>(false, true, var_3.a.x, var_3.a.x), var_3.a.x), var_3.a), var_3.a, select(!vec4<bool>(true, true, false, var_3.a.x), select(var_3.a, var_3.a, var_3.a), true))), var_3.a, !(!var_3.a));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), u_input.a.x | _wgslsmith_mult_i32(max(u_input.b.x, _wgslsmith_sub_i32(arg_0.b.x, 10395i)), _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_sub_i32(arg_0.b.x, 2147483647i))));
    let var_1 = !(!select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(true, true)), true, true)));
    var var_2 = Struct_5(Struct_3(select(func_3(), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, false, var_1.x), var_1), select(!var_1, var_1, arg_0.a >= arg_1)), arg_0.b.x << (_wgslsmith_add_u32(u_input.c.x, ~15122u) % 32u), arg_0.b.zy));
    var_2 = Struct_5(var_2.a);
    var var_3 = Struct_5(var_2.a);
    return 27188u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(func_2(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, 995f, -412f, -218f)), _wgslsmith_clamp_u32(64285u, u_input.c.x, u_input.c.x), vec4<i32>(u_input.a.x, u_input.b.x, 17468i, u_input.a.x), ~vec2<i32>(1i, u_input.a.x)), u_input.c.x) >> (u_input.c.x % 32u));
    let var_1 = Struct_2(any(!vec3<bool>(true, select(true, true, false), true)));
    let var_2 = u_input.a.x;
    var var_3 = Struct_5(Struct_3(select(vec4<bool>(true, false, true, false), select(!vec4<bool>(var_1.a, false, var_1.a, true), select(vec4<bool>(var_1.a, true, var_1.a, true), vec4<bool>(true, true, var_1.a, true), var_1.a), !var_1.a), var_1.a), var_2, -vec2<i32>(-48486i, reverseBits(u_input.b.x))));
    var_3 = Struct_5(var_3.a);
    var_3 = Struct_5(var_3.a);
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(5599u, u_input.c.x, 4294967295u, 6004u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c.x, 34029u, var_0), vec4<u32>(var_0, 1u, var_0, 0u))) | (~(~vec4<u32>(4294967295u, 28585u, 4294967295u, u_input.c.x)) << (~vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), ~(i32(-1i) * -_wgslsmith_sub_i32(u_input.b.x, -33704i)), u_input.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1408f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-485f))), 478f));
}

