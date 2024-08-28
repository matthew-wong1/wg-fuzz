struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = Struct_2(!select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, false, false)), select(true, true, false)), vec2<bool>(all(vec2<bool>(true, false)), true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1137f)) + _wgslsmith_f_op_f32(abs(-784f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(985f, -686f))))), u_input.a), vec3<bool>(select(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true))), !all(vec2<bool>(true, true)), true), true, any(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_1(580f, var_0.b.b, ~_wgslsmith_mod_vec3_i32(select(u_input.a, var_0.b.c, false), ~(vec3<i32>(u_input.a.x, 2147483647i, 30900i) | vec3<i32>(var_0.b.c.x, -1i, 0i))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-126f)) * _wgslsmith_f_op_f32(floor(var_1.b.x))), _wgslsmith_f_op_vec2_f32(-var_1.b), var_0.b.c & _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c.x, reverseBits(var_0.b.c.x), var_1.c.x), _wgslsmith_clamp_vec3_i32(var_1.c, ~u_input.a, ~var_0.b.c), _wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.a.x, var_1.c.x, 0i), vec3<i32>(u_input.a.x, u_input.a.x, -51268i), false), vec3<i32>(var_1.c.x, -1i, u_input.a.x) | vec3<i32>(var_0.b.c.x, u_input.a.x, var_0.b.c.x))));
    var_0 = Struct_2(select(!vec2<bool>(true, all(vec4<bool>(var_0.a.x, var_0.c.x, true, var_0.c.x))), vec2<bool>(var_0.a.x && var_0.c.x, false), !var_0.c.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -772f), var_0.b.b, select(vec3<i32>(-var_0.b.c.x, 83136i, ~var_0.b.c.x), _wgslsmith_clamp_vec3_i32(select(u_input.a, u_input.a, var_0.c.x), -vec3<i32>(-14068i, var_0.b.c.x, 1i), ~vec3<i32>(var_0.b.c.x, var_1.c.x, var_0.b.c.x)), var_0.c)), !vec3<bool>(all(vec4<bool>(var_0.c.x, var_0.c.x, var_0.a.x, true)) || false, var_0.a.x, !var_0.c.x));
    var_1 = var_0.b;
    return any(vec4<bool>(true, all(!var_0.c) & true, any(select(var_0.c.zy, vec2<bool>(false, var_0.c.x), vec2<bool>(var_0.c.x, true))), var_0.c.x));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(732f * arg_0))));
    let var_1 = Struct_1(-1086f, _wgslsmith_f_op_vec2_f32(-var_0.yy), vec3<i32>(u_input.a.x, u_input.a.x, ~(-(~(-74161i)))));
    var var_2 = _wgslsmith_div_i32(-2147483647i, ~(-abs(firstTrailingBit(var_1.c.x))));
    let var_3 = vec3<f32>(-1101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.x)))) + _wgslsmith_f_op_f32(-arg_0))), var_0.x);
    let var_4 = func_3();
    return !vec4<bool>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b, 0u, u_input.b, 1u)), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) & vec4<u32>(4294967295u, 102128u, u_input.b, u_input.b)) <= (max(u_input.b, u_input.b) & max(54389u, u_input.b)), false, true, !var_4);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<i32>) -> i32 {
    var var_0 = !arg_2;
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + arg_0))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1424f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1461f))))));
    let var_2 = arg_1;
    let var_3 = Struct_2(var_1.wx, Struct_1(arg_0, vec2<f32>(-1461f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(377f - 1052f) * _wgslsmith_f_op_f32(943f + -972f))), u_input.a), select(!select(!var_1.zzw, select(vec3<bool>(var_1.x, arg_2, false), vec3<bool>(arg_1.x, true, true), var_2.x), var_1.x && arg_1.x), !func_2(arg_0).wxx, select(func_2(arg_0).wxy, vec3<bool>(arg_1.x, arg_1.x, arg_0 == -110f), select(select(var_1.yyy, vec3<bool>(var_1.x, var_1.x, arg_2), var_1.wyz), vec3<bool>(true, true, true), true))));
    var_1 = vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -177f) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.b.b.x * var_3.b.a))), -538f)), all(vec3<bool>((true == arg_2) && (false && arg_1.x), true, func_3())), arg_2, !(var_1.x | !(arg_0 <= 937f)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(select(2147483647i, u_input.a.x, true) | countOneBits(1i), u_input.a.x, -1i) | -2147483647i);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1891f, -604f, 651f, 111f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1050f, -109f, 988f, -111f) - vec4<f32>(390f, 1448f, 440f, 799f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-967f, _wgslsmith_f_op_f32(trunc(-1000f)), -565f, _wgslsmith_f_op_f32(f32(-1f) * -512f))), vec4<bool>(!select(false, false, false), 1i <= func_1(609f, vec2<bool>(true, false), true, vec2<i32>(var_0, 0i)), func_2(1f).x, false))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(583f)) - 1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f) + _wgslsmith_f_op_f32(f32(-1f) * -1504f)), _wgslsmith_f_op_f32(f32(-1f) * -893f))), 782f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-464f + _wgslsmith_f_op_f32(step(-357f, -403f))), -417f))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -1589f, false)), var_1.x, var_1.x);
    let var_3 = var_1;
    var_2 = _wgslsmith_f_op_vec3_f32(-var_1.xzy);
    var var_4 = vec2<bool>(_wgslsmith_f_op_f32(min(1699f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(552f * var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -245f), any(vec4<bool>(true, false, true, true)))))) <= var_3.x, var_3.x != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_1.x)))));
    let var_5 = -1757f;
    let x = u_input.a;
    s_output = StorageBuffer(-(-7287i >> (0u % 32u)), countOneBits(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39393u), vec2<u32>(u_input.b, 32536u)), firstLeadingBit(u_input.b), abs(u_input.b))), ~(~(~4294967295u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(484f))), 232f, var_5));
}

