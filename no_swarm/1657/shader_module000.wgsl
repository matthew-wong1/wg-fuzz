struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: u32) -> f32 {
    global0 = ~vec4<i32>(arg_1.x << (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, 0u, u_input.a.x), vec3<u32>(arg_3, arg_3, 0u), u_input.a), u_input.a) % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.x, 1i) >> (8651u % 32u), 1i), abs(countOneBits(arg_1.x)), global0.x);
    let var_0 = Struct_2(Struct_1(false, u_input.a.xx, _wgslsmith_f_op_f32(f32(-1f) * -857f)), min(u_input.a, ~arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3070f + -421f)));
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(countOneBits(arg_2.x | 64652u)), 0u, arg_2.x, ~max(~35576u, ~0u)), reverseBits(vec4<u32>(~arg_2.x, arg_2.x, arg_3, _wgslsmith_dot_vec2_u32(var_0.b.xx & vec2<u32>(0u, arg_2.x), _wgslsmith_div_vec2_u32(u_input.a.xx, vec2<u32>(7647u, arg_3))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * var_0.a.c))))) * -443f);
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c - _wgslsmith_f_op_f32(min(var_0.a.c, var_0.a.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1256f)))))))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * var_0.a.c))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> u32 {
    let var_0 = arg_1;
    global0 = _wgslsmith_div_vec4_i32(~countOneBits(vec4<i32>(1i, abs(arg_0), ~global0.x, global0.x)), -vec4<i32>(countOneBits(~arg_0), global0.x, _wgslsmith_add_i32(select(arg_0, 41979i, true), _wgslsmith_dot_vec3_i32(global0.ywz, vec3<i32>(15083i, arg_0, -1i))), -1i));
    global0 = vec4<i32>(-33361i, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(~1i), firstLeadingBit(1i), select(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global0.x, arg_0, global0.x), vec4<i32>(0i, arg_0, global0.x, 1i)), global0.x, !arg_1.a.a), global0.x), -max(vec4<i32>(0i, arg_0, global0.x, global0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 1i, 2147483647i, global0.x), vec4<i32>(arg_0, -13719i, global0.x, -13584i)))), arg_0, -63309i);
    global0 = ~_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, arg_0, _wgslsmith_mult_i32(global0.x, 21533i)), abs(~vec4<i32>(-1i, -8383i, arg_0, 1i))) >> ((vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1.a.b, _wgslsmith_mod_vec2_u32(vec2<u32>(32121u, 1u), var_0.a.b)), select(firstLeadingBit(arg_2), 34857u, true), countOneBits(~2987u), var_0.b.x) >> (abs(~(~vec4<u32>(1u, 46301u, 1u, arg_1.b.x))) % vec4<u32>(32u))) % vec4<u32>(32u));
    return 42204u;
}

fn func_2() -> Struct_1 {
    var var_0 = (2147483647i <= -_wgslsmith_dot_vec2_i32(-global0.wx, vec2<i32>(global0.x, global0.x) << (u_input.a.yz % vec2<u32>(32u)))) | all(vec4<bool>(true, true, true, true));
    let var_1 = vec2<u32>(func_4(global0.x, Struct_2(Struct_1(true, vec2<u32>(u_input.a.x, 0u), -1383f), u_input.a, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, true, true), global0.yy, u_input.a, u_input.a.x))), u_input.a.x) << (1u % 32u), ~abs(14267u >> ((u_input.a.x << (31314u % 32u)) % 32u)));
    var var_2 = all(!vec3<bool>(all(vec3<bool>(false, false, true)) | false, firstLeadingBit(0u) > abs(u_input.a.x), true || (28391i >= global0.x)));
    var_0 = true;
    global0 = -(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-19423i, global0.x, global0.x, 1i), reverseBits(vec4<i32>(global0.x, -24639i, global0.x, -2147483647i)))) ^ (-reverseBits(vec4<i32>(global0.x, -1i, global0.x, -29153i)) & _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, 633i) & vec4<i32>(-5951i, -18547i, 0i, -2147483647i), ~vec4<i32>(global0.x, 0i, 0i, global0.x))));
    return Struct_1(all(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true)), var_1, -681f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = all(!vec2<bool>(func_2().a, true));
    var var_1 = _wgslsmith_f_op_f32(-arg_2.c);
    var var_2 = !select(select(!(!vec4<bool>(var_0, arg_1.a, true, arg_1.a)), select(select(vec4<bool>(false, true, false, arg_2.a), vec4<bool>(true, var_0, arg_0.a, false), vec4<bool>(arg_1.a, arg_2.a, false, true)), select(vec4<bool>(false, arg_1.a, arg_0.a, arg_1.a), vec4<bool>(false, arg_1.a, arg_1.a, false), vec4<bool>(var_0, var_0, true, true)), false), vec4<bool>(true, all(vec4<bool>(var_0, arg_1.a, false, true)), !arg_2.a, arg_0.c < -214f)), vec4<bool>(!arg_0.a, any(vec3<bool>(true, true, true)), 1u < _wgslsmith_add_u32(arg_0.b.x, 79511u), true), select(!select(vec4<bool>(true, arg_0.a, true, arg_1.a), vec4<bool>(arg_2.a, arg_0.a, true, arg_0.a), arg_1.a), !(!vec4<bool>(arg_2.a, true, false, arg_0.a)), all(!vec4<bool>(true, true, arg_2.a, arg_1.a))));
    let var_3 = Struct_1(false, u_input.a.xz, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, all(!var_2.xzx), false, any(var_2.xw)), -firstTrailingBit(vec2<i32>(arg_3.x, -1i)), vec3<u32>(~1u, 25859u, 55354u), 1u)));
    var var_4 = min(select(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, u_input.a.x, arg_1.b.x, arg_0.b.x), vec4<u32>(u_input.a.x, var_3.b.x, arg_1.b.x, arg_0.b.x)), abs(vec4<u32>(24810u, u_input.a.x, u_input.a.x, 1u))), ~vec4<u32>(1u, 4294967295u, 4294967295u, u_input.a.x) ^ min(vec4<u32>(33016u, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<u32>(20650u, 4294967295u, 14747u, arg_0.b.x))), firstLeadingBit(~abs(vec4<u32>(0u, 4294967295u, var_3.b.x, arg_2.b.x))), select(!(!vec4<bool>(var_0, true, true, var_2.x)), select(select(vec4<bool>(var_3.a, true, true, false), vec4<bool>(var_3.a, false, arg_0.a, false), arg_2.a), select(vec4<bool>(true, var_0, arg_2.a, arg_1.a), vec4<bool>(true, true, false, false), arg_2.a), arg_1.a), any(vec4<bool>(arg_2.a, false, true, true)) | var_2.x)), vec4<u32>(11118u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_1.b, u_input.a.yy), arg_1.b.x & 0u), u_input.a.x ^ max(1u, arg_1.b.x), ~(~arg_1.b.x)) >> (_wgslsmith_clamp_vec4_u32(max(~vec4<u32>(0u, u_input.a.x, 1u, 4294967295u), countOneBits(vec4<u32>(var_3.b.x, arg_0.b.x, 1u, var_3.b.x))), ~(vec4<u32>(95985u, 8092u, 29675u, 45543u) & vec4<u32>(109472u, arg_2.b.x, 0u, 1525u)), abs(vec4<u32>(var_3.b.x, arg_2.b.x, 19282u, u_input.a.x) & vec4<u32>(arg_1.b.x, arg_1.b.x, 28556u, 42491u))) % vec4<u32>(32u)));
    return Struct_2(Struct_1(select(true, false, all(select(vec2<bool>(true, var_0), vec2<bool>(var_2.x, true), false))), var_4.zx, arg_1.c), ~var_4.wxz, _wgslsmith_f_op_f32(-arg_2.c));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = 481u;
    var var_1 = true;
    var_1 = !arg_2.a.a;
    var var_2 = select(vec4<u32>(~(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, arg_2.a.b.x, u_input.a.x)) >> (~1u % 32u)), ~reverseBits(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), arg_2.b.x, (u_input.a.x & select(33471u, 0u, arg_2.a.a)) & (u_input.a.x & 1u)), vec4<u32>(51354u, max(u_input.a.x, 1u), 4294967295u, 1u), all(select(vec2<bool>(arg_2.a.a, true), select(vec2<bool>(true, true), vec2<bool>(false, arg_2.a.a), select(vec2<bool>(true, true), vec2<bool>(arg_2.a.a, false), arg_2.a.a)), _wgslsmith_f_op_f32(max(-604f, arg_0.x)) < _wgslsmith_f_op_f32(f32(-1f) * -2107f))));
    var_1 = arg_2.a.a;
    return Struct_1(!(_wgslsmith_f_op_f32(-arg_0.x) >= -1000f), u_input.a.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.c - -517f)) + _wgslsmith_f_op_f32(1346f + _wgslsmith_f_op_f32(-arg_2.a.c)))));
}

fn func_1(arg_0: u32, arg_1: u32) -> vec3<i32> {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(686f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1044f + -1065f), _wgslsmith_f_op_f32(sign(1300f)))), -777f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1847f - -219f) - _wgslsmith_f_op_f32(1155f * 464f)))), firstLeadingBit(-abs(-global0.yx)), func_5(func_2(), func_2(), func_2(), -vec2<i32>(global0.x, 42534i)));
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(109047i, 52175i, -22188i, 1i) << (vec4<u32>(var_0.b.x, arg_1, arg_1, arg_0) % vec4<u32>(32u)), firstTrailingBit(-vec4<i32>(global0.x, 21754i, global0.x, global0.x))), vec4<i32>(-6128i, i32(-1i) * -9552i, _wgslsmith_div_i32(global0.x, reverseBits(-24996i)), global0.x)) | -_wgslsmith_sub_i32(40172i, -_wgslsmith_clamp_i32(-70165i, 1i, -48666i));
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_div_f32(var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(var_0.a, var_0.b, var_0.c), var_0, var_0, global0.xz).c - 393f) - func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 1234f, var_0.c, var_0.c)), -global0.zw, func_5(Struct_1(var_0.a, vec2<u32>(arg_1, u_input.a.x), var_0.c), var_0, var_0, vec2<i32>(2147483647i, 2147483647i))).c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(112f, _wgslsmith_f_op_f32(f32(-1f) * -1070f))))));
    let var_4 = _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(round(var_0.c)));
    return _wgslsmith_clamp_vec3_i32(global0.wyz >> (vec3<u32>(func_6(vec4<f32>(-1000f, -1579f, var_0.c, var_3), abs(global0.zx), func_5(var_0, Struct_1(true, u_input.a.xz, 979f), var_0, global0.wx)).b.x, ~_wgslsmith_mod_u32(arg_1, arg_1), arg_0 << (1u % 32u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_add_i32(-1i, global0.x), 0i, firstLeadingBit(global0.x)), _wgslsmith_clamp_vec3_i32(global0.zxx, vec3<i32>(~30308i, select(global0.x, 11517i, false), -global0.x), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, -36239i, 1i), vec3<i32>(global0.x, 8390i, global0.x)))) & select(~_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), global0.wyx), abs(-global0.yxy), !any(vec4<bool>(false, true, false, false))));
}

fn func_7(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: bool, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = ~(~vec4<u32>(~53715u, 35234u, ~u_input.a.x << (u_input.a.x % 32u), ~u_input.a.x));
    global0 = abs(vec4<i32>(select(_wgslsmith_div_i32(52746i, countOneBits(-28759i)), _wgslsmith_sub_i32(arg_3.x, firstTrailingBit(21103i)), true), _wgslsmith_sub_i32(~arg_1.x << (var_0.x % 32u), arg_1.x), arg_3.x, arg_3.x));
    var var_1 = _wgslsmith_mod_i32(-2147483647i, max(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_3.x, arg_1.x, global0.x), vec4<i32>(arg_3.x, -2147483647i, -1i, -2147483647i), vec4<i32>(2147483647i, -1i, 34093i, global0.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_3.x, global0.x), vec4<i32>(35925i, arg_1.x, arg_1.x, 2147483647i))), func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 30772u), var_0), firstTrailingBit(u_input.a.x)).x) | global0.x);
    let var_2 = select(select(!(!vec3<bool>(arg_2, arg_2, false)), select(!vec3<bool>(false, arg_2, true), vec3<bool>(true, func_2().a, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, arg_2), !vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, true, true)), select(!vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, true, arg_2), vec3<bool>(true, true, true)), !(!vec3<bool>(false, arg_2, arg_2)))), select(vec3<bool>(true, any(vec2<bool>(arg_2, arg_2)), true), !vec3<bool>(!arg_2, arg_2, true), vec3<bool>(!(!arg_2), any(vec4<bool>(arg_2, arg_2, false, arg_2)), false)), vec3<bool>(arg_2, true, 28934i >= -global0.x));
    var var_3 = abs(_wgslsmith_clamp_i32(52559i, -57035i, reverseBits(arg_3.x)));
    return func_5(func_6(vec4<f32>(_wgslsmith_f_op_f32(step(-428f, arg_0.x)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(107f + arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-935f * 1787f)), -vec2<i32>(arg_3.x, ~arg_3.x), Struct_2(func_5(func_5(Struct_1(arg_2, vec2<u32>(u_input.a.x, var_0.x), arg_0.x), Struct_1(true, vec2<u32>(u_input.a.x, u_input.a.x), arg_0.x), Struct_1(true, u_input.a.zy, arg_0.x), arg_3.yz).a, Struct_1(true, vec2<u32>(1u, 5362u), arg_0.x), func_2(), ~global0.xw).a, abs(~vec3<u32>(var_0.x, var_0.x, 55354u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))))), func_2(), Struct_1(true, vec2<u32>(4294967295u, ~(~u_input.a.x)), 912f), global0.zy);
}

fn func_8(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<i32> {
    global0 = vec4<i32>(global0.x, -8467i, -2147483647i, ~_wgslsmith_mult_i32(1i, global0.x));
    let var_0 = Struct_2(arg_0.a, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b.x, ~0u, 19172u), u_input.a) & select(~(~u_input.a), _wgslsmith_div_vec3_u32(arg_0.b, func_5(arg_0.a, Struct_1(arg_0.a.a, arg_1.b, -112f), Struct_1(arg_1.a, arg_0.a.b, -297f), vec2<i32>(-4343i, 2746i)).b), vec3<bool>(false, true, -7277i <= global0.x)), 1865f);
    global0 = _wgslsmith_clamp_vec4_i32(-(~firstTrailingBit(vec4<i32>(global0.x, 2147483647i, -1i, global0.x)) & vec4<i32>(global0.x, ~global0.x, _wgslsmith_sub_i32(-3367i, global0.x), ~(-1i))), (_wgslsmith_div_vec4_i32(vec4<i32>(0i, global0.x, -31381i, 0i) ^ vec4<i32>(global0.x, 4399i, global0.x, global0.x), vec4<i32>(global0.x, global0.x, -8098i, global0.x)) >> (vec4<u32>(max(arg_1.b.x, var_0.b.x), ~10583u, min(arg_1.b.x, var_0.a.b.x), _wgslsmith_div_u32(arg_0.b.x, 17484u)) % vec4<u32>(32u))) ^ vec4<i32>(2147483647i, max(~global0.x, -7268i), global0.x, _wgslsmith_clamp_i32(countOneBits(global0.x), reverseBits(-1i), _wgslsmith_mult_i32(1i, global0.x))), vec4<i32>(global0.x, -global0.x, abs(15978i), abs(global0.x)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-283f)), _wgslsmith_f_op_f32(max(arg_0.a.c, 497f)), _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f)))));
    let var_2 = func_5(Struct_1(1i == _wgslsmith_sub_i32(-global0.x, 7188i), arg_1.b, _wgslsmith_f_op_f32(var_0.a.c - arg_0.a.c)), arg_1, var_0.a, reverseBits(-(vec2<i32>(-1i) * -global0.zw))).a.a;
    return vec3<i32>(global0.x, -2147483647i, (-global0.x << (_wgslsmith_sub_u32(var_0.b.x, _wgslsmith_mod_u32(16051u, var_0.a.b.x)) % 32u)) >> (63118u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -global0.x;
    global0 = countOneBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(0i, abs(0i), -1i, global0.x), vec4<i32>(_wgslsmith_div_i32(var_0, var_0), var_0, -var_0, -global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(func_8(func_7(vec3<f32>(441f, 893f, 537f), global0.xxw, select(true, true, false), func_1(u_input.a.x, u_input.a.x)), func_7(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(826f, -2089f, 2446f), vec3<f32>(634f, -152f, -251f))), vec3<i32>(global0.x, -33006i, -8318i), true, firstTrailingBit(global0.wxw)).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2251f, -475f)))), vec3<i32>(_wgslsmith_mult_i32(abs(3524i), global0.x ^ var_0), select(~(-10958i), global0.x, false), ~global0.x ^ -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(117f, -124f, 443f), vec3<f32>(489f, 842f, 591f)))))));
}

