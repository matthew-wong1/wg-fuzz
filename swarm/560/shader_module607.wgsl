struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = select(vec4<i32>(u_input.b, firstTrailingBit(reverseBits(u_input.b)), u_input.b, 2147483647i), countOneBits(reverseBits(vec4<i32>(24526i, -u_input.b, 0i, -2147483647i))), false);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1448f, -828f, 959f), vec3<f32>(arg_0.x, arg_0.x, 906f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, -603f, -2005f))) * vec3<f32>(arg_0.x, 355f, global0.x))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1131f, global0.x, -935f) * vec3<f32>(arg_0.x, -208f, arg_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -195f, -1089f) * vec3<f32>(arg_0.x, -1368f, -522f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, 1000f, 2469f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -1934f) - vec3<f32>(arg_0.x, global0.x, global0.x))))))));
    let var_1 = ~(~6002u);
    let var_2 = (_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 0i, firstTrailingBit(-62992i), -u_input.b), vec4<i32>(abs(var_0.x), 11068i, countOneBits(0i), -var_0.x)) >> (_wgslsmith_mod_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(u_input.a.x, 62493u, u_input.a.x, var_1))), u_input.a) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(1i, -1i, var_0.x, u_input.b)) ^ min(vec4<i32>(-7506i, 23679i, -8356i, 39422i), vec4<i32>(u_input.b, var_0.x, 0i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -54836i, 9005i, 3824i), vec4<i32>(u_input.b, var_0.x, -1i, u_input.b)) & ~vec4<i32>(u_input.b, var_0.x, var_0.x, u_input.b)), vec4<i32>(firstLeadingBit(-u_input.b), ~1i, _wgslsmith_add_i32(var_0.x, 12271i) << (u_input.a.x % 32u), abs(var_0.x)));
    let var_3 = firstTrailingBit(u_input.a.yxx);
    return true;
}

fn func_2() -> vec2<f32> {
    let var_0 = select(!(!vec3<bool>(any(vec2<bool>(true, true)), true, select(false, true, true))), vec3<bool>(true, true, select(select(any(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, false))), all(vec3<bool>(false, true, true)) & true, u_input.b <= _wgslsmith_sub_i32(-27331i, u_input.b))), !vec3<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), min(u_input.b, u_input.b) != (0i >> (1u % 32u))));
    var var_1 = !vec4<bool>(var_0.x, any(select(!vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), true)), global0.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1367f))), !func_3(_wgslsmith_f_op_vec2_f32(-global0.xx)));
    let var_2 = _wgslsmith_div_u32(u_input.a.x & u_input.a.x, _wgslsmith_mult_u32(1u ^ (_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u) | ~u_input.a.x), 0u));
    let var_3 = vec2<f32>(global0.x, global0.x);
    let var_4 = Struct_2((_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, -1i, u_input.b, 24187i)), vec4<i32>(u_input.b, u_input.b, 1i, -26699i)) | firstLeadingBit(u_input.b << (u_input.a.x % 32u))) & -54007i, ~(~vec2<i32>(1i, 1402i) >> (vec2<u32>(_wgslsmith_div_u32(1u, var_2), _wgslsmith_dot_vec3_u32(u_input.a.yww, vec3<u32>(0u, 29479u, 1u))) % vec2<u32>(32u))));
    return vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), 1459f);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: bool) -> i32 {
    let var_0 = min(~(i32(-1i) * -59661i), arg_1.d);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.a.x, -1000f))) * _wgslsmith_f_op_vec2_f32(global0.yx - vec2<f32>(-1128f, global0.x))), _wgslsmith_f_op_vec2_f32(func_2())), _wgslsmith_f_op_vec2_f32(select(arg_0.a.xy, vec2<f32>(227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(665f + -626f) * arg_1.a.x)), select(arg_0.b.zy, !select(vec2<bool>(true, arg_2), arg_1.b.xy, arg_1.b.x), true))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -179f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(665f * -1000f)))) - _wgslsmith_f_op_vec3_f32(-arg_1.a));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.a.zx))) * arg_1.a.xy), arg_0.a.zy);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(952f - _wgslsmith_f_op_f32(var_1.x + -1000f))), -586f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1.x)), arg_0.a.x, true))));
    return max(_wgslsmith_mult_i32(min(~u_input.b, ~(-2147483647i)), i32(-1i) * -2147483647i), arg_1.c.a) << (~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(81251u, 0u), abs(vec2<u32>(4294967295u, 0u))), 1u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_3(Struct_2(func_1(Struct_4(vec3<f32>(global0.x, -1190f, -256f), vec3<bool>(false, true, false), Struct_2(u_input.b, vec2<i32>(-9536i, 1i)), u_input.b), Struct_4(vec3<f32>(global0.x, -1364f, -1376f), vec3<bool>(true, false, false), Struct_2(2147483647i, vec2<i32>(u_input.b, 37850i)), -1i), all(vec4<bool>(false, false, false, true))), vec2<i32>(_wgslsmith_add_i32(u_input.b, 32539i), u_input.b)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), -780f))), select(vec2<bool>(false, all(vec2<bool>(true, false))), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), 2147483647i);
    let var_1 = u_input.a.xzy;
    let var_2 = vec4<bool>(var_0.a.c.x, false, false, true);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-559f)), _wgslsmith_f_op_f32(select(global0.x, -230f, true)))), global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-260f, global0.x))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.b.x), -654f))), _wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_vec2_f32(func_2()).x));
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 992f, var_0.a.b.x), vec3<f32>(296f, 844f, 2227f)), vec3<f32>(var_0.a.b.x, global0.x, -962f)), vec3<f32>(_wgslsmith_div_f32(global0.x, 862f), global0.x, _wgslsmith_f_op_f32(select(-235f, global0.x, var_0.a.c.x))))), vec3<bool>(select(true, !(!var_2.x), false), all(select(var_2.yxw, select(vec3<bool>(false, true, var_2.x), var_2.yww, var_0.a.c.x), select(true, true, var_0.a.c.x))), _wgslsmith_f_op_f32(sign(-189f)) < _wgslsmith_f_op_f32(max(var_0.a.b.x, global0.x))), Struct_2(var_0.b, abs(countOneBits(var_0.a.a.b) & _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(var_0.a.a.b.x, u_input.b)))), firstTrailingBit(abs(~_wgslsmith_div_i32(var_0.a.a.a, 22897i))));
    let var_4 = var_0.a;
    var var_5 = var_0.a;
    var var_6 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1688f + _wgslsmith_f_op_f32(f32(-1f) * -483f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(668f)), 1f), -42621i, _wgslsmith_mult_i32(-1i, var_3.c.a >> (var_1.x % 32u)) & func_1(var_3, Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-915f, 2204f, var_5.b.x)), var_3.b, var_0.a.a, _wgslsmith_sub_i32(-1i, var_4.a.a)), var_4.c.x));
}

