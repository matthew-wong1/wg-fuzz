struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    var var_0 = 2293f;
    var var_1 = _wgslsmith_clamp_i32(~(~0i), -1i, 1i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_2.a))));
    var var_3 = Struct_1(max(_wgslsmith_dot_vec2_u32(~u_input.d.yx & arg_1.zy, arg_1.xz), u_input.d.x), arg_3.c.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(636f, 2401f), arg_3.d.c)))), vec2<f32>(524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -571f))), !(!select(vec2<bool>(false, false), vec2<bool>(true, arg_2.b.a.x), false)))));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.d.b))))) + 1852f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.b)))))));
    return 39530i;
}

fn func_2() -> Struct_1 {
    var var_0 = firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(-4588i, 18327i), func_3(Struct_2(vec4<bool>(true, false, true, true), 71737u, Struct_1(25547u, 532f, vec2<f32>(627f, -1154f)), Struct_1(u_input.d.x, -1421f, global0[_wgslsmith_index_u32(0u, 26u)]), Struct_1(u_input.b, -713f, vec2<f32>(1652f, 388f))), vec4<u32>(u_input.c.x, 12809u, 0u, u_input.a), Struct_3(vec4<f32>(-1056f, 673f, -177f, 1000f), Struct_2(vec4<bool>(true, false, false, false), u_input.d.x, Struct_1(0u, 933f, vec2<f32>(307f, 1000f)), Struct_1(u_input.b, -285f, vec2<f32>(-205f, 190f)), Struct_1(38616u, 760f, vec2<f32>(1310f, -630f))), Struct_2(vec4<bool>(true, true, false, false), u_input.c.x, Struct_1(75918u, 310f, vec2<f32>(562f, 520f)), Struct_1(u_input.b, 454f, vec2<f32>(-1875f, 1000f)), Struct_1(u_input.c.x, -352f, global0[_wgslsmith_index_u32(0u, 26u)]))), Struct_2(vec4<bool>(true, true, false, false), 58082u, Struct_1(79106u, 389f, global0[_wgslsmith_index_u32(u_input.c.x, 26u)]), Struct_1(u_input.c.x, -537f, global0[_wgslsmith_index_u32(u_input.c.x, 26u)]), Struct_1(u_input.c.x, 361f, vec2<f32>(-128f, 613f))))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 0i, -1i, -1i), vec4<i32>(52010i, 28879i, 2147483647i, -21473i)), ~vec4<i32>(-1i, -2147483647i, -96001i, 2147483647i))) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, u_input.d.x), vec2<u32>(0u, 4294967295u), true), u_input.d.zy), ~83045u) % 32u));
    let var_1 = global0[_wgslsmith_index_u32(~(abs(reverseBits(u_input.a) >> (_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) % 32u)) | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), ~vec3<u32>(32088u, 72068u, 50763u))), 26u)];
    var var_2 = all(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, select(false, true, false), true, false), any(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))));
    var var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2243f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))) - _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(round(var_1.x)), all(vec4<bool>(true, false, false, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.x, -725f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(175f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1378f))), Struct_2(vec4<bool>(true, true, true, true), ~(~(~u_input.b)), Struct_1(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), var_1.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(551f, -636f))))), Struct_1(~_wgslsmith_add_u32(4294967295u, u_input.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1014f) - vec2<f32>(767f, 1560f)))), Struct_1(u_input.d.x, var_1.x, _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, 70382u), 26u)]))), Struct_2(vec4<bool>(false, _wgslsmith_f_op_f32(sign(var_1.x)) > -1659f, false, true), _wgslsmith_sub_u32(u_input.d.x, 88644u), Struct_1(~(u_input.d.x ^ 1u), var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(2648u, 26u)]))), Struct_1(~u_input.c.x, var_1.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(285f, var_1.x), _wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32(0u, 26u)])), select(vec2<bool>(true, false), vec2<bool>(true, false), false)))), Struct_1(0u, var_1.x, global0[_wgslsmith_index_u32(select(~0u, 47906u, true), 26u)])));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_3.a.yyx)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1521f, 850f, -1433f))) * var_3.a.xyy);
    return Struct_1(~_wgslsmith_add_u32(4294967295u, ~var_3.c.b), 1566f, vec2<f32>(var_1.x, var_1.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_2(select(vec4<bool>(!any(vec3<bool>(false, false, true)), true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(max(1577f, arg_1.c.x)) < _wgslsmith_f_op_f32(step(arg_1.c.x, 170f))), select(vec4<bool>(true, true, all(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), false), true), arg_1.a, Struct_1(u_input.c.x, _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(floor(arg_1.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(arg_1.a, 26u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1042f, arg_1.c.x) * vec2<f32>(-2442f, 739f)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(arg_1.c)))))), Struct_1(~arg_1.a, func_2().b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(1072f + arg_1.c.x))))), arg_1);
    let var_1 = ~(2432i << (0u % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(469f * -133f), arg_1.b))));
    global0 = array<vec2<f32>, 26>();
    global0 = array<vec2<f32>, 26>();
    return _wgslsmith_clamp_i32(var_1, _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 1i) ^ (~vec2<i32>(var_1, 0i) >> (firstTrailingBit(vec2<u32>(0u, 12063u)) % vec2<u32>(32u))), countOneBits(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(var_1, 36711i)), -vec2<i32>(var_1, -25362i)))), ~_wgslsmith_add_i32(var_1, _wgslsmith_div_i32(var_1 & var_1, ~var_1)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3) -> f32 {
    global0 = array<vec2<f32>, 26>();
    var var_0 = ~_wgslsmith_add_i32(func_4(u_input.c.xxz, func_2()), 1i >> (_wgslsmith_mult_u32(arg_0, 4294967295u) % 32u)) | -_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i, 0i, 18809i, 0i)));
    let var_1 = arg_2.b.c;
    let var_2 = arg_2;
    var_0 = 1i;
    return -1487f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 26>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(780f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(946f - -599f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1576f - -1337f), _wgslsmith_f_op_f32(-398f * 128f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c.x, u_input.c.xw, Struct_3(vec4<f32>(659f, 1967f, -121f, -1617f), Struct_2(vec4<bool>(true, false, true, false), u_input.a, Struct_1(u_input.c.x, 1126f, global0[_wgslsmith_index_u32(4294967295u, 26u)]), Struct_1(u_input.a, 1043f, global0[_wgslsmith_index_u32(44814u, 26u)]), Struct_1(4246u, 483f, vec2<f32>(-426f, -199f))), Struct_2(vec4<bool>(true, false, true, true), u_input.a, Struct_1(u_input.d.x, -1144f, global0[_wgslsmith_index_u32(u_input.a, 26u)]), Struct_1(u_input.b, 595f, vec2<f32>(-107f, 574f)), Struct_1(0u, -152f, global0[_wgslsmith_index_u32(1u, 26u)]))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1693f), 467f))))));
    global0 = array<vec2<f32>, 26>();
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(101f, _wgslsmith_f_op_f32(f32(-1f) * -144f), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1555f, _wgslsmith_f_op_f32(f32(-1f) * -1211f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -179f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1822f, var_0.x, var_0.x), vec4<f32>(var_0.x, 2274f, -876f, -218f), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1314f, 648f, var_0.x, -906f), vec4<f32>(-1171f, var_0.x, 207f, var_0.x)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(325f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1047f) - _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(822f, var_0.x, -269f, var_0.x), vec4<f32>(751f, var_0.x, 665f, 462f), vec4<bool>(false, false, false, true)))))))), u_input.a, 19748u);
}

