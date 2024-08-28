struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(61582u, 4101u, 5930u), vec2<u32>(1u, 4294967295u), vec4<i32>(0i, -1i, -1i, 1i));

var<private> global2: vec4<i32> = vec4<i32>(3291i, -1i, 2147483647i, 2147483647i);

var<private> global3: array<vec4<i32>, 19>;

var<private> global4: array<Struct_1, 13>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = reverseBits(_wgslsmith_clamp_u32(0u, ~global1.b.x, abs(29063u)));
    global4 = array<Struct_1, 13>();
    var var_1 = Struct_1(vec3<u32>(global1.a.x, ~21019u, firstTrailingBit(~0u)), vec2<u32>(u_input.d.x, countOneBits(~reverseBits(u_input.d.x))), ~min(global1.c, vec4<i32>(_wgslsmith_add_i32(global0.c.x, global2.x), -global0.c.x, u_input.c, _wgslsmith_sub_i32(u_input.a, global0.c.x))));
    global2 = -global3[_wgslsmith_index_u32(arg_0 ^ 84857u, 19u)];
    global4 = array<Struct_1, 13>();
    return ~(-2147483647i);
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = vec3<i32>(0i, -func_3(select(1u, arg_0.b.x << (global1.a.x % 32u), true)), _wgslsmith_mult_i32(global2.x, arg_0.c.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-2814f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, -899f, false)) - -1000f)));
    global4 = array<Struct_1, 13>();
    let var_2 = !vec2<bool>(false, reverseBits(_wgslsmith_dot_vec3_i32(global1.c.zxw, vec3<i32>(-1i, u_input.a, -28266i))) <= _wgslsmith_add_i32(u_input.a, ~global2.x));
    var var_3 = Struct_1(~(~global1.a), ~(~(~arg_0.b)), _wgslsmith_mult_vec4_i32(global1.c, vec4<i32>(u_input.a, global1.c.x, arg_0.c.x, 28721i)));
    return select(select(vec2<bool>(true, true), select(!vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, true), true), var_2), var_2, vec2<bool>((_wgslsmith_f_op_f32(floor(598f)) < _wgslsmith_f_op_f32(sign(604f))) | any(!var_2), false));
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(max(27524u, ~arg_2), 13u)];
    var_0 = global4[_wgslsmith_index_u32(~countOneBits(50855u), 13u)];
    global4 = array<Struct_1, 13>();
    global1 = Struct_1(select(u_input.b, vec3<u32>(~(~u_input.b.x), var_0.a.x, var_0.b.x), vec3<bool>(true, true, true)), abs(~global0.b), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(global3[_wgslsmith_index_u32(global0.b.x, 19u)], firstTrailingBit(global1.c)), vec4<i32>(~(-1i), -global1.c.x, -2147483647i, global2.x)), -(vec4<i32>(-1i, -10930i, global2.x, global1.c.x) >> (~vec4<u32>(global0.a.x, global1.a.x, var_0.a.x, arg_2) % vec4<u32>(32u)))));
    global4 = array<Struct_1, 13>();
    return Struct_1(vec3<u32>(~(~1u), firstLeadingBit(~u_input.b.x), ~max(_wgslsmith_div_u32(9038u, 4294967295u), ~0u)), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(global0.b), abs(var_0.a.yz), vec2<u32>(abs(global1.a.x), global0.a.x)), global1.b | vec2<u32>(global0.b.x, ~0u)), global1.c);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = func_4(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(Struct_1(vec3<u32>(global0.b.x, 4294967295u, 42689u), global1.a.xy, global0.c))), select(false, false, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_f_op_f32(-arg_0))), arg_0), 8241u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, arg_0), arg_0)), _wgslsmith_f_op_f32(arg_0 * -857f)))));
    global2 = ~vec4<i32>(-19192i, firstLeadingBit(4122i), arg_1, ~_wgslsmith_dot_vec4_i32(~var_0.c, global1.c << (vec4<u32>(0u, u_input.d.x, 23959u, arg_2.b.x) % vec4<u32>(32u))));
    var var_2 = 25568i;
    let var_3 = all(!vec3<bool>(true, func_2(func_4(vec2<bool>(false, true), var_1.x, 1u)).x, true));
    return global4[_wgslsmith_index_u32(8414u, 13u)];
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    var var_0 = vec2<bool>(any(select(!select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, arg_0, arg_0)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, arg_0), vec3<bool>(false, false, arg_0), vec3<bool>(true, arg_0, true)), false), !select(vec3<bool>(false, arg_0, false), vec3<bool>(true, true, true), vec3<bool>(arg_0, true, arg_0)))), _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(global2.zw, global1.c.xw), -global1.c.x) < 0i);
    var var_1 = select(select(!(!(!vec3<bool>(var_0.x, arg_0, arg_0))), vec3<bool>(var_0.x, !var_0.x, all(vec4<bool>(arg_0, arg_0, arg_0, true))), vec3<bool>(all(vec3<bool>(arg_0, false, var_0.x)), any(vec2<bool>(var_0.x, true)), false)), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x))), false, var_0.x), all(!(!func_2(global4[_wgslsmith_index_u32(1u, 13u)]))));
    var var_2 = func_1(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f))))), -u_input.a, arg_1, vec4<u32>(global0.b.x, global1.a.x, abs(u_input.d.x), _wgslsmith_clamp_u32(~arg_1.b.x, max(arg_1.b.x, 60010u), 70415u | global0.b.x)) << (max(vec4<u32>(select(9862u, arg_1.b.x, false), ~53702u, select(global1.a.x, 21579u, true), 4294967295u), abs(vec4<u32>(1u, u_input.b.x, u_input.b.x, arg_1.a.x))) % vec4<u32>(32u)));
    var var_3 = func_1(arg_2.x, -3828i & _wgslsmith_dot_vec4_i32(var_2.c, select(max(vec4<i32>(1i, -35951i, 0i, 5395i), var_2.c), vec4<i32>(global2.x, -87504i, global1.c.x, 0i) >> (vec4<u32>(11505u, 124852u, u_input.d.x, var_2.a.x) % vec4<u32>(32u)), !arg_0)), func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-142f - 1f))), -62499i ^ u_input.c, Struct_1(~(~global0.a), global0.a.zy, _wgslsmith_mod_vec4_i32(-arg_1.c, _wgslsmith_mult_vec4_i32(arg_1.c, vec4<i32>(global1.c.x, 13605i, -5641i, -7478i)))), vec4<u32>(func_4(vec2<bool>(var_1.x, false), arg_2.x, 4294967295u).b.x >> (1u % 32u), max(~49832u, abs(var_2.a.x)), reverseBits(34477u), 93872u)), _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.b.x, global1.a.x, u_input.d.x, global1.b.x), vec4<u32>(50556u, var_2.b.x, arg_1.b.x, arg_1.a.x) << (vec4<u32>(u_input.b.x, 0u, u_input.d.x, u_input.b.x) % vec4<u32>(32u))), ~select(~vec4<u32>(global0.b.x, var_2.a.x, global0.a.x, var_2.b.x), vec4<u32>(1u, arg_1.b.x, 1u, var_2.a.x), select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(arg_0, var_0.x, false, var_1.x), true))));
    global4 = array<Struct_1, 13>();
    return 143f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(true, func_1(719f, global0.c.x, Struct_1(vec3<u32>(0u, 13807u, global0.b.x), u_input.b.yz, global1.c), vec4<u32>(global1.b.x, 69281u, 44487u, 2149u)), vec2<f32>(-717f, 2276f))) + -285f), 521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1320f) + _wgslsmith_f_op_f32(-1088f - -901f)) * -1747f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-314f)), 326f)))));
    global2 = -_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, global1.c.x, ~global0.c.x, -2147483647i), vec4<i32>(global2.x, -25100i, 11397i, -262i));
    global3 = array<vec4<i32>, 19>();
    global3 = array<vec4<i32>, 19>();
    global3 = array<vec4<i32>, 19>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1592f));
    let var_2 = Struct_1(vec3<u32>(~(~(~u_input.b.x)), ~firstLeadingBit(4294967295u ^ global1.a.x), 45938u), vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(global1.a.x, 2018u, u_input.b.x), abs(1u), reverseBits(20944u), 0u), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.x, global0.a.x, 4294967295u, global0.a.x), vec4<u32>(u_input.d.x, 0u, global0.b.x, global0.b.x), vec4<u32>(0u, 85411u, 65800u, 0u)), vec4<u32>(4294967295u, u_input.b.x, 46523u, 1u) ^ vec4<u32>(u_input.d.x, global0.b.x, global1.a.x, u_input.b.x)))), ~(vec4<i32>(-1i) * -global3[_wgslsmith_index_u32(global1.a.x, 19u)]) << ((~(vec4<u32>(4294967295u, 29994u, global1.a.x, 668u) | vec4<u32>(0u, global0.b.x, 12893u, global0.b.x)) << (((vec4<u32>(global1.a.x, u_input.d.x, 1u, global1.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, 66252u, 23472u)) ^ vec4<u32>(global1.a.x, global0.b.x, 10097u, u_input.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = func_4(vec2<bool>(~global1.b.x <= ~(var_2.a.x | 75329u), !(all(vec3<bool>(false, false, true)) & true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))) * _wgslsmith_f_op_f32(sign(-806f))))), 57795u);
    let var_3 = vec4<i32>(global2.x, countOneBits(-45016i), -(~var_2.c.x), _wgslsmith_div_i32(global0.c.x, global0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(4294967295u, ~(~(~4294967295u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(-1494f + _wgslsmith_f_op_f32(ceil(-186f))))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(var_0)))), var_0.x, -countOneBits(-47442i));
}

