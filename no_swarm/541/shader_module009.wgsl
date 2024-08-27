struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = false;
    let var_1 = vec3<f32>(1f, 1f, 1f);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) * -1005f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-185f, 2016f))))))));
    return u_input.b.x & ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d.x | 21995u, abs(u_input.c)), max(17999u & arg_0.x, arg_1.x));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> bool {
    let var_0 = _wgslsmith_sub_i32(-u_input.a.x, -max(i32(-1i) * -u_input.a.x, arg_1.b));
    var var_1 = vec3<i32>(var_0, -25951i, arg_1.b);
    var_1 = -_wgslsmith_mult_vec3_i32(-vec3<i32>(var_0, var_1.x, u_input.a.x), firstTrailingBit(select(vec3<i32>(2147483647i, var_1.x, 21283i), vec3<i32>(arg_2.a, 15914i, 3633i), vec3<bool>(arg_1.a.a, true, arg_2.b.a)))) & vec3<i32>(u_input.e.x, arg_2.a, (-2147483647i & var_1.x) << (u_input.b.x % 32u));
    let var_2 = func_3(vec4<u32>(1u, 60350u, _wgslsmith_dot_vec3_u32(arg_1.c.yyy >> (arg_1.c.yxz % vec3<u32>(32u)), ~arg_1.a.b.zzy ^ vec3<u32>(arg_1.a.b.x, arg_1.a.b.x, arg_0)), u_input.c), vec2<u32>(~0u | ~_wgslsmith_mod_u32(u_input.b.x, arg_1.c.x), 1u & (0u & (1u << (u_input.b.x % 32u)))));
    var_1 = countOneBits(vec3<i32>(5721i, arg_2.a & (0i ^ ~arg_2.a), ~(-min(var_0, 2147483647i))));
    return false;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(443f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(850f, 566f, !func_2(4294967295u, Struct_2(Struct_1(false, vec4<u32>(1u, 4294967295u, u_input.c, 1u)), 15419i, vec4<u32>(u_input.c, 0u, u_input.b.x, 1u), arg_1, vec2<f32>(arg_1, 1278f)), Struct_3(u_input.e.x, Struct_1(true, u_input.d))))) - -724f));
    let var_1 = vec2<bool>(all(vec3<bool>(false, all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)))), arg_0 <= u_input.b.x);
    let var_2 = _wgslsmith_f_op_f32(-1064f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1000f))));
    let var_3 = Struct_3(~u_input.a.x, Struct_1(false, ~u_input.d));
    var var_4 = Struct_2(Struct_1(var_3.b.a, var_3.b.b), var_3.a, ~(~vec4<u32>(~60851u, u_input.d.x, _wgslsmith_add_u32(arg_0, u_input.c), var_3.b.b.x)), arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_1) + vec2<f32>(655f, -1000f))))));
    return var_3;
}

fn func_4(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = Struct_2(func_1(_wgslsmith_clamp_u32(~128825u, 1u, ~(~arg_0.b.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(1207f - 863f))).b, i32(-1i) * -1i, ~(abs(vec4<u32>(18857u, 4294967295u, 26467u, u_input.b.x) << (arg_0.b.b % vec4<u32>(32u))) ^ arg_0.b.b), -2010f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-572f, -968f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1837f, -1510f), vec2<f32>(1000f, -934f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-558f, -747f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1696f, -824f)))));
    var_0 = Struct_2(arg_0.b, firstTrailingBit(2147483647i), abs(~vec4<u32>(1u, arg_0.b.b.x, var_0.c.x, firstLeadingBit(var_0.c.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(745f)))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.e + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.d, 755f), var_0.e)) * _wgslsmith_f_op_vec2_f32(round(var_0.e)))) + vec2<f32>(-1697f, _wgslsmith_f_op_f32(select(382f, _wgslsmith_f_op_f32(1489f * -1069f), all(vec2<bool>(var_0.a.a, arg_0.b.a)))))));
    var var_1 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(~(~119320u), 4294967295u, var_0.a.b.x), firstLeadingBit(var_0.a.b.zwy));
    var var_2 = reverseBits(1i ^ ~arg_0.a);
    var_1 = vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, arg_0.b.b.x, 4294967295u, 1u), ~vec4<u32>(var_1.x, 21190u, var_1.x, 1u)), 1u), 28609u, u_input.d.x);
    return StorageBuffer(_wgslsmith_div_vec3_i32(~firstTrailingBit(firstTrailingBit(vec3<i32>(arg_0.a, -1i, var_0.b))), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -1i, u_input.a.x), vec3<i32>(var_0.b >> (37555u % 32u), _wgslsmith_add_i32(var_0.b, u_input.a.x), -16584i & var_0.b))), 4493u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(u_input.b.x);
    var var_1 = u_input.b.x;
    var var_2 = Struct_4(-1140f);
    var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~u_input.c, ~countOneBits(u_input.c)), vec2<u32>(u_input.c, 0u));
    var_1 = u_input.d.x;
    let x = u_input.a;
    s_output = func_4(func_1(12393u, _wgslsmith_f_op_f32(sign(var_2.a))));
}

