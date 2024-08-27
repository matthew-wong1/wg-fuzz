struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(false, false, true), -45315i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1234f, _wgslsmith_f_op_f32(step(-1046f, 315f))))))), -186f);
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = Struct_3(select(!vec3<bool>(global0.a.x, any(global0.a.zy), any(vec4<bool>(true, global0.a.x, false, false))), global0.a, !vec3<bool>(all(vec2<bool>(global0.a.x, true)), global0.a.x, arg_0 && true)), -1i);
    let var_1 = Struct_3(!var_0.a, abs(~(~(global0.b << (60426u % 32u)))));
    let var_2 = 56342u;
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(min(vec3<u32>(4294967295u, 65636u, var_2), vec3<u32>(var_2, 0u, var_2)) << (~vec3<u32>(var_2, var_2, 31682u) % vec3<u32>(32u)))))));
    var var_4 = firstTrailingBit(abs(abs(-vec3<i32>(2151i, 3729i, -33100i)) >> (abs(select(vec3<u32>(var_2, var_2, 1u), vec3<u32>(var_2, 0u, 4294967295u), global0.a)) % vec3<u32>(32u))));
    return _wgslsmith_mod_vec4_i32(-vec4<i32>(~global0.b, global0.b, ~u_input.a, firstTrailingBit(abs(var_1.b))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, var_4.x, var_4.x, global0.b), vec4<i32>(global0.b, var_1.b, -66036i, var_0.b)), -1i, global0.b, -1i | var_4.x), ~_wgslsmith_add_vec4_i32(vec4<i32>(-5020i, 10261i, u_input.a, -60688i), vec4<i32>(var_0.b, var_4.x, var_4.x, global0.b)), -(vec4<i32>(-74691i, 58698i, u_input.a, -1i) & vec4<i32>(-2147483647i, var_1.b, -24827i, -5380i))), -(~vec4<i32>(-12906i, 3257i, var_0.b, var_1.b)) << (firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(77390u, var_2, 60851u, var_2), vec4<u32>(22391u, 1u, 19628u, 0u))) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: f32) -> vec2<i32> {
    let var_0 = vec2<f32>(-529f, _wgslsmith_f_op_f32(func_2(~vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(1u, 4294967295u)), arg_1.x, ~8989u))));
    var var_1 = global0.b;
    var var_2 = global0.a.x && any(global0.a);
    let var_3 = Struct_2(Struct_1(vec3<bool>(_wgslsmith_f_op_f32(floor(-467f)) != arg_3, global0.a.x, global0.a.x), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-127f + _wgslsmith_f_op_f32(1582f * var_0.x))), select(true, select(global0.a.x, global0.a.x & true, true), false)), Struct_1(select(!(!global0.a), !global0.a, select(!vec3<bool>(true, global0.a.x, true), global0.a, true)), _wgslsmith_f_op_f32(sign(-340f)), all(vec2<bool>(true, all(global0.a.xx)))));
    var var_4 = select(min(firstTrailingBit(vec4<i32>(global0.b, _wgslsmith_mult_i32(u_input.a, global0.b), _wgslsmith_mult_i32(global0.b, global0.b), max(global0.b, u_input.a))), firstLeadingBit(func_3(true))), ~(~(max(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(-1325i, 2147483647i, u_input.a, global0.b)) >> ((vec4<u32>(1u, 16694u, 66547u, 1u) & vec4<u32>(0u, arg_1.x, arg_1.x, arg_1.x)) % vec4<u32>(32u)))), !select(!select(vec4<bool>(global0.a.x, true, var_3.a.c, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, false, true), vec4<bool>(true, var_3.a.c, false, var_3.b.a.x)), vec4<bool>(true, true, false, var_3.a.a.x), select(select(vec4<bool>(true, var_3.b.a.x, var_3.a.a.x, true), vec4<bool>(var_3.b.a.x, false, var_3.a.a.x, false), global0.a.x), vec4<bool>(global0.a.x, false, false, false), all(vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x)))));
    return -(~vec2<i32>(_wgslsmith_mult_i32(u_input.a, 1i) ^ 2147483647i, ~abs(u_input.a)));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_1(vec3<bool>(true, !global0.a.x | global0.a.x, all(vec4<bool>(global0.a.x && false, global0.a.x, any(global0.a.yx), global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1487f + -629f)))), false);
    let var_1 = Struct_3(global0.a, arg_1.x);
    global0 = var_1;
    global0 = Struct_3(!global0.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, u_input.a, 1i, ~u_input.a), select(~vec4<i32>(-2147483647i, global0.b, u_input.a, arg_0), vec4<i32>(-2147483647i, u_input.a, arg_1.x, u_input.a), !var_0.a.x)), vec4<i32>(i32(-1i) * -36477i, -arg_0 >> (0u % 32u), ~(~var_1.b), arg_0)));
    global0 = var_1;
    return _wgslsmith_add_i32(_wgslsmith_sub_i32(min(_wgslsmith_dot_vec2_i32(arg_1, arg_1) | 0i, _wgslsmith_mod_i32(-6168i, ~(-2192i))), func_3(true).x), max(-1i, firstTrailingBit(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-vec2<i32>(1i, 1i));
    let var_1 = Struct_3(global0.a, ~func_4(18729i >> (1u % 32u), func_1(vec4<f32>(713f, 1799f, -1000f, 1003f), vec2<u32>(1u, 1u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(253f, -1235f))), _wgslsmith_div_f32(1133f, 1247f))));
    let var_2 = _wgslsmith_f_op_f32(select(324f, _wgslsmith_f_op_f32(-493f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(601f + 321f) * _wgslsmith_f_op_f32(min(-1792f, 732f))), _wgslsmith_f_op_f32(-214f * _wgslsmith_div_f32(449f, -814f)))), all(vec2<bool>(global0.a.x, true & any(vec4<bool>(true, false, global0.a.x, var_1.a.x))))));
    var var_3 = max(36386u, 4294967295u ^ _wgslsmith_clamp_u32(_wgslsmith_add_u32(~1u, select(4294967295u, 28513u, global0.a.x)), 1u, abs(min(128822u, 4512u))));
    var_3 = (_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 51989u), vec2<u32>(1u, 0u)), 11194u), ~min(18004u, 0u)) << (~(~1u) % 32u)) ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(60080u, 65108u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 12597u, 26669u), vec3<u32>(23904u, 66007u, 4294967295u)))), firstTrailingBit(_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(4294967295u, 78758u), 9898u)));
    var var_4 = select(vec4<bool>((all(vec3<bool>(var_1.a.x, global0.a.x, global0.a.x)) & any(global0.a.yy)) && !any(global0.a), select(true, true, any(vec2<bool>(var_1.a.x, global0.a.x))) && true, any(select(!global0.a.xy, select(global0.a.zy, vec2<bool>(false, false), global0.a.yz), vec2<bool>(global0.a.x, var_1.a.x))), true), vec4<bool>(var_1.a.x, var_1.a.x, !any(vec2<bool>(false, true)) & !(!var_1.a.x), any(select(!vec3<bool>(var_1.a.x, var_1.a.x, true), var_1.a, any(vec4<bool>(global0.a.x, false, global0.a.x, true))))), global0.a.x);
    var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(min(select(~vec2<i32>(-1i, 32735i), firstLeadingBit(vec2<i32>(global0.b, 11112i)), var_4.x), vec2<i32>(1i, 1i)), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b, -11420i), vec2<i32>(var_1.b, var_1.b), vec2<i32>(-61085i, 9292i))) & abs(~vec2<i32>(30120i, 30993i))), vec2<i32>(~_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.b, 0i), vec2<i32>(global0.b, var_0.x)), -_wgslsmith_clamp_i32(var_1.b, _wgslsmith_mod_i32(-21026i, var_1.b), ~1i)));
    let var_5 = var_1;
    let var_6 = firstLeadingBit(~(~1u) >> (~(~(~4294967295u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_6, var_6, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(var_6, var_6), vec2<u32>(78796u, var_6), true), _wgslsmith_clamp_vec2_u32(vec2<u32>(43739u, var_6), vec2<u32>(var_6, var_6), vec2<u32>(1u, 0u)) | reverseBits(vec2<u32>(var_6, var_6))), _wgslsmith_mult_u32(var_6, 19363u)), firstLeadingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 22802u), ~vec2<u32>(18041u, var_6))) | vec2<u32>(var_6, ~max(var_6, 116973u)), var_6);
}

