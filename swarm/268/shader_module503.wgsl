struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_3,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27>;

var<private> global1: array<i32, 18> = array<i32, 18>(i32(-2147483648), -1i, 45270i, 5670i, 2147483647i, 2314i, 16993i, -1i, 18645i, 2147483647i, -5059i, 10937i, i32(-2147483648), 6772i, i32(-2147483648), -1i, -9337i, 34628i);

var<private> global2: vec3<bool>;

var<private> global3: array<vec2<f32>, 20>;

var<private> global4: array<Struct_5, 14>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec2<i32> {
    global2 = vec3<bool>(true, global2.x, true);
    var var_0 = !(!(!select(select(vec3<bool>(true, global2.x, true), vec3<bool>(true, true, global2.x), global2.x), !vec3<bool>(false, global2.x, global2.x), any(vec3<bool>(global2.x, global2.x, false)))));
    let var_1 = global0[_wgslsmith_index_u32(~u_input.a.x, 27u)] >> (_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(u_input.a.x, 20549u, 35117u)), countOneBits(vec3<u32>(u_input.a.x, 35510u, 1u))), u_input.a.x, 0u, ~abs(u_input.a.x)), select(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(21726u, u_input.a.x, 4294967295u, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 75381u, 14006u, u_input.a.x), vec4<u32>(0u, 10207u, u_input.a.x, 4294967295u))), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), !select(vec4<bool>(false, global2.x, true, false), vec4<bool>(false, global2.x, var_0.x, global2.x), vec4<bool>(false, false, var_0.x, var_0.x)))) % vec4<u32>(32u));
    var_0 = vec3<bool>(!all(select(!vec4<bool>(var_0.x, var_0.x, global2.x, true), vec4<bool>(var_0.x, false, global2.x, global2.x), global2.x)), any(select(!(!vec4<bool>(global2.x, false, false, global2.x)), vec4<bool>(false, var_1.x == 0i, var_0.x, false), 1f != _wgslsmith_f_op_f32(round(806f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-332f + 605f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-650f, -445f, true)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(483f, _wgslsmith_f_op_f32(-522f + 676f))) * _wgslsmith_f_op_f32(f32(-1f) * -976f)));
    return _wgslsmith_div_vec2_i32(reverseBits(-vec2<i32>(_wgslsmith_mult_i32(-1i, -37803i), -var_1.x)), vec2<i32>(~(~global1[_wgslsmith_index_u32(u_input.a.x, 18u)]) & 14847i, var_1.x << ((u_input.a.x | abs(77629u)) % 32u)));
}

fn func_2(arg_0: u32, arg_1: i32) -> bool {
    var var_0 = 900f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1713f * _wgslsmith_f_op_f32(f32(-1f) * -1459f)), _wgslsmith_f_op_f32(-2133f + _wgslsmith_f_op_f32(1314f * 1798f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(593f * 365f) + _wgslsmith_f_op_f32(select(-1019f, 1000f, global2.x))) - -874f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(438f, -1417f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-262f, -276f) - 564f))));
    global3 = array<vec2<f32>, 20>();
    let var_2 = func_3();
    let var_3 = true;
    return global2.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(574f))))));
    global0 = array<vec4<i32>, 27>();
    global4 = array<Struct_5, 14>();
    var var_1 = arg_2;
    let var_2 = Struct_4(!(!select(!vec3<bool>(global2.x, false, arg_2), !vec3<bool>(true, arg_2, true), vec3<bool>(false, arg_2, global2.x))), arg_0, Struct_3(!(!vec2<bool>(global2.x, true)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(-1664f)), _wgslsmith_f_op_f32(sign(-195f)), _wgslsmith_f_op_f32(2607f - -1014f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -348f, -520f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1677f, 1425f, -1000f), vec3<f32>(1123f, -1108f, 963f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-2370f)), -1046f, _wgslsmith_f_op_f32(sign(425f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1802f, -787f, 955f) + vec3<f32>(-1402f, 995f, 149f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1354f, -690f, 301f)), true)))), global2.yy);
    return u_input.a.x;
}

fn func_1() -> u32 {
    global1 = array<i32, 18>();
    return _wgslsmith_sub_u32(27514u, ~func_4(vec4<i32>(~(-5135i), -3670i, countOneBits(global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), countOneBits(0i)), global1[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 1u), 18u)], !func_2(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 18u)])));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_4) -> Struct_4 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-704f, -667f) * global3[_wgslsmith_index_u32(func_1(), 20u)])) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(~0u, 20u)] - vec2<f32>(1f, 1f)) + global3[_wgslsmith_index_u32(~(~u_input.a.x), 20u)])), Struct_4(select(select(select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, false, true), vec3<bool>(false, true, global2.x)), !vec3<bool>(global2.x, global2.x, true), select(vec3<bool>(true, global2.x, false), vec3<bool>(false, global2.x, global2.x), false)), !vec3<bool>(global2.x, false, false), true), vec4<i32>(-30661i, ~(global1[_wgslsmith_index_u32(u_input.a.x, 18u)] << (18361u % 32u)), 2147483647i, -27525i), Struct_3(global2.zy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-685f, 1057f, -1283f) * vec3<f32>(612f, 1319f, 562f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1267f, -453f, 795f))), vec3<f32>(370f, 513f, 677f))), select(select(select(global2.zx, vec2<bool>(false, global2.x), global2.x), select(global2.yz, global2.xz, global2.xx), vec2<bool>(true, true)), global2.xz, global2.x && true)));
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.d.x, 594f, var_0.d.x)), vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(ceil(var_0.d.x)), -1564f, _wgslsmith_f_op_f32(542f - var_0.d.x)), ~global1[_wgslsmith_index_u32(59966u, 18u)] <= 14319i)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.d.x)), -1091f, -407f, _wgslsmith_f_op_f32(-var_0.c.b.x)))));
    let var_3 = func_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-287f, 1000f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c.b.x, var_2.x)))) * _wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(~u_input.a.x, 20u)] * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.d.x, var_0.d.x), global3[_wgslsmith_index_u32(u_input.a.x, 20u)])))), _wgslsmith_f_op_vec2_f32(-func_5(var_0.d.xy, func_5(vec2<f32>(-344f, -2456f), Struct_4(vec3<bool>(var_0.a.x, false, var_0.e.x), vec4<i32>(var_0.b.x, -2147483647i, var_0.b.x, 1i), var_0.c, var_2.www, var_0.a.yx))).d.yx), all(vec4<bool>(var_0.c.a.x, 10197i > global1[_wgslsmith_index_u32(64700u, 18u)], true, global2.x)))), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.c.b.zx, var_2.zw, global2.x)))), func_5(var_0.c.b.yx, Struct_4(vec3<bool>(false, false, true), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], -46164i, -93201i, var_0.b.x), var_0.c, var_2.ywx, select(var_0.e, var_0.e, vec2<bool>(var_0.e.x, global2.x)))))).c;
    global4 = array<Struct_5, 14>();
    let var_4 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(abs(u_input.a), u_input.a ^ vec3<u32>(u_input.a.x, 36557u, 18489u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 1u, 51110u), vec3<u32>(u_input.a.x, 4294967295u, 35741u)))), u_input.a, ~vec3<u32>(min(u_input.a.x, 1u), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 50988u >> (u_input.a.x % 32u))) >> (countOneBits(u_input.a) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(u_input.a.x, 20u)] * var_2.zy), _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(0u, 20u)])), Struct_4(func_5(vec2<f32>(var_2.x, var_3.b.x), Struct_4(vec3<bool>(var_0.a.x, global2.x, false), global0[_wgslsmith_index_u32(u_input.a.x, 27u)], Struct_3(var_0.e, vec3<f32>(var_3.b.x, var_2.x, var_2.x)), vec3<f32>(var_0.c.b.x, var_0.c.b.x, -466f), global2.xz)).a, -vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], var_0.b.x, var_0.b.x, var_0.b.x), func_5(var_3.b.yz, Struct_4(vec3<bool>(true, var_0.a.x, false), var_0.b, var_0.c, vec3<f32>(var_3.b.x, var_2.x, 1000f), vec2<bool>(true, var_3.a.x))).c, var_3.b, var_0.a.yy)).c.b.x, 1f, _wgslsmith_f_op_f32(258f * _wgslsmith_f_op_f32(-var_3.b.x))));
}

