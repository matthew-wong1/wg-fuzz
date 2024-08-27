struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
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

var<private> global0: Struct_2;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> vec3<u32> {
    let var_0 = Struct_1(abs(u_input.e.zz), ~abs(u_input.e.yz), select(!(!all(vec3<bool>(false, false, false))), -1i <= _wgslsmith_mod_i32(firstTrailingBit(u_input.c.x), u_input.c.x), !all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), _wgslsmith_mult_i32(-1i, select(abs(global0.b.x), u_input.c.x, (global0.c == 0u) || false)), vec2<bool>(!any(vec2<bool>(true, true)), true));
    global0 = Struct_2(global0.c, firstLeadingBit(~(-vec3<i32>(var_0.b.x, global0.b.x, u_input.c.x)) | vec3<i32>(global0.b.x, -20210i, 22712i)), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(44247u, 57929u, 0u, global0.a), vec4<u32>(global0.c, global0.a, 0u, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 92071u, global0.c, global0.a), vec4<u32>(u_input.a.x, 0u, 33098u, global0.a)))), vec4<u32>(1u, u_input.a.x, global0.a, global0.c)));
    let var_1 = Struct_3(!vec3<bool>(true, false, var_0.c));
    global0 = Struct_2(countOneBits((_wgslsmith_add_u32(u_input.b, 75628u) << (global0.c % 32u)) & 4294967295u), firstLeadingBit(~global0.b), reverseBits(global0.c));
    global0 = Struct_2(70155u, _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -(u_input.e >> (u_input.a % vec3<u32>(32u))), vec3<i32>(~(~var_0.b.x), ~(-4298i ^ global0.b.x), _wgslsmith_clamp_i32(u_input.e.x, u_input.c.x, 34613i))), _wgslsmith_add_u32(22918u, ~global0.c));
    return reverseBits(u_input.a);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<f32>) -> vec2<u32> {
    global0 = Struct_2(62124u, u_input.e, ~1u);
    let var_0 = Struct_1(vec2<i32>(1i, firstTrailingBit(11469i)), vec2<i32>(_wgslsmith_mult_i32(abs(~57190i), -u_input.c.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, 0i, 58038i, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, 18412i, u_input.c.x), vec4<i32>(12866i, u_input.e.x, 1i, global0.b.x))), global0.b.x, _wgslsmith_add_i32(u_input.e.x, -37630i))), all(vec3<bool>(false, arg_1.x, all(!vec4<bool>(arg_1.x, true, arg_1.x, false)))), global0.b.x, vec2<bool>(all(!arg_1.xy) || select(1i == u_input.c.x, true, arg_1.x & arg_1.x), arg_1.x));
    global0 = Struct_2(abs(~(~_wgslsmith_sub_u32(global0.a, arg_2))), reverseBits(u_input.e), 4294967295u);
    let var_1 = ~u_input.a ^ _wgslsmith_sub_vec3_u32(~(~func_3(vec4<f32>(-1045f, -1167f, arg_3.x, arg_3.x))), u_input.a);
    global0 = Struct_2(~select(firstLeadingBit(_wgslsmith_clamp_u32(arg_2, u_input.b, 24584u)), global0.a, all(select(vec4<bool>(arg_1.x, false, var_0.e.x, false), vec4<bool>(arg_1.x, arg_1.x, var_0.e.x, arg_1.x), false))), select(~vec3<i32>(1i, ~u_input.e.x, u_input.e.x), ~vec3<i32>(10413i, countOneBits(u_input.c.x), -16910i), true), global0.c);
    return vec2<u32>(0u >> (_wgslsmith_div_u32(~global0.a, arg_2) % 32u), ~(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, u_input.d.x, var_1.x), vec4<u32>(u_input.d.x, 3364u, u_input.b, 1u)), _wgslsmith_div_u32(global0.c, 6351u)) << (arg_2 % 32u)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -220f);
    return _wgslsmith_sub_u32(_wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.d.x, u_input.d.x) & ~4294967295u, _wgslsmith_mod_u32(u_input.a.x, 4294967295u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(func_2(vec4<f32>(var_0, var_0, var_0, 823f), vec3<bool>(true, false, arg_1), 41427u, vec3<f32>(var_0, 787f, -1000f)), u_input.a.xx), ~36380u), u_input.d.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<f32>, arg_3: i32) -> bool {
    var var_0 = Struct_1(_wgslsmith_add_vec2_i32(global0.b.xz, _wgslsmith_clamp_vec2_i32(abs(-vec2<i32>(global0.b.x, 2147483647i)), vec2<i32>(-310i, -1i) ^ u_input.e.xy, vec2<i32>(_wgslsmith_mod_i32(1i, -2147483647i), 1i))), select(_wgslsmith_mult_vec2_i32(-vec2<i32>(70443i, 41557i) & ~vec2<i32>(u_input.c.x, -2147483647i), vec2<i32>(-2539i, global0.b.x) & vec2<i32>(2147483647i, global0.b.x)), vec2<i32>(max(1i, arg_3), 2147483647i), vec2<bool>(true, true)), any(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true))), _wgslsmith_add_i32(min(u_input.c.x, -7079i), _wgslsmith_sub_i32(global0.b.x, reverseBits(arg_3))), !select(vec2<bool>(all(vec2<bool>(true, false)), true), vec2<bool>(true, true), true));
    var var_1 = countOneBits(func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 1288f, arg_2.x, arg_2.x)) + vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1909f, 1161f, arg_2.x, -877f) - vec4<f32>(123f, arg_2.x, -1000f, arg_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 1266f, -1469f, -1096f) * vec4<f32>(-1764f, arg_2.x, arg_2.x, arg_2.x)), var_0.c & true))))).yx);
    var var_2 = vec4<bool>(var_0.e.x | var_0.c, !var_0.c, any(vec4<bool>(false, !var_0.c, select(any(vec2<bool>(false, false)), all(vec4<bool>(var_0.e.x, var_0.e.x, false, true)), true), (2147483647i >> (arg_1 % 32u)) == ~26660i)), false);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x), _wgslsmith_f_op_f32(min(-1590f, -953f))), -1579f));
    let var_4 = Struct_3(select(!(!(!var_2.ywx)), select(vec3<bool>(true, var_2.x, var_0.c), !var_2.ywy, !var_2.x == false), true != var_0.c));
    return arg_2.x > -1194f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_4(select(vec3<u32>(func_1(Struct_1(global0.b.zz, global0.b.xy, true, -52357i, vec2<bool>(true, true)), true), func_2(vec4<f32>(562f, 1000f, 2094f, -584f), vec3<bool>(true, false, true), 12937u, vec3<f32>(-1368f, 1300f, -615f)).x, u_input.d.x), min(vec3<u32>(u_input.d.x, u_input.d.x, 37462u), reverseBits(u_input.a)), vec3<bool>(true, true, true)), 1u, vec2<f32>(_wgslsmith_f_op_f32(max(-554f, _wgslsmith_f_op_f32(-291f * 866f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) + 654f)), ~(-49878i)), true, all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))));
    global0 = Struct_2(_wgslsmith_dot_vec2_u32(~(min(vec2<u32>(u_input.b, 1u), u_input.a.xz) >> (~vec2<u32>(u_input.d.x, global0.a) % vec2<u32>(32u))), ~u_input.a.zy), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, global0.b.x ^ -2147483647i, global0.b.x), reverseBits(global0.b) | u_input.e), 1u);
    global0 = Struct_2(1805u, vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(global0.b.x, 1i), u_input.c.x), countOneBits(_wgslsmith_dot_vec2_i32(global0.b.yx, select(u_input.e.yx, vec2<i32>(1i, u_input.c.x), var_0.zz))), -_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c.x, -53937i), 1i)), 18873u);
    var var_1 = Struct_1(reverseBits(vec2<i32>(_wgslsmith_add_i32(-6288i, u_input.e.x) ^ ~(-76668i), -40894i)), u_input.c, true, -_wgslsmith_mult_i32(global0.b.x, max(-2147483647i, ~global0.b.x)), var_0.xx);
    let var_2 = Struct_3(!var_0);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -624f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-711f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~15033u);
}

