struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, true, false, true, false, false, false, false, false, false, true, true, true, true, false, true, false);

var<private> global1: vec2<bool>;

var<private> global2: Struct_4 = Struct_4(Struct_1(true, vec2<f32>(-1233f, -1862f)), Struct_1(true, vec2<f32>(477f, 1464f)), 170f);

var<private> global3: array<f32, 19>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> vec4<u32> {
    var var_0 = Struct_4(Struct_1(any(select(vec4<bool>(global0[_wgslsmith_index_u32(81845u, 17u)], false, true, global0[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<bool>(global2.a.a, global1.x, global1.x, global2.a.a), false || global1.x)), _wgslsmith_f_op_vec2_f32(arg_0 - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(402f, arg_0.x))))), Struct_1(!(!(!global0[_wgslsmith_index_u32(u_input.a, 17u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a.b * arg_0)))), -655f);
    global0 = array<bool, 17>();
    var var_1 = ~vec4<i32>(u_input.b.x & _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 57054i), u_input.b.x, u_input.b.x), 1i, abs(-u_input.b.x), u_input.b.x);
    global3 = array<f32, 19>();
    var var_2 = abs(u_input.a) & 11907u;
    return ~select(firstTrailingBit(select(vec4<u32>(32976u, 29256u, 85317u, 31367u), vec4<u32>(10524u, u_input.a, u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 17u)]) >> (reverseBits(vec4<u32>(u_input.a, 29417u, 4294967295u, 4294967295u)) % vec4<u32>(32u))), ~vec4<u32>(_wgslsmith_div_u32(u_input.a, 13818u), _wgslsmith_sub_u32(45630u, u_input.a), _wgslsmith_add_u32(15608u, u_input.a), firstTrailingBit(u_input.a)), true);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: f32) -> vec2<f32> {
    global2 = Struct_4(Struct_1(global1.x, _wgslsmith_f_op_vec2_f32(-global2.a.b)), Struct_1(true, vec2<f32>(global3[_wgslsmith_index_u32(arg_1.x, 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.b.x - 193f) * _wgslsmith_f_op_f32(arg_2 - -323f)))), 1000f);
    var var_0 = !any(!vec2<bool>(global1.x, global0[_wgslsmith_index_u32(arg_1.x, 17u)]));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, ~42769i), _wgslsmith_mult_i32(~_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), firstTrailingBit(u_input.b.x))) < 0i;
    let var_2 = Struct_4(global2.b, Struct_1(-967f > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_div_f32(-312f, arg_0.x))), arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))));
    global0 = array<bool, 17>();
    return vec2<f32>(763f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1028f + _wgslsmith_f_op_f32(min(-709f, 1520f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1433f - _wgslsmith_div_f32(arg_0.x, global3[_wgslsmith_index_u32(105735u, 19u)]))))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_4(Struct_1(true, _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_div_vec2_f32(global2.b.b, vec2<f32>(155f, 1830f)), select(func_3(vec2<f32>(global2.a.b.x, 288f), global2.b.b.x), abs(vec4<u32>(0u, u_input.a, 4294967295u, 51871u)), global2.a.a), -646f))), global2.a, _wgslsmith_f_op_f32(max(-1179f, global3[_wgslsmith_index_u32(u_input.a, 19u)])));
    var var_1 = global2.b;
    let var_2 = Struct_3(abs(34329i ^ u_input.b.x), max(vec3<i32>(2147483647i, abs(-2147483647i), -u_input.b.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), abs(vec3<u32>(4294967295u, 75508u, 19228u))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(~(~vec3<i32>(u_input.b.x, 0i, 2147483647i)), vec3<i32>(-36339i, -41365i, u_input.b.x))), true);
    return Struct_2(vec4<i32>(u_input.b.x, -(u_input.b.x >> (4294967295u % 32u)) ^ (u_input.b.x | _wgslsmith_mult_i32(u_input.b.x, 0i)), _wgslsmith_mod_i32(firstTrailingBit(2147483647i) | select(var_2.b.x, -1i, var_0.b.a), var_2.a), 2147483647i), var_0.b, vec4<bool>(true, true, global1.x, any(vec2<bool>(true, true))));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_4 {
    var var_0 = func_2(vec2<bool>(true == any(select(vec4<bool>(global1.x, false, false, false), vec4<bool>(false, true, false, true), true)), !global1.x));
    let var_1 = Struct_3(_wgslsmith_add_i32(~_wgslsmith_div_i32(0i, -1i), ~(-arg_2.x)), countOneBits(arg_2.xxx), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(-205f - _wgslsmith_f_op_f32(global2.b.b.x + var_0.b.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1411f * var_0.b.b.x))), _wgslsmith_f_op_f32(-global2.b.b.x)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.c, -1326f, -272f, arg_3.b.x))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(arg_0, 19u)], -1134f, global2.a.b.x, -384f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2019f, global2.c, var_0.b.b.x, -704f) - vec4<f32>(arg_3.b.x, var_0.b.b.x, -434f, global3[_wgslsmith_index_u32(49942u, 19u)])), global1.x || true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.b.x, -989f, 1758f, 1000f)))))));
    var var_3 = -1i;
    var var_4 = func_2(vec2<bool>(func_2(var_0.c.wy).a.x < -(~u_input.b.x), any(var_0.c.xyw)));
    return Struct_4(Struct_1(false == any(var_0.c), var_2.wy), var_0.b, -1492f);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_4) -> Struct_3 {
    global3 = array<f32, 19>();
    var var_0 = global2.a.b.x;
    return Struct_3(~_wgslsmith_sub_i32(1i, countOneBits(firstTrailingBit(arg_2.x))), vec3<i32>(i32(-1i) * -14049i, u_input.b.x, _wgslsmith_add_i32(1i ^ reverseBits(u_input.b.x), -37128i)), true);
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> vec2<u32> {
    global1 = func_2(vec2<bool>(arg_0 || select(all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(19600u, 17u)], arg_1)), false, false), !(arg_1 | all(vec2<bool>(true, true))))).c.yy;
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    global3 = array<f32, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-927f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-251f, global3[_wgslsmith_index_u32(u_input.a, 19u)])) * -651f), _wgslsmith_f_op_f32(global2.c + -320f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1246f, -1105f, 1345f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-916f, global2.b.b.x, 1000f))))))));
    return abs(vec2<u32>(u_input.a, ~abs(min(33864u, 1u))));
}

fn func_7(arg_0: vec2<u32>, arg_1: u32, arg_2: f32, arg_3: i32) -> Struct_4 {
    global1 = select(vec2<bool>(true, global1.x), vec2<bool>(true, !global1.x), !select(vec2<bool>(all(vec2<bool>(false, true)), !global1.x), !(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 17u)], global2.a.a)), global1.x));
    global3 = array<f32, 19>();
    global0 = array<bool, 17>();
    var var_0 = !global0[_wgslsmith_index_u32(0u, 17u)] != any(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(48980u, 17u)], true, true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 17u)]), global1.x)));
    let var_1 = arg_3;
    return Struct_4(Struct_1(!any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 17u)], true, false, false)), _wgslsmith_f_op_vec2_f32(-global2.a.b)), func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 6947u), _wgslsmith_mod_vec2_u32(arg_0, _wgslsmith_clamp_vec2_u32(arg_0, vec2<u32>(arg_1, arg_0.x), vec2<u32>(16348u, 34389u)))), ((vec4<i32>(-20984i, 1313i, -2147483647i, -6772i) >> (vec4<u32>(144961u, arg_1, arg_0.x, arg_0.x) % vec4<u32>(32u))) ^ (vec4<i32>(u_input.b.x, -64470i, var_1, -2147483647i) | vec4<i32>(u_input.b.x, 35501i, 2147483647i, 1i))) << (vec4<u32>(74194u, arg_0.x, ~5594u, 1u) % vec4<u32>(32u)), vec4<i32>(abs(abs(32186i)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 1i) | vec2<i32>(var_1, u_input.b.x), _wgslsmith_div_vec2_i32(u_input.b, u_input.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, u_input.b.x, arg_3) >> (vec3<u32>(u_input.a, u_input.a, 34927u) % vec3<u32>(32u)), -vec3<i32>(u_input.b.x, var_1, -2147483647i)), -arg_3), global2.b).b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(func_2(select(vec2<bool>(true, global2.a.a), vec2<bool>(true, global2.a.a), vec2<bool>(true, global1.x))).b.b.x, arg_2)), 365f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_7(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a), func_6(!select(true, global0[_wgslsmith_index_u32(u_input.a, 17u)], global1.x), (0u >> (u_input.a % 32u)) >= _wgslsmith_div_u32(u_input.a, u_input.a), func_5(select(vec3<bool>(global2.a.a, global2.b.a, global1.x), vec3<bool>(false, true, true), global1.x), vec4<bool>(false, true, true, global1.x), max(vec3<i32>(43703i, 50977i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, -16720i)), func_1(50614u, vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 23662i), Struct_1(global1.x, vec2<f32>(507f, -789f)))), reverseBits(u_input.b.x))), reverseBits(u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.c))), global2.b.b.x), u_input.b.x);
    let var_0 = _wgslsmith_add_u32(u_input.a, 0u);
    let var_1 = !(any(vec4<bool>(true, true, true, func_7(vec2<u32>(4294967295u, 0u), u_input.a, 1231f, 2147483647i).b.a)) | global2.b.a);
    global2 = Struct_4(func_2(vec2<bool>(true, -2147483647i < u_input.b.x)).b, func_2(!func_2(!vec2<bool>(global0[_wgslsmith_index_u32(var_0, 17u)], true)).c.zz).b, 1110f);
    var var_2 = max(_wgslsmith_clamp_i32(-2147483647i, ~(-1i), abs(-(u_input.b.x >> (4294967295u % 32u)))), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~_wgslsmith_add_i32(u_input.b.x, 1i), -2147483647i) << (select(_wgslsmith_div_vec2_u32(vec2<u32>(13613u, u_input.a), vec2<u32>(u_input.a, 0u)) << (~vec2<u32>(var_0, 24765u) % vec2<u32>(32u)), vec2<u32>(~31967u, 2286u), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 17u)])) % vec2<u32>(32u)), 3691f, -(i32(-1i) * -2147483647i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-254f, -302f, 2153f) + vec3<f32>(-893f, global3[_wgslsmith_index_u32(25715u, 19u)], global2.a.b.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(var_0, 19u)], 272f, global3[_wgslsmith_index_u32(4294967295u, 19u)]) + vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], 242f, global3[_wgslsmith_index_u32(u_input.a, 19u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-196f, 512f, 1793f), vec3<f32>(global2.b.b.x, -695f, global2.a.b.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, 634f, global3[_wgslsmith_index_u32(499u, 19u)])))), ~firstLeadingBit(vec2<u32>(0u, ~var_0)));
}

