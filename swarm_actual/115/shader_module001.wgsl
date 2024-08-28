struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: f32 = -933f;

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = arg_0.d.wxw;
    var_0 = ~(~(~arg_0.d.zzw));
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_2(Struct_1(abs(_wgslsmith_div_u32(4294967295u << (0u % 32u), 1902u))), u_input.c.zx);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(2229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -940f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-912f)) + 562f))) - arg_0.c.x));
    return 4294967295u;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = !vec4<bool>(true, any(select(vec2<bool>(true, false), arg_1.xy, vec2<bool>(arg_3.x, arg_3.x))), !arg_3.x, true);
    var var_1 = Struct_3(-1000f, Struct_2(Struct_1(_wgslsmith_clamp_u32(global0.a, ~global0.a, global3.a ^ global3.a)), vec2<i32>(arg_0.b.x, arg_0.b.x)), -u_input.c, u_input.b);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, -348f, var_0.x)), 440f))), _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_1.a, -1269f))))))))));
    let var_3 = arg_0;
    let var_4 = !(!vec4<bool>(arg_3.x == true, any(vec2<bool>(var_0.x, var_0.x)), false, true));
    return Struct_1(_wgslsmith_sub_u32(max(~_wgslsmith_add_u32(var_3.a.a, 4294967295u), reverseBits(35789u)), countOneBits(func_3(Struct_4(vec4<i32>(u_input.a, var_3.b.x, -12i, arg_0.b.x), vec4<f32>(1000f, arg_2, var_1.a, -478f), vec2<f32>(var_1.a, 576f), vec4<u32>(global0.a, 0u, 35283u, 4294967295u))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec2<bool>) -> vec4<u32> {
    let var_0 = Struct_4(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-7859i), arg_0.x, ~2147483647i, 16491i), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(arg_0.x, u_input.a, -1i, -1i)), select(vec4<i32>(58046i, u_input.d, u_input.d, -1i), vec4<i32>(0i, -29229i, u_input.d, arg_0.x), arg_2.x))), vec4<i32>(1i, arg_0.x, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, arg_0.x, 11927i, 26857i), vec4<i32>(u_input.c.x, -1i, arg_0.x, arg_0.x)), vec4<i32>(20180i, u_input.b, u_input.d, -8809i)), ~(2147483647i & arg_0.x))), vec4<f32>(-585f, 253f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(589f + -1679f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-202f - _wgslsmith_f_op_f32(-1831f - 954f)) + _wgslsmith_f_op_f32(1127f * _wgslsmith_div_f32(-1082f, -758f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(sign(-766f)))) - vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1624f)), -117f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1107f - 1425f)))), vec4<u32>(35571u, 1u, global0.a, arg_1.x & 4713u) & _wgslsmith_mod_vec4_u32((vec4<u32>(arg_1.x, 16573u, 67110u, 37114u) | vec4<u32>(arg_1.x, global0.a, 4294967295u, global3.a)) << ((vec4<u32>(4294967295u, global0.a, global3.a, 65971u) >> (vec4<u32>(51357u, 4294967295u, 1u, arg_1.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 1u, global3.a, 26150u) & ~vec4<u32>(arg_1.x, 7080u, 4294967295u, arg_1.x)));
    global1 = global3.a;
    global1 = ~global3.a;
    global0 = func_2(Struct_2(Struct_1(~4294967295u), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.a) ^ vec2<i32>(-1i, 11641i), vec2<i32>(2147483647i, 0i) & vec2<i32>(29272i, arg_0.x))), !select(vec4<bool>(arg_2.x && arg_2.x, arg_2.x, 47910i > u_input.d, false), !vec4<bool>(true, true, arg_2.x, true), true), -1300f, vec3<bool>(any(select(!vec4<bool>(arg_2.x, false, true, true), !vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, true, arg_2.x, false), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)))), true, true));
    global1 = firstLeadingBit(global0.a);
    return select(reverseBits(vec4<u32>(global0.a, 0u, global3.a, _wgslsmith_add_u32(4294967295u, var_0.d.x) & global0.a)), ~(~(_wgslsmith_div_vec4_u32(vec4<u32>(0u, global0.a, 0u, 1u), vec4<u32>(var_0.d.x, global3.a, 0u, arg_1.x)) >> ((vec4<u32>(4294967295u, var_0.d.x, 22968u, var_0.d.x) >> (var_0.d % vec4<u32>(32u))) % vec4<u32>(32u)))), _wgslsmith_clamp_u32(select(_wgslsmith_clamp_u32(global3.a, arg_1.x, 40178u), global0.a, true), 4294967295u, func_3(Struct_4(var_0.a, vec4<f32>(787f, 261f, var_0.b.x, -635f), var_0.b.ww, vec4<u32>(global0.a, 4294967295u, global3.a, 55606u)))) != ((71301u >> (min(global3.a, 1u) % 32u)) ^ _wgslsmith_div_u32(1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(max(max(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, 0i), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-74740i, -1i, u_input.b, 1i)), vec4<i32>(16586i, -303i, u_input.b, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -25720i, 2147483647i, 135i), vec4<i32>(u_input.c.x, 797i, u_input.b, -9675i)))), _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -7855i, u_input.d, u_input.a, max(-59927i, u_input.b)), -vec4<i32>(40065i, -1i, u_input.c.x, 1i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-811f, _wgslsmith_f_op_f32(round(-961f)))), _wgslsmith_f_op_f32(-650f * _wgslsmith_f_op_f32(trunc(-792f))), _wgslsmith_div_f32(-2026f, -1507f), -355f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-765f, -1425f, -376f, -1227f) * vec4<f32>(803f, 1306f, -639f, 448f))) + vec4<f32>(-227f, _wgslsmith_div_f32(-467f, -1044f), -892f, _wgslsmith_f_op_f32(198f * 1651f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1142f, -458f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-718f * 1726f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-195f - -1000f), 1188f)))), func_1(u_input.c.zx, _wgslsmith_sub_vec2_u32(vec2<u32>(global3.a, global0.a), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(global3.a, 28673u), vec2<u32>(77344u, 4294967295u)))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true))));
    global1 = var_0.d.x;
    let var_1 = Struct_1(var_0.d.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(max(var_0.b.zyz, vec3<f32>(885f, -1291f, -187f)));
    let var_3 = Struct_2(var_1, var_0.a.yx & reverseBits(u_input.c.xx));
    let var_4 = var_0.a.wy;
    var var_5 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(804f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-309f * var_2.x), var_0.b.x, (var_0.d.x <= var_1.a) & true)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(991f)))) + _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(var_2.x - -688f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f)), var_0.b.x, _wgslsmith_f_op_f32(max(-561f, _wgslsmith_f_op_f32(-var_0.c.x))))))));
    var var_6 = _wgslsmith_add_i32(var_3.b.x, ~((u_input.b | u_input.a) & -44171i)) != countOneBits(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.d >> (var_3.a.a % 32u), _wgslsmith_add_i32(var_4.x, 0i)), max(select(-2147483647i, 19329i, false), _wgslsmith_mod_i32(var_4.x, 28483i))));
    let x = u_input.a;
    s_output = StorageBuffer(55766u, _wgslsmith_f_op_f32(-var_0.b.x));
}

