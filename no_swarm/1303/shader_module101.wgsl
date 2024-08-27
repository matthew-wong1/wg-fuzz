struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<i32>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_5, 3>;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<vec4<bool>, 14>;

var<private> global4: vec2<f32> = vec2<f32>(-637f, 977f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> f32 {
    var var_0 = ~arg_0.b;
    let var_1 = -vec4<i32>(u_input.a.x, -u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 2147483647i, arg_1.e.e.x, 0i), vec4<i32>(-56469i, -2147483647i, 1963i, 50228i)), -(~u_input.a.x)) & reverseBits(reverseBits(-vec4<i32>(2147483647i, u_input.a.x, -2147483647i, -26673i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_1.e.c, arg_1.e.e.x, u_input.a.x), vec4<i32>(arg_1.e.e.x, -1i, -10504i, -1i))));
    let var_2 = Struct_1(arg_1.e.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-287f)))), 19679u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1179f, 749f, global4.x, -255f), vec4<f32>(1000f, 1727f, global4.x, 2178f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1408f, global4.x, global4.x, global4.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, global4.x, global4.x) + vec4<f32>(545f, -1191f, global4.x, global4.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 2306f, -648f, -355f)), !global3[_wgslsmith_index_u32(arg_0.b, 14u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, 2147f, 229f))))));
    global4 = var_2.d.yx;
    var var_3 = Struct_1(arg_1.a.a, -821f, _wgslsmith_add_u32(max(max(_wgslsmith_dot_vec4_u32(vec4<u32>(35160u, arg_0.b, 4294967295u, arg_1.a.b), vec4<u32>(arg_1.d.x, arg_0.b, arg_0.b, arg_1.e.a.b)), _wgslsmith_add_u32(var_2.c, 52974u)), 1u), _wgslsmith_dot_vec4_u32(~(~arg_1.d), reverseBits(~arg_1.d))), _wgslsmith_f_op_vec4_f32(select(var_2.d, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(global4.x - var_2.b), -1599f, _wgslsmith_f_op_f32(abs(var_2.b))), vec4<f32>(_wgslsmith_f_op_f32(select(var_2.b, global4.x, true)), _wgslsmith_f_op_f32(var_2.b + -184f), -222f, -319f))), arg_1.a.a)));
    return _wgslsmith_f_op_f32(-118f - _wgslsmith_f_op_f32(f32(-1f) * -832f));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    global4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-992f, global4.x) + vec2<f32>(global4.x, global4.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global4.x)))) * vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(global2.x, 1u), Struct_4(arg_2, vec3<bool>(true, arg_0, arg_0), vec4<u32>(arg_2.b, 0u, arg_2.b, arg_2.b), vec4<u32>(13109u, arg_2.b, arg_1, arg_2.b), Struct_3(arg_2, vec4<bool>(false, arg_0, arg_2.a, global2.x), u_input.a.x, Struct_2(arg_0, 0u), u_input.a)))), _wgslsmith_f_op_f32(max(global4.x, _wgslsmith_f_op_f32(323f * 1265f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(535f, global4.x))) - vec2<f32>(global4.x, 958f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-360f, -1364f) - vec2<f32>(-731f, -768f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global4.x) * vec2<f32>(global4.x, global4.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global4.x, -2680f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, 1008f) * vec2<f32>(global4.x, -1023f)))))));
    var var_0 = select(select(vec2<bool>((i32(-1i) * -1i) > u_input.a.x, global2.x), !select(vec2<bool>(true, true), !vec2<bool>(true, global2.x), true), !arg_2.a), !(!vec2<bool>(false, any(vec4<bool>(arg_0, arg_0, false, arg_0)))), all(vec2<bool>(!arg_2.a, _wgslsmith_f_op_f32(exp2(global4.x)) <= _wgslsmith_f_op_f32(ceil(global4.x)))));
    let var_1 = Struct_5(Struct_3(arg_2, global3[_wgslsmith_index_u32(arg_1, 14u)], _wgslsmith_dot_vec2_i32(countOneBits(u_input.a) << (abs(vec2<u32>(70007u, 3971u)) % vec2<u32>(32u)), ~vec2<i32>(-5627i, 2147483647i)), Struct_2(all(select(vec3<bool>(true, arg_2.a, global2.x), vec3<bool>(arg_0, false, arg_0), vec3<bool>(global2.x, true, var_0.x))), 20465u), ~vec2<i32>(u_input.a.x, 2147483647i) | _wgslsmith_sub_vec2_i32(u_input.a, u_input.a)), Struct_3(arg_2, !global3[_wgslsmith_index_u32(3100u, 14u)], u_input.a.x, arg_2, abs(u_input.a)), firstTrailingBit(u_input.a), Struct_3(Struct_2(false, _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_2.b, 31739u), 53931u)), global3[_wgslsmith_index_u32(arg_2.b << (_wgslsmith_sub_u32(arg_2.b << (4294967295u % 32u), arg_1) % 32u), 14u)], reverseBits(firstTrailingBit(0i)) ^ _wgslsmith_add_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), arg_2, select(vec2<i32>(29474i, u_input.a.x), -vec2<i32>(-7876i, -1i), firstTrailingBit(u_input.a.x) >= u_input.a.x)), Struct_1(all(!vec4<bool>(var_0.x, arg_0, false, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1028f * _wgslsmith_f_op_f32(-global4.x)), global4.x), min(arg_2.b, ~max(arg_2.b, arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.x, 2332f, 1937f, 2021f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4.x, -506f, 183f, global4.x))))))));
    let var_2 = var_1.b.a;
    let var_3 = u_input.a.x;
    return Struct_2(any(var_1.d.b.xx), ~_wgslsmith_mod_u32(~(~arg_1), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.a.b, var_1.b.a.b), vec2<u32>(74864u, 1u), vec2<u32>(var_2.b, 54244u)), ~vec2<u32>(1u, arg_2.b))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(global4.x, -1382f, arg_1.a)), arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -621f), -1000f))))) * arg_3);
    var var_1 = Struct_1(func_2(false, arg_1.b, func_2(true, min(~arg_1.b, arg_1.b), func_2(global2.x, ~11981u, arg_1))).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, global4.x)) - _wgslsmith_f_op_f32(select(arg_2, arg_3.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(max(1154f, -802f))))), arg_1.b, _wgslsmith_f_op_vec4_f32(-arg_3));
    var var_2 = var_1.d;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-213f, -803f, !any(!vec3<bool>(global2.x, false, true)))));
    var var_4 = Struct_5(Struct_3(arg_1, !select(select(vec4<bool>(false, false, true, arg_0), vec4<bool>(true, global2.x, arg_1.a, false), false), !vec4<bool>(var_1.a, true, false, arg_0), global3[_wgslsmith_index_u32(~1u, 14u)]), u_input.a.x, Struct_2(all(select(vec4<bool>(true, arg_1.a, global2.x, var_1.a), vec4<bool>(global2.x, true, var_1.a, false), global3[_wgslsmith_index_u32(var_1.c, 14u)])), abs(reverseBits(5371u))), u_input.a), Struct_3(func_2(false, _wgslsmith_mult_u32(~arg_1.b, 27748u >> (var_1.c % 32u)), func_2(true, var_1.c, func_2(arg_1.a, 32679u, Struct_2(true, 11686u)))), global3[_wgslsmith_index_u32(1u, 14u)], ~(-2147483647i), Struct_2(true | !global2.x, arg_1.b), -(max(vec2<i32>(-1i, u_input.a.x), u_input.a) | abs(vec2<i32>(46913i, 19936i)))), countOneBits(reverseBits(_wgslsmith_div_vec2_i32(-u_input.a, -u_input.a))), Struct_3(Struct_2(global2.x, (arg_1.b >> (var_1.c % 32u)) | abs(4294967295u)), !(!vec4<bool>(true, true, var_1.a, false)), ~(-1i), func_2(all(!vec2<bool>(arg_1.a, true)), func_2(arg_0, 0u, func_2(false, var_1.c, arg_1)).b, Struct_2(arg_1.b > var_1.c, 17386u)), reverseBits(u_input.a)), Struct_1(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2203f), _wgslsmith_f_op_f32(-1170f * var_1.b))) - var_1.b), arg_1.b, var_1.d));
    return Struct_3(func_2(var_1.a, 6564u >> (var_4.b.a.b % 32u), func_2(!select(var_4.d.a.a, arg_1.a, true), _wgslsmith_add_u32(arg_1.b, var_4.d.a.b), var_4.b.a)), vec4<bool>(select(!arg_0, var_4.b.b.x != false, ~u_input.a.x < abs(1i)), var_4.e.a, !arg_0, !all(vec3<bool>(arg_0, arg_1.a, var_1.a))), var_4.b.e.x, var_4.b.d, ~(-var_4.d.e));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_5 {
    global0 = _wgslsmith_f_op_f32(exp2(global4.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 861f));
    global4 = vec2<f32>(_wgslsmith_f_op_f32(floor(1685f)), arg_1.x);
    global3 = array<vec4<bool>, 14>();
    var var_0 = func_4(true, func_2(true, ~1u, Struct_2(arg_2, 4294967295u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-138f)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -977f), _wgslsmith_f_op_f32(func_3(func_2(true, 17948u, Struct_2(arg_2, 4294967295u)), Struct_4(Struct_2(false, 1u), vec3<bool>(true, arg_2, arg_2), vec4<u32>(38321u, 4348u, 4294967295u, 1u), vec4<u32>(7569u, 5727u, 0u, 0u), Struct_3(Struct_2(false, 0u), global3[_wgslsmith_index_u32(1u, 14u)], u_input.a.x, Struct_2(arg_2, 1u), u_input.a)))), _wgslsmith_f_op_f32(exp2(arg_1.x)), 156f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.x)), -955f, global4.x, global4.x))), any(vec4<bool>(all(vec2<bool>(true, true)), arg_2, -836f < arg_1.x, false)))));
    return Struct_5(func_4(false & any(var_0.b.zx), func_2(select(var_0.a.a, global2.x, true), 4294967295u ^ (var_0.a.b << (var_0.a.b % 32u)), var_0.a), _wgslsmith_f_op_f32(round(global4.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2650f, 1087f, -1642f, arg_1.x) - vec4<f32>(1620f, global4.x, arg_1.x, -484f)))))), Struct_3(Struct_2(true, _wgslsmith_add_u32(~var_0.a.b, var_0.a.b << (65255u % 32u))), vec4<bool>(any(var_0.b.zz), arg_1.x == _wgslsmith_f_op_f32(-arg_1.x), var_0.b.x, all(select(var_0.b, vec4<bool>(true, global2.x, arg_2, global2.x), global2.x))), max(-59164i, _wgslsmith_div_i32(~(-21668i), ~(-2147483647i))), func_2(arg_2, ~58761u, var_0.a), min(var_0.e, abs(select(arg_0, vec2<i32>(arg_0.x, 2147483647i), true)))), _wgslsmith_mod_vec2_i32(arg_0 | var_0.e, arg_0), func_4(true, func_2(arg_2, 0u, Struct_2(true, ~21202u)), _wgslsmith_f_op_f32(369f * 1275f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-645f, 1164f, arg_1.x, arg_1.x)))), Struct_1((-201f <= _wgslsmith_f_op_f32(-arg_1.x)) | (-u_input.a.x > arg_0.x), arg_1.x, 33498u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1096f, -1133f, arg_1.x, _wgslsmith_f_op_f32(-global4.x)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_5, arg_3: i32) -> vec3<u32> {
    var var_0 = -countOneBits(vec4<i32>(_wgslsmith_sub_i32(~arg_3, abs(34431i)), -1i | u_input.a.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, arg_2.a.e.x), u_input.a.x & 1i), func_1(u_input.a | vec2<i32>(-1i, 1i), vec3<f32>(976f, global4.x, 1372f), arg_2.d.a.a).c.x));
    var var_1 = Struct_4(func_1(_wgslsmith_div_vec2_i32(arg_2.d.e, vec2<i32>(_wgslsmith_add_i32(-8228i, arg_2.c.x), ~0i)), arg_2.e.d.wzw, any(arg_0.xx)).b.a, vec3<bool>(false, true, false), abs(~vec4<u32>(arg_1, 1u, arg_2.e.c, 1u) & abs(vec4<u32>(arg_2.e.c, arg_1, arg_2.e.c, arg_2.a.a.b))) ^ abs(vec4<u32>(~3283u, arg_2.d.d.b, ~1u, arg_2.d.d.b << (arg_2.e.c % 32u))), ~vec4<u32>(abs(arg_2.d.d.b), arg_1 ^ 17384u, arg_1, _wgslsmith_mod_u32(arg_2.d.d.b, 4294967295u)) | ~vec4<u32>(0u, min(0u, arg_2.a.d.b), arg_2.d.d.b, 4294967295u), func_1(func_4(true, func_1(firstLeadingBit(arg_2.b.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-123f, arg_2.e.b, 140f)), true).d.a, _wgslsmith_f_op_f32(-func_1(vec2<i32>(1i, -21094i), vec3<f32>(global4.x, global4.x, -319f), true).e.d.x), arg_2.e.d).e, _wgslsmith_f_op_vec3_f32(select(arg_2.e.d.yxy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.e.d.xzy + arg_2.e.d.zyz) + _wgslsmith_f_op_vec3_f32(-arg_2.e.d.ywy)), _wgslsmith_f_op_f32(func_3(Struct_2(true, arg_2.d.d.b), Struct_4(arg_2.d.d, arg_2.b.b.zyz, vec4<u32>(arg_2.a.d.b, 38608u, arg_1, arg_1), vec4<u32>(4294967295u, arg_1, 65517u, arg_2.a.d.b), arg_2.d))) <= func_1(vec2<i32>(u_input.a.x, 12144i), arg_2.e.d.xxy, true).e.d.x)), false).a);
    var var_2 = ~(~22557u);
    var var_3 = vec3<bool>(func_2(arg_2.b.d.a, 55177u, func_1(vec2<i32>(arg_2.d.c, var_1.e.e.x), _wgslsmith_f_op_vec3_f32(-arg_2.e.d.wzx), arg_0.x).a.a).a & func_2(all(!global3[_wgslsmith_index_u32(arg_1, 14u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(34640u, arg_2.e.c, 31515u, 13108u), vec4<u32>(51442u, 1u, arg_1, 6581u)) & arg_1, func_1(vec2<i32>(2147483647i, 1i), _wgslsmith_f_op_vec3_f32(-arg_2.e.d.xzw), global2.x | var_1.b.x).b.a).a, _wgslsmith_dot_vec4_u32(var_1.d, ~(~vec4<u32>(1u, arg_1, arg_2.b.d.b, var_1.a.b))) <= 76857u, true);
    let var_4 = var_1.e.e.x;
    return ~(vec3<u32>(0u, ~arg_1, _wgslsmith_clamp_u32(9128u, 1u, var_1.c.x)) | var_1.c.www);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, 126f) * 182f)));
    let var_0 = _wgslsmith_mod_vec3_u32(min(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 29783u), vec3<u32>(1904u, 40310u, 0u))), select(func_5(select(vec4<bool>(global2.x, global2.x, true, global2.x), global3[_wgslsmith_index_u32(78544u, 14u)], true), 1u, func_1(u_input.a, vec3<f32>(-226f, global4.x, 863f), global2.x), 1i), vec3<u32>(1u, 1u, 1u), select(!vec3<bool>(true, global2.x, true), !vec3<bool>(global2.x, true, true), vec3<bool>(global2.x, global2.x, global2.x)))), vec3<u32>(4294967295u, firstLeadingBit(37516u), 17807u));
    let var_1 = var_0.x;
    global1 = array<Struct_5, 3>();
    let var_2 = global4.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f));
    var var_3 = -(-firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 43343i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, 54801i, u_input.a.x))) >> (~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 1u, var_0.x), vec4<u32>(46427u, var_0.x, 0u, 4294967295u)), ~vec4<u32>(32162u, 34660u, var_1, 0u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xz, -214f, var_1, var_0);
}

