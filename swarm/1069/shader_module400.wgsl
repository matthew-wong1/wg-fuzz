struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_dot_vec2_u32(~(~countOneBits(vec2<u32>(arg_3.x, 23688u)) | select(~arg_3.xy, min(vec2<u32>(arg_3.x, 0u), vec2<u32>(arg_3.x, 1u)), select(arg_1.xy, vec2<bool>(arg_1.x, true), vec2<bool>(false, false)))), arg_3.zx);
    let var_1 = Struct_1(max(u_input.b << ((_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.x, 25688u, 20106u, 1u), vec4<u32>(1u, 1u, 11777u, var_0)) & max(vec4<u32>(var_0, arg_3.x, 1u, arg_3.x), vec4<u32>(18533u, var_0, var_0, 0u))) % vec4<u32>(32u)), u_input.b), vec3<i32>(arg_0.b.x | -1i, -u_input.b.x, -1i));
    let var_2 = countOneBits(arg_2);
    var var_3 = var_1;
    var var_4 = _wgslsmith_div_u32(var_0, 1u);
    return arg_2.x;
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: u32, arg_3: f32) -> vec4<i32> {
    var var_0 = -2147483647i;
    var_0 = countOneBits(_wgslsmith_mult_i32(u_input.a, _wgslsmith_mod_i32(-2147483647i, reverseBits(func_3(Struct_1(vec4<i32>(0i, u_input.a, 0i, -61907i), u_input.b.zyw), vec3<bool>(arg_1.x, true, arg_1.x), u_input.b.yx, vec3<u32>(8680u, arg_2, 417u))))));
    var var_1 = Struct_1(vec4<i32>(2147483647i, u_input.b.x, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(func_3(Struct_1(u_input.b, u_input.b.yyz), vec3<bool>(arg_1.x, arg_1.x, false), u_input.b.zx, vec3<u32>(0u, 0u, 70000u)), 8918i, 1i, i32(-1i) * -2147483647i), -_wgslsmith_div_vec4_i32(u_input.b, u_input.b))), max(vec3<i32>(~firstLeadingBit(-2147483647i), -2147483647i, _wgslsmith_sub_i32(33954i, _wgslsmith_mult_i32(8648i, -1i))), vec3<i32>(_wgslsmith_mod_i32(u_input.a, u_input.b.x) >> (4294967295u % 32u), -abs(33904i), _wgslsmith_clamp_i32(arg_0, arg_0, ~u_input.b.x))));
    var var_2 = 12690u;
    var_0 = firstLeadingBit(-39199i);
    return u_input.b;
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_1(func_4(_wgslsmith_sub_i32(func_3(Struct_1(vec4<i32>(34062i, 3304i, arg_0.x, u_input.a), vec3<i32>(-47416i, 37148i, -20510i)), vec3<bool>(false, true, true), vec2<i32>(-10855i, 0i), countOneBits(vec3<u32>(22001u, 47752u, 28022u))), 2147483647i), vec4<bool>(true, true, true, true), min(~select(39381u, 1u, false), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), 2687f), arg_0.www);
    var var_1 = _wgslsmith_clamp_vec2_i32(u_input.b.zx, vec2<i32>(-1i, u_input.a) & vec2<i32>(u_input.a, var_0.b.x), ~select(-vec2<i32>(5020i, arg_0.x), vec2<i32>(var_0.a.x, arg_0.x), vec2<bool>(true, false))) & vec2<i32>(var_0.b.x, reverseBits(_wgslsmith_add_i32(u_input.b.x, arg_0.x)));
    var var_2 = Struct_1(select(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, 2147483647i, -16498i, u_input.a), ~vec4<i32>(10277i, var_1.x, 0i, u_input.a))), (firstTrailingBit(arg_0) >> (abs(vec4<u32>(0u, 22802u, 4294967295u, 1u)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_div_u32(40389u, 4294967295u), ~0u, ~44302u, select(4294967295u, 74968u, true)) % vec4<u32>(32u)), true), func_4(_wgslsmith_mult_i32(51656i, 6564i), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true)), ~_wgslsmith_sub_u32(29366u, firstLeadingBit(4294967295u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-195f, 1179f))))).zxx);
    var_1 = vec2<i32>(-1i, ~5632i);
    var_2 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-583f, -649f, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-688f)) * -803f));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-781f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1261f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.b)) + 1299f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(114f)))), -366f));
    let var_1 = Struct_1(vec4<i32>(u_input.b.x, reverseBits(u_input.b.x), 12957i, arg_0.x), vec3<i32>(arg_0.x, -_wgslsmith_div_i32(u_input.a, _wgslsmith_sub_i32(29720i, arg_0.x)), firstTrailingBit(0i)));
    var var_2 = !select(!(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))), vec4<bool>(false, true, true, false), !select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), select(vec4<bool>(true, true, false, arg_1.x), vec4<bool>(true, false, arg_1.x, arg_1.x), false)));
    let var_3 = -19287i;
    return var_0.zyy;
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_add_vec4_i32(-countOneBits(vec4<i32>(0i, u_input.a, u_input.b.x, u_input.a) >> (vec4<u32>(0u, 67614u, 29535u, 0u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(0i, u_input.b.x, arg_2.b.x, 1i)), abs(u_input.b)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.x, 7041u, arg_3.x, 4294967295u), vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 0u)) % vec4<u32>(32u))), ~min(vec3<i32>(_wgslsmith_add_i32(u_input.a, 1i), _wgslsmith_div_i32(arg_2.b.x, 2147483647i), arg_2.b.x | -26471i), select(vec3<i32>(-1i, arg_2.b.x, 0i), func_4(-16567i, vec4<bool>(false, true, arg_0, arg_0), 3475u, -1883f).yxw, vec3<bool>(true, true, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(false, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec3<bool>(false, true, true)))))))), Struct_1(vec4<i32>(u_input.b.x, -(u_input.a << (64980u % 32u)), u_input.a, i32(-1i) * -u_input.b.x), _wgslsmith_div_vec3_i32(u_input.b.zwy | u_input.b.yxz, abs(abs(vec3<i32>(46918i, u_input.b.x, u_input.a))))), vec3<u32>(48796u, 1u, ~firstTrailingBit(_wgslsmith_mult_u32(0u, 1u))));
    var var_1 = !(!vec2<bool>(false, any(vec2<bool>(true, true))));
    var var_2 = min(~(~_wgslsmith_mult_vec2_u32(select(vec2<u32>(17648u, 16838u), vec2<u32>(0u, 4294967295u), vec2<bool>(true, var_1.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 28752u)))), ~max(vec2<u32>(1u, ~4294967295u), ~abs(vec2<u32>(60791u, 12835u))));
    let var_3 = var_0.a.x;
    let var_4 = vec2<bool>(var_1.x, true);
    var var_5 = !var_1.x;
    var var_6 = ~(~min(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, var_2.x, 0u), ~vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x)), vec4<u32>(~1u, 0u, 30189u, firstTrailingBit(0u))));
    let var_7 = vec2<u32>(abs(_wgslsmith_mod_u32(0u, 1u)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(var_0.b.x, ~(var_3 | -1i), func_3(var_0, !vec3<bool>(false, var_1.x, var_1.x), -vec2<i32>(-659i, u_input.b.x), min(vec3<u32>(var_6.x, 4294967295u, 5164u), vec3<u32>(63570u, 0u, var_6.x))), u_input.a)), _wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(countOneBits(var_0.a.x & -78994i), _wgslsmith_sub_i32(1i, var_3) & var_0.a.x, func_4(var_3, vec4<bool>(var_1.x, false, false, var_1.x), var_6.x, _wgslsmith_f_op_f32(-679f * -2315f)).x, 2147483647i), select(vec3<bool>(var_1.x | var_4.x, var_1.x, false), !(!vec3<bool>(var_4.x, var_1.x, false)), (var_4.x && false) & var_4.x))).xx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -978f) - _wgslsmith_f_op_f32(ceil(-1393f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1289f))), -498f, _wgslsmith_f_op_f32(f32(-1f) * -136f))), ~var_7);
}

