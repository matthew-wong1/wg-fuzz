struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    return min(~(~firstTrailingBit(0i)) << (_wgslsmith_clamp_u32(u_input.a, ~(~4294967295u), 60538u) % 32u), i32(-1i) * -1i);
}

fn func_2(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = abs(~_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, 0u)), ~u_input.a), u_input.a));
    let var_1 = arg_0.a.x;
    global0 = vec3<i32>(-_wgslsmith_div_i32(global0.x, min(9060i, func_3())), ~_wgslsmith_add_i32(global0.x, 2147483647i) << (reverseBits(1u) % 32u), abs(0i));
    var var_2 = max(u_input.a, u_input.a) < ~54992u;
    var var_3 = countOneBits(~_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-35651i, global0.x, global0.x, -27128i), vec4<i32>(global0.x, -28807i, 0i, -42212i)), abs(abs(vec4<i32>(-57071i, 23301i, -5551i, global0.x)))));
    return -_wgslsmith_mod_vec3_i32(~(~var_3.zwz), vec3<i32>(_wgslsmith_clamp_i32(311i, global0.x, _wgslsmith_div_i32(global0.x, -16564i)), global0.x, _wgslsmith_mod_i32(global0.x, ~var_3.x)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>) -> vec3<i32> {
    var var_0 = Struct_2(vec2<bool>(true, !(global0.x >= 2147483647i) && !(global0.x > global0.x)));
    var var_1 = _wgslsmith_mod_vec3_i32(-vec3<i32>(global0.x, global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, -8285i, -4496i), vec4<i32>(global0.x, -42786i, global0.x, global0.x))) >> (~abs(vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), vec3<i32>(-18857i, global0.x, firstLeadingBit(-2147483647i) >> (min(14793u, ~u_input.a) % 32u)));
    let var_2 = select(u_input.a, 13014u, arg_0.a.x);
    var_1 = max(vec3<i32>(~(-7795i), select(~(-global0.x), -(~(-2147483647i)), !var_0.a.x | true), firstLeadingBit(-2147483647i)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32((vec3<i32>(global0.x, -17216i, var_1.x) & vec3<i32>(24001i, var_1.x, 0i)) ^ func_2(arg_0), _wgslsmith_mult_vec3_i32(vec3<i32>(14853i, var_1.x, -1i), vec3<i32>(32238i, 15207i, global0.x)) >> ((vec3<u32>(4294967295u, var_2, u_input.a) & vec3<u32>(u_input.a, var_2, 0u)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(1i, global0.x, -41776i), select(vec3<i32>(8923i, global0.x, global0.x), vec3<i32>(global0.x, var_1.x, global0.x), vec3<bool>(true, false, var_0.a.x)), !vec3<bool>(true, false, var_0.a.x)), vec3<i32>(47850i, var_1.x, -1i), vec3<i32>(func_2(Struct_2(vec2<bool>(true, false))).x, 10955i, select(var_1.x, 2147483647i, arg_0.a.x)))));
    var var_3 = _wgslsmith_f_op_f32(arg_1.x - arg_1.x);
    return ~min(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, global0.x, global0.x) << (vec3<u32>(u_input.a, 58913u, u_input.a) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, 9687i, -1i) & vec3<i32>(2147483647i, -14575i, 31395i), vec3<i32>(var_1.x, global0.x, -1i))), select(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, 0i, -26470i), vec3<i32>(60580i, 2147483647i, var_1.x))), -vec3<i32>(global0.x, global0.x, 2147483647i), true || all(vec4<bool>(true, var_0.a.x, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(func_1(Struct_2(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-290f, -996f, 1067f, 545f), vec4<f32>(-277f, -1070f, -483f, 2035f))))))), countOneBits(~max(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(5059i, global0.x, -10610i)), func_2(Struct_2(vec2<bool>(true, true))))));
    global0 = vec3<i32>(30607i, global0.x, _wgslsmith_sub_i32(global0.x, func_2(Struct_2(vec2<bool>(false, true))).x) >> (12338u % 32u)) | vec3<i32>(-69044i, -(69024i | abs(global0.x)), 44399i);
    let var_0 = abs(~select(~vec2<u32>(0u, 23524u), vec2<u32>(~48996u, u_input.a), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_1 = select(!vec2<bool>(true, 33527u < (44217u << (var_0.x % 32u))), vec2<bool>(true, true), !(!vec2<bool>(u_input.a > 24047u, var_0.x != var_0.x)));
    var var_2 = Struct_3(var_1.x);
    var var_3 = Struct_2(var_1);
    var var_4 = Struct_3(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(163f, -1061f, 1445f))))), global0.x, vec3<i32>(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global0.x, -1i), vec3<i32>(global0.x, 2147483647i, -9043i)), vec3<i32>(7373i, 2147483647i, global0.x) >> (vec3<u32>(6315u, var_0.x, 99908u) % vec3<u32>(32u)))), ~global0.x, func_2(Struct_2(var_1)).x), select(reverseBits(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(var_0.x, var_0.x, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(49018u, 17269u, 1u)))), reverseBits(select(vec3<u32>(u_input.a, u_input.a, var_0.x), vec3<u32>(20987u, 34645u, var_0.x), vec3<bool>(var_2.a, true, false))) & ~(vec3<u32>(u_input.a, 1u, 45325u) >> (vec3<u32>(u_input.a, var_0.x, u_input.a) % vec3<u32>(32u))), select(!var_4.a, select(var_2.a, var_1.x && var_2.a, var_0.x <= var_0.x), true)), u_input.a);
}

