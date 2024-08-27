struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-19608i, 4218i, 24816i, -21278i);

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    let var_0 = u_input.a;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2258f)))) - 1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(323f)))), _wgslsmith_f_op_f32(trunc(1f)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-867f, -1221f, -1314f), vec3<f32>(842f, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(331f, var_1.x, -812f)))))));
    global0 = vec4<i32>(1i, min(-2147483647i, abs(_wgslsmith_div_i32(0i, global0.x | 18818i))), 1i, _wgslsmith_sub_i32(-(i32(-1i) * -3523i), 1i));
    var var_2 = Struct_1(reverseBits(global1.a), abs(abs(reverseBits(-vec2<i32>(global0.x, global0.x)))), 1u);
    return var_0;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(~reverseBits(global1.a), vec2<i32>(~(func_3() & -global1.a.x), i32(-1i) * -20308i), _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(36793u, u_input.d.x), u_input.e.x | u_input.e.x, ~7148u, _wgslsmith_sub_u32(u_input.b.x, u_input.d.x)), u_input.b));
    var var_1 = reverseBits(_wgslsmith_div_i32(-17205i, 0i & var_0.a.x));
    var_1 = ~(~(~u_input.a)) & 0i;
    global0 = reverseBits(_wgslsmith_sub_vec4_i32(select(~(~vec4<i32>(-11427i, u_input.c, u_input.c, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -2147483647i, global0.x, global1.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(global1.a.x, -20060i, var_0.b.x, 1i), vec4<i32>(u_input.c, -1i, u_input.c, global1.b.x))), vec4<bool>(true, true, select(true, false, true), all(vec4<bool>(false, true, true, true)))), select(select(vec4<i32>(var_0.a.x, 0i, 18675i, -30411i), vec4<i32>(-1i, -2147483647i, 1i, -2891i), true), firstTrailingBit(vec4<i32>(-16271i, 59348i, 0i, global1.a.x)), !any(vec2<bool>(false, true)))));
    let var_2 = _wgslsmith_add_i32(1i, max(~(1i >> (u_input.e.x % 32u)), firstTrailingBit(~57134i) >> (8302u % 32u)));
    return Struct_1(abs(countOneBits(-vec3<i32>(var_0.b.x, var_0.a.x, -19810i) ^ ~vec3<i32>(var_2, -2147483647i, var_2))), _wgslsmith_sub_vec2_i32(~(-var_0.a.zz), select(vec2<i32>(-1i, global0.x), vec2<i32>(~u_input.c, ~global1.b.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), 4294967295u);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<f32>) -> i32 {
    let var_0 = func_2(vec4<f32>(arg_2.x, _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)), -343f, _wgslsmith_f_op_f32(arg_2.x + 1028f)));
    global1 = var_0;
    let var_1 = ~(~0u);
    let var_2 = func_2(vec4<f32>(892f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-127f + -407f), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(f32(-1f) * -194f))), _wgslsmith_f_op_f32(f32(-1f) * -696f), _wgslsmith_f_op_f32(-arg_2.x))).c;
    global0 = firstLeadingBit(-vec4<i32>(firstLeadingBit(global0.x), min(firstTrailingBit(u_input.a), abs(38254i)), ~(-global1.a.x), u_input.a));
    return _wgslsmith_mod_i32(~(i32(-1i) * -1i), _wgslsmith_mult_i32(arg_1.x & (var_0.a.x >> (34763u % 32u)), func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), vec4<f32>(-874f, arg_2.x, arg_2.x, arg_2.x)))).b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(486f * -741f) * _wgslsmith_f_op_f32(floor(1283f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f) - 143f));
    var_0 = vec2<f32>(1f, 1f);
    global0 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, global1.a.x, 1i, global1.a.x), vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(func_1(global1.c, global1.b, vec3<f32>(873f, 970f, -651f)), ~(-1i))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(157i, ~global1.a.x), ~(-20740i) >> (u_input.b.x % 32u)), global1.a.x, -(~(i32(-1i) * -48037i))));
    var var_1 = Struct_1(_wgslsmith_sub_vec3_i32(-vec3<i32>(-85489i, -37485i, _wgslsmith_add_i32(-2147483647i, u_input.c)), vec3<i32>(i32(-1i) * -61622i, 2147483647i, _wgslsmith_clamp_i32(4119i, global0.x, ~u_input.c))), vec2<i32>(func_3(), func_1(47018u, global1.a.yx, vec3<f32>(857f, var_0.x, var_0.x)) << (u_input.b.x % 32u)), global1.c);
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) - vec4<f32>(-1329f, -504f, -913f, 1170f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(824f - 1813f), 1420f, _wgslsmith_f_op_f32(f32(-1f) * -1769f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(662f, 963f, 1000f, var_0.x), vec4<f32>(2251f, var_0.x, 774f, var_0.x), vec4<bool>(true, true, true, false))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-398f, var_0.x, var_0.x, var_0.x)))))));
    var var_3 = min(abs(_wgslsmith_dot_vec4_u32(~u_input.b, select(~vec4<u32>(26037u, var_2.c, 0u, 98723u), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c, 0u, var_2.c, global1.c), u_input.b), any(vec2<bool>(true, true))))), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(vec2<i32>(-2147483647i, u_input.a) >> (u_input.b.wx % vec2<u32>(32u))) << (vec2<u32>(_wgslsmith_mod_u32(19221u, var_2.c), u_input.b.x) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1095f, var_0.x)))) * vec2<f32>(_wgslsmith_f_op_f32(-424f + var_0.x), _wgslsmith_f_op_f32(ceil(-305f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-277f, var_0.x)))) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, 337f))))), var_1.a, abs(_wgslsmith_mod_vec3_i32(-(global1.a << (u_input.d.xwz % vec3<u32>(32u))), select(vec3<i32>(0i, var_1.a.x, 2147483647i), vec3<i32>(global1.b.x, -2147483647i, 2147483647i), false) | firstTrailingBit(var_2.a))), 1203f);
}

