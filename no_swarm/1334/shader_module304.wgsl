struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-64726i, 21870i, 41783i, 35100i);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(233f, 407f), vec2<f32>(-620f, 543f))) + vec2<f32>(866f, 185f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(708f, -686f) - vec2<f32>(484f, 1730f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(275f, -767f), vec2<f32>(1727f, 376f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-175f, -2609f)), arg_1.b.b)), all(!vec4<bool>(true, global1.x, arg_1.b.b.x, arg_1.a.b.x))))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1992f, _wgslsmith_f_op_f32(trunc(-1163f)))))), var_0.x), 385f);
    let var_2 = global1.x;
    global0 = vec4<i32>(countOneBits(9562i), 1i, _wgslsmith_add_i32(-1i, firstTrailingBit(-select(11869i, arg_1.b.c.x, true))), ~_wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(arg_1.a.c.xz, arg_1.a.c.xx), min(vec2<i32>(arg_1.a.c.x, global0.x), u_input.a.xz) & ~arg_1.b.c.xx));
    let var_3 = !vec2<bool>(true, any(select(arg_1.a.b, arg_1.a.b, arg_1.b.b)));
    return select(arg_1.b.b, !var_3, select(select(vec2<bool>(select(true, true, arg_1.a.b.x), global1.x), vec2<bool>(global1.x, true), arg_1.a.b), vec2<bool>(_wgslsmith_clamp_i32(arg_1.b.c.x, 0i, arg_1.b.c.x) == 2147483647i, true), var_3));
}

fn func_2() -> i32 {
    global1 = func_3(select(vec3<u32>(~u_input.d.x << (firstLeadingBit(4294967295u) % 32u), u_input.b.x, 0u), ~vec3<u32>(4294967295u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), _wgslsmith_sub_u32(u_input.c.x, 39681u)), select(select(!vec3<bool>(global1.x, global1.x, global1.x), !vec3<bool>(false, false, global1.x), true), vec3<bool>(all(vec4<bool>(true, false, global1.x, global1.x)), true, false), select(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, true), global1.x), select(vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x), false), select(vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, global1.x, global1.x), false)))), Struct_2(Struct_1(_wgslsmith_div_u32(u_input.b.x, abs(u_input.c.x)), vec2<bool>(true, true), vec3<i32>(u_input.a.x | global0.x, abs(2147483647i), 0i)), Struct_1(1u, !(!vec2<bool>(false, global1.x)), select(~vec3<i32>(u_input.a.x, 5215i, -1i), global0.zxw, global1.x))));
    var var_0 = firstLeadingBit(select(vec4<u32>(_wgslsmith_div_u32(abs(4294967295u), min(u_input.d.x, 0u)), _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(51235u, u_input.d.x)), _wgslsmith_add_u32(~u_input.d.x, _wgslsmith_add_u32(u_input.b.x, 0u)), u_input.b.x), ~max(u_input.b, u_input.b) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.b.x, u_input.b.x), u_input.b), true));
    global0 = ~(-vec4<i32>(~(-52156i), 1i >> (var_0.x % 32u), _wgslsmith_mult_i32(18503i, -2375i), select(u_input.a.x, u_input.a.x, true)) & vec4<i32>(reverseBits(countOneBits(2147483647i)), firstTrailingBit(global0.x), ~(-u_input.a.x), 2147483647i));
    global1 = vec2<bool>(any(!vec4<bool>(global1.x | true, func_3(vec3<u32>(32741u, 6049u, u_input.d.x), Struct_2(Struct_1(1u, vec2<bool>(global1.x, global1.x), u_input.a), Struct_1(u_input.b.x, vec2<bool>(global1.x, global1.x), vec3<i32>(0i, u_input.a.x, global0.x)))).x, global1.x, !global1.x)), !global1.x);
    let var_1 = Struct_1(~_wgslsmith_add_u32(~var_0.x, 25895u) << (~(~var_0.x) % 32u), select(vec2<bool>(true, global1.x), vec2<bool>(true, true), !vec2<bool>(global1.x, true)), vec3<i32>(-32752i, global0.x, global0.x));
    return u_input.a.x;
}

fn func_1(arg_0: vec2<f32>) -> vec2<f32> {
    let var_0 = u_input.a.x;
    global0 = select(vec4<i32>(func_2(), -27787i, 30381i, -global0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x | var_0, ~2147483647i, var_0, 0i) >> (countOneBits(reverseBits(vec4<u32>(u_input.d.x, 12053u, u_input.d.x, 9033u))) % vec4<u32>(32u)), -_wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, 2147483647i, global0.x, -1i), ~vec4<i32>(global0.x, u_input.a.x, 38788i, var_0))), vec4<bool>(false, global1.x | all(!vec3<bool>(false, global1.x, false)), global1.x, (-2147483647i <= var_0) | (global1.x == any(vec4<bool>(false, true, global1.x, false)))));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - -1213f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-229f, -1000f, global1.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1685f, -1329f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(894f, 468f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(195f, -1567f)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1687f, -1000f) * _wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(280f, 1494f)))), vec2<f32>(-587f, 1f)))));
    global1 = !select(select(!func_3(vec3<u32>(74977u, u_input.b.x, 8498u), Struct_2(Struct_1(u_input.d.x, vec2<bool>(global1.x, true), global0.xww), Struct_1(0u, vec2<bool>(true, global1.x), vec3<i32>(u_input.a.x, 1i, 43451i)))), !vec2<bool>(global1.x, global1.x), select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), vec2<bool>(true, false)), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true)), false)), !select(func_3(vec3<u32>(4294967295u, 0u, 0u), Struct_2(Struct_1(u_input.d.x, vec2<bool>(global1.x, global1.x), global0.xyz), Struct_1(u_input.d.x, vec2<bool>(global1.x, false), vec3<i32>(1i, global0.x, global0.x)))), vec2<bool>(false, false), all(vec3<bool>(true, global1.x, false))), reverseBits(u_input.a.x) >= _wgslsmith_mult_i32(~1i, u_input.a.x));
    var var_1 = Struct_1(u_input.d.x, func_3(u_input.b.wyz ^ u_input.b.xyx, Struct_2(Struct_1(~u_input.c.x, vec2<bool>(true, global1.x), -vec3<i32>(u_input.a.x, -36152i, -87050i)), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.d.x, 4294967295u, 1u), vec4<u32>(u_input.d.x, u_input.c.x, 1u, u_input.b.x)), !vec2<bool>(global1.x, global1.x), vec3<i32>(17118i, u_input.a.x, -24917i)))), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), abs(u_input.a)));
    global1 = var_1.b;
    var_1 = Struct_1(select(abs(_wgslsmith_clamp_u32(18422u, ~0u, abs(1u))), select(26269u, _wgslsmith_mult_u32(~u_input.d.x, 38719u), true), all(!vec3<bool>(var_1.b.x, true, var_1.b.x))), !vec2<bool>(global1.x, true), _wgslsmith_div_vec3_i32(~max(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 30538i), var_1.c), reverseBits(vec3<i32>(u_input.a.x, -54502i, 1i))), -min(-var_1.c, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.a.x, global0.x), var_1.c))));
    let x = u_input.a;
    s_output = StorageBuffer(547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(951f))), -1i);
}

