struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec2<i32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: array<i32, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.d * -203f);
    var var_1 = Struct_2(vec2<u32>(max(_wgslsmith_mod_u32(34743u, arg_0.a), _wgslsmith_mod_u32(1u, 33524u)), 1u) ^ vec2<u32>(~_wgslsmith_mod_u32(arg_0.a, 1u), countOneBits(8030u)), ~arg_1.yw, arg_0.e.c.x, abs(vec2<i32>(countOneBits(arg_1.x), ~countOneBits(u_input.b.x))));
    var_1 = Struct_2(vec2<u32>(max(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 1u, 0u), vec3<u32>(var_1.a.x, arg_0.a, arg_0.a)), ~arg_0.a), arg_0.a), (~max(vec2<i32>(u_input.a, arg_1.x), arg_1.zy) >> (var_1.a % vec2<u32>(32u))) ^ -arg_2, true, ~(-arg_2 ^ ~u_input.b.xy));
    global0 = array<vec4<i32>, 11>();
    var var_2 = Struct_2(~var_1.a, var_1.d, arg_0.b.a.c.x, var_1.b);
    return 2147483647i;
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    global0 = array<vec4<i32>, 11>();
    global1 = array<i32, 18>();
    let var_0 = -select(_wgslsmith_div_i32(u_input.b.x, global1[_wgslsmith_index_u32(abs(arg_0.x), 18u)]), 34824i, true);
    global1 = array<i32, 18>();
    let var_1 = abs(vec3<i32>(14994i, u_input.a, func_2(Struct_4(32038u, Struct_3(Struct_1(477f, vec4<f32>(-887f, 1641f, 532f, 255f), vec2<bool>(false, false), vec3<f32>(-1085f, -928f, 984f))), u_input.b.zy, -646f, Struct_1(1433f, vec4<f32>(-618f, 154f, 514f, 333f), vec2<bool>(true, false), vec3<f32>(460f, 1184f, -558f))), -u_input.b, u_input.b.yw))) >> (firstLeadingBit(~vec3<u32>(_wgslsmith_mod_u32(arg_0.x, arg_0.x), ~arg_0.x, ~arg_0.x)) % vec3<u32>(32u));
    return 3848i;
}

fn func_3() -> f32 {
    var var_0 = -_wgslsmith_add_vec2_i32(abs(~vec2<i32>(global1[_wgslsmith_index_u32(84947u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)])), -_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.a, -5617i)), -vec2<i32>(-23267i, -6416i)));
    var var_1 = Struct_2(~(~vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_i32(-firstTrailingBit(max(vec2<i32>(-27311i, -13618i), vec2<i32>(-46208i, -9679i))), u_input.b.wx), false, vec2<i32>(20196i, _wgslsmith_add_i32(func_2(Struct_4(4294967295u, Struct_3(Struct_1(224f, vec4<f32>(-2269f, -1000f, -604f, 391f), vec2<bool>(true, false), vec3<f32>(296f, -764f, -616f))), u_input.b.wz, 822f, Struct_1(1049f, vec4<f32>(476f, 361f, 189f, 976f), vec2<bool>(false, false), vec3<f32>(-1249f, -1238f, -2886f))), vec4<i32>(-67009i, global1[_wgslsmith_index_u32(17573u, 18u)], 50606i, -8827i), select(vec2<i32>(-39276i, global1[_wgslsmith_index_u32(365u, 18u)]), vec2<i32>(u_input.a, -1i), vec2<bool>(true, false))), u_input.b.x)));
    let var_2 = vec3<u32>(_wgslsmith_div_u32(var_1.a.x, ~(~1u)), ~1u, 4294967295u);
    var_0 = var_1.b;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 344f) - 401f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_3)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3), 316f)))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec3<u32>) -> vec4<bool> {
    global1 = array<i32, 18>();
    var var_0 = select(select(!vec3<bool>(select(arg_0.x, arg_0.x, arg_0.x), all(vec3<bool>(true, arg_0.x, arg_0.x)), all(vec4<bool>(false, false, arg_0.x, false))), vec3<bool>(all(vec4<bool>(false, true, arg_0.x, arg_0.x)), arg_0.x | (u_input.a == -2147483647i), any(arg_0) | (arg_0.x | true)), !(!arg_0)), !arg_0, true);
    var var_1 = ~abs(select(~vec4<u32>(0u, 0u, arg_3.x, 20788u) | vec4<u32>(arg_3.x, 38736u, 1u, arg_3.x), ~vec4<u32>(4294967295u, arg_3.x, 2377u, 1u), !vec4<bool>(true, false, true, var_0.x)));
    let var_2 = -913f;
    let var_3 = Struct_2(var_1.wz, u_input.b.xy, arg_0.x, vec2<i32>(func_2(Struct_4(firstLeadingBit(1u), Struct_3(Struct_1(325f, vec4<f32>(1153f, -1817f, 278f, var_2), var_0.xx, vec3<f32>(223f, arg_1, arg_1))), _wgslsmith_add_vec2_i32(arg_2.xx, u_input.b.xw), arg_1, Struct_1(657f, vec4<f32>(-646f, var_2, 525f, 1377f), vec2<bool>(false, false), vec3<f32>(arg_1, arg_1, arg_1))), _wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(23774u, 11u)], vec4<i32>(48327i, 2147483647i, u_input.b.x, 11745i) << (vec4<u32>(26820u, 0u, 87782u, 1u) % vec4<u32>(32u))), u_input.b.yy | (vec2<i32>(u_input.a, -1i) & u_input.b.yw)), ~_wgslsmith_dot_vec2_i32(firstTrailingBit(arg_2.xz), select(vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(var_1.x, 18u)]), vec2<i32>(arg_2.x, -2147483647i), var_0.xy))));
    return !(!(!vec4<bool>(false, true, !var_3.c, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(reverseBits(min(vec2<u32>(abs(1u), firstTrailingBit(0u)), select(~vec2<u32>(29853u, 33412u), vec2<u32>(1u, 4294967295u), select(vec2<bool>(true, true), vec2<bool>(false, true), false)))), u_input.b.yy, !(!any(vec2<bool>(true, true))), vec2<i32>(_wgslsmith_clamp_i32(-global1[_wgslsmith_index_u32(10500u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)] & global1[_wgslsmith_index_u32(17122u, 18u)], func_1(vec2<u32>(0u, 34783u))), -2147483647i) | _wgslsmith_add_vec2_i32(abs(~vec2<i32>(u_input.a, -1i)), u_input.b.xx));
    global0 = array<vec4<i32>, 11>();
    global1 = array<i32, 18>();
    var var_1 = all(select(select(select(vec4<bool>(var_0.c, true, true, false), select(vec4<bool>(true, true, true, var_0.c), vec4<bool>(var_0.c, var_0.c, false, var_0.c), var_0.c), !vec4<bool>(true, var_0.c, var_0.c, var_0.c)), select(vec4<bool>(var_0.c, var_0.c, false, false), !vec4<bool>(var_0.c, var_0.c, var_0.c, false), !vec4<bool>(true, true, var_0.c, var_0.c)), select(select(vec4<bool>(false, false, true, var_0.c), vec4<bool>(true, false, true, false), vec4<bool>(var_0.c, true, true, false)), vec4<bool>(var_0.c, var_0.c, false, var_0.c), select(vec4<bool>(var_0.c, false, var_0.c, var_0.c), vec4<bool>(true, true, var_0.c, var_0.c), vec4<bool>(true, var_0.c, var_0.c, var_0.c)))), select(!vec4<bool>(true, false, var_0.c, var_0.c), func_4(!vec3<bool>(true, false, var_0.c), _wgslsmith_f_op_f32(func_3()), countOneBits(u_input.b.zyz), vec3<u32>(var_0.a.x, var_0.a.x, 4294967295u)), vec4<bool>(func_4(vec3<bool>(var_0.c, true, false), -286f, u_input.b.yyw, vec3<u32>(var_0.a.x, 0u, 23752u)).x, !var_0.c, all(vec4<bool>(false, var_0.c, true, true)), true)), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), vec2<f32>(-441f, -1434f))), vec2<f32>(1f, 1f))));
    var_0 = Struct_2(~(~((var_0.a >> (vec2<u32>(0u, var_0.a.x) % vec2<u32>(32u))) ^ reverseBits(var_0.a))), vec2<i32>(max(_wgslsmith_mult_i32(func_1(var_0.a), 1i), var_0.b.x), -global1[_wgslsmith_index_u32(~32306u, 18u)]), true, vec2<i32>(~var_0.d.x, -2147483647i));
    let var_3 = global1[_wgslsmith_index_u32(4294967295u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.x, abs(_wgslsmith_mult_vec2_u32(vec2<u32>(36726u, ~1u), ~var_0.a | select(var_0.a, var_0.a, false))));
}

