struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<u32>) -> u32 {
    let var_0 = -295f;
    let var_1 = ~(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-18767i, -11953i), ~vec2<i32>(-12863i, u_input.c)), ~vec2<i32>(u_input.c, -68403i), select(vec2<i32>(u_input.c, 1i) | vec2<i32>(16679i, u_input.c), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(u_input.c, u_input.c)), true)) >> (u_input.a % vec2<u32>(32u)));
    var var_2 = _wgslsmith_div_vec2_i32(var_1 << (vec2<u32>(~(~113089u), 0u) % vec2<u32>(32u)), vec2<i32>(~u_input.c, var_1.x) ^ var_1);
    var var_3 = _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c, ~var_2.x ^ (15186i | _wgslsmith_sub_i32(var_1.x, 36929i))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, _wgslsmith_mult_i32(var_1.x, var_2.x), ~u_input.c), -countOneBits(vec3<i32>(var_1.x, u_input.c, -5576i))));
    var_3 = _wgslsmith_add_i32(~(-_wgslsmith_sub_i32(~1i, var_1.x)), firstLeadingBit(2147483647i));
    return arg_0;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(~(-vec4<i32>(u_input.c, u_input.c, -25485i, 2147483647i)) >> (vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(1u, arg_2, arg_2), 1u, 1751u) % vec4<u32>(32u))), func_3(_wgslsmith_add_u32(~(u_input.b ^ 4294967295u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 0u, 4294967295u), vec3<u32>(20602u, u_input.a.x, 18632u)))), 41700u, vec4<u32>(~0u, ~u_input.b, arg_2, arg_2) >> (_wgslsmith_add_vec4_u32(select(vec4<u32>(0u, 0u, 4962u, u_input.b), vec4<u32>(4294967295u, 4294967295u, 22589u, 0u), vec4<bool>(true, arg_0.x, true, global0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(20698u, arg_2, arg_2, 28476u), vec4<u32>(arg_2, 1u, arg_2, arg_2))) % vec4<u32>(32u))), u_input.a.x, arg_1.x);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    global0 = !select(arg_1.zx, !arg_1.xx, global0.x);
    global0 = select(!vec2<bool>((arg_0.c < 20659u) == !arg_1.x, any(select(vec2<bool>(arg_1.x, false), arg_1.xy, true))), select(arg_1.yz, !vec2<bool>(-1000f >= arg_0.d, true), arg_1.xw), arg_1.ww);
    let var_0 = vec3<bool>(false, true || (false && all(arg_1)), (~arg_0.b >> (arg_0.b % 32u)) > func_2(arg_1.yz, vec3<f32>(_wgslsmith_f_op_f32(335f * -2067f), -1571f, arg_0.d), u_input.a.x).c);
    global0 = !(!select(vec2<bool>(!arg_1.x, global0.x), !(!vec2<bool>(global0.x, true)), var_0.x));
    let var_1 = arg_0;
    return 531f;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = !vec3<bool>(!select(true, true, false | global0.x), global0.x, global0.x);
    var var_1 = countOneBits(firstTrailingBit(vec4<i32>(-u_input.c, _wgslsmith_add_i32(2147483647i, _wgslsmith_clamp_i32(arg_0.x, 0i, u_input.c)), 0i, u_input.c)));
    var var_2 = Struct_1(~_wgslsmith_sub_vec4_i32(select(arg_0, arg_0, global0.x), arg_0) | vec4<i32>(u_input.c, u_input.c, arg_0.x, ~0i), 44705u, u_input.b, _wgslsmith_f_op_f32(func_4(func_2(select(var_0.xy, var_0.yy, global0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(712f, -628f, -1920f), vec3<f32>(-551f, 270f, -1000f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1631f, 1151f, -1070f), vec3<f32>(-1492f, -566f, -923f)))), 4294967295u), vec4<bool>(select(true, global0.x, true), all(vec4<bool>(global0.x, true, true, true)), true, !var_0.x || var_0.x))));
    let var_3 = var_2.a;
    var_2 = Struct_1(arg_0, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(arg_1.xy, arg_1.zy), ~47627u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_2, 6578u))) >> (u_input.b % 32u), 26138u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_2.c, 0u), 43180u), _wgslsmith_f_op_f32(-var_2.d));
    return Struct_1(abs(arg_0), func_3(arg_1.x, _wgslsmith_div_u32(1u, 28050u), firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1.x, u_input.a.x, 6773u), vec4<u32>(1u, 34214u, arg_2, 1u)), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, arg_2)))), reverseBits(~(~(~var_2.b))), var_2.d);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<bool> {
    global0 = vec2<bool>(global0.x == (arg_1.b > max(func_3(4778u, u_input.a.x, vec4<u32>(arg_1.c, 39003u, 1u, 1u)), ~6405u)), true);
    var var_0 = i32(-1i) * -18372i;
    var_0 = -1i;
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a.x | _wgslsmith_sub_i32(-1i, 2147483647i), 31461i, ~(~1i), abs(i32(-1i) * -19701i)), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(arg_1.a, -arg_1.a), _wgslsmith_add_vec4_i32(min(arg_1.a, arg_1.a), vec4<i32>(-127i, -2147483647i, u_input.c, -1i)))), ~u_input.a.x, ~1u, -1182f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-582f, _wgslsmith_f_op_f32(select(1000f, var_1.d, global0.x)), _wgslsmith_f_op_f32(var_1.d * arg_1.d), _wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, 1087f, arg_1.d, var_1.d) * vec4<f32>(arg_1.d, arg_1.d, var_1.d, -489f)))), !(global0.x && global0.x))))));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !func_5(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(-2147483647i, u_input.c)), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c, -51384i), vec2<i32>(u_input.c, u_input.c))), func_1(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 0i, u_input.c, -48401i), vec4<i32>(u_input.c, u_input.c, 0i, -1i))), vec3<u32>(u_input.b, 28265u, u_input.b), u_input.b));
    let var_0 = Struct_1(vec4<i32>(-_wgslsmith_div_i32(2147483647i, -2575i), u_input.c, u_input.c, u_input.c), u_input.b, 36255u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(518f)) * -976f) - _wgslsmith_f_op_f32(-564f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, var_0.b, 46345u)), min(vec3<u32>(u_input.a.x, 0u, 58041u), vec3<u32>(0u, u_input.a.x, 0u))), select(~vec3<u32>(var_0.b, var_0.b, 0u), select(vec3<u32>(21149u, 60171u, 4294967295u), vec3<u32>(u_input.a.x, 4294967295u, u_input.b), vec3<bool>(global0.x, false, global0.x)), global0.x)) & select(max(vec3<u32>(4294967295u, u_input.b, 0u), vec3<u32>(4294967295u, u_input.b, 4294967295u)), vec3<u32>(firstTrailingBit(var_0.b), var_0.b | 1u, var_0.c), vec3<bool>(global0.x, global0.x, select(false, true, global0.x))));
    var var_2 = false && (var_0.a.x > (u_input.c ^ -var_0.a.x));
    global0 = select(select(!(!func_5(var_0.a.yw, Struct_1(var_0.a, var_0.b, 4294967295u, var_0.d))), select(!select(vec2<bool>(false, true), vec2<bool>(true, global0.x), global0.x), select(vec2<bool>(true, global0.x), func_5(vec2<i32>(1i, var_0.a.x), var_0), !vec2<bool>(global0.x, true)), global0.x), !(_wgslsmith_add_i32(u_input.c, -13962i) == _wgslsmith_add_i32(u_input.c, -1i))), !(!select(vec2<bool>(true, global0.x), !vec2<bool>(true, global0.x), all(vec4<bool>(false, false, global0.x, global0.x)))), _wgslsmith_sub_u32(~u_input.b, ~(~var_1.x)) >= ~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.c, 37895u, var_1.x, var_0.c), vec4<u32>(30044u, u_input.b, var_1.x, var_1.x) ^ vec4<u32>(var_0.b, var_0.c, var_1.x, 4294967295u)) | reverseBits(vec4<u32>(1u, var_0.c, 27858u, 1u)), ~vec4<u32>(~var_1.x, ~0u, 4294967295u, 42155u)), 4294967295u, vec3<u32>(~4294967295u, u_input.b << (_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, var_0.b), ~31644u) % 32u), ~(~var_1.x) ^ 17962u), 0i);
}

