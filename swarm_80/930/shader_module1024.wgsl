struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
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

var<private> global0: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(min(countOneBits(arg_0.x) & _wgslsmith_div_i32(arg_0.x, 0i), -arg_1.a.a & 24578i)), arg_1.a, Struct_1(arg_0.x), vec3<i32>(~(~abs(18990i)), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0.x, 1i, 21233i), vec4<i32>(arg_1.a.a, 1i, arg_1.a.a, arg_1.b.a))), firstLeadingBit(firstTrailingBit(-11683i))));
    global0 = false;
    var var_1 = u_input.b;
    var var_2 = ~select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(min(u_input.b, u_input.a.x), 4294967295u)), abs(select(vec2<u32>(1504u, 0u), vec2<u32>(u_input.a.x, 9165u), false)) & (vec2<u32>(u_input.a.x, 1u) ^ u_input.a.xy), !(u_input.b >= u_input.a.x));
    var var_3 = false;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = arg_1.a;
    let var_1 = -1000f;
    var var_2 = select(select(func_3(vec2<i32>(_wgslsmith_clamp_i32(arg_0.a, arg_0.a, arg_1.a), _wgslsmith_mod_i32(-2147483647i, arg_1.a)), Struct_2(Struct_1(8582i), arg_0, arg_0, vec3<i32>(45978i, arg_1.a, 1i))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true), vec2<bool>(all(vec3<bool>(true, true, false)), false), true), var_1 > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_1, -1000f)), _wgslsmith_f_op_f32(-var_1)))), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true)));
    global0 = !all(vec4<bool>(var_2.x & !var_2.x, false, any(!vec3<bool>(var_2.x, true, true)), !all(vec4<bool>(false, true, var_2.x, true))));
    global0 = var_2.x;
    return Struct_2(Struct_1(select(-9521i, _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.a, arg_0.a), vec2<i32>(1i, arg_1.a)), var_2.x)), arg_1, Struct_1(_wgslsmith_clamp_i32(~(-arg_1.a), _wgslsmith_mod_i32(1i, arg_1.a << (u_input.a.x % 32u)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_1.a, arg_1.a), vec3<i32>(arg_0.a, arg_0.a, arg_0.a)))), vec3<i32>(arg_1.a, -7682i, _wgslsmith_sub_i32(arg_1.a, arg_0.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> bool {
    global0 = !any(select(vec2<bool>(false, false), vec2<bool>(all(vec2<bool>(true, arg_2)), true), false));
    let var_0 = ~u_input.b;
    let var_1 = select(abs(~select(vec4<u32>(50979u, 42211u, var_0, var_0), vec4<u32>(0u, 23413u, u_input.a.x, u_input.b), arg_2) ^ firstTrailingBit(vec4<u32>(u_input.b, 30267u, 4294967295u, u_input.a.x))), vec4<u32>(var_0 | 33112u, ~var_0, firstLeadingBit(5375u), 1u), (var_0 << (0u % 32u)) >= 3925u);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-813f - -627f) - -311f), _wgslsmith_f_op_f32(min(835f, 463f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1248f)), -616f, select(false, true, arg_2)))), 319f)));
    var var_3 = all(!(!vec3<bool>(arg_2 & arg_2, arg_2, arg_2)));
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: i32) -> bool {
    var var_0 = u_input.a;
    let var_1 = Struct_3(func_4(func_2(Struct_1(~(-2147483647i)), Struct_1(-1364i ^ arg_0.d.x)), arg_0, true), arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1600f), -arg_0.d);
    var var_2 = _wgslsmith_div_vec2_u32(var_0.zx, _wgslsmith_add_vec2_u32(vec2<u32>(abs(3504u), u_input.a.x), countOneBits(_wgslsmith_div_vec2_u32(var_0.yx | vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, 4294967295u)))));
    let var_3 = false;
    let var_4 = arg_0;
    return var_3;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: i32, arg_3: i32) -> i32 {
    let var_0 = func_3(arg_0.d.xy, func_2(arg_0.b, arg_0.b)).x;
    global0 = !(_wgslsmith_f_op_f32(-1103f - _wgslsmith_f_op_f32(f32(-1f) * -639f)) >= _wgslsmith_f_op_f32(round(-1095f)));
    global0 = any(arg_1.zy);
    let var_1 = -vec4<i32>(-12193i, _wgslsmith_clamp_i32(-22626i << (u_input.b % 32u), _wgslsmith_add_i32(0i, 2147483647i), arg_0.b.a), arg_3, i32(-1i) * -arg_3) >> (vec4<u32>(~9743u, ~1u, 4294967295u, 0u) % vec4<u32>(32u));
    global0 = !((_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, -1143f)) == _wgslsmith_f_op_f32(step(arg_0.c, arg_0.c))) | all(select(!vec4<bool>(false, false, true, var_0), vec4<bool>(arg_0.a, false, arg_1.x, var_0), true)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1099f;
    var_0 = 1085f;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(214f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1066f, 502f, true)) - _wgslsmith_div_f32(958f, 734f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(674f, 1000f) + vec2<f32>(-636f, 315f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1333f, -1821f), vec2<f32>(398f, -1093f)))))));
    let var_2 = vec4<i32>(33096i, -2147483647i, func_5(Struct_3(!func_1(Struct_2(Struct_1(-2147483647i), Struct_1(-2147483647i), Struct_1(1i), vec3<i32>(76046i, -8851i, -1i)), vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-39062i, 28873i), -1i), Struct_1(min(1i, -1i)), var_1.x, vec3<i32>(-39371i, max(-2147483647i, -45547i), firstLeadingBit(-9111i))), select(vec3<bool>(true, select(false, false, false), true), vec3<bool>(true, true, true), true), ~0i, -2147483647i), _wgslsmith_sub_i32(1i, 1i));
    global0 = !((func_4(func_2(Struct_1(0i), Struct_1(-18346i)), Struct_2(Struct_1(2147483647i), Struct_1(var_2.x), Struct_1(2147483647i), vec3<i32>(var_2.x, 23156i, var_2.x)), false) || !any(vec3<bool>(true, false, true))) || true);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-var_1.x) <= _wgslsmith_f_op_f32(f32(-1f) * -301f), func_2(func_2(Struct_1(1i), Struct_1(~var_2.x)).a, Struct_1(var_2.x)).b, _wgslsmith_f_op_f32(var_1.x - -381f), _wgslsmith_mod_vec3_i32((_wgslsmith_mult_vec3_i32(var_2.zyz, vec3<i32>(var_2.x, var_2.x, var_2.x)) ^ var_2.xzy) & (vec3<i32>(-1i) * -var_2.wyw), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~var_2.xyx, var_2.xzw >> (u_input.a % vec3<u32>(32u))), var_2.yzz)));
    let var_4 = !(!vec4<bool>(var_3.a, var_3.a && !var_3.a, true, false));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

