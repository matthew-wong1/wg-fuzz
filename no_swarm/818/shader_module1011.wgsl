struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<f32>, arg_3: i32) -> vec3<bool> {
    global0 = vec3<bool>(!all(!vec3<bool>(true, true, global0.x)), global0.x, all(!vec2<bool>(false, !global0.x)));
    global0 = vec3<bool>(global0.x, !((~u_input.c.x < (u_input.d.x | u_input.d.x)) && global0.x), true);
    let var_0 = Struct_2(Struct_1(!vec4<bool>(global0.x, all(vec4<bool>(global0.x, true, false, false)), true, any(vec4<bool>(global0.x, false, global0.x, false))), arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -172f)), _wgslsmith_f_op_vec2_f32(-arg_0.xz)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(arg_2.xx)))))), _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, -24520i, 1i), vec3<i32>(15396i, 2147483647i, 9058i)) >> (select(vec3<u32>(u_input.d.x, 4294967295u, 22513u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, u_input.c.x, 36397u), vec3<u32>(4294967295u, u_input.c.x, 17338u), vec3<u32>(27717u, u_input.d.x, 51245u)), global0.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, -9488i, u_input.e), vec3<i32>(arg_1, 2147483647i, -12491i) & vec3<i32>(1i, u_input.b, u_input.e)), abs(vec3<i32>(arg_1, -1i, arg_1)))), -319f, Struct_1(vec4<bool>(all(!vec4<bool>(false, global0.x, global0.x, global0.x)), true, any(select(global0.xz, global0.xy, vec2<bool>(global0.x, false))), any(!vec4<bool>(true, false, false, global0.x))), _wgslsmith_mod_i32(~_wgslsmith_sub_i32(1i, arg_3), ~(~u_input.b)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, 1190f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, arg_2.x))))))));
    let var_1 = select(_wgslsmith_mod_i32(0i, 55745i), select(-1i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -60031i) & vec3<i32>(arg_1, -2147483647i, -42828i), vec3<i32>(0i, var_0.a.b, 2147483647i))), global0.x), !((_wgslsmith_f_op_f32(exp2(arg_0.x)) == _wgslsmith_f_op_f32(floor(-780f))) | false));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_2.zz))), arg_2.x, Struct_3(arg_2, firstTrailingBit(23051u), var_0, all(var_0.a.a.wwx)));
    return vec3<bool>(true && !var_2.c.d, !any(select(var_0.a.a, vec4<bool>(false, true, var_2.c.d, false), !global0.x)), true);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = -856f;
    global0 = !select(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0, var_0, 1695f)), u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1538f, var_0, var_0)), 34882i), vec3<bool>(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(944f, var_0, var_0, 219f)), firstLeadingBit(u_input.a), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, 964f, var_0), vec3<f32>(var_0, var_0, -971f)), 56140i).x, !any(vec3<bool>(true, false, global0.x)), true), !(!func_3(vec4<f32>(var_0, var_0, var_0, var_0), 36437i, vec3<f32>(-510f, 365f, 664f), u_input.a)));
    global0 = vec3<bool>(global0.x, !(u_input.b > u_input.e), global0.x);
    return Struct_1(select(select(!(!vec4<bool>(true, global0.x, false, true)), select(!vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, true, global0.x), any(global0.yy)), vec4<bool>(!global0.x, !global0.x, true, !global0.x)), !(!(!vec4<bool>(global0.x, global0.x, global0.x, false))), select(vec4<bool>(true, global0.x, global0.x & true, global0.x), select(!vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, global0.x, true, global0.x)), true)), ~(-2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
}

fn func_1() -> i32 {
    let var_0 = -196f;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-482f, -290f, var_0), vec3<f32>(2117f, var_0, 144f)), vec3<f32>(1792f, var_0, var_0)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -635f)))))), 2503u, Struct_2(func_2(10684u), select(u_input.a, -1i, global0.x), _wgslsmith_f_op_f32(-func_2(~0u).c.x), func_2(4294967295u)), any(func_2(firstTrailingBit(4294967295u)).a.yzz));
    let var_2 = -28037i;
    let var_3 = var_1.c.d;
    var var_4 = Struct_1(!select(var_3.a, select(select(vec4<bool>(false, true, global0.x, true), vec4<bool>(false, false, var_3.a.x, global0.x), var_3.a.x), vec4<bool>(false, true, global0.x, false), var_1.c.a.a), func_2(9973u).a), 1i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_3.c + vec2<f32>(433f, -1532f)), vec2<f32>(-2346f, var_1.a.x), !vec2<bool>(var_3.a.x, true))))))));
    return _wgslsmith_add_i32(func_2(0u).b >> ((~_wgslsmith_div_u32(var_1.b, 1u) ^ var_1.b) % 32u), (var_3.b >> (~(u_input.d.x | u_input.c.x) % 32u)) & -reverseBits(~var_4.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.c.x);
    let var_1 = 1f;
    var var_2 = -select(vec2<i32>(select(u_input.b, func_1(), global0.x), 1i), select(min(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.b, -2147483647i)), abs(vec2<i32>(u_input.b, 0i)), !global0.x) << (vec2<u32>(max(12026u, var_0), ~var_0) % vec2<u32>(32u)), true);
    let var_3 = vec3<bool>(global0.x, func_2(abs(select(var_0 & u_input.c.x, u_input.d.x, true))).a.x, false);
    var_2 = ~vec2<i32>(-u_input.e, var_2.x);
    var var_4 = vec2<u32>(max(var_0, var_0), var_0);
    global0 = var_3;
    global0 = func_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1140f, -989f, 2978f, var_1)))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e << (var_0 % 32u), -u_input.a, -2147483647i, u_input.b & u_input.a), vec4<i32>(-11505i, -44440i, 49310i, 7200i) & countOneBits(vec4<i32>(var_2.x, var_2.x, u_input.b, var_2.x))), abs(var_2.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, var_1)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -395f))))), var_1), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_2.x), vec2<i32>(42319i, var_2.x) >> (u_input.c % vec2<u32>(32u))), 0i) ^ -32877i);
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_dot_vec2_i32(vec2<i32>(func_2(u_input.d.x).b, ~(-1i)), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.x, var_2.x), -vec2<i32>(var_2.x, 10972i))) | _wgslsmith_mod_i32(abs(-1i), countOneBits(-25315i)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~(i32(-1i) * -2147483647i), ~(-15691i), min(0i, abs(var_2.x))), _wgslsmith_div_i32(~(-1i), max(1i, func_1()))));
}

