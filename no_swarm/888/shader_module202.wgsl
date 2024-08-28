struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: u32,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_3,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(-239f, 705f), vec2<f32>(-1603f, -2191f), vec2<f32>(117f, 830f), vec2<f32>(2128f, -1593f), vec2<f32>(153f, -195f), vec2<f32>(-602f, 209f), vec2<f32>(-627f, 1120f), vec2<f32>(-577f, 1095f), vec2<f32>(-1724f, -1000f), vec2<f32>(744f, 1274f), vec2<f32>(122f, 741f), vec2<f32>(-396f, 541f), vec2<f32>(-1227f, 544f), vec2<f32>(509f, -1000f), vec2<f32>(-635f, 247f), vec2<f32>(-718f, 725f), vec2<f32>(2201f, -739f));

var<private> global2: i32;

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(-1298f), Struct_2(1000f), Struct_2(-1111f), Struct_2(-111f), Struct_2(461f), Struct_2(1870f), Struct_2(166f), Struct_2(1000f), Struct_2(-1601f), Struct_2(552f), Struct_2(-684f), Struct_2(-1052f));

var<private> global4: array<vec3<f32>, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3) -> vec2<bool> {
    global3 = array<Struct_2, 12>();
    let var_0 = arg_0.d;
    var var_1 = arg_0.d;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1087f, 749f, -1231f)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.a, 410f, arg_0.d.a), global4[_wgslsmith_index_u32(4294967295u, 25u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.a, var_1.a, var_0.a)))), global4[_wgslsmith_index_u32(arg_2.a.x, 25u)], select(select(!vec3<bool>(true, arg_0.b, true), !vec3<bool>(arg_0.b, arg_0.b, arg_0.b), select(vec3<bool>(false, false, false), vec3<bool>(global0.x, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, false, arg_0.b))), !vec3<bool>(arg_0.b, false, false), global0.x))));
    global3 = array<Struct_2, 12>();
    return global0.zz;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> u32 {
    global1 = array<vec2<f32>, 17>();
    let var_0 = vec2<bool>(global0.x, !arg_1.x);
    global1 = array<vec2<f32>, 17>();
    let var_1 = Struct_3(vec4<u32>(u_input.a.x, u_input.b, 1u, 17124u) << ((abs(~u_input.a) & _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 60664u, 51767u, u_input.b)), _wgslsmith_div_vec4_u32(u_input.a, u_input.a))) % vec4<u32>(32u)));
    var var_2 = Struct_3(var_1.a);
    return u_input.c ^ max(u_input.c << (var_1.a.x % 32u), ~(~abs(var_1.a.x)));
}

fn func_2() -> Struct_4 {
    global4 = array<vec3<f32>, 25>();
    let var_0 = _wgslsmith_clamp_u32(1u, func_4(global3[_wgslsmith_index_u32(min(1u, ~u_input.a.x), 12u)], func_3(Struct_4(~u_input.c, all(vec3<bool>(true, global0.x, false)), countOneBits(31086u), global3[_wgslsmith_index_u32(u_input.c, 12u)], _wgslsmith_f_op_f32(607f - -182f)), ~0u, Struct_3(~vec4<u32>(37147u, u_input.a.x, 4294967295u, u_input.a.x)))), abs(countOneBits(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a))) & u_input.b);
    global1 = array<vec2<f32>, 17>();
    let var_1 = abs(vec4<u32>(_wgslsmith_sub_u32(73644u, abs(~var_0)), max(var_0, select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.a.x, 23987u), u_input.a.zwz), all(vec4<bool>(global0.x, true, global0.x, global0.x)))), 41230u, 53131u));
    global4 = array<vec3<f32>, 25>();
    return Struct_4(u_input.b, _wgslsmith_mult_i32(u_input.e, u_input.d) > _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i) ^ reverseBits(vec2<i32>(u_input.d, u_input.e)), vec2<i32>(_wgslsmith_add_i32(u_input.e, 6418i), firstTrailingBit(-2147483647i))), u_input.b, Struct_2(1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1351f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2281f * -1414f), -356f))))));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = Struct_2(arg_0.d.a);
    let var_1 = _wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(min(~arg_2, countOneBits(arg_2)), vec4<i32>(arg_2.x | arg_2.x, arg_2.x, arg_2.x, 20107i))), _wgslsmith_mult_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, -2147483647i, u_input.d, u_input.e), vec4<i32>(-1i, arg_2.x, 11861i, 24622i) >> (u_input.a % vec4<u32>(32u)), arg_2), ~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(arg_2, arg_2), _wgslsmith_add_vec4_i32(arg_2, arg_2))));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(670f, 202f, arg_0.d.a, var_0.a), vec4<f32>(886f, 1158f, var_0.a, arg_0.d.a), select(vec4<bool>(global0.x, arg_0.b, false, arg_0.b), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(arg_0.b, true, global0.x, false)))))))));
    let var_3 = arg_0.b;
    var var_4 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(7345i, u_input.e >> (36337u % 32u)), arg_2.x), abs(arg_2.ww));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_2)));
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = min(reverseBits(_wgslsmith_dot_vec3_i32(~arg_0.xxz, vec3<i32>(-5518i, u_input.e, -34608i) & arg_0.wxw) ^ arg_0.x), u_input.d);
    global2 = 0i | firstTrailingBit(-13880i);
    global0 = !vec3<bool>(true, !global0.x, true);
    let var_1 = true;
    var var_2 = Struct_3(u_input.a);
    return func_2().d;
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> Struct_5 {
    global0 = select(vec3<bool>(func_3(func_2(), func_4(Struct_2(862f), select(global0.yy, global0.xx, arg_0)), arg_3).x, true, all(vec4<bool>(global0.x, true, true, global0.x))), select(select(!(!vec3<bool>(arg_2.b, false, arg_2.b)), vec3<bool>(true, any(vec2<bool>(global0.x, false)), -74167i >= u_input.e), vec3<bool>(global0.x, any(global0.zz), arg_2.b)), select(vec3<bool>(global0.x | true, true, any(vec3<bool>(arg_0.x, true, arg_2.b))), vec3<bool>(arg_0.x, !global0.x, true), select(vec3<bool>(arg_0.x, true, arg_2.b), select(vec3<bool>(arg_2.b, true, arg_2.b), vec3<bool>(false, false, global0.x), vec3<bool>(arg_0.x, arg_2.b, false)), all(vec3<bool>(true, true, false)))), global0.x), !(!select(vec3<bool>(false, false, true), vec3<bool>(arg_0.x, true, arg_0.x), any(vec4<bool>(true, false, arg_0.x, false)))));
    global2 = ~u_input.e;
    var var_0 = !(!any(vec4<bool>(true, arg_1.a.x <= 2129u, true, false)));
    let var_1 = vec2<bool>(arg_2.b, !global0.x);
    var var_2 = arg_0.x;
    return Struct_5(u_input.e, Struct_4(arg_1.a.x, !(!(!var_1.x)), arg_2.a, arg_2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_3(_wgslsmith_add_vec4_u32(vec4<u32>(71488u, firstTrailingBit(arg_2.a), arg_2.a, 793u), ~vec4<u32>(0u, arg_3.a.x, 0u, 1u))), select(select(select(vec3<bool>(var_1.x, true, global0.x), vec3<bool>(arg_2.b, var_1.x, global0.x), !vec3<bool>(global0.x, arg_0.x, var_1.x)), select(select(vec3<bool>(false, arg_2.b, true), vec3<bool>(false, arg_2.b, true), vec3<bool>(false, global0.x, global0.x)), vec3<bool>(true, var_1.x, false), var_1.x), false), select(select(vec3<bool>(true, true, true), !vec3<bool>(var_1.x, arg_0.x, false), vec3<bool>(true, true, var_1.x)), vec3<bool>(all(vec2<bool>(arg_0.x, arg_0.x)), global0.x, all(vec4<bool>(global0.x, true, arg_2.b, arg_2.b))), select(vec3<bool>(global0.x, var_1.x, global0.x), vec3<bool>(false, false, arg_0.x), func_2().b)), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, arg_2.b, arg_2.b), vec3<bool>(arg_0.x, false, arg_2.b)), vec3<bool>(false, false, arg_2.b), select(vec3<bool>(false, true, true), vec3<bool>(false, arg_2.b, global0.x), vec3<bool>(false, global0.x, false))), select(vec3<bool>(false, true, true), !vec3<bool>(global0.x, false, var_1.x), false), !(!vec3<bool>(global0.x, true, var_1.x)))), arg_2.d.a);
}

fn func_1() -> Struct_3 {
    let var_0 = func_7(vec2<bool>(!(_wgslsmith_f_op_f32(min(781f, -653f)) < _wgslsmith_f_op_f32(ceil(282f))), global0.x), Struct_3(u_input.a), Struct_4(~(~u_input.a.x), false, 72383u >> (~4294967295u % 32u), func_6(~vec4<i32>(u_input.d, u_input.d, 189i, 0i), _wgslsmith_f_op_vec4_f32(func_5(func_2(), reverseBits(43363u), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, u_input.e, -4043i, u_input.d), vec4<i32>(u_input.e, 39147i, -2147483647i, u_input.d), vec4<i32>(-1i, 3866i, 31980i, u_input.e)), Struct_3(u_input.a)))), 1023f), Struct_3(~(vec4<u32>(u_input.c, 22477u, 57945u, 1u) ^ u_input.a)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, var_0.b.e)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(858f)))), var_0.b.e, _wgslsmith_f_op_f32(sign(1573f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.d.a * var_0.e), var_0.b.d.a)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(func_5(func_7(vec2<bool>(!var_0.d.x, true), func_7(func_7(var_0.d.xx, var_0.c, var_0.b, Struct_3(var_0.c.a)).d.yx, func_7(var_0.d.zx, func_7(vec2<bool>(true, var_0.d.x), var_0.c, var_0.b, var_0.c).c, func_7(var_0.d.zz, Struct_3(u_input.a), Struct_4(10385u, global0.x, var_0.b.c, Struct_2(1644f), -1000f), Struct_3(var_0.c.a)).b, Struct_3(var_0.c.a)).c, Struct_4(4294967295u, func_3(Struct_4(1u, true, 1u, Struct_2(var_0.b.e), var_0.b.e), 33966u, Struct_3(u_input.a)).x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.a, var_0.b.c, 40826u), u_input.a.zww), var_0.b.d, -1264f), var_0.c).c, var_0.b, var_0.c).b, (1u & (~23506u & (u_input.b << (u_input.b % 32u)))) & ~_wgslsmith_add_u32(63359u, 1u), abs(~(~vec4<i32>(34360i, u_input.e, -13620i, -2147483647i)) >> (var_0.c.a % vec4<u32>(32u))), Struct_3(~countOneBits(var_0.c.a) & vec4<u32>(min(var_0.b.c, var_0.c.a.x), ~4294967295u, ~20304u, 1u))));
    global4 = array<vec3<f32>, 25>();
    let var_3 = false;
    return func_7(func_7(vec2<bool>(true, all(!vec4<bool>(false, var_0.d.x, var_0.d.x, var_3))), Struct_3(u_input.a), func_7(vec2<bool>(true, global0.x), func_7(var_0.d.yy, var_0.c, func_7(vec2<bool>(true, true), Struct_3(vec4<u32>(41322u, 1u, 30133u, 1u)), Struct_4(1u, var_3, 1u, Struct_2(-669f), var_0.b.e), var_0.c).b, func_7(vec2<bool>(global0.x, false), var_0.c, var_0.b, var_0.c).c).c, Struct_4(firstLeadingBit(u_input.b), true, u_input.a.x << (u_input.c % 32u), Struct_2(var_0.b.e), var_1.x), Struct_3(vec4<u32>(1u, 1u, u_input.c, u_input.b))).b, Struct_3(_wgslsmith_div_vec4_u32(~u_input.a, ~var_0.c.a))).d.zz, Struct_3(select(~(vec4<u32>(u_input.c, 0u, var_0.b.c, var_0.c.a.x) ^ var_0.c.a), ~abs(vec4<u32>(var_0.c.a.x, var_0.b.c, var_0.b.c, 4294967295u)), (u_input.d >= 1i) && true)), var_0.b, var_0.c).c;
}

fn func_8(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_4 {
    global1 = array<vec2<f32>, 17>();
    let var_0 = func_1();
    var var_1 = Struct_4((((24927u << (u_input.a.x % 32u)) & ~arg_2.a.x) << (abs(firstLeadingBit(18925u)) % 32u)) ^ _wgslsmith_div_u32(~min(0u, 55360u), 12173u), false, 9840u, global3[_wgslsmith_index_u32(u_input.c, 12u)], func_7(!arg_1.xw, arg_2, Struct_4(var_0.a.x, global0.x | global0.x, 1u, func_7(global0.zz, arg_2, func_2(), func_7(arg_1.yw, arg_2, Struct_4(1u, false, arg_2.a.x, global3[_wgslsmith_index_u32(0u, 12u)], 572f), var_0).c).b.d, _wgslsmith_f_op_f32(abs(arg_0))), Struct_3(var_0.a)).e);
    var_1 = func_2();
    var_1 = func_2();
    return Struct_4(arg_2.a.x, any(arg_1), _wgslsmith_mod_u32(1u, ~1u) >> (u_input.c % 32u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1159f)) * _wgslsmith_f_op_f32(sign(-1122f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1638f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(191f * 1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(53828u, 13115u, 78442u), 25u)]);
    var var_2 = func_8(_wgslsmith_f_op_f32(sign(193f)), vec4<bool>(true && global0.x, true, !(~var_0.a.x < 1u), true), func_1());
    let var_3 = var_2.b && global0.x;
    var_2 = func_7(global0.yz, Struct_3(vec4<u32>(firstTrailingBit(var_0.a.x), ~min(var_0.a.x, 4294967295u), u_input.c, ~countOneBits(14879u))), Struct_4(46386u, (var_2.c ^ func_8(var_1.x, vec4<bool>(true, var_3, var_3, false), Struct_3(var_0.a)).c) > u_input.b, 0u & var_0.a.x, Struct_2(var_2.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(340f, -619f, var_2.b))))), func_7(select(vec2<bool>(false, false), func_7(!global0.zy, func_7(vec2<bool>(true, false), Struct_3(var_0.a), Struct_4(u_input.a.x, var_2.b, var_0.a.x, Struct_2(var_2.e), 237f), Struct_3(var_0.a)).c, func_2(), func_1()).d.yz, !func_7(global0.xz, Struct_3(vec4<u32>(1u, 36828u, var_0.a.x, 1u)), Struct_4(var_0.a.x, false, var_2.a, var_2.d, -476f), Struct_3(vec4<u32>(4294967295u, 35564u, 24012u, u_input.b))).d.zy), Struct_3(u_input.a), Struct_4(~4294967295u, _wgslsmith_f_op_f32(var_2.d.a + var_1.x) >= -593f, var_2.a ^ u_input.b, var_2.d, var_1.x), Struct_3(vec4<u32>(max(u_input.c, var_0.a.x), _wgslsmith_div_u32(u_input.a.x, 0u), var_2.c, _wgslsmith_div_u32(7552u, var_0.a.x)))).c).b;
    var var_4 = global3[_wgslsmith_index_u32(~(~(_wgslsmith_mult_u32(var_2.a, min(26054u, 95721u)) | _wgslsmith_sub_u32(~4294967295u, 4294967295u >> (u_input.c % 32u)))), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(select(-2147483647i, _wgslsmith_mod_i32(2147483647i, 1i), func_2().b), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, -1i), _wgslsmith_div_vec2_i32(vec2<i32>(-36612i, u_input.d), vec2<i32>(u_input.d, u_input.d))), vec2<i32>(u_input.e, 0i | u_input.e))));
}

