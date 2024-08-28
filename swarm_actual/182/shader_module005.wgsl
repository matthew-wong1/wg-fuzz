struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = ~vec4<u32>(_wgslsmith_mult_u32(~(u_input.e >> (u_input.a.x % 32u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.e, u_input.e, u_input.e), ~u_input.e)), 1671u, 4294967295u, u_input.a.x << (4294967295u % 32u));
    global0 = select(!select(!select(vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, true, false), global0.x), vec3<bool>(false && global0.x, all(vec3<bool>(global0.x, global0.x, true)), global0.x), true || global0.x), !select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, global0.x), vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x)), select(vec3<bool>(false, false, global0.x), vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, false))), !(!vec3<bool>(global0.x, true, global0.x)), true), !(true != (global0.x | true)));
    var var_1 = Struct_1(u_input.e, vec2<bool>(true, global0.x), 99226u);
    return Struct_1(_wgslsmith_sub_u32(var_0.x, 1u), vec2<bool>(global0.x, var_1.b.x), 41735u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = max(u_input.d.zzz, vec3<i32>(30379i, u_input.d.x, reverseBits(_wgslsmith_clamp_i32(12248i, u_input.b.x, -35706i)) ^ -(~0i)));
    var_0 = u_input.d.wxx;
    var var_1 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(8507i, u_input.b.x, 1i, var_0.x), max(vec4<i32>(2147483647i, 0i, -2147483647i, var_0.x), vec4<i32>(40902i, var_0.x, 66689i, var_0.x))), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, 2147483647i, var_0.x), ~u_input.d)) | select(vec4<i32>(-u_input.c | _wgslsmith_mult_i32(u_input.b.x, var_0.x), -19209i, var_0.x, 2147483647i), vec4<i32>(2904i, u_input.d.x, _wgslsmith_mult_i32(-10773i, min(0i, var_0.x)), ~(-1i >> (u_input.e % 32u))), vec4<bool>(arg_0.b.x & (false || arg_0.b.x), true, false, any(vec4<bool>(true, true, true, arg_0.b.x))));
    var_0 = vec3<i32>(-1i) * -(~var_1.xxx << (vec3<u32>(~3279u, 1u, u_input.a.x) % vec3<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_mod_u32(20160u, ~(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(44038u, u_input.e)) << (29535u % 32u))), func_2(u_input.d, firstTrailingBit(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 0i, -1i), vec3<i32>(-2147483647i, -1i, -1i)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -943f)), _wgslsmith_mod_vec2_i32(firstTrailingBit(select(u_input.b, vec2<i32>(-2147483647i, var_1.x), true)), select(vec2<i32>(var_1.x, var_1.x), -u_input.d.wy, vec2<bool>(false, global0.x)))).b, 18960u);
    return var_0.x;
}

fn func_1() -> vec4<bool> {
    let var_0 = func_2(vec4<i32>(u_input.c >> (1u % 32u), u_input.c, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_div_i32(0i, -u_input.b.x)), countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(3035i, u_input.d.x), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), u_input.d.zw)))), u_input.d.zzz, _wgslsmith_f_op_f32(f32(-1f) * -783f), u_input.d.zx);
    var var_1 = vec3<i32>(-2613i, 42562i, _wgslsmith_mod_i32(abs(2147483647i), u_input.b.x));
    global0 = vec3<bool>(true, true, true);
    var_1 = -(~u_input.d.yxz);
    let var_2 = func_3(func_2(_wgslsmith_clamp_vec4_i32(u_input.d, -firstLeadingBit(u_input.d), ~u_input.d), vec3<i32>(~var_1.x, ~var_1.x, _wgslsmith_clamp_i32(u_input.c & u_input.c, var_1.x, ~u_input.c)), 293f, select(vec2<i32>(0i, var_1.x) & _wgslsmith_mult_vec2_i32(var_1.yz, u_input.b), vec2<i32>(u_input.d.x, var_1.x), true)));
    return select(select(select(!(!vec4<bool>(var_0.b.x, true, true, global0.x)), vec4<bool>(true, true, global0.x, global0.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, var_0.b.x, global0.x), vec4<bool>(global0.x, var_0.b.x, false, false), var_0.b.x), !vec4<bool>(global0.x, var_0.b.x, global0.x, var_0.b.x))), !select(!vec4<bool>(var_0.b.x, false, false, var_0.b.x), select(vec4<bool>(global0.x, false, global0.x, var_0.b.x), vec4<bool>(true, var_0.b.x, false, false), vec4<bool>(false, true, true, global0.x)), var_0.b.x), any(vec4<bool>(true || global0.x, true, !global0.x, true))), select(select(!(!vec4<bool>(false, false, true, global0.x)), vec4<bool>(true, true, var_0.b.x, all(vec4<bool>(true, global0.x, true, false))), all(vec2<bool>(false, false))), !vec4<bool>(any(vec4<bool>(false, true, true, true)), global0.x, global0.x, var_0.b.x), select(!select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(global0.x, var_0.b.x, true, var_0.b.x), vec4<bool>(var_0.b.x, global0.x, global0.x, var_0.b.x)), vec4<bool>(any(vec3<bool>(global0.x, global0.x, var_0.b.x)), true, true, true), (1923i ^ var_1.x) != 2147483647i)), any(!select(vec4<bool>(true, global0.x, var_0.b.x, true), select(vec4<bool>(false, var_0.b.x, global0.x, false), vec4<bool>(global0.x, global0.x, var_0.b.x, true), vec4<bool>(global0.x, var_0.b.x, true, var_0.b.x)), select(vec4<bool>(false, global0.x, var_0.b.x, global0.x), vec4<bool>(false, var_0.b.x, var_0.b.x, true), vec4<bool>(global0.x, true, global0.x, var_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(u_input.e != u_input.e, false, any(!(!vec3<bool>(global0.x, false, true))));
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(68645u, u_input.e, u_input.e), vec3<u32>(30506u, 19689u, u_input.e) | vec3<u32>(18082u, u_input.e, u_input.e)), ~(vec3<u32>(u_input.a.x, 1u, u_input.e) & vec3<u32>(u_input.e, u_input.a.x, 0u)), vec3<bool>(all(vec3<bool>(true, global0.x, global0.x)), false, false)), max(vec3<u32>(17431u, u_input.e, 52528u) | vec3<u32>(u_input.e, 1u, 4294967295u), vec3<u32>(1u, 0u, u_input.a.x)) & (vec3<u32>(4294967295u, u_input.e, u_input.a.x) >> ((vec3<u32>(32214u, u_input.a.x, 0u) ^ vec3<u32>(32613u, u_input.e, 0u)) % vec3<u32>(32u)))), vec3<u32>(~(~u_input.a.x), u_input.a.x, u_input.a.x << (abs(u_input.a.x) % 32u)));
    let var_1 = (0u ^ _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.x, firstTrailingBit(var_0.x), 32726u), 0u)) << (countOneBits(~0u) % 32u);
    var var_2 = !vec4<bool>(!(!(!global0.x)), true, true, (select(global0.x, true, false) || true) || any(select(vec4<bool>(true, true, global0.x, false), vec4<bool>(false, global0.x, global0.x, true), true)));
    global0 = vec3<bool>(var_2.x, true, true);
    var_2 = !(!select(!select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(false, true, var_2.x, true), global0.x), vec4<bool>(true, true, false != global0.x, var_2.x), select(func_1(), vec4<bool>(true, true, false, global0.x), false)));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(474f + _wgslsmith_f_op_f32(-793f - _wgslsmith_f_op_f32(step(-747f, -1000f)))))));
    let var_4 = func_2(~vec4<i32>(u_input.d.x, abs(u_input.d.x), _wgslsmith_div_i32(14917i, 72054i), 1i) | ~(-u_input.d), reverseBits(-max(vec3<i32>(6683i, u_input.c, 1i), vec3<i32>(26729i, u_input.d.x, u_input.d.x))) >> (countOneBits(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, var_0.x, 0u), ~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), ~vec3<u32>(var_0.x, var_1, 38984u))) % vec3<u32>(32u)), 266f, select(vec2<i32>(firstTrailingBit(-2147483647i << (var_1 % 32u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(13896i, u_input.c, -14161i, 23679i), vec4<i32>(u_input.b.x, -15338i, u_input.c, u_input.d.x))), ~_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-8479i, u_input.b.x)), abs(vec2<i32>(u_input.d.x, 58195i))), func_2(~(~vec4<i32>(-12853i, -15418i, 1i, u_input.d.x)), u_input.d.wwy >> (select(vec3<u32>(var_0.x, u_input.e, 0u), vec3<u32>(0u, 1u, 44252u), global0.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(step(-873f, -1134f)), firstTrailingBit(u_input.b)).b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(u_input.b, select(firstLeadingBit(u_input.b), u_input.b, !(!var_4.b))), ~var_4.a);
}

