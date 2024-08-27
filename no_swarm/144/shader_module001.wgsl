struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 23331i;

var<private> global1: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec4<u32>) -> vec3<i32> {
    let var_0 = firstTrailingBit(arg_1.x);
    var var_1 = -1i;
    var var_2 = Struct_1(vec4<u32>(arg_2.x, 25022u, 4294967295u, _wgslsmith_sub_u32(abs(~44320u), ~58087u << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u))), vec3<bool>(!(-365f >= arg_0.x), all(vec4<bool>(true, arg_1.x == 2147483647i, var_0 != -2110i, true)), !(min(arg_1.x, 20481i) > -var_0)), all(select(select(vec4<bool>(true, false, false, false), global1[_wgslsmith_index_u32(u_input.b | 9759u, 6u)], select(global1[_wgslsmith_index_u32(13808u, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)], false)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_2, ~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 4294967295u)), 6u)], true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(449f - _wgslsmith_f_op_f32(304f - -1922f)))))), ~max(reverseBits(_wgslsmith_div_u32(29695u, 22997u)), max(4294967295u, ~41849u)));
    var var_3 = Struct_1(vec4<u32>(0u, arg_2.x, 1u, u_input.a.x), select(var_2.b, var_2.b, !var_2.b.x), true && all(select(select(vec3<bool>(true, var_2.c, true), var_2.b, false), vec3<bool>(true, var_2.c, false), vec3<bool>(var_2.c, false, var_2.b.x))), _wgslsmith_f_op_f32(-var_2.d), countOneBits(~4294967295u));
    var var_4 = -select(arg_1.x, 11168i, false);
    return ~_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(var_0, -1i, var_0) >> (_wgslsmith_add_vec3_u32(var_3.a.xyz, vec3<u32>(arg_2.x, 9889u, 0u)) % vec3<u32>(32u))), vec3<i32>(4413i, var_0, arg_1.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32) -> vec2<i32> {
    var var_0 = u_input.a;
    global0 = -71710i;
    global1 = array<vec4<bool>, 6>();
    let var_1 = Struct_1(min(vec4<u32>(firstLeadingBit(53176u), var_0.x, u_input.a.x, ~(~var_0.x)), vec4<u32>(~(u_input.b >> (111533u % 32u)), ~(var_0.x >> (var_0.x % 32u)), _wgslsmith_mult_u32(u_input.b, u_input.b) & (4294967295u | u_input.b), 46118u)), vec3<bool>(!(all(vec4<bool>(true, true, false, true)) & false), all(vec2<bool>(1u != u_input.b, true)), true), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, any(vec3<bool>(false, true, false)), var_0.x <= 35292u, true), select(select(vec4<bool>(false, false, false, true), global1[_wgslsmith_index_u32(1u, 6u)], vec4<bool>(true, false, false, false)), select(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], vec4<bool>(false, true, false, true), global1[_wgslsmith_index_u32(var_0.x, 6u)]), global1[_wgslsmith_index_u32(u_input.b, 6u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-378f))))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 90001u, u_input.a.x, u_input.b), vec4<u32>(23922u, var_0.x, u_input.a.x, 96383u)), vec4<u32>(var_0.x, u_input.b, 0u, 4294967295u)), firstLeadingBit(var_0.x)) ^ 0u);
    var var_2 = true;
    return max(firstLeadingBit(-vec2<i32>(firstTrailingBit(1i), 0i)), min(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.zy, vec2<i32>(arg_0.x, -1i)), arg_0.xx), reverseBits(reverseBits(arg_0.yx ^ vec2<i32>(1i, arg_1)))));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = func_4(_wgslsmith_clamp_vec3_i32(select(_wgslsmith_sub_vec3_i32(func_3(vec4<f32>(577f, 1799f, 217f, 547f), vec3<i32>(arg_0, arg_0, arg_0), vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, u_input.a.x)), abs(vec3<i32>(1i, 0i, arg_0))), abs(vec3<i32>(arg_0, -1i, arg_0)), true), _wgslsmith_div_vec3_i32(-(vec3<i32>(arg_0, -25787i, -2147483647i) >> (vec3<u32>(0u, 24486u, 1u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mult_i32(2894i, arg_0), ~(-41712i), -2147483647i & arg_0)), -((vec3<i32>(arg_0, arg_0, arg_0) & vec3<i32>(arg_0, 2147483647i, -2147483647i)) | (vec3<i32>(arg_0, -9997i, 0i) | vec3<i32>(arg_0, -19076i, arg_0)))), _wgslsmith_clamp_i32(arg_0, arg_0, _wgslsmith_sub_i32(arg_0, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2026i), vec2<i32>(14919i, 0i))))));
    var var_1 = 1000f;
    var var_2 = _wgslsmith_dot_vec3_i32(abs(_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, var_0.x, 2147483647i), firstTrailingBit(vec3<i32>(1i, -19187i, var_0.x)))), vec3<i32>(~var_0.x, -2147483647i, reverseBits(_wgslsmith_mult_i32(arg_0, arg_0))));
    var var_3 = ~(-abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0, 10383i, 2147483647i, var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0, 1i, arg_0, -1930i), vec4<i32>(arg_0, -13995i, arg_0, arg_0)))));
    var var_4 = !(!(!(_wgslsmith_sub_u32(4294967295u, 5823u) >= firstLeadingBit(u_input.b))));
    return 903f != _wgslsmith_div_f32(207f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -982f))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = vec2<bool>(!arg_1.b.x, !select(55615u > arg_1.e, arg_0.c, arg_1.b.x) && arg_0.b.x);
    return Struct_1(arg_0.a, select(vec3<bool>(arg_1.c, true, true), vec3<bool>(!any(vec3<bool>(false, var_0.x, arg_1.c)), true, arg_0.c), select(!arg_1.b, !vec3<bool>(arg_0.b.x, false, false), false)), true, 226f, 4294967295u);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> f32 {
    var var_0 = func_5(Struct_1(arg_0, !vec3<bool>(false, any(vec2<bool>(false, false)), true), !func_2(abs(-1i)), -1898f, arg_1), Struct_1(reverseBits(min(~vec4<u32>(arg_1, 4294967295u, 32013u, 0u), arg_0)), !vec3<bool>(true, true, select(true, false, true)), any(vec2<bool>(true, func_2(19490i))), 2561f, ~_wgslsmith_clamp_u32(u_input.b, 25109u, u_input.b)), -9777i);
    let var_1 = func_5(func_5(func_5(Struct_1(vec4<u32>(0u, arg_1, 1u, u_input.a.x), !var_0.b, var_0.c, _wgslsmith_f_op_f32(var_0.d - var_0.d), _wgslsmith_clamp_u32(arg_0.x, var_0.e, arg_0.x)), Struct_1(arg_0, select(vec3<bool>(true, var_0.c, false), var_0.b, vec3<bool>(false, false, var_0.c)), true, var_0.d, arg_1), 44759i), Struct_1(vec4<u32>(42028u, 1u, max(20345u, arg_0.x), ~4294967295u), !select(vec3<bool>(false, false, var_0.b.x), vec3<bool>(false, true, true), true), !all(global1[_wgslsmith_index_u32(var_0.a.x, 6u)]), _wgslsmith_f_op_f32(-var_0.d), u_input.a.x), _wgslsmith_mult_i32(45965i, abs(1i))), Struct_1(~(~vec4<u32>(u_input.b, arg_1, 4294967295u, 118660u)), vec3<bool>(false, var_0.b.x, true), var_0.c | true, var_0.d, 1u), -_wgslsmith_div_i32(-1273i, 1i));
    let var_2 = abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-8120i, -2147483647i, 1i, 34790i) | (vec4<i32>(-46171i, 0i, -28047i, -1i) >> (arg_0 % vec4<u32>(32u)))) & -33990i);
    var var_3 = select(select(vec2<bool>(false, all(var_0.b)), !(!var_0.b.xx), !vec2<bool>(!var_1.b.x, true)), vec2<bool>(var_1.d != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + var_0.d)), true), !(!var_1.c));
    let var_4 = ~_wgslsmith_mod_i32(var_2, 2147483647i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.d)) + _wgslsmith_f_op_f32(min(func_5(func_5(Struct_1(arg_0, vec3<bool>(var_1.b.x, var_3.x, var_3.x), false, 1357f, 0u), Struct_1(var_1.a, vec3<bool>(var_0.b.x, var_0.c, false), true, -1000f, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, var_2, -30753i), vec3<i32>(var_2, var_4, var_2))), var_1, var_4).d, var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(5088u, 0u, 98377u, u_input.b)), vec4<u32>(u_input.b, 43186u, 14127u, u_input.a.x) << (vec4<u32>(4294967295u, u_input.b, 0u, 34415u) % vec4<u32>(32u))), ~reverseBits(0u)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(719f + 111f))) * -794f)), -1051f);
    let var_1 = global1[_wgslsmith_index_u32(~1u, 6u)];
    var var_2 = func_5(func_5(func_5(func_5(func_5(Struct_1(vec4<u32>(u_input.b, 23142u, u_input.b, 1u), vec3<bool>(false, var_1.x, false), true, var_0.x, 1u), Struct_1(vec4<u32>(35412u, u_input.a.x, u_input.a.x, 1u), var_1.zzx, true, 751f, 62577u), -42250i), Struct_1(vec4<u32>(1u, u_input.b, 12539u, u_input.b), var_1.yyz, var_1.x, -689f, u_input.b), _wgslsmith_clamp_i32(2147483647i, -19907i, -1i)), func_5(Struct_1(vec4<u32>(u_input.b, u_input.a.x, 0u, u_input.b), vec3<bool>(true, var_1.x, var_1.x), true, -1553f, u_input.a.x), func_5(Struct_1(vec4<u32>(12167u, 4294967295u, 0u, 107617u), var_1.yxw, var_1.x, -328f, u_input.a.x), Struct_1(vec4<u32>(u_input.a.x, 4294967295u, 5522u, u_input.a.x), var_1.wwx, var_1.x, -1010f, u_input.a.x), -1i), func_3(vec4<f32>(var_0.x, 566f, 1429f, var_0.x), vec3<i32>(-7318i, -1i, -2147483647i), vec4<u32>(1u, u_input.a.x, 3878u, 18224u)).x), _wgslsmith_div_i32(i32(-1i) * -44511i, firstLeadingBit(-912i))), func_5(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 433u, 1u, 19791u), vec4<u32>(u_input.b, u_input.b, u_input.a.x, 22770u)), vec3<bool>(true, true, true), true, _wgslsmith_f_op_f32(sign(-759f)), firstTrailingBit(u_input.a.x)), Struct_1(vec4<u32>(1u, 125761u, u_input.a.x, u_input.b), !vec3<bool>(true, var_1.x, var_1.x), !var_1.x, var_0.x, 4294967295u), 1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(13278i, -1i, -13012i), vec3<i32>(2147483647i, -24485i, 1i)) >> (~u_input.b % 32u), -1101i)), func_5(Struct_1(vec4<u32>(17617u, 4294967295u, ~1u, ~4294967295u), vec3<bool>(any(vec4<bool>(true, var_1.x, true, false)), false, true), _wgslsmith_f_op_f32(sign(-423f)) == _wgslsmith_f_op_f32(var_0.x - 442f), _wgslsmith_f_op_f32(-var_0.x), u_input.b), func_5(func_5(func_5(Struct_1(vec4<u32>(0u, 11436u, u_input.a.x, 4294967295u), var_1.zxz, false, 1110f, u_input.b), Struct_1(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 0u), var_1.zzx, false, -1476f, u_input.b), -35756i), Struct_1(vec4<u32>(u_input.a.x, u_input.b, u_input.b, 1u), var_1.zyw, false, var_0.x, 37681u), 1i), func_5(Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x), var_1.yyy, var_1.x, 156f, 4294967295u), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 1u), var_1.zzw, var_1.x, 866f, 0u), ~(-23028i)), 2147483647i), 1i), -abs(firstTrailingBit(countOneBits(-1i))));
    global0 = -2147483647i;
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(22949i, 1i, 1i), vec3<i32>(min(-_wgslsmith_dot_vec4_i32(vec4<i32>(-5534i, 42680i, 2147483647i, -9242i), vec4<i32>(1i, -1i, 2147483647i, -1i)), _wgslsmith_div_i32(-5996i << (u_input.a.x % 32u), firstLeadingBit(2003i))), abs(~0i & _wgslsmith_dot_vec4_i32(vec4<i32>(85858i, 0i, -35374i, 22165i), vec4<i32>(-3512i, 1i, -12281i, 2147483647i))), ~abs(-14140i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstLeadingBit(-max(2147483647i, -2147483647i)), 1i << (var_2.a.x % 32u), -2147483647i, 1i), 1i, ~abs(1i), min(firstTrailingBit(~var_2.a), firstLeadingBit(var_2.a)) ^ (select(var_2.a, var_2.a, var_2.b.x) & var_2.a));
}

