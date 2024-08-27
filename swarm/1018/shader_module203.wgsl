struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_3,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -10654i;

var<private> global1: vec2<f32> = vec2<f32>(-1359f, 971f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> bool {
    return arg_1;
}

fn func_3(arg_0: u32) -> vec4<f32> {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) - _wgslsmith_f_op_f32(max(global1.x, global1.x))) + global1.x), -521f));
    global0 = u_input.a.x;
    global0 = -reverseBits(i32(-1i) * -51236i);
    let var_0 = Struct_4(~vec2<u32>(arg_0, ~arg_0), Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)), countOneBits(vec4<i32>(-6475i, u_input.a.x, -8526i, u_input.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(207f, -1000f, global1.x, -681f), vec4<f32>(global1.x, -427f, global1.x, global1.x), vec4<bool>(true, false, true, false)))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, global1.x))), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false), u_input.c.zxx, vec4<i32>(u_input.a.x, u_input.c.x, u_input.b, -30666i) ^ u_input.c, global1.x))), Struct_3(Struct_2(global1.x, u_input.c, vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, -217f)), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(-global1.x)), Struct_1(vec2<f32>(global1.x, global1.x), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), reverseBits(u_input.a), firstLeadingBit(u_input.c), -798f))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(35217u, 31596u, arg_0, 15983u), vec4<u32>(arg_0, arg_0, 4294967295u, 41252u)), arg_0), Struct_2(313f, u_input.c, vec4<f32>(270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(904f + -1244f) * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, global1.x, true)) * global1.x), _wgslsmith_f_op_f32(-global1.x)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(global1.x)), -657f), vec4<bool>(true, true, true, true), max(vec3<i32>(u_input.b, -11878i, -1i), vec3<i32>(0i, u_input.b, u_input.c.x)), min(-u_input.c, vec4<i32>(u_input.c.x, u_input.b, u_input.b, -2147483647i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x - -728f))))));
    var var_1 = Struct_3(var_0.c.a);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-632f, 1000f, _wgslsmith_f_op_f32(-var_0.b.a.d.a.x), _wgslsmith_f_op_f32(global1.x + -1205f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, 1109f, 263f, 624f)) - _wgslsmith_f_op_vec4_f32(select(var_1.a.c, vec4<f32>(var_1.a.d.a.x, 986f, -718f, -759f), false)))) + vec4<f32>(_wgslsmith_f_op_f32(576f - 262f), var_0.c.a.d.a.x, var_1.a.a, 1f)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    global1 = arg_0.a.d.a;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-global1.x), arg_0.a.a);
    var var_0 = select(~vec3<i32>(-1748i, -1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.a.b.zw, vec2<i32>(arg_1.x, 51475i)), arg_3.d.zx)), abs(vec3<i32>(i32(-1i) * -40333i, i32(-1i) * -22999i, -1i) ^ firstLeadingBit(arg_1)), select(arg_2, !select(arg_2, select(arg_3.b.zwz, vec3<bool>(arg_2.x, false, false), vec3<bool>(true, arg_3.b.x, true)), all(vec3<bool>(false, false, false))), !arg_0.a.d.b.x));
    let var_1 = 60710u == _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(1u, 93817u, 45864u, 46876u)), _wgslsmith_div_u32(102299u, 39716u), ~18070u)));
    let var_2 = vec4<u32>(firstLeadingBit(~1u), abs(~_wgslsmith_mult_u32(~68956u, 1u)), 1u, 43465u);
    return arg_1.x;
}

fn func_2(arg_0: u32) -> vec3<i32> {
    var var_0 = !(~_wgslsmith_div_i32(2147483647i, u_input.b) == u_input.b);
    global0 = func_4(Struct_3(Struct_2(global1.x, u_input.c, _wgslsmith_f_op_vec4_f32(func_3(1u)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(132f, global1.x)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.a.x, -1564i), u_input.c.wxy), reverseBits(vec4<i32>(0i, u_input.b, -35820i, u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -871f)))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), max(select(vec3<i32>(-1i, -3331i, 46449i), u_input.c.xzz, vec3<bool>(true, true, true)), _wgslsmith_div_vec3_i32(firstLeadingBit(u_input.c.zyw), _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(u_input.b, 45432i, -2147483647i))))), vec3<bool>(all(vec4<bool>(func_1(vec2<f32>(-967f, global1.x), false), true, false, func_1(vec2<f32>(global1.x, global1.x), true))), ~(arg_0 | 1u) >= 6604u, all(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 569f)), vec4<bool>(true, true, true, true), ~(-u_input.a), ~u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(~4294967295u)).x)));
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(439f, global1.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, 1316f))))) * vec2<f32>(-1128f, global1.x))));
    var var_1 = _wgslsmith_add_vec3_u32(countOneBits(abs(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 4294967295u, 115241u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0, arg_0), vec3<u32>(arg_0, arg_0, 114760u))))), vec3<u32>(~arg_0 << (abs(61389u) % 32u), arg_0, 51139u >> ((_wgslsmith_mod_u32(arg_0, 50314u) & 1u) % 32u)));
    var var_2 = Struct_4(_wgslsmith_sub_vec2_u32(var_1.zy, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 39781u), vec2<u32>(var_1.x, 62081u)), _wgslsmith_sub_vec2_u32(var_1.xy, var_1.yz)) << (~_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 6534u), var_1.zz) % vec2<u32>(32u))), Struct_3(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + global1.x))), vec4<i32>(1i, abs(u_input.b), u_input.a.x, func_4(Struct_3(Struct_2(global1.x, u_input.c, vec4<f32>(316f, 220f, 473f, global1.x), Struct_1(vec2<f32>(global1.x, -852f), vec4<bool>(true, true, false, true), vec3<i32>(-61996i, u_input.a.x, u_input.b), vec4<i32>(-11395i, 2147483647i, -302i, -1i), global1.x))), vec3<i32>(u_input.b, u_input.c.x, -57938i), vec3<bool>(false, false, true), Struct_1(vec2<f32>(global1.x, -442f), vec4<bool>(true, false, true, true), vec3<i32>(2147483647i, -53794i, u_input.a.x), u_input.c, -166f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, global1.x, global1.x, 1117f)))), Struct_1(vec2<f32>(-209f, global1.x), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), ~u_input.c.ywx, min(vec4<i32>(u_input.b, u_input.a.x, 63485i, -540i), u_input.c), _wgslsmith_f_op_vec4_f32(func_3(13161u)).x))), Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global1.x)))), u_input.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 155f, 413f)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -679f) - vec2<f32>(-364f, global1.x)), vec4<bool>(true, true, true, true), select(vec3<i32>(1i, -1i, u_input.b), u_input.c.xzy, vec3<bool>(false, true, true)), ~vec4<i32>(u_input.c.x, u_input.b, 0i, u_input.b), _wgslsmith_f_op_f32(-255f + 317f)))), countOneBits(firstTrailingBit(var_1.zy)), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3(arg_0)).x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global1.x)), 1538f, true)), any(vec4<bool>(false, false, false, false)))), vec4<i32>(u_input.b, ~u_input.a.x, firstLeadingBit(~u_input.b), min(u_input.a.x, ~(-1i))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec2_u32(var_1.xz, vec2<u32>(var_1.x, arg_0)))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-195f, global1.x)), vec4<bool>(true, true, true, true), vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x), select(u_input.c, vec4<i32>(-2147483647i, 28904i, 43072i, u_input.a.x), false) >> (vec4<u32>(var_1.x, 18010u, var_1.x, 4294967295u) % vec4<u32>(32u)), -113f)));
    return _wgslsmith_add_vec3_i32(vec3<i32>(max(-2147483647i, i32(-1i) * -u_input.c.x), -31963i, 1i << (arg_0 % 32u)), ~(-max(vec3<i32>(var_2.c.a.d.d.x, var_2.b.a.d.d.x, 2147483647i) ^ u_input.c.zyz, ~vec3<i32>(-2147483647i, -2147483647i, -27222i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(37625u, firstTrailingBit(0u), 1u), select(_wgslsmith_clamp_u32(23932u, 66479u, ~583u) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 2514u), vec2<u32>(51622u, 1u))) % 32u), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 4294967295u, 30796u)), max(vec3<u32>(1u, 73564u, 4294967295u), vec3<u32>(3687u, 81040u, 4294967295u))), func_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-133f, global1.x))), true)));
    var var_1 = u_input.b;
    let var_2 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(~var_0.x, ~39921u), var_0);
    global0 = u_input.b & 0i;
    var_1 = u_input.b;
    var var_3 = _wgslsmith_mod_u32(abs(var_2.x), var_0.x & 0u);
    let x = u_input.a;
    s_output = StorageBuffer(~44502u, _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(-1273i, u_input.b, -32873i, u_input.c.x) << (vec4<u32>(1u, var_2.x, 46772u, var_0.x) % vec4<u32>(32u))), u_input.c), reverseBits(vec2<i32>(-45774i, _wgslsmith_add_i32(u_input.a.x, 2147483647i) << (select(52572u, 1u, false) % 32u))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(2792f + global1.x)))), _wgslsmith_f_op_f32(min(global1.x, global1.x)), global1.x), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(-u_input.c.wyx, func_2(var_0.x)) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(47870u, var_2.x, var_2.x), firstLeadingBit(vec3<u32>(36279u, var_2.x, 41038u))) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, -(~(-1i)), u_input.a.x), ~_wgslsmith_mod_vec3_i32(~u_input.c.xyy, u_input.c.wzw ^ u_input.a)));
}

