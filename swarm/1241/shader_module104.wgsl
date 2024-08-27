struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(i32(-2147483648), 1487f, false), Struct_1(3105i, -161f, true), Struct_1(-15683i, 845f, false), Struct_1(39959i, -593f, false), Struct_1(1i, 1060f, true), Struct_1(i32(-2147483648), -731f, true), Struct_1(-1i, 2038f, true), Struct_1(1i, -810f, false), Struct_1(-19910i, -354f, false), Struct_1(875i, 1170f, false), Struct_1(2147483647i, -415f, true), Struct_1(-9168i, 1497f, false), Struct_1(14846i, 259f, false));

var<private> global3: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec2<bool> {
    global2 = array<Struct_1, 13>();
    var var_0 = any(vec2<bool>((all(vec4<bool>(arg_1.c.c, global0.c.c, global1.c.c, arg_0.e.c)) & true) & global1.c.c, true));
    var var_1 = arg_0;
    let var_2 = Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b << (77527u % 32u), 62047i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.a, global0.c.a, 0i, 1i), vec4<i32>(-26793i, arg_1.c.a, 1i, 26556i))), -(~u_input.b.xxx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2008f * 335f) - global1.c.b), all(!select(vec2<bool>(true, true), vec2<bool>(global1.c.c, true), !arg_0.e.c)));
    global1 = Struct_2(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.b) + _wgslsmith_f_op_f32(2205f - -1579f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1013f))))), ~firstLeadingBit(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.b.x, global0.b.x), vec2<u32>(global0.b.x, global0.b.x)), _wgslsmith_mult_vec2_u32(global0.b, vec2<u32>(global1.b.x, 0u)))), global2[_wgslsmith_index_u32(global0.b.x, 13u)]);
    return vec2<bool>(true, true);
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = !(!func_3(Struct_3(_wgslsmith_f_op_f32(select(global1.c.b, 162f, global1.c.c)), _wgslsmith_sub_i32(16382i, u_input.c.x), u_input.c.xy, _wgslsmith_f_op_vec4_f32(vec4<f32>(384f, -703f, global1.a, global0.a) - vec4<f32>(global1.a, arg_0.b, -296f, 1394f)), global2[_wgslsmith_index_u32(global0.b.x, 13u)]), Struct_2(global0.a, global0.b << (vec2<u32>(global0.b.x, global0.b.x) % vec2<u32>(32u)), arg_0)));
    let var_1 = -abs(-u_input.b.zw);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1463f, 426f, -150f) * vec3<f32>(arg_0.b, 713f, global1.c.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(521f, global1.c.b, arg_0.b) + vec3<f32>(-312f, global1.a, global0.a)))))));
    global3 = _wgslsmith_dot_vec2_i32(u_input.b.yw, abs(-(~u_input.c.xy)));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_2.x), -544f, global1.c.b);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), min(u_input.b.x, _wgslsmith_mod_i32(var_1.x, _wgslsmith_dot_vec2_i32(u_input.b.yw, var_1))), vec2<i32>(var_1.x, ~_wgslsmith_div_i32(-u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(16169i, var_1.x, 60060i, arg_0.a), u_input.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1751f, var_2.x, -406f, global1.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2505f, global0.c.b, 1618f, -257f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, global1.a, global1.a, -227f))) * vec4<f32>(355f, 1000f, 333f, -424f)) * vec4<f32>(global0.a, _wgslsmith_f_op_f32(trunc(global1.a)), 251f, _wgslsmith_f_op_f32(select(982f, global0.a, true))))), Struct_1(-(global0.c.a | _wgslsmith_add_i32(var_1.x, 0i)), _wgslsmith_f_op_f32(1612f - global0.a), firstTrailingBit(-2147483647i) >= countOneBits(global0.c.a)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<u32>) -> vec2<u32> {
    let var_0 = ~_wgslsmith_sub_u32(1u, arg_2.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) * _wgslsmith_f_op_f32(ceil(arg_0.b)));
    let var_2 = func_2(global0.c);
    let var_3 = func_3(func_2(arg_0), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.e.b)), global1.a))), _wgslsmith_clamp_vec2_u32(max(~global1.b, vec2<u32>(global0.b.x, 2824u)), global1.b, ~firstTrailingBit(arg_2.xz)), var_2.e)).x;
    global2 = array<Struct_1, 13>();
    return abs(global1.b);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_2 {
    global1 = arg_1;
    global2 = array<Struct_1, 13>();
    global0 = Struct_2(742f, vec2<u32>(arg_1.b.x, _wgslsmith_mult_u32(24309u, ~func_1(Struct_1(-20551i, global1.a, true), Struct_3(arg_1.a, global1.c.a, arg_2, vec4<f32>(462f, 1162f, -295f, arg_0), Struct_1(-7762i, arg_0, arg_1.c.c)), vec3<u32>(1u, 43544u, 31077u)).x)), func_2(func_2(Struct_1(67217i, arg_0, false)).e).e);
    global3 = arg_2.x;
    global1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_f32(arg_1.c.b * arg_1.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3.b), arg_3.b))))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.b, arg_1.b), _wgslsmith_mod_vec2_u32(global1.b, vec2<u32>(20108u, 146594u))) & ~select(abs(vec2<u32>(arg_1.b.x, 36489u)), ~global0.b, true), Struct_1(min(-2147483647i, arg_3.a), _wgslsmith_f_op_f32(max(-842f, 294f)), !(!arg_3.c)));
    return Struct_2(_wgslsmith_f_op_f32(step(arg_1.c.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.c.b + 1277f), _wgslsmith_div_f32(arg_3.b, 179f))), -1270f))), arg_1.b, func_2(Struct_1(global0.c.a, arg_0, true)).e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(-239f, -1162f));
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a - -236f), _wgslsmith_f_op_f32(global0.a - global1.a))))), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.a)))), _wgslsmith_clamp_vec2_u32(global0.b, func_1(Struct_1(2147483647i, global0.a, true), Struct_3(-185f, u_input.b.x, u_input.c.zy, vec4<f32>(304f, 585f, global1.c.b, global0.a), global0.c), vec3<u32>(global1.b.x, global0.b.x, 1u)) << (select(global0.b, global1.b, vec2<bool>(global1.c.c, true)) % vec2<u32>(32u)), reverseBits(global0.b) & ~global0.b), global2[_wgslsmith_index_u32(0u, 13u)]), vec2<i32>(func_2(global2[_wgslsmith_index_u32(19700u, 13u)]).b, ~u_input.d), global0.c);
    let var_2 = vec3<i32>(16810i, global1.c.a, max(_wgslsmith_mult_i32(~var_1.c.a, global0.c.a ^ abs(var_1.c.a)), -43071i));
    let var_3 = global1.c.c;
    let var_4 = _wgslsmith_sub_vec3_u32(min(_wgslsmith_mult_vec3_u32(select(vec3<u32>(var_1.b.x, global1.b.x, 6057u), vec3<u32>(global0.b.x, global0.b.x, 4294967295u), vec3<bool>(var_1.c.c, global1.c.c, global0.c.c)), ~vec3<u32>(global0.b.x, var_1.b.x, global0.b.x)), ~vec3<u32>(global0.b.x, 0u, 66153u)) & countOneBits(vec3<u32>(~global1.b.x, ~26865u, var_1.b.x)), max(vec3<u32>(60884u, 29642u, _wgslsmith_dot_vec2_u32(global0.b, vec2<u32>(global0.b.x, 17274u))), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(20299u, 27567u, global1.b.x), vec3<u32>(1u, global1.b.x, 32584u)), _wgslsmith_div_vec3_u32(vec3<u32>(global1.b.x, var_1.b.x, 5269u), vec3<u32>(global0.b.x, 816u, var_1.b.x)))) << (~abs(vec3<u32>(var_1.b.x, global0.b.x, 15574u) << (vec3<u32>(var_1.b.x, 76788u, var_1.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(global0.b.x, global1.b.x, var_1.b.x, var_1.b.x), vec4<u32>(var_1.b.x, 1u, global1.b.x, global1.b.x))), abs(select(vec4<u32>(0u, global0.b.x, 1u, var_4.x) | vec4<u32>(23299u, 34212u, 21789u, var_1.b.x), abs(vec4<u32>(0u, var_1.b.x, var_4.x, var_4.x)), global1.c.c != true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.b, var_1.a))))));
}

