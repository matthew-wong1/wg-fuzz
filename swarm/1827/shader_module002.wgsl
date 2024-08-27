struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    var var_1 = ~(~17881u);
    var var_2 = vec2<i32>(16107i, _wgslsmith_dot_vec2_i32(vec2<i32>(-(~15869i), ~0i), select(~(-vec2<i32>(-2147483647i, 59126i)), _wgslsmith_div_vec2_i32(~vec2<i32>(-11178i, -1i), vec2<i32>(1i, 50372i)), 0u > firstTrailingBit(1u))));
    var_2 = _wgslsmith_mult_vec2_i32(min(-(~vec2<i32>(var_2.x, var_2.x)), select(~vec2<i32>(-17153i, 1i), _wgslsmith_mod_vec2_i32(~vec2<i32>(40142i, var_2.x), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_2.x), vec2<i32>(var_2.x, 1487i))), !vec2<bool>(arg_0.b.x, false))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, 1i), vec2<i32>(1i, var_2.x)), select(~vec2<i32>(var_2.x, 1i), vec2<i32>(var_2.x, -1i), arg_0.b.x == true)), vec2<i32>(var_2.x, _wgslsmith_add_i32(~var_2.x, i32(-1i) * -51915i))));
    var var_3 = max(~vec2<u32>(var_0.a, arg_0.a), vec2<u32>(_wgslsmith_mult_u32(79861u, _wgslsmith_sub_u32(u_input.a, abs(u_input.a))), ~u_input.a));
    return select(!var_0.b.x, var_2.x > -49792i, var_0.b.x);
}

fn func_2() -> u32 {
    var var_0 = Struct_1(1236u, select(vec4<bool>(select(select(true, false, false), func_3(Struct_1(56468u, vec4<bool>(true, true, false, false))), all(vec4<bool>(false, true, true, true))), true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)));
    let var_1 = var_0.a;
    let var_2 = _wgslsmith_div_vec4_u32(select(abs(~vec4<u32>(71810u, 12071u, 0u, u_input.a)), min(vec4<u32>(countOneBits(52152u), var_0.a, abs(13559u), ~u_input.a), vec4<u32>(_wgslsmith_div_u32(var_0.a, u_input.a), _wgslsmith_clamp_u32(475u, var_0.a, var_0.a), countOneBits(u_input.a), var_0.a)), min(93660u, ~13455u) <= var_0.a), firstLeadingBit(vec4<u32>(132687u, u_input.a, 6979u, 63521u)));
    var_0 = Struct_1(max(39738u, ~1u), select(vec4<bool>(any(var_0.b), all(!vec3<bool>(false, var_0.b.x, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(-16120i, 2147483647i, -12236i), vec3<i32>(23601i, -1i, 0i)) > 1i, 1i != _wgslsmith_dot_vec2_i32(vec2<i32>(-19031i, 6582i), vec2<i32>(-6691i, -19764i))), var_0.b, vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -426f) != _wgslsmith_f_op_f32(round(680f)), true, func_3(Struct_1(44764u, var_0.b)), any(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)))));
    var_0 = Struct_1(11950u, var_0.b);
    return _wgslsmith_sub_u32(4294967295u, ~4294967295u);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~(~firstTrailingBit(vec3<u32>(u_input.a, 1u, 1u))), (~vec3<u32>(arg_0.a, arg_0.a, 1u) << ((vec3<u32>(u_input.a, arg_0.a, u_input.a) & vec3<u32>(16993u, u_input.a, u_input.a)) % vec3<u32>(32u))) & vec3<u32>(~u_input.a, arg_0.a, func_2())), 81445u);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))) + 1374f))));
    let var_2 = true;
    let var_3 = !arg_0.b.x;
    let var_4 = Struct_1(max(9669u, firstLeadingBit(10845u) ^ firstTrailingBit(~u_input.a)), !select(select(vec4<bool>(true, false, false, var_2), arg_0.b, select(arg_0.b, arg_0.b, arg_0.b.x)), vec4<bool>(true, true, arg_0.b.x, true), !var_2));
    return any(select(arg_0.b, var_4.b, any(vec2<bool>(all(arg_0.b), true))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = arg_2;
    let var_1 = select(~reverseBits(~firstLeadingBit(vec4<u32>(u_input.a, 35128u, 12360u, 49227u))), select(vec4<u32>(var_0.a, func_2(), 1u, arg_2.a), ~abs(~vec4<u32>(var_0.a, 4294967295u, 1u, arg_2.a)), !(!arg_0.b.x) & false), select(var_0.b, vec4<bool>(!arg_1.x || select(arg_0.b.x, arg_2.b.x, false), !(arg_3 < arg_3), any(select(arg_0.b.zxx, vec3<bool>(true, var_0.b.x, arg_0.b.x), arg_0.b.zyz)), var_0.b.x), vec4<bool>(!all(vec4<bool>(var_0.b.x, false, arg_0.b.x, arg_0.b.x)), any(select(arg_2.b, arg_2.b, arg_1.x)), any(select(vec2<bool>(true, false), vec2<bool>(arg_1.x, false), arg_0.b.zw)), true)));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-595f - 560f))), _wgslsmith_div_f32(-844f, _wgslsmith_f_op_f32(max(-1323f, -662f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(428f, 1389f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(1468f + _wgslsmith_f_op_f32(floor(1768f))))));
    var var_3 = ~(~vec3<i32>(_wgslsmith_sub_i32(arg_3, -23773i), -1i, -49734i));
    let var_4 = arg_0;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~u_input.a));
    let var_1 = !func_4(Struct_1(u_input.a, vec4<bool>(true, any(vec3<bool>(true, false, false)), true, true)), !vec3<bool>(func_1(Struct_1(4294967295u, vec4<bool>(true, false, false, false)), vec4<f32>(-545f, -116f, 378f, -1230f)), all(vec2<bool>(false, true)), true), Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(77808u, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec4<bool>(any(vec3<bool>(false, true, false)), false, true, 0u == u_input.a)), max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 15737i, -1i, 4783i), vec4<i32>(0i, 1i, -1i, 1i) >> (vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a) % vec4<u32>(32u))), -1i));
    var_0 = u_input.a;
    let var_2 = 1i;
    var var_3 = u_input.a;
    let var_4 = Struct_1(countOneBits(reverseBits(~4294967295u)), select(select(select(!vec4<bool>(var_1, true, var_1, var_1), select(vec4<bool>(var_1, true, false, true), vec4<bool>(false, true, var_1, var_1), true), !vec4<bool>(var_1, var_1, false, true)), !vec4<bool>(false, true, var_1, var_1), false), !vec4<bool>(true, false, all(vec4<bool>(var_1, var_1, false, true)), true), var_1));
    let var_5 = -1383f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_5, -779f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(429f, -753f, var_5) - vec3<f32>(189f, 388f, -361f)), true)), vec3<f32>(-262f, var_5, _wgslsmith_f_op_f32(ceil(var_5)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5, var_5, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_5)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_5), _wgslsmith_f_op_f32(-771f - var_5)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5, 1000f, var_5, 109f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5, 808f) + vec2<f32>(var_5, 763f)))))), var_2);
}

