struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, false, true, false, false, false, false, true, true, false, true, false, true, false, true, true, false, false, false, true, false);

var<private> global1: vec4<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: vec2<f32>) -> vec2<i32> {
    let var_0 = Struct_4(Struct_1(69879i, reverseBits(124495u) << (~(~u_input.a) % 32u), -u_input.c.wy));
    var var_1 = _wgslsmith_dot_vec2_i32(var_0.a.c, max(var_0.a.c, firstLeadingBit(~u_input.c.wx)) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(24819u, 8877u), max(vec2<u32>(global1.x, 32300u) | global1.xx, vec2<u32>(15958u, u_input.a))) % vec2<u32>(32u)));
    return u_input.c.wx;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> u32 {
    let var_0 = vec2<i32>(abs(-1i), u_input.c.x);
    var var_1 = _wgslsmith_add_vec3_u32(~firstLeadingBit(global1.wzx), global1.wxx);
    var var_2 = _wgslsmith_div_vec2_i32(-vec2<i32>(i32(-1i) * -arg_0.a.c.x, countOneBits(1i | var_0.x)), _wgslsmith_sub_vec2_i32(u_input.c.xx, func_3(arg_1, Struct_5(vec4<f32>(1408f, 1207f, 821f, -417f), -215f, false), _wgslsmith_div_vec2_f32(vec2<f32>(-866f, -2534f), vec2<f32>(1000f, 287f)))) ^ vec2<i32>(reverseBits(0i) | -arg_0.a.a, select(10866i, u_input.c.x, any(vec4<bool>(false, arg_1, arg_1, global0[_wgslsmith_index_u32(var_1.x, 21u)])))));
    var var_3 = Struct_2(arg_0.a, Struct_1(arg_0.a.a, 15516u, u_input.c.xz), -11657i);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-437f * 900f), _wgslsmith_f_op_f32(select(-1127f, 1090f, true)), _wgslsmith_f_op_f32(sign(-777f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2553f, 385f, -285f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2781f, 268f, 581f) * vec3<f32>(-683f, 853f, -352f)) - vec3<f32>(559f, -1045f, -1835f)), true || all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 21u)], false, false)))))));
    return 0u << (_wgslsmith_dot_vec2_u32(min(min(abs(vec2<u32>(0u, 95188u)), abs(vec2<u32>(arg_0.b.b, 1u))), global1.xz), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, var_3.a.b), vec2<u32>(4294967295u, u_input.a)))) % 32u);
}

fn func_1() -> f32 {
    global1 = select(vec4<u32>(4294967295u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global1.x, global1.x, u_input.b.x), vec4<u32>(u_input.a, 4294967295u, global1.x, 110128u)) | global1.x, 1u), vec4<u32>(func_2(Struct_2(Struct_1(66491i, 12427u, vec2<i32>(u_input.c.x, u_input.c.x)), Struct_1(u_input.c.x, 2921u, vec2<i32>(u_input.c.x, -1i)), u_input.c.x), false != global0[_wgslsmith_index_u32(4294967295u, 21u)]), global1.x, firstTrailingBit(0u), ~1u), select(false, true, true)) | firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_add_u32(u_input.b.x, u_input.b.x), 1u), abs(max(u_input.b.x, 1u)), _wgslsmith_mult_u32(1u, global1.x), 4294967295u));
    let var_0 = _wgslsmith_mod_vec3_u32((_wgslsmith_add_vec3_u32(global1.yzx, vec3<u32>(u_input.a, 0u, global1.x)) | vec3<u32>(max(global1.x, 0u), ~1u, ~global1.x)) << (((countOneBits(vec3<u32>(global1.x, u_input.b.x, global1.x)) | abs(vec3<u32>(global1.x, u_input.b.x, 1u))) | (~global1.ywz >> ((global1.zwy & global1.zyz) % vec3<u32>(32u)))) % vec3<u32>(32u)), global1.xyy);
    let var_1 = !(!(!vec4<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(0u), 21u)], any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 21u)])), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, 36248u), 21u)], any(vec2<bool>(false, true)))));
    var var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(min(917f, _wgslsmith_f_op_f32(f32(-1f) * -1453f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2305f))) - _wgslsmith_f_op_f32(-1571f * 410f)), _wgslsmith_f_op_f32(sign(-1434f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(222f - -2032f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-725f - -1436f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 0u), var_0.zy) >= 31159u);
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(floor(1764f)))))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(select(u_input.b.x, u_input.b.x, any(vec2<bool>(false, false))) << (countOneBits(4294967295u) % 32u));
    var var_1 = vec4<f32>(1214f, -1318f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(253f - 1000f) - -1000f), true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2221f), -1381f) * _wgslsmith_f_op_f32(-378f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f), -1000f))));
    let var_2 = Struct_4(Struct_1(-63038i, firstTrailingBit(0u), u_input.c.zw));
    let var_3 = var_2;
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    let var_4 = Struct_3(~(-_wgslsmith_clamp_vec2_i32(~vec2<i32>(-878i, u_input.c.x), vec2<i32>(0i, -2147483647i), reverseBits(var_2.a.c))), Struct_1(firstLeadingBit(i32(-1i) * -10326i), 4294967295u, -var_2.a.c), Struct_1(-abs(-var_2.a.c.x), func_2(Struct_2(var_3.a, Struct_1(u_input.c.x, 5225u, vec2<i32>(19389i, -2147483647i)), 1i), true && global0[_wgslsmith_index_u32(7393u, 21u)]), reverseBits(var_2.a.c)), 1u);
    var var_5 = Struct_2(var_3.a, var_2.a, _wgslsmith_add_i32(-var_3.a.a, var_2.a.a));
    global1 = vec4<u32>(_wgslsmith_add_u32(0u, 0u), _wgslsmith_clamp_u32(firstTrailingBit(func_2(Struct_2(Struct_1(var_2.a.a, var_3.a.b, vec2<i32>(var_3.a.c.x, var_4.a.x)), var_3.a, 35068i), global0[_wgslsmith_index_u32(~var_4.c.b, 21u)])), ~4294967295u, ~20852u), 4294967295u, _wgslsmith_mult_u32(~63018u, _wgslsmith_mod_u32(~49466u, 10658u >> (var_3.a.b % 32u)) << ((select(var_0, 1u, global0[_wgslsmith_index_u32(25868u, 21u)]) & var_4.c.b) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, -1i, var_4.c.c, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 426f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, 666f, 858f, var_1.x)))) + vec4<f32>(_wgslsmith_div_f32(-312f, var_1.x), -749f, -1959f, _wgslsmith_f_op_f32(var_1.x - -831f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1290f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(759f + 1056f), _wgslsmith_f_op_f32(func_1()))), -356f, 1f)));
}

