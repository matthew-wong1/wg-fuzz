struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(9978u, 77053u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>) -> u32 {
    let var_0 = !select(select(select(select(vec2<bool>(arg_0.b, false), vec2<bool>(false, arg_0.b), vec2<bool>(arg_0.b, true)), !vec2<bool>(arg_2.x, arg_0.b), !arg_2.zw), select(select(arg_2.xz, vec2<bool>(arg_0.b, true), arg_2.zz), arg_2.zy, all(vec3<bool>(false, true, arg_0.b))), arg_2.x), select(!select(arg_2.yy, vec2<bool>(true, arg_0.b), arg_2.x), !(!arg_2.wy), any(arg_2) && true), arg_2.zx);
    var var_1 = -535f;
    let var_2 = -1i & _wgslsmith_add_i32(u_input.a.x, -1i);
    var var_3 = _wgslsmith_clamp_i32(1i, ~_wgslsmith_add_i32(_wgslsmith_mod_i32(~arg_0.d.x, u_input.a.x), u_input.a.x), 90956i);
    var_3 = firstLeadingBit(max(0i, ~1i));
    return _wgslsmith_mod_u32(arg_0.a, arg_0.a);
}

fn func_2() -> Struct_1 {
    var var_0 = ((true && all(vec2<bool>(true, true))) != true) | false;
    var_0 = false;
    let var_1 = _wgslsmith_mod_vec2_u32(max(vec2<u32>(_wgslsmith_sub_u32(~global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 31443u), vec2<u32>(global0.x, 4294967295u))), ~34546u), ~(~(~vec2<u32>(global0.x, global0.x)))), max(~firstLeadingBit(vec2<u32>(4294967295u, global0.x)), (vec2<u32>(4294967295u, global0.x) >> (vec2<u32>(30964u, global0.x) % vec2<u32>(32u))) ^ vec2<u32>(29508u, global0.x)) << (_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(global0.x, global0.x), abs(vec2<u32>(global0.x, 23023u))), firstTrailingBit(vec2<u32>(global0.x, 159924u)) >> ((vec2<u32>(1u, global0.x) ^ vec2<u32>(0u, 22738u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global0 = var_1;
    global0 = vec2<u32>(func_3(Struct_1(var_1.x, all(vec3<bool>(true, true, false)) | true, ~global0.x, vec4<i32>(u_input.a.x, -2147483647i >> (global0.x % 32u), u_input.a.x, abs(-2147483647i))), var_1, vec4<bool>(true, true, true, all(vec2<bool>(true, false)) || all(vec4<bool>(false, false, true, true)))), var_1.x);
    return Struct_1(min(abs(~min(global0.x, global0.x)), global0.x), !any(vec3<bool>(true, true, true)), global0.x, abs(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(13827i, 2491i, 17621i, -2147483647i)), abs(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))))));
}

fn func_1() -> vec3<bool> {
    global0 = ~max(max(vec2<u32>(_wgslsmith_add_u32(global0.x, global0.x), global0.x), vec2<u32>(firstTrailingBit(36305u), firstLeadingBit(0u))), vec2<u32>(0u, 0u));
    let var_0 = func_2();
    let var_1 = !var_0.b;
    var var_2 = var_0;
    var var_3 = Struct_1(107728u, var_2.b, 0u, var_0.d);
    return !(!vec3<bool>(false, ~0u > ~var_0.a, true));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec3<bool>) -> bool {
    let var_0 = arg_0.x;
    global0 = max(~(~(~min(vec2<u32>(0u, global0.x), vec2<u32>(global0.x, 1u)))), countOneBits(firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(0u, 4294967295u), ~0u))));
    var var_1 = Struct_1(firstTrailingBit(~(global0.x ^ 28119u)) ^ 52592u, true, ~global0.x, min(vec4<i32>(select(u_input.a.x, u_input.a.x, arg_2.x), func_2().d.x, -u_input.a.x, -21033i), vec4<i32>(-37849i, u_input.a.x, 1i, ~u_input.a.x)) | (-vec4<i32>(u_input.a.x, 15061i, u_input.a.x, 15599i) | firstTrailingBit(vec4<i32>(u_input.a.x, 33764i, 38319i, u_input.a.x) | vec4<i32>(47830i, -31452i, u_input.a.x, u_input.a.x))));
    var_1 = func_2();
    global0 = abs(vec2<u32>(countOneBits(1u), global0.x));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -540f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-364f)));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, global0.x), vec2<u32>(~global0.x, global0.x)), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 986f, 867f, 1000f))), vec4<f32>(1456f, -225f, -1000f, 311f))) * vec4<f32>(_wgslsmith_f_op_f32(2742f * 539f), _wgslsmith_f_op_f32(f32(-1f) * -1012f), 138f, _wgslsmith_f_op_f32(f32(-1f) * -2879f))), func_1(), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, func_2().b, false))), ~0u, _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(u_input.a.x, -1i, 23789i, u_input.a.x)), ~vec4<i32>(1i, 30358i, 1i, 2147483647i)), vec4<i32>(_wgslsmith_sub_i32(-1i, u_input.a.x), 1i, u_input.a.x | -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -47356i, u_input.a.x), vec4<i32>(u_input.a.x, -45627i, -1i, 1i))) >> (~(~vec4<u32>(48391u, 1u, global0.x, 4294967295u)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(694f, -1343f, 980f) + vec3<f32>(595f, -684f, -1520f)))))));
    let var_3 = !vec3<bool>(!any(!vec2<bool>(var_1.b, var_1.b)), _wgslsmith_f_op_f32(-var_2.x) == -925f, true);
    let var_4 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(select(u_input.a, var_1.d.ywx, true), func_2().d.xyz), max(~u_input.a, var_1.d.xzy)), var_1.d.wzx);
    var var_5 = ~u_input.a.x;
    var var_6 = _wgslsmith_add_vec2_u32(~(~vec2<u32>(global0.x, _wgslsmith_mult_u32(1u, global0.x))), min(_wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(global0.x, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a, 12587u), vec2<u32>(var_1.c, 82985u)) ^ ~vec2<u32>(4294967295u, global0.x)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 1u), vec2<u32>(var_1.c, var_1.a)) >> (~vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u)), vec2<u32>(global0.x, 34884u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mult_u32(85262u, _wgslsmith_mod_u32(var_6.x, global0.x)), ~(~0u), global0.x, var_1.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_2.xy))), vec4<f32>(var_2.x, _wgslsmith_div_f32(-1421f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x)))), 1463f, _wgslsmith_f_op_f32(-var_2.x)), reverseBits(_wgslsmith_add_u32(global0.x, 12561u | _wgslsmith_mod_u32(var_1.a, global0.x))), 444f);
}

