struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-28503i, 1542i, 2172i, 8289i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<f32> {
    global0 = ~vec4<i32>(12424i, reverseBits(-_wgslsmith_clamp_i32(-15250i, -40246i, global0.x)), abs(global0.x), -1i);
    let var_0 = Struct_1(select(vec4<i32>(abs(_wgslsmith_mod_i32(global0.x, global0.x)), global0.x, -25818i >> (firstTrailingBit(4294967295u) % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(11586i, global0.x, 1i, global0.x), ~vec4<i32>(50937i, 44039i, global0.x, 3735i))), ~vec4<i32>(global0.x, global0.x, 29949i, global0.x) ^ vec4<i32>(global0.x, firstLeadingBit(-1i), -45479i, 2147483647i), !vec4<bool>(false, false, true, any(vec4<bool>(true, false, true, true)))), _wgslsmith_mod_u32(u_input.a, u_input.a) << (~u_input.a % 32u), select(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 23127u), vec4<u32>(~u_input.a, 31192u & u_input.a, u_input.a, u_input.a)), abs(firstLeadingBit(vec4<u32>(8988u, u_input.a, u_input.a, u_input.a))), vec4<bool>(false, false, true || (u_input.a == 4161u), global0.x != global0.x)), _wgslsmith_mod_vec2_u32(abs(min(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u)), vec2<u32>(u_input.a, 27115u) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)))), vec2<u32>(u_input.a, ~u_input.a)));
    let var_1 = Struct_2(select(firstLeadingBit(vec2<u32>(~0u, ~var_0.d.x)), var_0.c.xz, any(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)))));
    let var_2 = 13825u;
    let var_3 = var_0;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1221f, 198f, 762f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(639f, 410f, -1017f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(201f, 1049f)), -925f, -253f))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: bool, arg_3: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3());
    global0 = vec4<i32>(_wgslsmith_mult_i32(-2069i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -27416i, -20212i, arg_3.x), abs(firstTrailingBit(vec4<i32>(arg_3.x, global0.x, 0i, 2147483647i))))), _wgslsmith_add_i32(-1i, countOneBits(-arg_3.x)) >> (countOneBits(1u) % 32u), -49368i, _wgslsmith_dot_vec4_i32(~max(vec4<i32>(1i, arg_0.x, 1i, 57016i), vec4<i32>(arg_3.x, arg_0.x, global0.x, -1i)) ^ vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(arg_0.x, arg_0.x)), -30234i, i32(-1i) * -2147483647i, 2147483647i), -select(select(vec4<i32>(global0.x, global0.x, arg_3.x, 0i), vec4<i32>(arg_3.x, 30476i, arg_0.x, arg_3.x), arg_2), vec4<i32>(29214i, -2147483647i, 0i, arg_0.x) & vec4<i32>(arg_3.x, arg_0.x, arg_0.x, 28977i), true)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1791f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * -895f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), -1210f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -123f))))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2134f, _wgslsmith_f_op_f32(step(1031f, var_0.x)), 1000f) + vec3<f32>(var_0.x, -1258f, _wgslsmith_f_op_f32(f32(-1f) * -1197f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 343f, -1000f)) * vec3<f32>(-977f, _wgslsmith_f_op_f32(-var_0.x), -622f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * -109f), _wgslsmith_f_op_f32(581f * var_0.x), -2475f)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3()).x))), -147f)), -1101f);
    return ~_wgslsmith_div_u32((min(u_input.a, 32908u) ^ ~u_input.a) & ~u_input.a, _wgslsmith_clamp_u32(reverseBits(countOneBits(4294967295u)), countOneBits(~8265u), _wgslsmith_div_u32(u_input.a, u_input.a)));
}

fn func_4(arg_0: u32) -> i32 {
    var var_0 = Struct_1(vec4<i32>(~global0.x, max(1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, 1i, -1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, global0.x, global0.x, 0i), vec4<i32>(3293i, global0.x, global0.x, global0.x), vec4<i32>(45491i, -1i, global0.x, global0.x)))), ~9279i, 1i), _wgslsmith_dot_vec2_u32(select(~(~vec2<u32>(u_input.a, arg_0)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 63854u, 34143u, arg_0), vec4<u32>(25149u, arg_0, u_input.a, 0u)), 1u), vec2<bool>(true, true)), vec2<u32>(~max(u_input.a, 43203u), 40718u)), vec4<u32>(98234u, firstTrailingBit(abs(4294967295u)), 6921u, abs(arg_0) & u_input.a) ^ max(abs(vec4<u32>(u_input.a, arg_0, 1u, u_input.a)), vec4<u32>(arg_0, ~arg_0, ~56958u, 33915u)), _wgslsmith_sub_vec2_u32(~(firstLeadingBit(vec2<u32>(u_input.a, 112817u)) & firstTrailingBit(vec2<u32>(14626u, 18917u))), _wgslsmith_sub_vec2_u32(~vec2<u32>(39438u, u_input.a), vec2<u32>(u_input.a, 80994u)) ^ ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(66463u, 4294967295u))));
    global0 = _wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(-1i, _wgslsmith_add_i32(_wgslsmith_div_i32(global0.x, _wgslsmith_div_i32(-2147483647i, 24342i)), _wgslsmith_mod_i32(-10943i, abs(global0.x))), global0.x, global0.x), var_0.a);
    global0 = -var_0.a;
    return var_0.a.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(true, true, func_4(func_2(arg_0.a.zz << (vec2<u32>(u_input.a, 71093u) % vec2<u32>(32u)), any(vec3<bool>(true, true, false)), arg_0.d.x > 60754u, -arg_0.a.yxw)) != firstLeadingBit(-1i), false);
    let var_1 = Struct_2(arg_0.c.yw);
    let var_2 = arg_0.c.x;
    var_0 = vec4<bool>(var_0.x, true, select(var_0.x, true, (_wgslsmith_sub_i32(arg_0.a.x, -18457i) & arg_0.a.x) >= -41953i), all(select(var_0.yzx, select(var_0.yyy, var_0.yyz, var_0.xyy), vec3<bool>(false, var_0.x, var_0.x))) && !all(!vec3<bool>(var_0.x, var_0.x, var_0.x)));
    let var_3 = -reverseBits(9045i) & abs(arg_0.a.x);
    return Struct_1(~(-arg_0.a), reverseBits(var_2), ~arg_0.c, (vec2<u32>(43477u >> (u_input.a % 32u), abs(arg_0.d.x)) >> (vec2<u32>(min(56336u, 0u), arg_0.d.x) % vec2<u32>(32u))) & min(var_1.a, arg_0.d));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global0 = min(vec4<i32>(global0.x, global0.x, 1i, 1i), -vec4<i32>(firstLeadingBit(0i), 0i, firstTrailingBit(firstLeadingBit(global0.x)), select(arg_0.a.x, arg_0.a.x, false)));
    global0 = vec4<i32>(arg_0.a.x, _wgslsmith_mult_i32(global0.x, arg_0.a.x), -_wgslsmith_clamp_i32(arg_0.a.x, -abs(-3255i), _wgslsmith_div_i32(-1i, arg_0.a.x) ^ -9243i), i32(-1i) * -59791i);
    let var_0 = _wgslsmith_mod_u32(4294967295u, arg_0.d.x);
    global0 = vec4<i32>(2147483647i, min(global0.x, 19303i), -14693i, global0.x);
    let var_1 = vec2<i32>(arg_0.a.x, 0i);
    return Struct_2(_wgslsmith_div_vec2_u32(arg_0.d, vec2<u32>(~firstLeadingBit(37187u), reverseBits(_wgslsmith_add_u32(1u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(Struct_1(~vec4<i32>(global0.x, -1i, 1i, 5969i), firstLeadingBit(0u), firstTrailingBit(~vec4<u32>(u_input.a, 153727u, 4294967295u, 35604u)), vec2<u32>(1u, u_input.a) & ~vec2<u32>(u_input.a, 13510u))));
    var var_1 = global0.x;
    global0 = ~(vec4<i32>(-2147483647i, reverseBits(_wgslsmith_mult_i32(-1i, -2147483647i)), global0.x, -39649i) | ~vec4<i32>(~global0.x, 2147483647i, ~(-1i), ~global0.x));
    global0 = -(~vec4<i32>(_wgslsmith_mult_i32(20740i, global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 15614i, global0.x, global0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global0.x, 1i, global0.x), vec4<i32>(-12794i, global0.x, 1i, 38153i))), -2147483647i, _wgslsmith_sub_i32(-2147483647i & global0.x, _wgslsmith_clamp_i32(global0.x, global0.x, 2147483647i))));
    var_1 = _wgslsmith_dot_vec4_i32(firstTrailingBit(-(vec4<i32>(-16627i, global0.x, -1i, -1i) >> (~vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, u_input.a) % vec4<u32>(32u)))), ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, 1i, global0.x), vec4<i32>(-57302i, -1587i, global0.x, -2147483647i)), vec4<i32>(1i, global0.x, 0i, global0.x)) >> (vec4<u32>(~10184u, _wgslsmith_add_u32(~u_input.a, var_0.a.x), 29085u, select(32305u, u_input.a, true)) % vec4<u32>(32u)));
    var_1 = -global0.x;
    var_1 = countOneBits(1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_3()).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -886f)))))), ~select(~vec2<u32>(u_input.a, var_0.a.x), ~var_0.a, true) | vec2<u32>(~var_0.a.x << ((var_0.a.x >> (var_0.a.x % 32u)) % 32u), ~(~u_input.a)));
}

