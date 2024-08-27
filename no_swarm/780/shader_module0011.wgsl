struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b))))));
    var var_1 = Struct_4(arg_0.c, Struct_3(Struct_1(global0.a.x == arg_0.c.a.x, var_0), 14442u, arg_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.b, 651f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1275f, var_0))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.c.b.b, var_0))) - vec2<f32>(899f, arg_0.c.b.b)))));
    var var_2 = Struct_2(var_1.b.c.a, Struct_1(u_input.b < u_input.b, var_1.a.b.b), true || any(vec4<bool>(all(vec4<bool>(arg_1.a, true, false, global0.b.a)), true, var_1.a.b.b < arg_0.a.b, all(vec2<bool>(false, global0.c)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1794f, _wgslsmith_f_op_f32(arg_0.c.b.b * var_0)), _wgslsmith_f_op_f32(f32(-1f) * -678f)))));
    let var_4 = !(!any(!vec3<bool>(var_1.b.a.a, true, false)));
    return all(select(select(!(!vec4<bool>(arg_0.c.b.a, true, false, true)), !vec4<bool>(arg_0.a.a, var_1.b.a.a, var_1.b.a.a, arg_0.c.b.a), !var_4), select(!select(vec4<bool>(false, var_2.c, true, arg_1.a), vec4<bool>(arg_1.a, false, false, var_2.c), vec4<bool>(true, true, false, arg_0.c.c)), vec4<bool>(!var_2.c, var_2.c, all(vec3<bool>(false, arg_1.a, arg_1.a)), arg_1.a), select(select(vec4<bool>(true, var_1.a.c, false, global0.b.a), vec4<bool>(true, true, arg_0.a.a, var_2.c), false), select(vec4<bool>(var_2.b.a, var_1.b.c.b.a, arg_1.a, arg_1.a), vec4<bool>(arg_0.a.a, true, false, var_2.b.a), vec4<bool>(var_1.a.b.a, true, var_2.c, true)), arg_1.a)), all(!vec4<bool>(var_4, global0.b.a, true, false))));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(~abs(~reverseBits(vec3<u32>(4294967295u, global0.a.x, 31815u))), global0.b, func_3(Struct_3(global0.b, u_input.d, Struct_2(max(vec3<u32>(1u, 0u, global0.a.x), vec3<u32>(global0.a.x, 43804u, 37271u)), Struct_1(true, global0.b.b), false)), global0.b));
    var var_1 = global0.a.x << (global0.a.x % 32u);
    let var_2 = Struct_2(~countOneBits(~vec3<u32>(4294967295u, 0u, var_0.a.x) & vec3<u32>(global0.a.x, global0.a.x, u_input.d)), Struct_1(!var_0.b.a, global0.b.b), true);
    let var_3 = _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b, 2147483647i, u_input.b, -80514i), vec4<i32>(u_input.b, -1i, -2147483647i, u_input.b)) << (select(u_input.c, ~select(u_input.c, vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.c.x), var_0.b.a), select(!vec4<bool>(true, false, true, var_2.c), !vec4<bool>(var_2.b.a, var_2.c, true, global0.b.a), true)) % vec4<u32>(32u)), -select(vec4<i32>(firstTrailingBit(u_input.b), -1i, firstTrailingBit(-1i), min(-8883i, u_input.b)), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b), !(!vec4<bool>(false, global0.c, var_2.c, false))));
    let var_4 = select(vec3<bool>(all(vec4<bool>(false, select(global0.c, var_0.b.a, global0.c), all(vec4<bool>(global0.c, var_0.b.a, true, var_2.b.a)), var_2.c)), false, !(!select(true, false, false))), !(!vec3<bool>(var_0.b.a, true, global0.b.a)), abs(~_wgslsmith_div_u32(global0.a.x, 4294967295u)) < u_input.c.x);
    return _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(~global0.a.zy, ~global0.a.xz)) | ~(firstLeadingBit(var_2.a.zz) | global0.a.xz), ~var_0.a.yx);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(arg_2, ~global0.a.x, Struct_2(~vec3<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.c.x, 1u), 4294967295u, global0.a.x), global0.b, global0.c));
    global0 = Struct_2(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(2807u, 69886u, 0u)), global0.a), global0.b, _wgslsmith_f_op_f32(sign(-1000f)) == var_0.a.b);
    var var_1 = arg_2;
    global0 = var_0.c;
    var var_2 = Struct_4(var_0.c, Struct_3(global0.b, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, arg_1), vec2<u32>(0u, 4294967295u), var_0.c.a.yz), ~var_0.c.a.yy), global0.a.x), Struct_2(~u_input.c.wxw, Struct_1(any(vec2<bool>(var_0.c.b.a, true)), -303f), false)), vec2<f32>(-1340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b))))));
    return global0.b;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(floor(869f));
    var var_1 = Struct_4(Struct_2(global0.a, Struct_1(!any(vec4<bool>(true, global0.c, true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_div_f32(arg_2, arg_2)))), global0.c), Struct_3(func_4(~global0.a.x, ~func_2(), global0.b), min(u_input.c.x, max(~global0.a.x, arg_0.x)), Struct_2(countOneBits(abs(vec3<u32>(arg_0.x, u_input.d, arg_0.x))), global0.b, _wgslsmith_f_op_f32(-183f + -892f) < _wgslsmith_f_op_f32(global0.b.b - arg_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_2)))))));
    let var_2 = func_2();
    var var_3 = func_4(_wgslsmith_dot_vec2_u32(firstLeadingBit(~(var_1.a.a.yy & vec2<u32>(22380u, var_2))), abs(reverseBits(~global0.a.zy))), var_2, Struct_1(1f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1104f + _wgslsmith_f_op_f32(max(arg_1, 2125f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-642f - -775f))))));
    var_3 = var_1.a.b;
    return _wgslsmith_clamp_i32(-86829i & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i) | (vec2<i32>(-1i, 2147483647i) >> (vec2<u32>(arg_0.x, var_2) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(19555i, 2147483647i), vec2<i32>(2147483647i, u_input.b)), vec2<i32>(u_input.b, 0i))), -1i, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(-2147483647i, u_input.b)), vec2<i32>(u_input.b, 0i)), select(vec2<i32>(u_input.b, 2882i), vec2<i32>(2147483647i, -28695i), true)));
    var var_1 = ~vec3<i32>(reverseBits(u_input.b), _wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(var_0, vec2<i32>(var_0.x, var_0.x)), 0i), var_0.x);
    var var_2 = vec3<bool>(!(!all(select(vec4<bool>(global0.b.a, true, global0.c, global0.b.a), vec4<bool>(global0.b.a, global0.b.a, true, false), vec4<bool>(global0.b.a, true, false, true)))), ~(~func_1(u_input.c, global0.b.b, global0.b.b)) >= -countOneBits(3127i), !global0.b.a);
    var_2 = !vec3<bool>(any(vec2<bool>(true, all(var_2.xy))), global0.b.b < _wgslsmith_f_op_f32(f32(-1f) * -828f), !(-var_1.x == _wgslsmith_add_i32(u_input.b, -7336i)));
    let var_3 = Struct_4(Struct_2(vec3<u32>(max(global0.a.x, global0.a.x), ~0u, 1u), global0.b, var_2.x), Struct_3(global0.b, u_input.d, Struct_2(reverseBits(~global0.a), func_4(_wgslsmith_mod_u32(4294967295u, global0.a.x), ~37151u, Struct_1(global0.b.a, -162f)), all(!vec4<bool>(global0.c, global0.c, false, global0.b.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.b, global0.b.b)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1121f, -1000f) + vec2<f32>(global0.b.b, 145f)))))));
    var_1 = vec3<i32>(u_input.b, var_0.x, -var_0.x);
    var_1 = ~(~select(vec3<i32>(u_input.b, 10295i, -var_0.x), vec3<i32>(-1i) * -vec3<i32>(32417i, var_1.x, u_input.b), true));
    var var_4 = var_3.b.c;
    let var_5 = vec4<u32>(13841u, _wgslsmith_dot_vec4_u32(~u_input.c, abs(u_input.c)), ~abs(abs(abs(var_3.b.b))), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(min(1i, -91461i), vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.xz, -(~var_0)), ~_wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i, u_input.b, var_1.x), vec3<i32>(76673i, 0i, var_1.x)), vec3<i32>(-1i, u_input.b, -2147483647i)), u_input.b ^ -1i), var_3.b.a.b, u_input.b);
}

