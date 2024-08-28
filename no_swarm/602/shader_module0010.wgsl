struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(336i, -50013i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    global0 = vec2<i32>(-arg_2.d.x, -(-1i << (((22793u << (u_input.a % 32u)) >> (22802u % 32u)) % 32u)));
    let var_0 = Struct_1(arg_1.a, arg_2.c, select(select(vec2<bool>(any(vec4<bool>(false, true, arg_1.a, arg_2.a)), any(vec3<bool>(true, false, arg_2.b.x))), vec2<bool>(arg_2.a || true, arg_0.c.x), all(select(vec2<bool>(arg_1.a, arg_1.b.x), vec2<bool>(true, arg_2.b.x), true))), vec2<bool>((global0.x | arg_0.d.x) <= arg_0.d.x, arg_0.b.x), select(select(vec2<bool>(arg_1.c.x, false), arg_0.b, select(vec2<bool>(arg_1.a, true), arg_2.b, true)), select(arg_1.c, !vec2<bool>(arg_0.b.x, arg_0.a), select(vec2<bool>(arg_0.a, false), arg_0.b, vec2<bool>(true, arg_1.a))), vec2<bool>(false | arg_1.a, all(vec3<bool>(arg_0.b.x, false, false))))), _wgslsmith_add_vec3_i32(arg_1.d, firstLeadingBit(reverseBits(countOneBits(vec3<i32>(arg_1.d.x, arg_1.d.x, 32737i))))));
    let var_1 = ~(_wgslsmith_mult_u32(u_input.b.x, 43982u) >> (abs(u_input.c.x) % 32u));
    let var_2 = !(!arg_0.c.x);
    var var_3 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1201f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(119f + -497f)), _wgslsmith_div_f32(-617f, -858f), _wgslsmith_f_op_f32(step(-193f, _wgslsmith_f_op_f32(round(856f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<u32>) -> vec3<i32> {
    global0 = arg_0.d.zz;
    global0 = vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-1i, 13167i), global0.x ^ -58593i, max(global0.x, 0i)), vec3<i32>(0i, global0.x, global0.x) << ((u_input.c.xxx >> (u_input.c.yzw % vec3<u32>(32u))) % vec3<u32>(32u)))) << (_wgslsmith_mod_vec2_u32(vec2<u32>(~select(4191u, 30765u, arg_0.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 2196u, 1u), vec3<u32>(u_input.d, arg_2.x, u_input.a)) & select(55078u, u_input.e.x, arg_0.b.x)), vec2<u32>(u_input.e.x, ~0u)) % vec2<u32>(32u));
    return arg_0.d & min(abs(~firstLeadingBit(vec3<i32>(arg_0.d.x, arg_0.d.x, arg_0.d.x))), max(arg_0.d | vec3<i32>(global0.x, -1i, 0i), arg_0.d) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.d.x, -37927i, arg_0.d.x) ^ arg_0.d, arg_0.d));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    var var_0 = ~u_input.a;
    var var_1 = Struct_1(true, vec2<bool>(select(true, true, false), true), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, false, true)), true), true), vec2<bool>(true, true)), _wgslsmith_clamp_vec3_i32(func_4(Struct_1(false, vec2<bool>(true, true), vec2<bool>(true, true), ~vec3<i32>(global0.x, 407i, global0.x)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(false, vec2<bool>(false, true), vec2<bool>(false, false), vec3<i32>(global0.x, global0.x, global0.x)), Struct_1(false, vec2<bool>(false, true), vec2<bool>(false, false), vec3<i32>(global0.x, global0.x, 9082i)), Struct_1(true, vec2<bool>(false, true), vec2<bool>(true, true), vec3<i32>(global0.x, -14430i, -2147483647i)))), u_input.c.wz), vec3<i32>(-66384i, -28465i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -4344i, -14771i), vec4<i32>(global0.x, global0.x, -1i, global0.x))), firstLeadingBit(vec3<i32>(1i, global0.x, 0i))));
    var var_2 = Struct_1(var_1.b.x, var_1.c, vec2<bool>(var_1.a, false), var_1.d);
    var var_3 = vec3<i32>(var_2.d.x, abs(global0.x), ~(var_1.d.x ^ -firstLeadingBit(-34721i)));
    var var_4 = arg_0 | countOneBits(_wgslsmith_sub_vec4_u32(select(u_input.c, u_input.c, select(vec4<bool>(var_1.a, var_2.c.x, var_1.c.x, var_2.a), vec4<bool>(var_1.c.x, true, false, var_2.c.x), var_2.c.x)), abs(vec4<u32>(36441u, 56448u, 4294967295u, u_input.b.x))));
    return -(_wgslsmith_sub_i32(~var_3.x, var_2.d.x) | -global0.x) & 2147483647i;
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = ~vec3<i32>((-1i << (_wgslsmith_dot_vec3_u32(u_input.c.wwz, u_input.c.xzx) % 32u)) << (0u % 32u), _wgslsmith_mult_i32(countOneBits(~(-42460i)), global0.x), func_2(u_input.c | ~u_input.c));
    let var_1 = _wgslsmith_clamp_vec3_u32(~u_input.c.zww, u_input.c.zyy | vec3<u32>(u_input.c.x, ~u_input.e.x & 45234u, ~(~arg_0)), vec3<u32>(0u, 8766u, _wgslsmith_clamp_u32(~u_input.c.x, _wgslsmith_sub_u32(arg_0, arg_0), arg_0)) >> (u_input.c.xxx % vec3<u32>(32u)));
    global0 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i) & var_0.yy, -(~vec2<i32>(10969i, var_0.x)), _wgslsmith_sub_vec2_i32(var_0.xz, vec2<i32>(-4546i, 2147483647i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x << (55799u % 32u), global0.x), vec2<i32>(global0.x, 1i), func_4(Struct_1(true, vec2<bool>(false, true), vec2<bool>(true, false), vec3<i32>(38719i, -24085i, 36035i)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1243f, -227f, 1134f, -898f))), ~u_input.c.yx).yx)), -func_4(Struct_1(true, select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), var_0), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(true, vec2<bool>(true, false), vec2<bool>(true, false), vec3<i32>(-25644i, -1i, global0.x)), Struct_1(true, vec2<bool>(true, true), vec2<bool>(true, true), vec3<i32>(-14149i, global0.x, -1i)), Struct_1(false, vec2<bool>(true, true), vec2<bool>(true, false), vec3<i32>(global0.x, global0.x, 40587i)))), _wgslsmith_mult_vec2_u32(~var_1.yy, vec2<u32>(1u, 1u))).xy);
    global0 = _wgslsmith_clamp_vec2_i32(~firstTrailingBit(var_0.yz), _wgslsmith_mod_vec2_i32(var_0.yy, ~var_0.xz ^ vec2<i32>(8440i, var_0.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, 1i), -(~vec2<i32>(-4709i, 0i)))) << (~firstTrailingBit(~(~u_input.b)) % vec2<u32>(32u));
    let var_2 = firstLeadingBit(0i & global0.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(u_input.e.x), vec2<bool>(true, true), select(select(vec2<bool>(any(vec4<bool>(true, false, true, true)), true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, 62828u > (u_input.b.x ^ u_input.c.x))), vec3<i32>(_wgslsmith_div_i32(-24590i, _wgslsmith_clamp_i32(6543i, func_2(u_input.c), -1i)), global0.x, global0.x));
    global0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(-4805i, var_0.d.x, global0.x, var_0.d.x)), ~vec4<i32>(-18754i, global0.x, global0.x, var_0.d.x)), var_0.d.x), min(global0.x, -2147483647i));
    global0 = -(vec2<i32>(-1i) * -abs(select(vec2<i32>(var_0.d.x, -1i), var_0.d.xx, true)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-122f, -3684f, var_0.c.x)), _wgslsmith_f_op_f32(1291f - -345f))) > -226f, vec2<bool>(var_0.a, var_0.c.x), var_0.b, var_0.d);
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-273f, 110f, -376f), _wgslsmith_f_op_vec3_f32(vec3<f32>(304f, 1540f, -601f) - vec3<f32>(1000f, 1742f, 363f)))), vec3<f32>(-491f, _wgslsmith_f_op_f32(-528f + 598f), _wgslsmith_f_op_f32(f32(-1f) * -1008f))))));
    let var_2 = !var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-802f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1074f * var_1.x) * var_1.x)), vec4<i32>(~(var_0.d.x & ~(-1i)), i32(-1i) * -1i, global0.x, -18108i), var_1.xy, reverseBits(_wgslsmith_div_vec4_i32(-vec4<i32>(-65393i, var_0.d.x, global0.x, -23599i), vec4<i32>(-27385i, -global0.x, _wgslsmith_div_i32(var_0.d.x, 1i), 0i))), firstTrailingBit(4294967295u));
}

