struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = vec3<bool>(any(select(vec4<bool>(true, 8224u < u_input.e, u_input.a.x >= 22354i, true), vec4<bool>(true, all(vec2<bool>(false, true)), all(vec3<bool>(true, false, false)), any(vec2<bool>(false, true))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false))))), true, true);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-636f, -789f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1596f)))));
    let var_2 = -2147483647i;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-849f, 568f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1204f, -457f))), 1f)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3());
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(var_0.x - -239f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3());
    let var_2 = Struct_1(u_input.d.zx, arg_0.b);
    let var_3 = arg_0;
    return var_3.a.x >> (4294967295u % 32u);
}

fn func_1() -> vec3<f32> {
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~u_input.b, ~58720u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, u_input.e, 0u, u_input.e)), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u))), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(15443u, 15922u, u_input.e), ~_wgslsmith_add_u32(u_input.e, 0u), 32835u));
    let var_1 = select(!vec4<bool>(func_2(Struct_1(u_input.d.xx, 1200f)) < countOneBits(-1941i), false, all(vec2<bool>(true, true)), false && all(vec4<bool>(false, false, true, true))), select(select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(false, false, false, true)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(false, true, true, false)), all(vec4<bool>(true, false, false, true)) | all(vec3<bool>(false, false, true))), vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), select(false, true, true), true, false), ~(~var_0) <= var_0), vec4<bool>(4294967295u > var_0, any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), false & all(vec4<bool>(true, false, true, false)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true))));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.c, -firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.c.x, -1i, 0i, 0i)))), -select(-_wgslsmith_div_i32(-1i, u_input.a.x), 1i, var_1.x), _wgslsmith_dot_vec3_i32(~(u_input.a << (~vec3<u32>(1637u, var_0, 1u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(u_input.d & u_input.c.xxw, u_input.a) << (~(vec3<u32>(u_input.b, u_input.b, 0u) ^ vec3<u32>(16825u, var_0, var_0)) % vec3<u32>(32u))), u_input.a.x);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -101f)))))))));
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_3))));
    return vec3<f32>(var_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + -2808f) * var_3), 1025f)), var_3);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(vec2<i32>(u_input.d.x, _wgslsmith_mod_i32(~arg_2.a.x, _wgslsmith_dot_vec2_i32(arg_2.a, vec2<i32>(arg_2.a.x, u_input.d.x)))), _wgslsmith_f_op_f32(-388f + 432f));
    var var_1 = var_0.a.x;
    let var_2 = select(vec3<bool>(any(vec2<bool>(true, true)) && true, u_input.b == ~(~1u), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), vec3<bool>(true, true == select(var_0.a.x >= u_input.c.x, true, true), false), true);
    let var_3 = min(vec4<u32>(4294967295u, 0u, ~u_input.e, _wgslsmith_sub_u32(u_input.b, arg_0)) << (_wgslsmith_div_vec4_u32(vec4<u32>(42076u, arg_0, arg_0, arg_0), abs(vec4<u32>(1u, u_input.e, u_input.e, u_input.e))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(arg_0, u_input.e), 1u, ~4294967295u, arg_0)) | _wgslsmith_clamp_vec4_u32(reverseBits(~vec4<u32>(u_input.b, u_input.e, 0u, u_input.e)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 8816u, arg_0, 65482u), abs(vec4<u32>(u_input.e, arg_0, arg_0, 4294967295u))) % vec4<u32>(32u)), countOneBits(vec4<u32>(~15758u, ~4294967295u, _wgslsmith_clamp_u32(94372u, 1u, 5187u), 0u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(16344u, u_input.e, 21112u, 54162u), ~vec4<u32>(19484u, arg_0, u_input.e, u_input.b)));
    let var_4 = Struct_1(arg_2.a, arg_2.b);
    return ~(~(~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(abs(reverseBits(4294967295u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 22676u, 44091u, u_input.b), max(vec4<u32>(72862u, 0u, 30602u, u_input.e), vec4<u32>(u_input.b, u_input.b, 4294967295u, 105813u))) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-406f, 181f, -850f), _wgslsmith_f_op_vec3_f32(func_1()), true))))), Struct_1(vec2<i32>(u_input.d.x, u_input.a.x) ^ abs(abs(vec2<i32>(u_input.d.x, u_input.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f * 1000f) + -821f)));
    var_0 = _wgslsmith_mod_u32(countOneBits(12014u), _wgslsmith_clamp_u32(u_input.e, u_input.b, _wgslsmith_mult_u32(30189u, countOneBits(4294967295u) & (4294967295u >> (u_input.b % 32u)))));
    let var_1 = vec3<u32>(max(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e, u_input.e), vec3<u32>(u_input.b, 0u, u_input.b)) << (u_input.b % 32u), u_input.e), 1911u), u_input.b, u_input.e);
    var var_2 = i32(-1i) * -1i;
    var var_3 = Struct_1(~_wgslsmith_div_vec2_i32(u_input.d.zy, _wgslsmith_div_vec2_i32(u_input.c.zx, vec2<i32>(17862i, u_input.a.x)) & (vec2<i32>(0i, u_input.a.x) ^ vec2<i32>(u_input.c.x, 9551i))), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-770f + _wgslsmith_f_op_vec3_f32(func_1()).x)));
}

