struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x))), _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-681f * -551f), 1682f)));
    let var_0 = _wgslsmith_add_vec3_u32(min(min(vec3<u32>(0u, 14227u, u_input.b), ~vec3<u32>(14326u, 9064u, 16061u)), vec3<u32>(u_input.b, abs(u_input.b), u_input.b)) & ~max(vec3<u32>(u_input.b, u_input.b, u_input.b) & vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, 0u)), _wgslsmith_mod_vec3_u32(reverseBits(min(vec3<u32>(u_input.b, 51526u, u_input.b), vec3<u32>(u_input.b, 81219u, u_input.b))), firstLeadingBit(~(~vec3<u32>(u_input.b, 0u, u_input.b)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 606f) * global0.x);
    let var_2 = !select(all(select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec2<bool>(true, false)))), true, !(!all(vec4<bool>(false, false, true, true))));
    var var_3 = Struct_2(vec3<i32>(8745i ^ firstTrailingBit(~1i), -42560i, 2147483647i), ~var_0.x);
    return 18522i;
}

fn func_2() -> Struct_3 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global0.x, -1721f, global0.x))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, 161f, -524f), vec4<f32>(global0.x, global0.x, 891f, 1680f))))))));
    let var_0 = _wgslsmith_mod_vec3_u32(~(~abs(vec3<u32>(u_input.b, 0u, 0u))), firstLeadingBit(~(~vec3<u32>(1007u, u_input.b, 4294967295u)) & vec3<u32>(~26687u, 3919u, u_input.b | 0u)));
    let var_1 = (11197u >= _wgslsmith_clamp_u32(1u, 0u, 1u)) || true;
    let var_2 = Struct_3(select(select(countOneBits(vec3<u32>(27786u, 26663u, 1u) | var_0), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(var_1, var_1, var_1), select(vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, false, false), vec3<bool>(var_1, var_1, var_1)), vec3<bool>(false, false, false))), vec3<u32>(_wgslsmith_sub_u32(41902u, u_input.b), _wgslsmith_mod_u32(45349u, var_0.x), var_0.x) ^ (~vec3<u32>(52321u, u_input.b, var_0.x) << (var_0 % vec3<u32>(32u))), var_1), u_input.a, Struct_1(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, var_0.x, 20531u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, u_input.b, u_input.b), vec3<u32>(1u, 0u, var_0.x))) & ~(~vec3<u32>(1u, 35368u, var_0.x)), func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 634f))), ~(~var_0.x)), !var_1);
    var var_3 = global0.x;
    return Struct_3(var_0, ~(-vec4<i32>(1i, var_2.b.x, ~(-64330i), _wgslsmith_div_i32(u_input.a.x, -27571i))), var_2.c, !var_1);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_3 {
    var var_0 = -abs(u_input.a.x);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(241f, arg_0.c.c.x, arg_0.c.c.x, 2209f) * vec4<f32>(arg_0.c.c.x, global0.x, 580f, arg_0.c.c.x))))), vec4<f32>(global0.x, arg_0.c.c.x, -2821f, _wgslsmith_f_op_f32(f32(-1f) * -1411f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, -564f, 580f, -252f)))))));
    let var_1 = arg_0.d;
    let var_2 = true;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.c.c.x)) * arg_0.c.c.x))), global0.x);
    return func_2();
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<f32>) -> vec4<f32> {
    let var_0 = func_4(Struct_3(~min(~vec3<u32>(54445u, arg_1.x, u_input.b), arg_1.zxx), arg_0.b, func_4(func_2(), true, reverseBits(reverseBits(7957i)), -43402i).c, all(select(select(vec2<bool>(true, false), vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(false, arg_0.d)), !vec2<bool>(false, arg_0.d), false))), true, -2147483647i, reverseBits(u_input.a.x)).c;
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - arg_0.c.c.x)) - arg_2.x), 616f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - 2487f)), _wgslsmith_f_op_f32(f32(-1f) * -854f), 1360f);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>) -> vec2<i32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 625f, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global0.x, 433f, global0.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-735f, 662f, 1000f, global0.x))), vec4<f32>(_wgslsmith_f_op_f32(global0.x - 258f), _wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_div_f32(global0.x, global0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_5(func_4(func_2(), true || (u_input.b <= arg_0.x), u_input.a.x, i32(-1i) * -u_input.a.x), firstTrailingBit(firstLeadingBit(~vec4<u32>(20351u, arg_0.x, u_input.b, arg_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.zw))))));
    var var_0 = arg_1.x;
    var var_1 = vec2<u32>(~_wgslsmith_mod_u32(arg_0.x, _wgslsmith_clamp_u32(u_input.b, u_input.b, 67049u & u_input.b)), 4294967295u);
    var var_2 = true;
    return vec2<i32>(firstTrailingBit(1i), _wgslsmith_mult_i32(-35657i, (-u_input.a.x >> (4294967295u % 32u)) & (~u_input.a.x << (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<u32>(_wgslsmith_div_u32(0u, firstTrailingBit(0u & u_input.b)), 49269u), u_input.a);
    let var_1 = ~vec4<u32>(u_input.b, u_input.b, (u_input.b ^ select(1u, u_input.b, false)) & (~1u ^ _wgslsmith_mult_u32(u_input.b, u_input.b)), u_input.b);
    var var_2 = var_1;
    var var_3 = vec4<bool>((max(_wgslsmith_div_i32(u_input.a.x, 41042i), 0i << (0u % 32u)) << (((u_input.b >> (12961u % 32u)) << (countOneBits(1u) % 32u)) % 32u)) < ~var_0.x, false, true, true);
    let var_4 = func_2().c;
    var_3 = select(vec4<bool>(true, var_3.x, true, var_3.x), vec4<bool>(var_3.x & false, true, var_3.x, true), all(select(select(select(vec2<bool>(false, true), vec2<bool>(var_3.x, true), var_3.x), !var_3.yy, !var_3.x), var_3.zy, !var_3.xz)));
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

