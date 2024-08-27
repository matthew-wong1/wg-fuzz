struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> u32 {
    let var_0 = Struct_2(arg_2.c.x, Struct_1(firstTrailingBit(vec4<i32>(-1i) * -arg_2.d.a), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(10633i, u_input.a.x), arg_1.zx), u_input.a.yw, arg_1.zz), arg_2.b.c, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_2.d.d, 0i), arg_2.d.d), min(-10370i, ~arg_0))), arg_2.c, arg_2.b);
    var var_1 = -653f;
    var var_2 = 54432u;
    let var_3 = false;
    let var_4 = reverseBits(reverseBits(0u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(13017u, 11797u, 4294967295u) << (firstTrailingBit(vec3<u32>(88003u, 4294967295u, 8995u)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 4294967295u, 0u), select(vec3<u32>(3970u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 9842u, 48306u), var_0.c.wxx))) % 32u));
    return var_4;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2.b.c.x;
    var var_1 = 4294967295u;
    var_1 = min(~(func_3(1i, arg_2.d.a.wxz, Struct_2(arg_1.x, Struct_1(arg_2.b.a, arg_2.d.a.wx, vec4<f32>(-818f, var_0, -716f, var_0), 1i), vec4<bool>(false, arg_2.c.x, arg_1.x, true), arg_2.d), _wgslsmith_f_op_f32(step(var_0, var_0))) | _wgslsmith_dot_vec2_u32(~vec2<u32>(13841u, 4294967295u), ~vec2<u32>(1u, 116683u))), 1u);
    var_1 = ~4294967295u;
    let var_2 = Struct_1(vec4<i32>(arg_2.b.d, arg_2.b.a.x, 28994i, firstLeadingBit(-firstLeadingBit(u_input.a.x))), arg_2.b.b, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.d.c.x, 466f))))), _wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))), var_0), firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(arg_2.d.a.wxx, u_input.a.yyx), u_input.a.yxx) >> (0u % 32u)));
    return arg_2.d.c.x;
}

fn func_1(arg_0: vec2<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1813f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(any(vec3<bool>(true, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), Struct_2(true, Struct_1(u_input.a, vec2<i32>(50302i, u_input.a.x), vec4<f32>(arg_0.x, -976f, 271f, 587f), u_input.a.x), vec4<bool>(false, false, true, false), Struct_1(u_input.a, u_input.a.zw, vec4<f32>(arg_0.x, 861f, 431f, arg_0.x), u_input.a.x))))), true)));
    var_0 = -433f;
    var_0 = _wgslsmith_f_op_f32(748f - _wgslsmith_f_op_f32(f32(-1f) * -1168f));
    return abs(abs(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-60984i, u_input.a.x)), u_input.a.x), _wgslsmith_div_i32(i32(-1i) * -1i, ~u_input.a.x), min(_wgslsmith_div_i32(1500i, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), abs(-20033i & u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(false, Struct_1(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-631f, 651f))), vec2<i32>(u_input.a.x, 2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-539f, 312f, -445f, 684f), vec4<f32>(192f, -713f, -2519f, -1000f), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1504f, 1000f, 624f, -546f), vec4<f32>(-1201f, -663f, -1310f, 1970f)))), -2147483647i), vec4<bool>(any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), true)), true, !(true && (1i > u_input.a.x)), any(vec2<bool>(true, true))), Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a.x, -14640i, u_input.a.x), u_input.a), u_input.a, u_input.a << (vec4<u32>(0u, 28314u, 1u, 3692u) % vec4<u32>(32u))), max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), ~u_input.a)), vec2<i32>(max(func_1(vec2<f32>(938f, -1312f)).x, u_input.a.x), ~_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1289f, -609f, 3358f, 223f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1920f, 775f, -304f, 953f))), vec4<bool>(false, true, true, false))))), -2147483647i));
    let var_1 = var_0.b.c.yzw;
    let var_2 = Struct_2(true, var_0.d, var_0.c, Struct_1(vec4<i32>((43583i & var_0.d.a.x) ^ var_0.b.b.x, 27808i, var_0.b.a.x, -17789i), var_0.d.b | vec2<i32>(min(0i, u_input.a.x), -16957i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.b.c))), -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.d.b.x, u_input.a.x, var_0.b.d, 51384i), vec4<i32>(-23506i, 0i, 1i, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -806f) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(667f)))), Struct_1(~(~vec4<i32>(33938i, u_input.a.x, -2147483647i, u_input.a.x)), ~_wgslsmith_sub_vec2_i32(-var_0.d.a.xy, ~u_input.a.zx), var_2.b.c, var_2.d.a.x), select(!(!select(vec4<bool>(false, true, var_0.c.x, var_2.c.x), var_2.c, false)), var_2.c, any(var_2.c.zy)), Struct_1(vec4<i32>(func_1(vec2<f32>(var_0.b.c.x, 331f)).x, 16510i, -2147483647i, 1i), select(var_0.d.b, vec2<i32>(-1i) * -var_0.d.b, vec2<bool>(false, any(var_0.c))), var_0.d.c, -2147483647i >> (_wgslsmith_mult_u32(1u, max(0u, 1u)) % 32u)));
    var_3 = var_2;
    var var_4 = var_2;
    var var_5 = var_0.d;
    var var_6 = vec3<f32>(var_4.d.c.x, var_5.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1168f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) * var_0.b.c.x));
    var_3 = Struct_2(true, var_2.d, var_0.c, Struct_1(_wgslsmith_sub_vec4_i32(var_5.a, vec4<i32>(-var_4.b.a.x, 2147483647i, -16027i, _wgslsmith_dot_vec3_i32(var_3.b.a.zxy, var_2.d.a.yxy))), vec2<i32>(1i, -1i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -182f, var_5.c.x, var_6.x) * _wgslsmith_f_op_vec4_f32(var_3.d.c + var_0.b.c)))), 62253i));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(var_2.b.d | -11900i) | max(_wgslsmith_mod_i32(-1i, var_0.d.b.x), var_0.b.a.x));
}

