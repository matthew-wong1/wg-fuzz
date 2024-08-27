struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

var<private> global2: Struct_1;

var<private> global3: vec4<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = 10876u;
    global0 = true;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(global2.b.x + -1561f), -1069f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1035f + arg_1.x) * _wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(116f, _wgslsmith_f_op_f32(arg_1.x - arg_1.x))));
    global2 = Struct_1(countOneBits(u_input.e.wx), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -1419f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(-arg_1.x)) * global2.b.x), 1247f), _wgslsmith_add_i32(-2079i, _wgslsmith_sub_i32(0i, 25773i)), var_0);
    var var_2 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - global2.b.x))), _wgslsmith_f_op_f32(-global2.b.x), 218f);
    return Struct_1(_wgslsmith_div_vec2_u32(countOneBits(global2.a), ~global2.a), var_1.ywx, _wgslsmith_sub_i32(~countOneBits(~u_input.b.x), ~global2.c), ~_wgslsmith_add_u32(4294967295u, firstTrailingBit(abs(global2.a.x))));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> f32 {
    global2 = Struct_1(_wgslsmith_mod_vec2_u32(~(arg_2.a ^ global2.a) ^ ~_wgslsmith_mod_vec2_u32(arg_2.a, vec2<u32>(arg_2.d, 1u)), abs(~(vec2<u32>(132367u, 49238u) ^ global2.a))), global2.b, 1i, func_2(arg_0.wz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, arg_2.b.x, global2.b.x)) + _wgslsmith_f_op_vec3_f32(arg_2.b + arg_2.b))).a.x & u_input.d.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -250f);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32) -> Struct_1 {
    global0 = !all(!(!vec4<bool>(arg_0.b, false, false, true)));
    global0 = abs(41972u) == _wgslsmith_add_u32(global2.d, 0u);
    let var_0 = global3.xwy;
    global2 = Struct_1(func_2(select(!(!vec2<bool>(false, arg_0.b)), vec2<bool>(true, true), select(false, true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-236f, _wgslsmith_f_op_f32(max(arg_2, -3097f)), _wgslsmith_f_op_f32(arg_2 * arg_2)))).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1225f, 477f, arg_2)), vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1706f), 448f)))), min(u_input.a, u_input.b.x), ~(~global2.a.x));
    global3 = vec4<u32>(1u, _wgslsmith_div_u32(1u, 4294967295u), firstLeadingBit(u_input.d.x), reverseBits(~min(abs(1u), func_2(vec2<bool>(arg_0.b, arg_0.b), vec3<f32>(-1078f, arg_2, 1284f)).a.x)));
    return func_2(!select(select(vec2<bool>(false, arg_0.b), vec2<bool>(arg_0.b, arg_0.b), select(vec2<bool>(true, false), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, arg_0.b))), select(vec2<bool>(arg_0.b, arg_0.b), !vec2<bool>(arg_0.b, arg_0.b), arg_0.b), vec2<bool>(false, true)), func_2(!select(select(vec2<bool>(false, arg_0.b), vec2<bool>(arg_0.b, arg_0.b), arg_0.b), vec2<bool>(true, false), vec2<bool>(arg_0.b, false)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0.a.x, -662f)))), arg_2, _wgslsmith_f_op_f32(-1563f - _wgslsmith_f_op_f32(f32(-1f) * -333f)))).b);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = u_input.e.x;
    let var_1 = -(~vec2<i32>(_wgslsmith_dot_vec2_i32(arg_3, firstTrailingBit(arg_1.b.zx)), firstTrailingBit(-2147483647i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(955f, global2.b.x, 1130f, arg_2.b.x) * vec4<f32>(arg_2.b.x, global2.b.x, 382f, global2.b.x)) * vec4<f32>(-1745f, 740f, -1620f, 764f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1415f, 517f, 769f, -891f))) * _wgslsmith_div_vec4_f32(vec4<f32>(global2.b.x, arg_2.b.x, global2.b.x, arg_2.b.x), vec4<f32>(-427f, -1977f, -691f, arg_2.b.x)))))));
    let var_3 = arg_2.b.x;
    global2 = arg_2;
    return arg_2;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = arg_2.wz;
    global3 = u_input.e;
    global2 = func_5(~(~43013u), Struct_2(arg_3.c, ~select(~vec4<i32>(arg_3.c, 21358i, arg_3.c, global2.c), vec4<i32>(0i, global2.c, 13556i, arg_3.c), vec4<bool>(true, false, arg_2.x, false))), func_4(arg_1, vec2<u32>(reverseBits(~arg_0.x), global3.x), _wgslsmith_f_op_f32(func_3(arg_2, true, func_2(arg_2.zx, global2.b)))), vec2<i32>(arg_3.c, arg_3.c & global2.c));
    let var_1 = Struct_2(global2.c, firstTrailingBit(abs(_wgslsmith_div_vec4_i32(vec4<i32>(32875i, arg_3.c, 7412i, u_input.b.x), vec4<i32>(-35345i, arg_3.c, arg_3.c, -16516i)) << ((vec4<u32>(arg_0.x, 6932u, 1u, arg_0.x) ^ u_input.e) % vec4<u32>(32u)))));
    let var_2 = vec4<u32>(9538u, select(arg_0.x, ~(~(~arg_0.x)), arg_2.x), arg_3.a.x, arg_0.x);
    return max(_wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_clamp_i32(u_input.b.x, -92146i, -26554i), reverseBits(-1i) | _wgslsmith_div_i32(-2147483647i, arg_3.c), u_input.a), _wgslsmith_clamp_vec3_i32((var_1.b.ywy << (vec3<u32>(arg_0.x, arg_0.x, var_2.x) % vec3<u32>(32u))) << (vec3<u32>(31271u, 4294967295u, 23405u) % vec3<u32>(32u)), min(vec3<i32>(arg_3.c, -59117i, var_1.a), vec3<i32>(arg_3.c, arg_3.c, 2147483647i)), countOneBits(_wgslsmith_sub_vec3_i32(var_1.b.wzy, vec3<i32>(-5795i, -53698i, global2.c))))), arg_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.b.x, -1061f)), _wgslsmith_f_op_f32(f32(-1f) * -834f)))))));
    let var_2 = ~vec4<i32>(select(global2.c, -1i, 0i <= func_1(vec4<u32>(0u, 4294967295u, global3.x, 3180u), Struct_3(vec4<f32>(-1041f, var_1, 2379f, 423f), false), vec4<bool>(true, false, true, false), Struct_1(vec2<u32>(40340u, 4294967295u), global2.b, -10609i, 1u))), -abs(func_1(vec4<u32>(25057u, global2.a.x, 16456u, global2.a.x), Struct_3(vec4<f32>(-1000f, var_1, global2.b.x, var_1), false), vec4<bool>(false, false, false, false), Struct_1(global2.a, vec3<f32>(var_1, 772f, var_1), global2.c, 62309u))), ~(~(-2147483647i)), u_input.a);
    var_0 = firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(65486u, 24758u, 1u, 10008u), vec4<u32>(global3.x, 68692u, 19164u, global2.d)), firstTrailingBit(vec4<u32>(4294967295u, 1u, 11058u, u_input.e.x))), _wgslsmith_clamp_u32(32511u, _wgslsmith_mod_u32(firstLeadingBit(global3.x), u_input.d.x), _wgslsmith_div_u32(u_input.d.x, global3.x))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(364f, -262f, -1618f, global2.b.x))), vec4<f32>(_wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(global2.b.x + 340f), func_4(Struct_3(vec4<f32>(var_1, -471f, global2.b.x, var_1), true), vec2<u32>(global2.d, global2.a.x), var_1).b.x, var_1))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1054f, var_1, global2.b.x, global2.b.x))), _wgslsmith_div_vec4_f32(vec4<f32>(global2.b.x, -486f, -175f, -1722f), vec4<f32>(-709f, var_1, global2.b.x, global2.b.x)))))), all(select(vec4<bool>(false, false, true, all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true)))));
    global0 = false;
    let var_4 = _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, func_4(Struct_3(vec4<f32>(-1812f, var_3.a.x, -1670f, global2.b.x), var_3.b), ~(~u_input.e.zw), var_1).c, reverseBits(-15674i)), var_2.zwz);
    let var_5 = Struct_2(~global2.c, vec4<i32>(-4407i, _wgslsmith_sub_i32(-_wgslsmith_sub_i32(7379i, var_2.x), (var_2.x | var_2.x) & 0i), _wgslsmith_dot_vec4_i32(var_2, _wgslsmith_clamp_vec4_i32(var_2, var_2, vec4<i32>(1i, global2.c, u_input.b.x, u_input.a))) ^ 14435i, func_4(Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.a.x, global2.b.x, -527f, -1000f), var_3.a), true), vec2<u32>(~u_input.e.x, 4294967295u), 718f).c));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec2<i32>(global2.c, u_input.a) ^ vec2<i32>(-2147483647i, -27033i)), _wgslsmith_f_op_f32(-534f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.b.x)) * 181f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1433f, -957f, var_3.b))))));
}

