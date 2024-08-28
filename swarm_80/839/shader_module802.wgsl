struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<i32>, 16>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    global1 = array<vec3<i32>, 16>();
    global1 = array<vec3<i32>, 16>();
    var var_0 = true;
    var var_1 = 6804i;
    var_0 = true;
    return select(true, any(!vec4<bool>(false, all(vec2<bool>(true, false)), true, true)), true);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> bool {
    global1 = array<vec3<i32>, 16>();
    let var_0 = Struct_4(Struct_2(-select(~u_input.c, reverseBits(vec2<i32>(u_input.c.x, arg_1)), true)));
    var var_1 = Struct_3(global0.b.c, global0.b);
    let var_2 = ~_wgslsmith_add_u32(_wgslsmith_mult_u32((36210u >> (var_1.b.e % 32u)) << (_wgslsmith_mult_u32(global0.b.e, 126036u) % 32u), firstTrailingBit(~var_1.b.e)), var_1.b.b.x | firstTrailingBit(0u));
    let var_3 = var_1.b;
    return select(!arg_2, arg_2, any(select(!select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, true), vec3<bool>(false, true, arg_2)), !vec3<bool>(true, arg_2, true)), !(!arg_2))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = countOneBits(~firstLeadingBit(vec2<u32>(arg_1.e, 0u)));
    var var_1 = select(~4294967295u, 4294967295u & global0.b.b.x, false);
    global1 = array<vec3<i32>, 16>();
    var var_2 = select(vec4<bool>(func_4(Struct_2(arg_0.a), -arg_0.a.x, func_3(global0.b, arg_0, Struct_4(arg_0), Struct_3(global0.a, Struct_1(vec3<f32>(-431f, arg_1.a.x, arg_1.a.x), vec2<u32>(68688u, u_input.a), vec2<f32>(arg_1.c.x, -1305f), 357f, global0.b.e)))) & !any(vec2<bool>(true, true)), true, true, all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), select(vec4<bool>(true, false, _wgslsmith_f_op_f32(-global0.a.x) < _wgslsmith_f_op_f32(-global0.a.x), false), !vec4<bool>(true, true, arg_2.a.x != 600i, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)), arg_0.a.x >= (i32(-1i) * -1i));
    let var_3 = Struct_3(global0.b.c, arg_1);
    return Struct_3(var_3.b.c, var_3.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>) -> Struct_4 {
    let var_0 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(1i, -31569i, -9576i), vec3<i32>(u_input.c.x, arg_0.x, -7385i) >> (vec3<u32>(global0.b.b.x, global0.b.b.x, 0u) % vec3<u32>(32u))), max(vec3<i32>(27403i, u_input.c.x, arg_0.x), -vec3<i32>(2147483647i, 17124i, 2147483647i))) << (_wgslsmith_mod_vec3_u32(select(vec3<u32>(~32970u, 1u, 22759u), vec3<u32>(min(1u, global0.b.e), abs(global0.b.b.x), 0u), vec3<bool>(global0.b.b.x < u_input.a, 32045u <= global0.b.b.x, false)), (_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b, 4294967295u), vec3<u32>(4294967295u, 1u, 1u)) | ~vec3<u32>(global0.b.b.x, 36616u, 4294967295u)) & (~vec3<u32>(12240u, global0.b.e, u_input.b) ^ ~vec3<u32>(global0.b.b.x, global0.b.b.x, 45751u))) % vec3<u32>(32u));
    global0 = func_2(Struct_2(-vec2<i32>(var_0.x, 22788i) & vec2<i32>(22517i << (0u % 32u), arg_0.x << (28463u % 32u))), global0.b, Struct_2(vec2<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.c.x) >> (~global0.b.e % 32u), u_input.c.x)), firstLeadingBit(vec2<u32>(1u, global0.b.e)));
    let var_1 = Struct_4(Struct_2(-_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, var_0.x), arg_0)));
    let var_2 = var_0;
    let var_3 = true;
    return var_1;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> vec3<bool> {
    global1 = array<vec3<i32>, 16>();
    global1 = array<vec3<i32>, 16>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, global0.b.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-545f, global0.b.d))))))), Struct_1(vec3<f32>(global0.a.x, _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(floor(925f))), -2132f), vec2<u32>(0u, 0u) << ((_wgslsmith_sub_vec2_u32(global0.b.b, vec2<u32>(0u, global0.b.b.x)) >> (vec2<u32>(0u, global0.b.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)), global0.a, _wgslsmith_f_op_f32(exp2(global0.b.d)), min(14474u, global0.b.b.x)));
    global0 = Struct_3(global0.a, func_2(Struct_2(~arg_0.a.a), global0.b, func_1(arg_0.a.a, var_0.b.a).a, _wgslsmith_mod_vec2_u32(firstTrailingBit(global0.b.b), ~var_0.b.b >> (countOneBits(vec2<u32>(43825u, 65217u)) % vec2<u32>(32u)))).b);
    var var_1 = true;
    return vec3<bool>(!all(vec3<bool>(true, true, u_input.a < 4294967295u)), func_3(func_2(func_1(vec2<i32>(-16168i, -16010i), func_2(Struct_2(vec2<i32>(24570i, u_input.c.x)), Struct_1(vec3<f32>(var_0.b.a.x, 549f, global0.b.a.x), var_0.b.b, vec2<f32>(726f, global0.a.x), var_0.b.c.x, u_input.b), Struct_2(vec2<i32>(-14762i, 1i)), vec2<u32>(var_0.b.b.x, var_0.b.b.x)).b.a).a, Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.b.a), vec2<u32>(u_input.b, var_0.b.e), _wgslsmith_f_op_vec2_f32(ceil(var_0.b.c)), _wgslsmith_f_op_f32(global0.b.d + var_0.a.x), var_0.b.e), arg_1.a, firstTrailingBit(global0.b.b)).b, arg_0.a, arg_0, func_2(Struct_2(vec2<i32>(-25366i, 737i)), func_2(arg_1.a, func_2(arg_0.a, var_0.b, arg_1.a, vec2<u32>(u_input.b, var_0.b.b.x)).b, Struct_2(vec2<i32>(arg_0.a.a.x, arg_0.a.a.x)), reverseBits(vec2<u32>(global0.b.e, var_0.b.b.x))).b, arg_0.a, var_0.b.b)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!select(vec3<bool>(any(vec4<bool>(false, true, false, true)), true, false), func_5(Struct_4(Struct_2(vec2<i32>(u_input.c.x, 2458i))), func_1(u_input.c, global0.b.a)), true));
    var var_1 = vec4<u32>(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0.b.e, u_input.a, 25224u), vec3<u32>(4294967295u, 86646u, u_input.a)), ~vec3<u32>(global0.b.b.x, u_input.b, global0.b.b.x))), 53627u, _wgslsmith_mod_u32(~(~(~u_input.b)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(global0.b.e, u_input.b, 0u, global0.b.e) << (vec4<u32>(36533u, global0.b.e, global0.b.b.x, 0u) % vec4<u32>(32u))), firstTrailingBit(countOneBits(vec4<u32>(4294967295u, global0.b.b.x, u_input.b, 1u))))), u_input.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1984f, global0.b.c.x) - global0.b.c) - global0.b.c);
    var var_3 = ~_wgslsmith_clamp_vec2_i32(firstLeadingBit(reverseBits(vec2<i32>(2147483647i, 34027i) >> (vec2<u32>(var_1.x, 80190u) % vec2<u32>(32u)))), vec2<i32>(i32(-1i) * -18009i, ~1i) ^ ~(~u_input.c), u_input.c);
    let var_4 = func_1(-vec2<i32>(_wgslsmith_add_i32(u_input.c.x >> (1u % 32u), -1i), 31100i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1200f, global0.b.a.x, global0.b.a.x) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, global0.b.a.x, var_2.x) + vec3<f32>(global0.a.x, 444f, 590f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-584f, global0.b.d, -301f))))))));
    var var_5 = select(vec4<bool>(false, var_0, any(select(func_5(var_4, Struct_4(var_4.a)), select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, false, var_0)), vec3<bool>(var_0, var_0, true))), all(select(!vec4<bool>(true, var_0, false, var_0), select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(var_0, var_0, false, true), true), false))), select(select(!(!vec4<bool>(var_0, true, false, var_0)), !vec4<bool>(true, true, var_0, false), !(u_input.a > global0.b.b.x)), !vec4<bool>(false, true | var_0, true, var_0), select(!vec4<bool>(var_0, var_0, false, var_0), select(vec4<bool>(true, true, var_0, var_0), select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(false, true, var_0, var_0), vec4<bool>(true, true, false, var_0)), all(vec4<bool>(var_0, true, true, var_0))), select(vec4<bool>(var_0, var_0, true, false), vec4<bool>(var_0, var_0, var_0, true), select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(var_0, false, false, var_0), vec4<bool>(false, var_0, false, false))))), select(vec4<bool>(_wgslsmith_f_op_f32(-522f * var_2.x) > -751f, true && (-22469i < var_4.a.a.x), func_4(var_4.a, 1i, var_0) & func_3(global0.b, Struct_2(vec2<i32>(u_input.c.x, var_4.a.a.x)), var_4, Struct_3(global0.b.a.zx, global0.b)), false), !(!(!vec4<bool>(false, var_0, false, var_0))), select(!vec4<bool>(var_0, var_0, var_0, true), select(!vec4<bool>(var_0, true, var_0, false), select(vec4<bool>(true, var_0, var_0, false), vec4<bool>(var_0, false, false, var_0), false), !vec4<bool>(var_0, var_0, true, var_0)), select(select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(var_0, true, false, true), vec4<bool>(true, var_0, true, false)), vec4<bool>(var_0, true, true, false), var_0))));
    var_5 = vec4<bool>(var_0, var_0, !(reverseBits(~var_4.a.a.x) == 0i), var_0 & !var_5.x);
    var var_6 = vec3<f32>(1f, _wgslsmith_f_op_f32(sign(global0.b.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1040f))) * global0.b.d));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(~(u_input.b & global0.b.e), u_input.a, ~1u & (10275u | global0.b.e), _wgslsmith_sub_u32(_wgslsmith_sub_u32(global0.b.b.x, 4294967295u), 4294967295u >> (var_1.x % 32u))), min(~abs(vec4<u32>(var_1.x, global0.b.e, global0.b.b.x, global0.b.b.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 59875u, 7732u, 1u), vec4<u32>(var_1.x, global0.b.e, 2641u, global0.b.b.x), vec4<u32>(var_1.x, 1u, 17714u, 1u))), 1i <= u_input.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2427f))), 16235u, -787f);
}

