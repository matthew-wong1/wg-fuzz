struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2;

var<private> global2: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

var<private> global3: Struct_2 = Struct_2(vec4<f32>(852f, -649f, 108f, -1038f), vec2<i32>(5547i, 1i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = ~(arg_0.x | ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 1u), reverseBits(arg_0.x)));
    let var_1 = any(arg_1.b.a.wwy);
    return countOneBits(max(~_wgslsmith_mult_vec3_u32(u_input.b.yzx, u_input.b.yxz), u_input.b.zxz));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3) -> f32 {
    let var_0 = global1.b.x;
    global0 = all(!global2[_wgslsmith_index_u32(u_input.c, 8u)]);
    var var_1 = 2020f;
    global0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(func_3(u_input.b.zy, arg_0), ~vec3<u32>(15680u, 4294967295u, u_input.b.x)) >> (u_input.b.x % 32u), u_input.b.x) == min(1u, firstTrailingBit(_wgslsmith_div_u32(u_input.c, 41960u)));
    let var_2 = arg_2.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1989f)) - 820f);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = ~(-_wgslsmith_sub_vec4_i32(min(vec4<i32>(2147483647i, global1.b.x, 2147483647i, u_input.a), -vec4<i32>(0i, 38938i, global1.b.x, arg_3.d.b.x)), vec4<i32>(arg_0.x, firstLeadingBit(global3.b.x), u_input.a, i32(-1i) * -1i)));
    let var_1 = Struct_3(var_0, arg_3.b, _wgslsmith_dot_vec3_i32(arg_3.a.zwz, _wgslsmith_add_vec3_i32(arg_0.yxx ^ -var_0.zzy, ~(~var_0.wzx))), arg_3.d);
    var var_2 = !(false || (_wgslsmith_mult_i32(~arg_0.x, ~(-2147483647i)) > global1.b.x));
    var var_3 = arg_3.b;
    let var_4 = any(select(select(vec4<bool>(true, var_1.b.a.x, select(false, var_1.b.a.x, var_1.b.a.x), var_1.b.a.x & var_1.b.a.x), vec4<bool>(select(true, false, var_1.b.a.x), !var_3.a.x, true, true), select(!vec4<bool>(var_3.a.x, arg_3.b.a.x, var_1.b.a.x, var_3.a.x), vec4<bool>(true, false, var_3.a.x, arg_3.b.a.x), select(var_1.b.a, var_1.b.a, false))), var_3.a, !(!var_3.a)));
    return var_1.d;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = func_4(-vec4<i32>(i32(-1i) * -1i, global1.b.x, select(global1.b.x, 58350i, true) << (4294967295u % 32u), global3.b.x), vec3<f32>(117f, -794f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(2438f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(vec4<i32>(arg_3.b.x, 1i, arg_2, arg_2), Struct_1(vec4<bool>(false, false, true, true)), arg_0.b.x, Struct_2(vec4<f32>(global3.a.x, arg_3.a.x, -2482f, arg_3.a.x), vec2<i32>(-2147483647i, -2147483647i))), vec2<f32>(global3.a.x, 2616f), Struct_3(vec4<i32>(u_input.a, arg_0.b.x, -53417i, arg_2), Struct_1(vec4<bool>(false, true, false, false)), arg_0.b.x, arg_3))) + arg_1), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))))), -360f, Struct_3(~vec4<i32>(arg_0.b.x, ~arg_2, global1.b.x, -56577i), Struct_1(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, true, true))), -(_wgslsmith_dot_vec2_i32(global1.b, vec2<i32>(0i, 1i)) >> (u_input.b.x % 32u)), arg_3));
    var var_1 = 35129u;
    let var_2 = -(countOneBits(_wgslsmith_mult_vec2_i32(func_4(vec4<i32>(u_input.a, 1i, -2147483647i, arg_3.b.x), arg_3.a.zzx, 3176f, Struct_3(vec4<i32>(global3.b.x, -19640i, arg_0.b.x, 8546i), Struct_1(vec4<bool>(true, true, false, true)), u_input.a, Struct_2(vec4<f32>(var_0.a.x, arg_3.a.x, -1000f, 828f), global1.b))).b, arg_3.b)) | arg_3.b);
    var var_3 = vec3<i32>(reverseBits(2147483647i), 2147483647i, _wgslsmith_dot_vec2_i32(~(-global1.b), vec2<i32>(_wgslsmith_div_i32(0i, arg_2) & global1.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global1.b, vec2<i32>(arg_0.b.x, var_2.x)), -2147483647i))));
    let var_4 = Struct_2(global3.a, vec2<i32>(var_3.x, _wgslsmith_div_i32(arg_3.b.x, abs(_wgslsmith_clamp_i32(-2147483647i, -18618i, arg_0.b.x)))));
    return -283f;
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(select(vec4<bool>(false, !arg_2, false, arg_0), !vec4<bool>(arg_0, true, global3.a.x != -1155f, any(global2[_wgslsmith_index_u32(59899u, 8u)])), vec4<bool>(false, any(vec2<bool>(false, true)), false, !any(vec4<bool>(arg_0, true, true, arg_2)))));
    let var_1 = u_input.b.x;
    global2 = array<vec3<bool>, 8>();
    global3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 1391f, -1428f, 102f) + vec4<f32>(316f, -1402f, global1.a.x, 782f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, global3.a.x)), vec4<bool>(true, true, false, false))) - global1.a)), vec2<i32>(u_input.a, global3.b.x));
    global3 = func_4(firstTrailingBit(vec4<i32>(select(-2133i, 1i, true), u_input.a, ~global3.b.x, abs(global1.b.x)) | ~(~vec4<i32>(u_input.a, u_input.a, global3.b.x, -1956i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1036f, -1000f, arg_1.x) + _wgslsmith_f_op_vec3_f32(global3.a.xxz * _wgslsmith_f_op_vec3_f32(-arg_1.yyw))), vec3<f32>(_wgslsmith_f_op_f32(round(global1.a.x)), 472f, _wgslsmith_f_op_f32(sign(arg_1.x)))), -1796f, Struct_3(vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(59057i, -1i, global3.b.x), vec3<i32>(u_input.a, global3.b.x, -2147483647i))), -31911i, ~_wgslsmith_mult_i32(54908i, 1i), global1.b.x), Struct_1(var_0.a), ~global1.b.x, func_4(firstTrailingBit(abs(vec4<i32>(-30343i, 1i, 1i, u_input.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1030f, global3.a.x, arg_1.x)), 1624f, Struct_3(vec4<i32>(global3.b.x, u_input.a, global1.b.x, global1.b.x), var_0, 56495i, func_4(vec4<i32>(-1i, global1.b.x, -14966i, -1721i), arg_1.wwy, global1.a.x, Struct_3(vec4<i32>(-22637i, -1i, global3.b.x, -35240i), Struct_1(vec4<bool>(false, arg_2, var_0.a.x, arg_0)), 2147483647i, Struct_2(vec4<f32>(arg_1.x, 325f, 2317f, arg_1.x), vec2<i32>(global1.b.x, global1.b.x))))))));
    return Struct_1(vec4<bool>(global3.b.x < _wgslsmith_mult_i32(global3.b.x & -15200i, 1i | global1.b.x), true, any(!select(vec2<bool>(var_0.a.x, true), var_0.a.zx, arg_3.x)), true));
}

fn func_6(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = func_5(true, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_2(vec4<f32>(global3.a.x, -404f, 1956f, -415f), global3.b), -1342f, u_input.a, Struct_2(vec4<f32>(683f, global1.a.x, -922f, global1.a.x), global3.b))), _wgslsmith_div_f32(-1397f, -907f), arg_0.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1484f + global1.a.x), _wgslsmith_f_op_f32(floor(global3.a.x)))), _wgslsmith_f_op_f32(func_1(Struct_2(vec4<f32>(-420f, 1980f, 2437f, global1.a.x), vec2<i32>(global1.b.x, -1i)), global3.a.x, u_input.a, Struct_2(global1.a, vec2<i32>(u_input.a, u_input.a))))))), true, vec2<bool>(all(vec4<bool>(any(arg_0.a.yw), true, arg_0.a.x, arg_0.a.x | arg_0.a.x)), arg_0.a.x));
    var var_1 = vec2<bool>(any(vec3<bool>(true, false, false)), !arg_0.a.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(global1.a.yyw, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(744f, 1194f, global1.a.x))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(400f)), _wgslsmith_f_op_f32(-202f + global3.a.x)), arg_0.a.x)), false))));
    var var_3 = global3.b;
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global3.a)) * global3.a), func_4(min(vec4<i32>(global3.b.x | global3.b.x, var_3.x, -19464i, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(0i, global3.b.x, -6393i, 34959i), vec4<i32>(-1i, 1i, global1.b.x, -17113i)) ^ vec4<i32>(9781i, u_input.a, 26357i, var_3.x)), vec3<f32>(_wgslsmith_f_op_f32(-2058f + _wgslsmith_f_op_f32(-420f * global3.a.x)), -2444f, global1.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -715f))), Struct_3(vec4<i32>(_wgslsmith_add_i32(23546i, var_3.x), countOneBits(global3.b.x), 1i, 1i), func_5(true, global1.a, !var_1.x, !arg_0.a.yy), _wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(6311i, u_input.a)), func_4(vec4<i32>(3000i, var_3.x, 0i, -3729i) << (u_input.b % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-var_2), -1000f, Struct_3(vec4<i32>(global3.b.x, u_input.a, var_3.x, -1i), var_0, -5408i, Struct_2(vec4<f32>(-642f, global3.a.x, -417f, global3.a.x), vec2<i32>(u_input.a, var_3.x)))))).b);
    return StorageBuffer(vec2<i32>(firstLeadingBit(-u_input.a), -(~(-2147483647i))), ~(~max(37598u, u_input.c & 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(!(u_input.b.x != 65600u) || true, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.a.x)), _wgslsmith_f_op_f32(global1.a.x * -795f), _wgslsmith_f_op_f32(func_1(Struct_2(vec4<f32>(-864f, -1348f, 348f, -245f), global1.b), -624f, u_input.a, Struct_2(vec4<f32>(global3.a.x, global3.a.x, global3.a.x, -876f), vec2<i32>(2147483647i, global1.b.x)))), global1.a.x))), true, !vec2<bool>(false, global1.b.x >= 33428i)));
}

