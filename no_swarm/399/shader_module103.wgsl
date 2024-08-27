struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec2<i32> = vec2<i32>(1i, i32(-2147483648));

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_1, 14>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    global0 = vec3<bool>(!global2.x, global2.x, select(global2.x, !global2.x | !global2.x, !(!global2.x)) && global0.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-140f, 308f, -1769f))), vec3<f32>(181f, _wgslsmith_f_op_f32(max(179f, -1129f)), _wgslsmith_div_f32(-1380f, 1685f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-296f, 1171f, 1231f), vec3<f32>(908f, 255f, 477f)))))));
    let var_1 = select(u_input.b.x, 1u, _wgslsmith_dot_vec3_i32(reverseBits(-vec3<i32>(1i, 2147483647i, global1.x)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0.x, 31611i), vec3<i32>(-2147483647i, -1i, 0i)), firstLeadingBit(vec3<i32>(global1.x, 2147483647i, -1i)))) == (i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, global1.x, -2147483647i), vec3<i32>(arg_0.x, arg_0.x, global1.x))));
    global2 = vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, !global2.x, global1.x > 31732i), vec3<bool>(any(vec3<bool>(global2.x, global2.x, global0.x)), any(vec4<bool>(false, global0.x, false, global2.x)), true))), any(vec3<bool>(true, global2.x, true | (var_1 <= 0u))));
    let var_2 = Struct_4(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -766f), _wgslsmith_f_op_f32(var_0.x * 454f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x)), ~max(firstLeadingBit(vec4<i32>(-39792i, 11471i, arg_0.x, 1i) >> (vec4<u32>(26952u, var_1, var_1, 8457u) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(arg_0.x, -8368i, global1.x, arg_0.x)));
    return true;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    global0 = select(vec3<bool>(all(global0.xy), true, !(!(arg_1.d <= 1031f))), !select(vec3<bool>(true, false, false), !select(vec3<bool>(true, arg_1.a, true), vec3<bool>(true, true, false), global2.x), !select(vec3<bool>(false, true, global2.x), vec3<bool>(false, arg_1.a, false), vec3<bool>(false, false, arg_1.a))), false);
    global1 = ~_wgslsmith_mult_vec2_i32(~vec2<i32>(-1i, -63179i), ~(~vec2<i32>(global1.x, 1i)));
    global2 = select(vec2<bool>(u_input.b.x < abs(u_input.b.x), global0.x), !global0.yx, global2.x);
    global1 = -_wgslsmith_sub_vec2_i32(~(~vec2<i32>(-2147483647i, 23403i)) ^ vec2<i32>(-21070i, _wgslsmith_mult_i32(global1.x, global1.x)), ~reverseBits(-vec2<i32>(25969i, -30818i)));
    var var_0 = Struct_3(2147483647i, Struct_2(global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(~arg_1.c.x, ~u_input.a)), 14u)]), global0.xz);
    return vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_1.d);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<bool>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(-591f, Struct_1(func_3(vec2<i32>(global1.x, -17978i)), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(27790u, u_input.b.x, u_input.b.x), -289f)))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_4(1326f, Struct_1(false, vec3<u32>(1u, 22958u, u_input.a), vec3<u32>(67525u, 1u, 0u), 885f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-843f, -712f), vec2<f32>(748f, 1000f), global0.yx)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1678f, 836f)))))));
    var var_1 = Struct_3(0i, Struct_2(Struct_1((global2.x & arg_2.x) | !global2.x, _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 71677u, u_input.b.x), vec3<u32>(u_input.b.x, 51418u, 4294967295u), vec3<u32>(59813u, u_input.b.x, 1u)), select(vec3<u32>(u_input.a, u_input.b.x, 19580u), vec3<u32>(1u, 106164u, u_input.a), vec3<bool>(true, false, global2.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 35192u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 49050u, 46084u), vec3<u32>(u_input.a, 28883u, u_input.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, 1586f), _wgslsmith_f_op_f32(max(-446f, 177f)))))), vec2<bool>(true, true | !(arg_1 < -20125i)));
    let var_2 = vec3<f32>(_wgslsmith_div_f32(var_1.b.a.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))))), 637f, _wgslsmith_f_op_f32(sign(var_0.x)));
    let var_3 = Struct_3(max(-30585i, _wgslsmith_sub_i32(var_1.a, global1.x) << (64493u % 32u)) ^ abs(min(1i ^ arg_1, _wgslsmith_sub_i32(global1.x, 2147483647i))), var_1.b, vec2<bool>(select(true, all(!arg_2.xxx), false), all(arg_2)));
    global0 = arg_2.zzz;
    return Struct_4(false, 2107f, vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(32542i, arg_1), var_3.a), ~(-65607i), reverseBits(_wgslsmith_mod_i32(2147483647i, -2147483647i)), 0i));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(298f, arg_1)))));
    global4 = -arg_2.c.x;
    var var_1 = select(select(select(vec2<bool>(true, arg_0.a), select(select(vec2<bool>(false, global0.x), global0.xy, global0.zx), select(global0.xz, vec2<bool>(global0.x, true), false), vec2<bool>(global2.x, global2.x)), select(select(vec2<bool>(true, true), global0.zz, vec2<bool>(global2.x, false)), vec2<bool>(false, arg_0.a), arg_0.a)), !global0.yx, !global0.zx), vec2<bool>(true, !arg_2.a), false);
    let var_2 = reverseBits(global1.x);
    var var_3 = true;
    return !(u_input.a != _wgslsmith_dot_vec3_u32(min(arg_0.b, vec3<u32>(0u, arg_0.b.x, u_input.b.x)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0.b, vec3<u32>(arg_0.b.x, 10562u, arg_0.c.x)), ~arg_0.c)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> i32 {
    global4 = abs(global1.x);
    let var_0 = select(global2.x, func_5(Struct_1(arg_1.a | (false && global2.x), reverseBits(~vec3<u32>(55579u, arg_3, 0u)), arg_1.c, -1264f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) - -866f)), func_2(~(-1i), _wgslsmith_mult_i32(global1.x, global1.x) & global1.x, !vec4<bool>(false, global0.x, arg_0, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * 443f)) + arg_2.x) > -853f);
    let var_1 = Struct_3(select(~min(-8946i, global1.x & global1.x), abs(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(global1.x, global1.x, -8294i)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, global1.x, 1i), vec3<i32>(global1.x, global1.x, -4947i)))), true), Struct_2(arg_1), !select(global0.zx, vec2<bool>(true, true), select(vec2<bool>(true, true), select(global0.yy, global0.xx, true), !global0.xy)));
    global1 = vec2<i32>(-(_wgslsmith_dot_vec3_i32(vec3<i32>(-18187i, 0i, var_1.a), firstTrailingBit(vec3<i32>(global1.x, global1.x, global1.x))) >> (56081u % 32u)), min(countOneBits(var_1.a), -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(global1.x, 2147483647i), ~global1.x, global1.x << (1u % 32u))));
    global0 = !select(vec3<bool>(true, true, any(!vec3<bool>(false, var_0, false))), vec3<bool>(!arg_1.a, true, true), select(select(!vec3<bool>(var_1.c.x, false, arg_1.a), select(vec3<bool>(false, false, true), vec3<bool>(false, true, global2.x), var_0), select(vec3<bool>(arg_0, global2.x, arg_0), vec3<bool>(false, true, false), global2.x)), !vec3<bool>(arg_1.a, var_0, var_1.c.x), !select(vec3<bool>(var_1.b.a.a, true, arg_0), vec3<bool>(true, arg_1.a, false), vec3<bool>(true, false, false))));
    return ~9574i;
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: f32) -> vec3<bool> {
    global0 = vec3<bool>(true, func_2(-2147483647i & _wgslsmith_add_i32(~global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, 0i, 1i), vec3<i32>(global1.x, -38229i, global1.x))), -_wgslsmith_add_i32(global1.x, _wgslsmith_clamp_i32(global1.x, global1.x, global1.x)), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(global0.x, false, global2.x, global0.x)), vec4<bool>(false, all(vec2<bool>(false, global0.x)), !global0.x, func_5(global3[_wgslsmith_index_u32(u_input.a, 14u)], -254f, Struct_4(false, arg_3, vec4<i32>(-1i, 2147483647i, 0i, arg_2)))), vec4<bool>(arg_0 == u_input.a, true, any(vec3<bool>(true, true, global0.x)), all(vec3<bool>(global2.x, true, global2.x))))).a, !(true && any(select(vec4<bool>(false, global2.x, global0.x, true), vec4<bool>(global2.x, true, true, true), vec4<bool>(global0.x, global0.x, global2.x, global0.x)))));
    global0 = vec3<bool>(global2.x, _wgslsmith_f_op_f32(trunc(arg_3)) >= _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 328f)))), global0.x);
    var var_0 = vec3<i32>(select(_wgslsmith_dot_vec2_i32(~(vec2<i32>(0i, arg_2) & vec2<i32>(arg_2, global1.x)), select(vec2<i32>(arg_2, -28646i) ^ vec2<i32>(8877i, 33664i), vec2<i32>(31252i, arg_2), !global0.x)), ~1i, func_2(global1.x, _wgslsmith_add_i32(-16615i, -1i), !(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))).a), arg_2, func_2(_wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, arg_2), ~arg_2), _wgslsmith_clamp_i32(arg_2, 1i, -1i), select(select(vec4<bool>(global2.x, false, global0.x, global0.x), !vec4<bool>(false, true, global2.x, true), !vec4<bool>(false, false, global0.x, true)), !vec4<bool>(true, global0.x, global2.x, false), true)).c.x);
    var_0 = vec3<i32>(reverseBits(global1.x), _wgslsmith_mod_i32(func_2(arg_2, ~(global1.x & 44067i), !select(vec4<bool>(global2.x, true, false, false), vec4<bool>(global2.x, global0.x, true, true), false)).c.x, _wgslsmith_dot_vec2_i32(var_0.yz, -(~vec2<i32>(global1.x, -25468i)))), ~_wgslsmith_sub_i32(0i, ~firstTrailingBit(var_0.x)));
    global3 = array<Struct_1, 14>();
    return vec3<bool>(!(false | ((1i >> (arg_1 % 32u)) < func_2(arg_2, var_0.x, vec4<bool>(global2.x, global2.x, global2.x, global2.x)).c.x)), all(vec4<bool>(func_2(-2147483647i, global1.x, select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, true, false, global0.x), vec4<bool>(false, global0.x, true, true))).a, global2.x, any(global0.yy), global2.x)), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(all(select(func_6(u_input.b.x, 58452u, func_1(global2.x, Struct_1(global0.x, vec3<u32>(4294967295u, 100904u, u_input.a), vec3<u32>(4294967295u, u_input.a, 79091u), -1000f), vec2<f32>(-1075f, 146f), 0u), -1000f), vec3<bool>(func_2(2147483647i, -31718i, vec4<bool>(false, global0.x, true, true)).a, select(global2.x, false, true), !global0.x), func_6(26954u << (u_input.a % 32u), ~u_input.b.x, global1.x ^ global1.x, _wgslsmith_f_op_f32(f32(-1f) * -195f)).x)), global1.x >= global1.x, !global0.x);
    var var_0 = Struct_4((4863u >= u_input.b.x) | !all(select(vec3<bool>(true, true, global0.x), vec3<bool>(true, true, global0.x), global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-979f - -728f)))), select(vec4<i32>(global1.x, -7987i, global1.x, global1.x), countOneBits(vec4<i32>(countOneBits(-2147483647i), -12062i, ~10505i, -18234i)), select(select(vec4<bool>(false, global0.x, true, false), vec4<bool>(global2.x, global2.x, false, true), !vec4<bool>(false, false, global0.x, true)), select(!vec4<bool>(global0.x, global2.x, global0.x, global0.x), select(vec4<bool>(global0.x, true, global2.x, global2.x), vec4<bool>(global0.x, global0.x, true, false), global0.x), !vec4<bool>(false, false, global2.x, false)), !select(vec4<bool>(global0.x, global0.x, global2.x, true), vec4<bool>(global2.x, false, true, true), vec4<bool>(false, true, global0.x, global2.x)))));
    global4 = max(var_0.c.x | _wgslsmith_sub_i32(firstTrailingBit(-9807i), global1.x), firstTrailingBit(-1i));
    let var_1 = u_input.a;
    let var_2 = global1.x;
    let var_3 = abs(48975u);
    global3 = array<Struct_1, 14>();
    var_0 = func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(~(var_0.c.x ^ var_0.c.x), i32(-1i) * -1i), vec2<i32>(-1i, _wgslsmith_mult_i32(~var_0.c.x, -2147483647i))), -18056i, vec4<bool>(global2.x, func_3((vec2<i32>(global1.x, -59349i) ^ vec2<i32>(-2147483647i, -1i)) << (~vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u))), true, func_6(abs(_wgslsmith_sub_u32(u_input.a, u_input.b.x)), 24261u, 1i, _wgslsmith_f_op_f32(min(var_0.b, var_0.b))).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_3, var_1, var_3), vec3<u32>(0u, 4294967295u, 0u)), vec3<u32>(max(21902u, 4294967295u), 37746u, 96744u)), vec3<u32>(var_1, _wgslsmith_add_u32(var_3, 0u), ~_wgslsmith_add_u32(73791u, u_input.a))));
}

