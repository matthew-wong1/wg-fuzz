struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: f32 = 1000f;

var<private> global2: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec4<u32>(23204u, 4294967295u, 1u, 1u)), Struct_3(vec4<u32>(16640u, 42152u, 4294967295u, 0u)), Struct_3(vec4<u32>(1u, 4294967295u, 6396u, 48584u)), Struct_3(vec4<u32>(27647u, 29039u, 11625u, 14068u)), Struct_3(vec4<u32>(0u, 4294967295u, 0u, 33971u)), Struct_3(vec4<u32>(1u, 0u, 4294967295u, 0u)), Struct_3(vec4<u32>(23698u, 4294967295u, 23442u, 1u)), Struct_3(vec4<u32>(59915u, 15259u, 1u, 11632u)), Struct_3(vec4<u32>(15165u, 9572u, 4294967295u, 0u)), Struct_3(vec4<u32>(4294967295u, 4294967295u, 29645u, 34763u)), Struct_3(vec4<u32>(62063u, 4294967295u, 39106u, 0u)), Struct_3(vec4<u32>(4294967295u, 0u, 54161u, 63935u)), Struct_3(vec4<u32>(4294967295u, 0u, 4294967295u, 57471u)), Struct_3(vec4<u32>(8717u, 4294967295u, 15396u, 1u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_3) -> f32 {
    global0 = array<u32, 5>();
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1020f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-983f, arg_1.x)), 1060f), !all(vec4<bool>(2249f < arg_1.x, any(vec2<bool>(arg_0.b, arg_0.a)), any(vec3<bool>(arg_0.b, true, arg_0.b)), false))));
    global1 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, 2499f)))));
    global1 = arg_1.x;
    let var_1 = _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(52793u, ~54016u));
    return -861f;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: i32) -> f32 {
    global2 = array<Struct_3, 14>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1515f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-866f, -100f)))))) == _wgslsmith_f_op_f32(func_3(Struct_1(1i <= _wgslsmith_mod_i32(arg_3, -33663i), true, u_input.e.xzx, vec4<i32>(21151i, arg_3 | u_input.d.x, arg_3 & u_input.d.x, _wgslsmith_add_i32(-2147483647i, arg_3))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1611f, 1000f, 117f))), vec3<f32>(272f, 882f, 298f), vec3<bool>(false, false, false))))), _wgslsmith_add_i32(arg_2, _wgslsmith_clamp_i32(16378i, arg_2, -42793i) << (0u % 32u)), global2[_wgslsmith_index_u32(~abs(global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), 14u)]));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-280f, 888f, 973f, 495f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1652f, -652f, -905f, 559f)), vec4<f32>(-437f, -1000f, 1000f, 378f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(860f, 393f, -874f, 1957f) - vec4<f32>(-115f, 965f, -505f, 1678f))))))));
    let var_2 = Struct_3(~select(vec4<u32>(u_input.a.x, 4294967295u, arg_1, arg_0) & min(u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(~u_input.a, _wgslsmith_add_vec4_u32(u_input.a, u_input.a)), select(!vec4<bool>(var_0, true, var_0, var_0), select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(var_0, var_0, var_0, var_0), true), any(vec4<bool>(var_0, true, false, true)))));
    var var_3 = ~firstTrailingBit(select(select(select(u_input.a.xy, vec2<u32>(global0[_wgslsmith_index_u32(arg_1, 5u)], arg_0), vec2<bool>(var_0, var_0)), max(var_2.a.xz, var_2.a.zw), arg_0 > arg_0), ~vec2<u32>(68444u, arg_1), !(!vec2<bool>(var_0, true))));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = -1143f;
    global1 = _wgslsmith_f_op_f32(round(1000f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(global0[_wgslsmith_index_u32(u_input.c, 5u)]), 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], 1u) & _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 27418u), u_input.a.xz)), 5u)], global0[_wgslsmith_index_u32(~u_input.a.x, 5u)], u_input.b, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.e.xxw ^ u_input.e.xwx, ~vec3<i32>(u_input.d.x, 30205i, -44393i)), abs(u_input.d.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.c, global0[_wgslsmith_index_u32(0u, 5u)], 33878i, arg_0.x))) * _wgslsmith_f_op_f32(max(-1078f, -334f)))));
    global0 = array<u32, 5>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1893f, -558f)))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-196f, _wgslsmith_f_op_f32(-237f + -801f), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-319f + 857f), -994f))))), -1048f);
    return Struct_2(Struct_1(false, firstTrailingBit(abs(u_input.c)) < _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(21777u, 5u)], 4294967295u, u_input.a.x, 6562u), _wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(u_input.a.x, 49688u, 4294967295u, global0[_wgslsmith_index_u32(u_input.c, 5u)]))), vec3<i32>(1i, -1i, ~firstTrailingBit(u_input.e.x)), -(~firstTrailingBit(vec4<i32>(-5914i, u_input.b, arg_0.x, arg_0.x)))), Struct_1(true, true, vec3<i32>(arg_0.x, arg_0.x & u_input.e.x, ~(-2147483647i) >> (1u % 32u)), vec4<i32>(-2147483647i, 31429i, firstLeadingBit(_wgslsmith_sub_i32(u_input.e.x, 1i)), arg_0.x)), vec3<bool>(0u < _wgslsmith_dot_vec3_u32(~u_input.a.yxw, u_input.a.zzw), false, true), select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true)), false), true));
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = u_input.e.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(162f))), 1038f)));
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, var_1.x)))) - 347f), _wgslsmith_f_op_f32(f32(-1f) * -1049f), true));
    global1 = var_1.x;
    var var_2 = i32(-1i) * -min(u_input.e.x, ~(~var_0));
    return var_1.x;
}

fn func_5(arg_0: f32, arg_1: f32) -> Struct_1 {
    global0 = array<u32, 5>();
    let var_0 = !func_1(countOneBits(u_input.d | vec2<i32>(0i, -1i))).c.x;
    global2 = array<Struct_3, 14>();
    global2 = array<Struct_3, 14>();
    let var_1 = vec3<bool>(arg_0 == _wgslsmith_f_op_f32(func_2(1u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(15263u, u_input.a.x), 5u)]), u_input.d.x, (18733i >> (global0[_wgslsmith_index_u32(0u, 5u)] % 32u)) & u_input.e.x)), func_1(u_input.d).d.x, true);
    return func_1(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(-u_input.d, _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.e.x, u_input.e.x), countOneBits(u_input.e.zy))), vec2<i32>(~u_input.e.x, ~(~2147483647i)))).b;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(arg_0, 5u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(848f * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(437f, 382f)))))));
    global0 = array<u32, 5>();
    let var_2 = true;
    global0 = array<u32, 5>();
    return StorageBuffer(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(~0u, 5u)] ^ 1u, global0[_wgslsmith_index_u32(~(~50658u), 5u)]), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 5u)], 55840u), ~vec3<u32>(76861u, global0[_wgslsmith_index_u32(47088u, 5u)], 0u))), abs(u_input.a.wyz) >> (_wgslsmith_mult_vec3_u32(u_input.a.xxz, u_input.a.zzy) % vec3<u32>(32u))), -((vec2<i32>(-1i) * -vec2<i32>(-78463i, -5760i)) << ((_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, global0[_wgslsmith_index_u32(arg_0, 5u)]), vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]), u_input.a.xz) << (firstLeadingBit(vec2<u32>(6509u, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u))), 236f, -(~_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.d.x, arg_3.a.d.x, arg_2.d.x), _wgslsmith_div_vec3_i32(u_input.e.yww, arg_3.b.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(8272u, 14u)];
    let var_1 = !vec4<bool>(true, all(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), any(vec2<bool>(true, true)))), (_wgslsmith_mult_u32(u_input.c, 4294967295u) <= 4294967295u) & !any(vec4<bool>(false, true, false, true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -737f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(296f)), _wgslsmith_f_op_f32(f32(-1f) * -1112f)))), -1599f, -1394f) * vec3<f32>(-483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(791f, 865f))) + _wgslsmith_f_op_f32(sign(-1025f))), _wgslsmith_f_op_f32(-1f)));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(791f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, var_2.x))), 1534f));
    let x = u_input.a;
    s_output = func_6(var_0.a.x, Struct_1(any(!var_1.zy) || true, !(!var_1.x), u_input.e.zzz, max(u_input.e, u_input.e)), func_5(var_2.x, _wgslsmith_f_op_f32(func_4(func_1(vec2<i32>(-56154i, 41195i))))), Struct_2(func_5(_wgslsmith_f_op_f32(756f + _wgslsmith_div_f32(var_2.x, var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -781f)), func_1(u_input.d).a, !var_1.www, func_1(firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -29843i)))).d));
}

