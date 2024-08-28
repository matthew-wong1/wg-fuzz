struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(12002u, 4294967295u, 23164u), vec3<u32>(4294967295u, 0u, 12987u), vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 71958u, 28665u), vec3<u32>(51218u, 43060u, 1u), vec3<u32>(1u, 90421u, 41207u), vec3<u32>(58630u, 85681u, 75801u), vec3<u32>(25316u, 0u, 1u), vec3<u32>(21100u, 64543u, 1u), vec3<u32>(86043u, 0u, 0u), vec3<u32>(72507u, 16564u, 1u), vec3<u32>(0u, 35419u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 7023u), vec3<u32>(0u, 12641u, 47453u), vec3<u32>(25983u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 117841u, 57516u), vec3<u32>(21825u, 0u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 158625u, 4294967295u), vec3<u32>(8518u, 42427u, 24423u), vec3<u32>(0u, 34954u, 4294967295u), vec3<u32>(126177u, 4294967295u, 1u), vec3<u32>(124339u, 1u, 4294967295u), vec3<u32>(1u, 1u, 14666u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(66863u, 25u, 0u), vec3<u32>(1u, 45234u, 1u), vec3<u32>(4294967295u, 9198u, 1u), vec3<u32>(24111u, 47664u, 4294967295u), vec3<u32>(17817u, 0u, 5333u), vec3<u32>(61364u, 4294967295u, 34984u));

var<private> global2: array<f32, 32> = array<f32, 32>(-853f, 746f, 1490f, 613f, -1012f, 425f, 614f, -852f, 739f, -1000f, -898f, 923f, -1071f, 520f, -104f, 1456f, 847f, 1132f, -657f, -415f, -1568f, 1874f, 978f, -695f, -1132f, 579f, -172f, 249f, -374f, 439f, -346f, -771f);

var<private> global3: Struct_2;

var<private> global4: array<bool, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_2) -> u32 {
    let var_0 = global0.d.c;
    let var_1 = global3.c;
    global2 = array<f32, 32>();
    global0 = Struct_3(~1u, -vec2<i32>(_wgslsmith_mult_i32(arg_2.a.x, i32(-1i) * -7195i), -1i), vec4<bool>(-49234i < _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.x, -2147483647i, 1i, 49868i), vec4<i32>(-1i, 17156i, 0i, 15450i)), abs(vec4<i32>(5815i, -2147483647i, u_input.c.x, 0i))), true, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_1.x, arg_2.a.x, u_input.c.x, 1i)), vec4<i32>(arg_2.a.x, 0i, u_input.c.x, arg_1.x)) > (_wgslsmith_mod_i32(global3.a.x, -1i) | 54277i), var_1.a.x), Struct_2(global3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 32u)], -368f, global0.d.b.x), vec3<f32>(global2[_wgslsmith_index_u32(global0.d.c.b, 32u)], -1947f, global0.d.b.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(533f, global0.d.b.x, global0.d.b.x) * vec3<f32>(arg_2.b.x, global2[_wgslsmith_index_u32(u_input.d, 32u)], 784f)))), arg_2.c), arg_2.a.x);
    let var_2 = !(!vec2<bool>(any(vec3<bool>(false, false, global3.c.a.x)), -1128f != _wgslsmith_f_op_f32(global3.b.x + 982f)));
    return global3.c.b ^ 1u;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: f32) -> i32 {
    var var_0 = ~(~(~_wgslsmith_sub_u32(9654u, u_input.b.x))) | arg_1.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-234f, _wgslsmith_f_op_f32(max(arg_2, 703f))), arg_2)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~63707u, min(global0.a, arg_1.x)), 32u)]));
    var_0 = u_input.d;
    let var_2 = global3.a;
    var var_3 = _wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-13732i, global0.e, 24594i, -35881i), ~vec4<i32>(var_2.x, 11853i, -92029i, 1i))), firstLeadingBit((vec4<i32>(-18492i, var_2.x, global3.a.x, var_2.x) << (vec4<u32>(u_input.d, u_input.a, arg_1.x, 1549u) % vec4<u32>(32u))) ^ select(vec4<i32>(-39334i, u_input.c.x, -5424i, 32038i), vec4<i32>(global0.b.x, global0.b.x, 55516i, global0.e), global0.c))) & max(vec4<i32>(global0.d.a.x, -_wgslsmith_mult_i32(global3.a.x, global0.e), -firstLeadingBit(-1i), global3.a.x), ~_wgslsmith_sub_vec4_i32(vec4<i32>(global0.e, -1i, global0.e, u_input.c.x), vec4<i32>(-67700i, 0i, 19039i, u_input.c.x)));
    return var_2.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_2(vec3<i32>(firstLeadingBit(~min(u_input.c.x, u_input.c.x)), func_4(global0.d.c.a.yz, vec2<u32>(global3.c.b, firstTrailingBit(0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(arg_0, 32u)], 708f)) + global2[_wgslsmith_index_u32(func_3(u_input.b.wz, global0.d.a, Struct_2(u_input.c, vec3<f32>(1438f, -996f, 269f), global3.c)), 32u)])), select(-2147483647i, u_input.c.x, _wgslsmith_div_u32(12739u, arg_0) <= 1u)), global0.d.b, global0.d.c);
    var var_1 = global0.d;
    global3 = global0.d;
    let var_2 = ~(~min(global3.a.x, 11499i));
    var_1 = Struct_2(var_1.a, vec3<f32>(514f, _wgslsmith_f_op_f32(step(-1001f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.b.x)))))), global3.b.x), global0.d.c);
    return Struct_1(vec3<bool>((~1u << (u_input.a % 32u)) >= (abs(4294967295u) >> (_wgslsmith_add_u32(var_0.c.b, 1u) % 32u)), global3.c.a.x, global0.d.c.a.x), _wgslsmith_div_u32(min(0u, ~(global3.c.b << (80856u % 32u))), 65659u));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> bool {
    let var_0 = func_2(arg_3);
    global1 = array<vec3<u32>, 32>();
    let var_1 = global0.d;
    var var_2 = _wgslsmith_add_vec4_i32(~vec4<i32>(global0.e, -abs(arg_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 27400i, -37109i, 11605i), vec4<i32>(1i, 1i, 1i, global0.d.a.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-6837i, 1i), global3.a.yx)), select(_wgslsmith_mod_vec4_i32(-abs(vec4<i32>(arg_0.a.x, 2147483647i, arg_0.a.x, 64188i)), ~vec4<i32>(-2147483647i, 59516i, 187i, u_input.c.x)), _wgslsmith_add_vec4_i32(abs(-vec4<i32>(1i, global0.d.a.x, 3665i, 2147483647i)), vec4<i32>(_wgslsmith_sub_i32(var_1.a.x, var_1.a.x), 0i | global3.a.x, var_1.a.x, select(18667i, var_1.a.x, arg_1.a.x))), vec4<bool>(func_2(reverseBits(0u)).a.x, all(vec3<bool>(true, global4[_wgslsmith_index_u32(global3.c.b, 16u)], false)) || any(vec4<bool>(true, var_1.c.a.x, global0.d.c.a.x, global4[_wgslsmith_index_u32(53978u, 16u)])), any(vec3<bool>(arg_0.c.a.x, true, false)), !all(global0.c))));
    return !any(func_2(_wgslsmith_clamp_u32(arg_3 | global3.c.b, ~arg_0.c.b, arg_3 << (15356u % 32u))).a);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 16>();
    global0 = Struct_3(4294967295u, global3.a.zx, select(select(global0.c, select(vec4<bool>(true, false, global0.c.x, global3.c.a.x), global0.c, func_1(Struct_2(vec3<i32>(-16988i, global0.d.a.x, u_input.c.x), global0.d.b, Struct_1(global0.d.c.a, 72191u)), Struct_1(global0.c.zwx, global3.c.b), global0.d.b, global0.d.c.b)), global0.c), !vec4<bool>(true, false, all(global0.c.zzw), global0.d.c.a.x), any(global0.c)), global0.d, -75145i);
    let var_0 = global3.c.a.x;
    let var_1 = _wgslsmith_add_i32(global3.a.x, i32(-1i) * -2147483647i);
    let var_2 = vec2<i32>(var_1, _wgslsmith_clamp_i32(u_input.c.x, ~_wgslsmith_mult_i32(u_input.c.x, var_1), global3.a.x)) & vec2<i32>(var_1, ~min(i32(-1i) * -1i, global0.d.a.x ^ global3.a.x));
    var var_3 = abs(vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -u_input.c.x, reverseBits(-var_1)), ~_wgslsmith_clamp_i32(select(-2147483647i, 34059i, true), ~(-18562i), -u_input.c.x), abs(global0.d.a.x)));
    let var_4 = global0.d.b.x;
    global2 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(1652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(81818u, 32u)] * _wgslsmith_f_op_f32(f32(-1f) * -1240f))))));
}

