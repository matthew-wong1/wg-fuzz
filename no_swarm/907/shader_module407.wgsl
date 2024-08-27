struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
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

var<private> global0: Struct_2;

var<private> global1: vec2<bool>;

var<private> global2: i32 = 5778i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> vec2<u32> {
    var var_0 = vec2<bool>(true, true);
    var_0 = vec2<bool>(!var_0.x, true);
    var var_1 = Struct_1(arg_0, global0.a.b ^ firstTrailingBit(~(vec2<u32>(0u, 4294967295u) & global0.b.b)), global0.b.c);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2092f, -1052f)))), ~(~(~vec2<u32>(global0.b.b.x, 52488u))), 22767u), Struct_1(_wgslsmith_f_op_f32(round(-1135f)), ~(~vec2<u32>(43526u, 1u)) | reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global0.a.b.x), vec2<u32>(arg_3, u_input.b))), arg_3));
    let var_3 = select(vec4<u32>(u_input.b, 1u, _wgslsmith_mult_u32(15995u, ~var_1.b.x), 75375u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3, ~89494u, 99741u & global0.a.c, ~88021u), vec4<u32>(~arg_3, var_1.c, ~arg_3, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.c, 0u, 0u, 570u), vec4<u32>(global0.b.c, global0.a.b.x, 0u, var_1.b.x))), abs(~vec4<u32>(38341u, 34867u, arg_3, var_1.b.x))), true);
    return vec2<u32>(var_1.b.x, _wgslsmith_dot_vec4_u32(~var_3 << (((var_3 & var_3) | vec4<u32>(arg_1.a.b.x, 91874u, 4294967295u, 5040u)) % vec4<u32>(32u)), ~var_3));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: f32, arg_3: f32) -> Struct_2 {
    global0 = Struct_2(global0.a, Struct_1(145f, func_3(_wgslsmith_f_op_f32(-arg_0.x), Struct_2(global0.b, Struct_1(1320f, vec2<u32>(arg_1, arg_1), 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a * arg_0.x)), 0u), u_input.b));
    global1 = vec2<bool>(((_wgslsmith_f_op_f32(-1355f - global0.b.a) > arg_0.x) & false) || true, all(vec4<bool>(global1.x, true, global1.x, any(vec3<bool>(global1.x, true, global1.x)) & global1.x)));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_clamp_vec2_u32(vec2<u32>(min(_wgslsmith_mod_u32(global0.b.c, 53828u), 4294967295u), u_input.b), _wgslsmith_sub_vec2_u32(global0.b.b, firstLeadingBit(vec2<u32>(4294967295u, 1u))), global0.b.b), ~(~u_input.b));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), countOneBits(var_0.b), 42635u);
    return Struct_2(Struct_1(-1000f, _wgslsmith_mult_vec2_u32(reverseBits(abs(global0.a.b)), vec2<u32>(func_3(-1000f, Struct_2(Struct_1(arg_3, var_0.b, global0.a.c), Struct_1(arg_2, global0.a.b, var_1.b.x)), arg_0.x, 0u).x, firstLeadingBit(u_input.b))), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(87904u, 4294967295u, var_0.b.x, var_0.b.x), vec4<u32>(global0.b.b.x, global0.a.b.x, 1u, var_1.b.x)), 10465u)), Struct_1(_wgslsmith_f_op_f32(-global0.b.a), global0.b.b, 7576u));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_1 {
    global0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a)), global0.b.a, 142f, global0.a.a)), max(_wgslsmith_div_u32(~(global0.b.b.x >> (u_input.b % 32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.c, arg_2.x), vec2<u32>(0u, 72163u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(48677u, arg_2.x), global0.b.b), 1u) | (global0.b.b.x << ((130787u << (arg_2.x % 32u)) % 32u))), global0.a.a, global0.a.a);
    global1 = vec2<bool>(!arg_3.x, -39979i != _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.x, ~(-647i)), max(_wgslsmith_sub_i32(2904i, arg_0), -arg_0)));
    global1 = arg_3.yw;
    global1 = vec2<bool>(false, !(!arg_3.x));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.a + 609f)))))));
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(min(564f, global0.b.a)), -976f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1108f, _wgslsmith_f_op_f32(-global0.a.a))))), -718f), ~arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.b.a, _wgslsmith_f_op_f32(f32(-1f) * -1240f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.a))))), -1000f).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(global0.b.a, ~(~(~vec2<u32>(1u, global0.b.c))), _wgslsmith_sub_u32(u_input.b, 1u)), func_1(abs(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c, u_input.c), u_input.a)), -min(vec3<i32>(u_input.c, 0i, 2147483647i), vec3<i32>(-8513i, u_input.c, u_input.a)) | _wgslsmith_sub_vec3_i32(~vec3<i32>(-12163i, u_input.c, u_input.a), -vec3<i32>(u_input.c, u_input.c, 15117i)), ~vec2<u32>(~30483u, ~global0.b.b.x), select(vec4<bool>(true, true, !global1.x, true), vec4<bool>(true, u_input.c >= u_input.a, true, global1.x), false)));
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 1252i), vec2<i32>(2147483647i, -34154i))), abs(vec2<i32>(-68248i, u_input.a))), -vec2<i32>(u_input.c ^ 32807i, -u_input.a)) >> ((global0.b.b >> (~global0.b.b % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = select(select(!(!(!vec2<bool>(global1.x, global1.x))), select(vec2<bool>(true, global0.b.a >= global0.a.a), !(!vec2<bool>(true, global1.x)), select(vec2<bool>(true, true), !vec2<bool>(global1.x, global1.x), select(global1.x, true, global1.x))), false), select(select(!select(vec2<bool>(true, global1.x), vec2<bool>(false, global1.x), false), !select(vec2<bool>(true, global1.x), vec2<bool>(false, false), vec2<bool>(false, global1.x)), global1.x), !vec2<bool>(true, !global1.x), global1.x), true);
    var var_1 = firstTrailingBit(vec4<u32>(1u, reverseBits(~abs(u_input.b)), max(0u, 1u), ~(~16025u) >> (global0.b.c % 32u)));
    var var_2 = global0.a;
    var_2 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x >> (var_1.x % 32u));
}

