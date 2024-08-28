struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-16447i, 50379i, -22i, -20970i) & (vec4<i32>(1i, -1i, -1i, 40412i) >> (vec4<u32>(1u, u_input.b.x, u_input.a, u_input.b.x) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i))), i32(-1i) * -2147483647i, -select(-22928i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-3577i, 2147483647i)), true), ~(-71600i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1919f, -1177f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-377f, 440f) + vec2<f32>(-101f, 582f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(254f, -322f) + vec2<f32>(-2071f, 1764f)), vec2<f32>(-2048f, -482f))))), select(1i, 67900i, any(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))))));
    return var_0.b.x;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(11168u);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1443f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -166f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -882f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1428f, 182f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(845f, -239f)), vec2<f32>(657f, -614f))))));
    var var_2 = Struct_1(vec4<i32>(-2147483647i, ~(i32(-1i) * -1i), reverseBits(~_wgslsmith_add_i32(0i, -1i)), 1i), vec2<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)) * _wgslsmith_f_op_f32(step(343f, -141f))))), -1i);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(197f * var_1.x)), var_2.b.x, _wgslsmith_f_op_f32(max(-1035f, _wgslsmith_f_op_f32(f32(-1f) * -520f))));
    var var_4 = var_0;
    return Struct_3(Struct_2(Struct_1(vec4<i32>(countOneBits(-2147483647i), _wgslsmith_clamp_i32(var_2.c, -1517i, 16474i), var_2.a.x, var_2.a.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.x, var_2.b.x), vec2<f32>(var_3.x, 1000f))), _wgslsmith_mult_i32(~var_2.a.x, 1i)), Struct_1(_wgslsmith_mod_vec4_i32(max(var_2.a, vec4<i32>(-2147483647i, 0i, 45600i, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.c, var_2.c, 60186i, -11464i), var_2.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-145f, var_3.x) + vec2<f32>(var_2.b.x, 1991f))), -28476i & _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c, var_2.a.x), vec2<i32>(var_2.c, var_2.c))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.b.x, var_3.x, 2088f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, var_2.b.x, var_1.x), vec3<f32>(-829f, var_2.b.x, var_1.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-310f, var_1.x)), _wgslsmith_f_op_f32(sign(642f)))) + var_1.x)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> vec4<i32> {
    var var_0 = func_2();
    var var_1 = var_0.a;
    var var_2 = vec3<u32>(14473u, ~(~firstTrailingBit(4294967295u)) ^ 1u, abs(u_input.a ^ _wgslsmith_mult_u32(min(u_input.b.x, u_input.b.x), countOneBits(5027u))));
    let var_3 = all(vec3<bool>(true, !select(any(arg_0.yz), true, true), true));
    var_2 = vec3<u32>(var_2.x, (u_input.b.x >> (var_2.x % 32u)) ^ _wgslsmith_div_u32(reverseBits(var_2.x), ~42440u), 3914u) >> (vec3<u32>((~u_input.a ^ _wgslsmith_mod_u32(var_2.x, 1u)) << (_wgslsmith_div_u32(u_input.a, var_2.x) % 32u), ~(~var_2.x), var_2.x) % vec3<u32>(32u));
    return vec4<i32>(var_0.a.b.a.x, 77345i, _wgslsmith_mod_i32(~1i, var_1.a.c), _wgslsmith_div_i32(firstTrailingBit(select(-20880i, -10004i, var_0.a.a.b.x >= 967f)), var_1.a.a.x));
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(~(-50724i), _wgslsmith_mod_i32(arg_0.a.x, 1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 14913i) | arg_0.a.xw, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c, 20937i), vec2<i32>(arg_0.c, -1i)), abs(vec2<i32>(arg_0.a.x, arg_0.c)))), min(vec2<i32>(i32(-1i) * -35140i, _wgslsmith_mult_i32(0i, arg_0.a.x)), vec2<i32>(17723i, arg_0.a.x) | (arg_0.a.zz << (vec2<u32>(u_input.b.x, u_input.a) % vec2<u32>(32u))))), max(1919i, min(_wgslsmith_sub_i32(49626i, arg_0.a.x), arg_0.c)));
    let var_1 = true;
    var var_2 = arg_0.a;
    var_2 = vec4<i32>(var_2.x, _wgslsmith_mult_i32(~(-2147483647i), var_2.x), -((var_2.x ^ -20842i) >> (~4294967295u % 32u)), var_0.x);
    return StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(821f)), _wgslsmith_f_op_f32(-arg_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = func_4(Struct_1(select(func_1(vec3<bool>(true, true, var_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(810f, 1318f) + vec2<f32>(379f, 659f))), -select(vec4<i32>(24159i, 2147483647i, -1i, -1i), vec4<i32>(-20721i, 8095i, 0i, -61796i), vec4<bool>(var_0, false, var_0, true)), true == all(vec3<bool>(var_0, false, true))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-254f, _wgslsmith_f_op_f32(trunc(880f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-273f, -545f), vec2<f32>(1321f, 319f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-365f, -421f), vec2<f32>(708f, 684f))))), _wgslsmith_clamp_i32(31813i, ~_wgslsmith_div_i32(-53123i, -9028i), 2147483647i)));
}

