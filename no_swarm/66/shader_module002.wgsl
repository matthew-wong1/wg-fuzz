struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = !(!vec2<bool>(arg_2, true));
    var_0 = select(!vec2<bool>(all(!vec4<bool>(false, false, var_0.x, false)), arg_2), select(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, false, var_0.x, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(var_0.x, true), arg_2), !arg_2)), select(vec2<bool>(!var_0.x, true), !(!vec2<bool>(arg_2, false)), vec2<bool>(true, true)), true), true);
    let var_1 = ~global0.c;
    var var_2 = _wgslsmith_add_u32(global0.a.x, reverseBits(reverseBits(10878u)));
    global0 = arg_1;
    return _wgslsmith_sub_i32(max(~(-1i), -global0.b.x), firstLeadingBit(min(u_input.b, u_input.a) >> (66843u % 32u))) & select(global0.b.x, countOneBits(_wgslsmith_sub_i32(u_input.b, arg_1.b.x)), var_0.x);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_u32(global0.a, _wgslsmith_add_vec2_u32(abs(~global0.a), global0.a)), _wgslsmith_sub_vec2_i32(global0.b, u_input.e.xx), 0u);
    var var_1 = max(~_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(2147483647i, ~(-40239i), reverseBits(var_0.b.x), -u_input.e.x)), ~_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.b.x, ~35666i), 2147483647i, u_input.a));
    let var_2 = Struct_1(~reverseBits(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(103147u, 33593u)), ~global0.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(3983i, global0.b.x), ~global0.b, select(vec2<i32>(func_3(vec3<f32>(1194f, -1063f, 1434f), Struct_1(vec2<u32>(3294u, var_0.a.x), u_input.d.zw, global0.a.x), false), arg_1.x), ~(~vec2<i32>(arg_1.x, 31864i)), select(vec2<bool>(true, false), vec2<bool>(true, arg_2), select(vec2<bool>(true, false), vec2<bool>(arg_2, arg_2), arg_2)))), global0.a.x);
    global0 = Struct_1(global0.a, u_input.d.xy, ~(~4294967295u));
    var var_3 = vec4<bool>(any(!vec4<bool>(select(true, false, arg_2), false, true, true)), true, true, arg_2);
    return _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-30932i, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-2147483647i, 0i, var_2.b.x, var_2.b.x)) & var_0.b.x)), vec2<i32>(-1i | (~(-35292i) << (var_0.c % 32u)), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 1473f) + vec3<f32>(arg_0, 1091f, -506f)), var_2, arg_2)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(select(~9689i, _wgslsmith_sub_i32(arg_0, func_2(-668f, vec3<i32>(u_input.e.x, arg_0, arg_0), true)), all(vec2<bool>(false, false))), _wgslsmith_dot_vec4_i32(u_input.d, countOneBits(-vec4<i32>(-1i, 2147483647i, 1i, 658i)))), arg_0);
    global0 = Struct_1(global0.a, select(global0.b, vec2<i32>(arg_0, global0.b.x), any(vec3<bool>(true, true, true))), max(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, 32074u), vec2<u32>(21500u, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(14321u, global0.c, global0.a.x), vec3<u32>(global0.c, 7001u, global0.c)), 16473u, ~51070u), abs(vec4<u32>(1u, 12144u, global0.c, global0.c)) ^ abs(vec4<u32>(global0.a.x, 0u, global0.c, global0.a.x))), 2269u));
    let var_1 = any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, select(false, true, false), all(vec2<bool>(true, false)))), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), select(vec3<bool>(true, true, any(vec2<bool>(false, false))), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), _wgslsmith_div_i32(u_input.a, global0.b.x) < ~1i)));
    global0 = Struct_1(vec2<u32>(22547u, global0.a.x), select(u_input.d.xw, abs(u_input.e.zz), !vec2<bool>(var_1, select(var_1, true, var_1))), 4294967295u);
    var var_2 = min(0i, 22611i) != -u_input.a;
    return Struct_1(max(global0.a, ~vec2<u32>(1u, 66633u)), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(select(global0.b, -u_input.e.xy, true), _wgslsmith_mult_vec2_i32(global0.b, vec2<i32>(-1i, -14893i))), -vec2<i32>(~global0.b.x, arg_0)), _wgslsmith_div_u32(~(~15149u), ~countOneBits(global0.c)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(937f))), _wgslsmith_f_op_f32(ceil(869f)), -205f))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x, true))) - 1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.x)), 1f)), true));
    var var_2 = func_1(0i);
    var_1 = 222f;
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - 198f))) * -1368f), arg_3.x != ~abs(15680u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1913f + var_0.x)));
    return ~(~arg_3.x) & firstLeadingBit(select(_wgslsmith_mult_u32(arg_3.x, arg_0.a.x), arg_1.a.x | global0.a.x, var_2.b.x == -25244i) >> (global0.c % 32u));
}

fn func_5(arg_0: bool, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    global0 = func_1(firstTrailingBit(-_wgslsmith_mult_i32(-569i, 1i)));
    global0 = func_1(u_input.a);
    let var_0 = Struct_1(max(vec2<u32>(1u, arg_1.x & arg_1.x) >> (arg_1.xz % vec2<u32>(32u)), countOneBits(arg_1.xx) | firstLeadingBit(func_1(-33392i).a)), min(vec2<i32>(global0.b.x, u_input.a), global0.b), _wgslsmith_mod_u32(0u, ~global0.a.x & arg_1.x));
    return func_1(reverseBits(~var_0.b.x));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -238f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(462f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(653f))))) * -1712f);
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 884f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1299f, -219f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-284f, _wgslsmith_f_op_f32(max(919f, _wgslsmith_f_op_f32(f32(-1f) * -1447f)))))), all(vec3<bool>(true, true, true))));
    var var_1 = vec2<u32>(_wgslsmith_add_u32(arg_0.a.x, 120992u), arg_0.a.x);
    let var_2 = Struct_1(arg_0.a, countOneBits(vec2<i32>(-1i) * -arg_0.b), firstTrailingBit(4294967295u));
    return func_1(_wgslsmith_add_i32(var_2.b.x, _wgslsmith_div_i32(-(~global0.b.x), -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(func_4(func_1(global0.b.x), func_1(137i), vec2<u32>(global0.a.x, 1u), reverseBits(vec4<u32>(10446u, global0.c, 90003u, 4863u))) > global0.a.x, ~(~select(vec3<u32>(global0.c, 1u, global0.a.x), vec3<u32>(global0.c, 0u, 18701u), vec3<bool>(true, true, false))), 1f));
    global0 = func_5(all(select(vec2<bool>(true, global0.c >= global0.c), vec2<bool>(true, true), true)), vec3<u32>(global0.c, _wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, func_4(Struct_1(vec2<u32>(global0.a.x, global0.a.x), u_input.d.zx, 0u), Struct_1(global0.a, vec2<i32>(u_input.b, 0i), global0.c), global0.a, vec4<u32>(global0.c, 68406u, global0.c, 0u))), ~(~global0.c)), global0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-226f - _wgslsmith_f_op_f32(floor(-122f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -194f) + -290f))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2030f - -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f)) + _wgslsmith_f_op_f32(-955f + -973f))));
    var_0 = _wgslsmith_f_op_f32(-1077f + 391f);
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1000f))))));
    let var_1 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-925f - -542f), _wgslsmith_f_op_f32(-317f + 727f), _wgslsmith_f_op_f32(f32(-1f) * -1517f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1571f, -132f, -1000f) - vec3<f32>(-161f, -1002f, 1000f))))), max(_wgslsmith_add_vec4_i32((var_1 & vec4<i32>(-24259i, 1i, 11215i, 13317i)) | abs(var_1), vec4<i32>(19118i, -u_input.d.x, -1i, -u_input.d.x)), max(var_1, select(abs(u_input.d), _wgslsmith_sub_vec4_i32(u_input.d, var_1), true))), countOneBits(func_6(Struct_1(firstTrailingBit(vec2<u32>(global0.c, global0.c)), _wgslsmith_clamp_vec2_i32(var_1.zz, global0.b, vec2<i32>(-3159i, 1i)), 18449u)).a), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-303f, -496f, 1578f, -491f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-900f, -2447f, -267f, -386f), vec4<f32>(150f, 1861f, 1387f, -1110f)))))))), 2147483647i);
}

