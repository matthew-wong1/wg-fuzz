struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1209f, -270f)) - arg_2)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(round(arg_2))))))));
    let var_2 = Struct_1(u_input.d, abs(~0i), _wgslsmith_div_f32(-188f, _wgslsmith_f_op_f32(trunc(655f))));
    var var_3 = var_2;
    var_1 = var_3.c;
    return vec4<u32>(_wgslsmith_add_u32((firstLeadingBit(0u) >> (_wgslsmith_sub_u32(u_input.a, arg_1.x) % 32u)) & _wgslsmith_clamp_u32(arg_1.x | arg_0, 1u, ~var_2.a.x), var_3.a.x), abs(1u), var_2.a.x, select(4294967295u, 4294967295u, false));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    let var_0 = Struct_1(vec4<u32>(0u, arg_3, arg_3, ~_wgslsmith_div_u32(select(16414u, 121664u, false), 1u)), arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1140f));
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(arg_3, ~(arg_1.a.x | arg_1.a.x)), _wgslsmith_div_u32(0u, ~arg_3), ~(~arg_3), var_0.a.x), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(628f, _wgslsmith_f_op_f32(-137f + var_0.c))))));
    var_1 = var_0;
    var var_2 = func_3(~(~1u), vec3<u32>(_wgslsmith_sub_u32(1u, ~arg_1.a.x), countOneBits(var_1.a.x | var_0.a.x), u_input.c.x), _wgslsmith_f_op_f32(-var_1.c));
    let var_3 = !select(vec3<bool>(true, true, true), vec3<bool>(true && all(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), any(vec3<bool>(true, true, true))), !all(vec2<bool>(false, true)));
    return arg_1.b;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(u_input.b.x, u_input.c.x, ~u_input.c.x, _wgslsmith_mod_u32(~(~4294967295u), 54086u)), 8718i, _wgslsmith_f_op_f32(max(arg_1, 2234f)));
    var var_1 = u_input.b.yyx;
    var_1 = _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(min(4294967295u, 34903u), 0u, ~50683u), ~(~var_0.a.xww)), _wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(var_1.x, 1u, var_0.a.x)), vec3<u32>(~var_1.x & 56931u, ~1u, firstTrailingBit(~50078u))));
    let var_2 = ~var_0.b & -1i;
    let var_3 = -4667i;
    return Struct_1(firstTrailingBit(select(abs(vec4<u32>(var_1.x, u_input.a, u_input.b.x, var_1.x)), u_input.b, vec4<bool>(var_1.x < 4294967295u, false, true, true))), 36316i, var_0.c);
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = !(!vec3<bool>(true, any(vec2<bool>(true, true)), -14993i <= arg_0.b));
    let var_1 = func_4(_wgslsmith_add_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(-70055i, 33754i, 6358i, 2147483647i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, 1i, -2147483647i, -1i) >> (~vec4<u32>(arg_0.a.x, u_input.d.x, 1u, 2489u) % vec4<u32>(32u)), vec4<i32>(max(1i, -36168i), firstLeadingBit(-3331i), _wgslsmith_sub_i32(arg_0.b, arg_0.b), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), vec4<i32>(14095i, 2147483647i, arg_0.b, 27308i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.c))))))), _wgslsmith_mod_vec2_i32(-vec2<i32>(arg_0.b, arg_0.b) & vec2<i32>(-arg_0.b, 13868i), vec2<i32>(abs(func_2(vec2<f32>(arg_0.c, -1235f), arg_0, vec3<i32>(17159i, -8113i, arg_0.b), 34838u)), max(~arg_0.b, 2147483647i))));
    let var_2 = vec2<u32>(var_1.a.x, func_3(var_1.a.x, _wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(var_1.a.x), var_1.a.x, max(var_1.a.x, 1u)), abs(arg_0.a.zzw) ^ var_1.a.wwz), var_1.c).x);
    var var_3 = var_0.x & any(vec4<bool>(false, var_0.x, !any(vec3<bool>(false, false, false)), true));
    var_3 = var_0.x;
    return (2147483647i > firstLeadingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 20542i, var_1.b, var_1.b), vec4<i32>(var_1.b, -1i, arg_0.b, arg_0.b)))) || var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(u_input.d, ~0i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-207f - 881f) + -267f), 232f)));
    var var_1 = select(select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), func_1(var_0.a)), vec4<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(false, false, false)), true, true), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, var_0.a.c < var_0.a.c, all(vec2<bool>(true, true)), true), vec4<bool>(true, true, true, true)), vec4<bool>(!all(vec3<bool>(true, false, false)), any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), true)), !select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), true)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), any(vec2<bool>(false, false))), vec4<bool>(true, any(vec4<bool>(true, false, false, false)), var_0.a.c != -543f, true), true));
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(((var_0.a.b << (1u % 32u)) | countOneBits(1i)) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a, u_input.a), u_input.b.zzx) % 32u), _wgslsmith_mod_i32(-1i, firstTrailingBit(1i)), _wgslsmith_mult_i32(reverseBits(i32(-1i) * -2147483647i), var_0.a.b)), vec3<i32>(-1i, 2147483647i, var_0.a.b));
    var_0 = Struct_2(func_4(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 36897i, var_0.a.b, var_0.a.b), -vec4<i32>(1i, 1i, -2147483647i, var_0.a.b)), reverseBits(vec4<i32>(var_0.a.b, var_2.x, 47151i, var_0.a.b) & vec4<i32>(2147483647i, -1i, -1i, var_2.x))), var_0.a.c, ~var_2.yx));
    let var_3 = select(vec4<bool>(!(var_2.x == var_2.x), 0u <= var_0.a.a.x, false, var_1.x), !vec4<bool>(true, var_1.x, var_1.x, select(false, var_1.x, true)), vec4<bool>(!(!(!var_1.x)), !var_1.x, true, !any(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x), false))));
    var var_4 = func_4(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, _wgslsmith_add_i32(2147483647i | var_0.a.b, 2147483647i), func_4(abs(vec4<i32>(var_2.x, -27152i, var_0.a.b, var_0.a.b)), _wgslsmith_f_op_f32(1729f - var_0.a.c), var_2.zx).b, _wgslsmith_add_i32(-23249i, firstLeadingBit(var_2.x))), vec4<i32>(0i, -31741i, -_wgslsmith_div_i32(-41584i, var_0.a.b), abs(func_2(vec2<f32>(var_0.a.c, 176f), Struct_1(var_0.a.a, var_2.x, -846f), vec3<i32>(var_0.a.b, 0i, 46437i), 4294967295u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-var_0.a.c))))) + -838f), ~vec2<i32>(var_0.a.b, countOneBits(var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(30188i ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, var_2.x, var_4.b), vec3<i32>(-1i, var_0.a.b, 0i), var_1.wyz), select(vec3<i32>(var_2.x, var_2.x, var_4.b), vec3<i32>(-7421i, 1i, var_0.a.b), true)), var_4.b));
}

