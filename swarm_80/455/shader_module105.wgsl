struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(98608u, 1u, 1u);

var<private> global1: Struct_1;

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    return u_input.a.x;
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_1(min(countOneBits(func_3(Struct_1(77485u, global1.b))), _wgslsmith_sub_u32(global0.x, 1u)), vec4<i32>(-1i, 960i, min(_wgslsmith_add_i32(-16965i, 0i), global1.b.x), -_wgslsmith_mod_i32(global1.b.x, _wgslsmith_dot_vec4_i32(global1.b, vec4<i32>(-2147483647i, global1.b.x, global1.b.x, global1.b.x)))));
    global0 = select(~(~vec3<u32>(4294967295u, _wgslsmith_div_u32(1u, 1u), var_0.a)), vec3<u32>(~770u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, global0.x, global1.a, var_0.a), vec4<u32>(global0.x, 14228u, 4065u, var_0.a)), 39150u << (max(var_0.a, firstLeadingBit(global0.x)) % 32u), u_input.a.x), select(select(!select(false, false, false), false, false), false, !(true & any(vec4<bool>(false, true, true, false)))));
    global0 = _wgslsmith_mult_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(global1.a, 4294967295u, 112u) << (vec3<u32>(0u, 4294967295u, global0.x) % vec3<u32>(32u)), vec3<u32>(0u, 80539u, var_0.a)) & vec3<u32>(1u, ~1u, 0u), vec3<u32>(_wgslsmith_sub_u32(global1.a, global1.a) >> (30018u % 32u), 4294967295u, 1u & firstTrailingBit(global1.a)), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true))), max(vec3<u32>(global0.x, 88630u & u_input.a.x, _wgslsmith_mult_u32(var_0.a, 69049u)) >> (~reverseBits(vec3<u32>(1u, u_input.b, 94729u)) % vec3<u32>(32u)), ~vec3<u32>(abs(global0.x), abs(var_0.a), global0.x)));
    var var_1 = var_0.b.x;
    global2 = -abs(2147483647i);
    return ~abs(abs(vec2<u32>(abs(global0.x), 4294967295u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = ~firstLeadingBit(arg_1.b.x);
    let var_1 = 1f;
    let var_2 = abs(vec2<i32>(arg_1.b.x, firstLeadingBit(var_0) | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 37140i), arg_0.b.xz))) << (func_2() % vec2<u32>(32u));
    global1 = Struct_1(_wgslsmith_add_u32(~arg_0.a, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, 1u), global0.zy) << ((16676u | arg_0.a) % 32u))), _wgslsmith_mult_vec4_i32(-abs(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -4945i)), -abs(vec4<i32>(var_0, -70601i, 2147483647i, 0i))));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, -1000f, var_1, var_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2956f, var_1, 601f, var_1)))))));
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_2);
    var var_1 = vec2<bool>(!(!any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), (-reverseBits(18585i) ^ arg_3.b.x) != _wgslsmith_mult_i32(~max(arg_1.b.x, 1i), ~(~arg_0)));
    global0 = firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 0u), _wgslsmith_mult_u32(14666u, 1u), 4294967295u >> (arg_3.a % 32u))) >> (reverseBits(~min(vec3<u32>(arg_3.a, 1u, arg_1.a), vec3<u32>(1u, u_input.b, arg_3.a)) | vec3<u32>(arg_1.a << (arg_3.a % 32u), func_3(Struct_1(1u, vec4<i32>(arg_1.b.x, -2147483647i, arg_1.b.x, arg_0))), 46341u)) % vec3<u32>(32u));
    var var_2 = -213f;
    var var_3 = any(!select(vec4<bool>(all(vec2<bool>(var_1.x, true)), true, all(vec2<bool>(var_1.x, var_1.x)), false), select(select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(true, true, var_1.x, var_1.x), true), !vec4<bool>(var_1.x, var_1.x, var_1.x, false), true), !(true && var_1.x)));
    return max(firstTrailingBit(global1.b), _wgslsmith_add_vec4_i32(-vec4<i32>(13898i, arg_3.b.x, -41776i, 30831i) | vec4<i32>(_wgslsmith_dot_vec3_i32(arg_3.b.xzx, global1.b.zzy), select(arg_0, 0i, var_1.x), ~arg_0, countOneBits(arg_3.b.x)), arg_3.b ^ select(arg_1.b, -arg_3.b, !var_1.x)));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    global2 = 1i;
    var var_0 = vec3<i32>(~_wgslsmith_div_i32(~arg_2.b.x, 0i) ^ -2147483647i, _wgslsmith_mult_i32(select(0i, func_4(-4174i, Struct_1(4294967295u, global1.b), arg_0, arg_1).x, select(true, true, false)) | 46364i, _wgslsmith_mod_i32(-6124i, 17820i)), arg_1.b.x);
    let var_1 = firstLeadingBit(vec2<i32>(-1i) * -(_wgslsmith_div_vec2_i32(arg_2.b.zx, vec2<i32>(arg_1.b.x, arg_2.b.x)) | _wgslsmith_add_vec2_i32(var_0.zx, var_0.yz)));
    global2 = var_1.x;
    global1 = Struct_1(21026u, vec4<i32>(arg_2.b.x, _wgslsmith_mod_i32(select(global1.b.x, var_0.x, true), ~0i), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.x, global1.b.x), var_0.zx | _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.b.x, -2147483647i), global1.b.yy, var_1)), var_1.x));
    return -(~(max(arg_2.b, ~vec4<i32>(global1.b.x, -1i, var_0.x, global1.b.x)) >> (vec4<u32>(func_1(arg_1, Struct_1(4294967295u, arg_1.b), arg_1.b.wy, vec4<bool>(true, false, false, true)).a, 0u, 8586u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, global1.a), vec2<u32>(13857u, 51110u))) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    var_0 = func_5(115f, Struct_1(_wgslsmith_mod_u32(14383u, 1u) ^ select(u_input.a.x << (62938u % 32u), 117368u, u_input.b < 0u), ~func_4(~global1.b.x, func_1(Struct_1(0u, vec4<i32>(12948i, global1.b.x, 4184i, var_0.x)), Struct_1(global1.a, vec4<i32>(12238i, global1.b.x, -1i, -3170i)), global1.b.zx, vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(trunc(-1143f)), func_1(Struct_1(1u, vec4<i32>(var_0.x, -1i, -6622i, var_0.x)), Struct_1(global1.a, vec4<i32>(var_0.x, -66149i, 2147483647i, -8904i)), vec2<i32>(global1.b.x, var_0.x), vec4<bool>(false, false, false, false)))), func_1(func_1(func_1(Struct_1(global1.a, global1.b), Struct_1(0u, global1.b), ~global1.b.xz, vec4<bool>(true, true, true, true)), func_1(Struct_1(2934u, vec4<i32>(global1.b.x, 41868i, 34894i, global1.b.x)), func_1(Struct_1(global1.a, vec4<i32>(0i, var_0.x, 2147483647i, 86475i)), Struct_1(u_input.a.x, vec4<i32>(var_0.x, 2147483647i, global1.b.x, 10672i)), global1.b.zx, vec4<bool>(false, false, false, true)), vec2<i32>(0i, global1.b.x), vec4<bool>(true, true, true, true)), countOneBits(min(vec2<i32>(1i, var_0.x), vec2<i32>(var_0.x, global1.b.x))), vec4<bool>(true, true, true, true)), func_1(Struct_1(~1u, -vec4<i32>(var_0.x, global1.b.x, var_0.x, 1i)), func_1(Struct_1(global1.a, vec4<i32>(global1.b.x, var_0.x, var_0.x, global1.b.x)), Struct_1(4294967295u, vec4<i32>(var_0.x, var_0.x, global1.b.x, 1i)), ~vec2<i32>(var_0.x, -25846i), vec4<bool>(true, false, true, false)), vec2<i32>(2147483647i, 56408i) >> (min(u_input.a, u_input.a) % vec2<u32>(32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), func_1(func_1(func_1(Struct_1(0u, global1.b), Struct_1(u_input.a.x, global1.b), vec2<i32>(global1.b.x, global1.b.x), vec4<bool>(false, false, false, false)), Struct_1(global1.a, global1.b), vec2<i32>(-16394i, var_0.x), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global0.x, 10923u)), select(vec4<i32>(6121i, 1i, var_0.x, -31526i), vec4<i32>(-8842i, var_0.x, var_0.x, -2147483647i), vec4<bool>(true, false, false, true))), _wgslsmith_div_vec2_i32(var_0.wy, -var_0.zw), vec4<bool>(true, true, true, true)).b.zy, vec4<bool>(all(vec4<bool>(false, true, true, true)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true, true)));
    var var_1 = func_1(func_1(func_1(func_1(Struct_1(4294967295u, global1.b), func_1(Struct_1(16745u, vec4<i32>(global1.b.x, global1.b.x, global1.b.x, 50891i)), Struct_1(global0.x, global1.b), vec2<i32>(-35685i, -3874i), vec4<bool>(true, false, true, true)), var_0.ww, vec4<bool>(true, true, true, true)), func_1(func_1(Struct_1(global1.a, global1.b), Struct_1(global1.a, vec4<i32>(global1.b.x, global1.b.x, global1.b.x, -2147483647i)), vec2<i32>(61862i, var_0.x), vec4<bool>(true, true, true, false)), Struct_1(21721u, vec4<i32>(var_0.x, 1i, -72586i, var_0.x)), ~vec2<i32>(1i, global1.b.x), vec4<bool>(true, true, true, true)), vec2<i32>(~1i, -2147483647i), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true)), Struct_1(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 102502u, global0.x, global1.a), vec4<u32>(u_input.a.x, 0u, 1u, 5605u)), 21240u, true), _wgslsmith_clamp_vec4_i32(vec4<i32>(-39957i, var_0.x, var_0.x, var_0.x), vec4<i32>(24185i, -70061i, global1.b.x, var_0.x), global1.b) & vec4<i32>(0i, 2147483647i, var_0.x, -2147483647i)), _wgslsmith_mult_vec2_i32(global1.b.zy, countOneBits(func_5(228f, Struct_1(978u, global1.b), Struct_1(u_input.b, global1.b)).wx)), vec4<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), any(vec4<bool>(false, false, true, false)), true)), func_1(Struct_1(select(u_input.b, 1u, true), -func_1(Struct_1(global0.x, global1.b), Struct_1(u_input.b, vec4<i32>(-46056i, global1.b.x, var_0.x, var_0.x)), vec2<i32>(1i, 1i), vec4<bool>(false, false, false, false)).b), Struct_1(firstLeadingBit(countOneBits(0u)), global1.b), -(~global1.b.xw), vec4<bool>(select(2823i > global1.b.x, true, false), any(vec4<bool>(false, false, false, true)), true, true)), min(vec2<i32>(~global1.b.x, -2147483647i), func_4(max(_wgslsmith_div_i32(-1i, global1.b.x), 2147483647i), func_1(Struct_1(4294967295u, vec4<i32>(var_0.x, global1.b.x, 31881i, -26438i)), func_1(Struct_1(global0.x, global1.b), Struct_1(32122u, vec4<i32>(-1i, global1.b.x, -13024i, -4555i)), global1.b.wy, vec4<bool>(true, true, false, true)), func_1(Struct_1(global0.x, vec4<i32>(-1i, 15045i, 23039i, 1i)), Struct_1(1u, vec4<i32>(global1.b.x, 2147483647i, global1.b.x, global1.b.x)), vec2<i32>(2147483647i, 20935i), vec4<bool>(true, true, true, true)).b.wz, vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(round(-1218f)), Struct_1(countOneBits(4294967295u), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 0i, global1.b.x, var_0.x), global1.b))).yy), select(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, any(vec4<bool>(false, true, true, true)), all(vec3<bool>(false, false, true))), false), true));
    let var_2 = !(_wgslsmith_div_u32(_wgslsmith_div_u32(37418u, 4294967295u), max(0u, abs(var_1.a))) > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~u_input.b, 0u, global1.a), ~vec4<u32>(1u, var_1.a, 0u, 35925u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1000f, -911f, -735f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1500f))), _wgslsmith_f_op_f32(floor(-540f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1708f))), _wgslsmith_f_op_f32(round(1035f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-241f, 1435f, -1000f, -912f), vec4<f32>(-462f, -201f, 1077f, -1521f), false))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 554f, -330f, -1090f) + vec4<f32>(465f, 1778f, -1131f, -1861f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, -182f, -606f, 1284f) + vec4<f32>(521f, 1927f, 906f, -672f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-472f, 546f, 558f, -404f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global1.b.x | func_1(func_1(Struct_1(u_input.b, var_1.b), Struct_1(global0.x, global1.b), var_0.zy, vec4<bool>(var_2, var_2, true, var_2)), func_1(Struct_1(var_1.a, var_1.b), Struct_1(21807u, var_1.b), vec2<i32>(1i, 1i), vec4<bool>(true, true, false, true)), vec2<i32>(-2599i, 25911i), !vec4<bool>(true, true, var_2, var_2)).b.x, var_0.x, max(global1.b.x, reverseBits(_wgslsmith_mod_i32(-21631i, var_0.x)))));
}

