struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32) -> vec4<u32> {
    var var_0 = Struct_1(vec4<u32>(firstTrailingBit(~_wgslsmith_mod_u32(u_input.a, 69897u)), firstLeadingBit(~u_input.b.x | 3381u), 17932u, 1u), -2147483647i);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -270f, arg_0)) + vec3<f32>(-2024f, arg_0, arg_0)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -241f), _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2254f)))))));
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1367f * _wgslsmith_f_op_f32(-var_1.x)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))))));
    var var_4 = Struct_1(select(_wgslsmith_sub_vec4_u32(~abs(var_0.a), vec4<u32>(~49407u, 70293u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_0.a.x), vec2<u32>(296u, u_input.a)), 65567u)), var_0.a, vec4<bool>(true, true, any(vec2<bool>(true, true)), true)), ~arg_1);
    return _wgslsmith_add_vec4_u32(var_0.a, var_0.a ^ vec4<u32>(~u_input.a, ~(~var_0.a.x), ~(48681u | u_input.a), var_2));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>) -> i32 {
    let var_0 = ~(~(-1i)) ^ ((1i | _wgslsmith_add_i32(min(0i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-63014i, -2147483647i), vec2<i32>(2147483647i, -89923i)))) ^ (i32(-1i) * -58415i));
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(func_3(871f, var_0, var_0), vec4<u32>(u_input.a, 0u, 0u, u_input.a) >> (vec4<u32>(4294967295u, 38146u, 65076u, 7335u) % vec4<u32>(32u))), ~((vec4<u32>(u_input.a, 38788u, u_input.b.x, u_input.a) >> (vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, 1u) % vec4<u32>(32u))) | (vec4<u32>(68990u, u_input.a, u_input.b.x, u_input.a) & vec4<u32>(u_input.b.x, u_input.b.x, 32925u, u_input.b.x)))), var_0);
    let var_2 = Struct_1(_wgslsmith_mult_vec4_u32(min(abs(reverseBits(vec4<u32>(29313u, u_input.b.x, 4294967295u, 4294967295u))), (vec4<u32>(var_1.a.x, 7548u, 157207u, u_input.a) | vec4<u32>(u_input.b.x, u_input.b.x, var_1.a.x, 1u)) | (vec4<u32>(var_1.a.x, var_1.a.x, u_input.b.x, 4294967295u) & vec4<u32>(var_1.a.x, u_input.a, u_input.a, var_1.a.x))), vec4<u32>(_wgslsmith_add_u32(u_input.b.x | 14753u, _wgslsmith_mult_u32(var_1.a.x, 22628u)), ~1u, 53240u, 4294967295u)), -(~_wgslsmith_div_i32(var_0, 1i)) ^ var_0);
    let var_3 = 894i;
    var var_4 = vec4<i32>(-var_0, _wgslsmith_mod_i32(min(min(-40561i, var_0), _wgslsmith_dot_vec2_i32(vec2<i32>(46799i, 62932i), vec2<i32>(0i, 46338i))), 0i), var_3, 7866i) >> (vec4<u32>(0u, ~u_input.a >> (24919u % 32u), ~10197u, ~min(u_input.a, _wgslsmith_add_u32(var_1.a.x, 10838u))) % vec4<u32>(32u));
    return -(_wgslsmith_div_i32(~2147483647i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(19943i, var_1.b), -var_3, var_3)) << (var_1.a.x % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> vec2<u32> {
    let var_0 = select(!vec4<bool>(true, false != all(vec2<bool>(false, true)), arg_0.b >= abs(58334i), any(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true), all(!vec3<bool>(false, all(vec4<bool>(false, false, true, true)), all(vec3<bool>(false, false, true)))));
    let var_1 = ~(~u_input.a) | arg_0.a.x;
    let var_2 = u_input.b;
    let var_3 = abs(select(vec4<i32>(func_2(vec2<f32>(-863f, 241f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(595f, 209f, 130f, -1179f)))), 0i, 0i, ~reverseBits(0i)), min(reverseBits(min(vec4<i32>(1i, arg_0.b, 2147483647i, -824i), vec4<i32>(arg_0.b, arg_0.b, -2147483647i, arg_0.b))), vec4<i32>(-1i) * -vec4<i32>(arg_0.b, 13428i, -1i, arg_1)), var_0.x));
    let var_4 = vec4<bool>(any(var_0), var_0.x, var_1 < _wgslsmith_clamp_u32(0u, abs(88835u), 30872u), var_0.x);
    return _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~func_3(-1069f, abs(arg_1), var_3.x).yw, select(func_3(109f, -1i, 2147483647i).zw | abs(vec2<u32>(var_1, u_input.b.x)), vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, arg_0.a.x), 34913u & arg_0.a.x), select(var_4.wy, vec2<bool>(false, var_0.x), !var_4.x)), ~u_input.b), vec2<u32>(u_input.a, _wgslsmith_mod_u32(arg_2.x, ~(~26713u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<u32>) -> vec4<u32> {
    var var_0 = select(select(vec3<bool>(true, true, true), vec3<bool>(u_input.b.x > select(arg_1.a.x, u_input.b.x, true), true, true), arg_1.b < -2147483647i), vec3<bool>(true, true, true), select(vec3<bool>(any(vec3<bool>(true, false, true)), !all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true), true));
    var_0 = vec3<bool>(!(!var_0.x), true, var_0.x);
    var var_1 = arg_1;
    var_1 = arg_1;
    var_0 = select(select(select(!(!vec3<bool>(var_0.x, true, var_0.x)), select(!vec3<bool>(var_0.x, false, false), vec3<bool>(true, true, true), !vec3<bool>(var_0.x, var_0.x, true)), var_0.x), !vec3<bool>(any(vec4<bool>(true, var_0.x, false, true)), true, var_0.x && var_0.x), true), !(!(!(!vec3<bool>(var_0.x, false, var_0.x)))), vec3<bool>(arg_1.b == (1i & arg_1.b), !var_0.x, !all(vec4<bool>(var_0.x, false, var_0.x, var_0.x))));
    return _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(~arg_1.a, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0.x, arg_3.x, 1u), var_1.a)) | _wgslsmith_mult_vec4_u32(~(arg_1.a & arg_1.a), _wgslsmith_mod_vec4_u32(max(vec4<u32>(arg_3.x, 32506u, arg_1.a.x, arg_0.x), var_1.a), ~vec4<u32>(var_1.a.x, arg_0.x, 13175u, arg_1.a.x))), firstTrailingBit(vec4<u32>(arg_1.a.x, min(18609u, arg_0.x) & ~arg_0.x, u_input.b.x, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_4(func_1(Struct_1(vec4<u32>(5243u, u_input.a, 1u, 11636u), _wgslsmith_mult_i32(105524i, 0i)), countOneBits(1i), firstLeadingBit(vec4<u32>(u_input.b.x, 11042u, u_input.a, u_input.a) & vec4<u32>(11109u, 7566u, 15247u, u_input.b.x))), Struct_1(~max(vec4<u32>(4294967295u, u_input.a, u_input.b.x, 9207u), vec4<u32>(0u, 0u, 6771u, u_input.a)), max(~5929i, 17740i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(661f, 1856f, -1000f, -542f)), vec4<f32>(506f, 517f, 339f, 1000f))), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.b, abs(vec2<u32>(67223u, u_input.b.x))), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, 4294967295u)), 31925u))), ~1i);
    let var_1 = Struct_1(max(var_0.a, ~_wgslsmith_div_vec4_u32(countOneBits(var_0.a), select(var_0.a, var_0.a, true))), var_0.b);
    var_0 = var_1;
    var var_2 = ~vec2<i32>(var_0.b, -2147483647i);
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.a.yz, ~var_0.a.zx, select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), false), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), _wgslsmith_div_u32(1319u, var_3.a.x) <= 35797u)), -var_0.b, _wgslsmith_mod_vec4_u32(~var_0.a << (vec4<u32>(var_1.a.x, 7084u, var_0.a.x, 19541u) % vec4<u32>(32u)), vec4<u32>(var_1.a.x >> (var_3.a.x % 32u), 25948u, 57000u, ~var_3.a.x)) >> (~(var_3.a & reverseBits(vec4<u32>(u_input.a, var_3.a.x, 1u, 45481u))) % vec4<u32>(32u)));
}

