struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 1097f, 36249u);

var<private> global1: array<f32, 21>;

var<private> global2: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(1705f, 1108f, 2054f, -444f), vec4<f32>(-1000f, 185f, 1266f, -416f), vec4<f32>(-1885f, -1295f, 187f, 1092f), vec4<f32>(-251f, 149f, 595f, 333f), vec4<f32>(-168f, -585f, -197f, 267f), vec4<f32>(-141f, 1061f, 1195f, 121f), vec4<f32>(1889f, 171f, -673f, 1285f), vec4<f32>(824f, -799f, 1204f, 531f), vec4<f32>(482f, 500f, -833f, 985f), vec4<f32>(634f, 619f, -967f, -571f), vec4<f32>(-1000f, 602f, 713f, -119f), vec4<f32>(-478f, 2318f, -926f, 1000f), vec4<f32>(-753f, 649f, 168f, -586f), vec4<f32>(-776f, 873f, -703f, -688f), vec4<f32>(1729f, 1041f, -1369f, -1262f), vec4<f32>(375f, -1000f, -694f, 2385f), vec4<f32>(633f, 725f, 412f, 460f), vec4<f32>(-714f, 1290f, 914f, -270f), vec4<f32>(1382f, -1000f, -256f, -176f), vec4<f32>(627f, -139f, 585f, -511f), vec4<f32>(757f, 1000f, -1275f, -1072f), vec4<f32>(-757f, 1005f, 383f, -1000f), vec4<f32>(330f, -729f, -436f, 716f), vec4<f32>(899f, -935f, 470f, 1307f), vec4<f32>(1000f, 871f, -1022f, -167f));

var<private> global3: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.c, 21u)])) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.b, 547f)) * _wgslsmith_f_op_f32(abs(945f))))));
    var var_1 = 10062i;
    let var_2 = global2[_wgslsmith_index_u32(global0.c, 25u)];
    let var_3 = Struct_2(u_input.a, global0.a, 22967u);
    let var_4 = all(vec4<bool>(true, true, !(var_3.b | true), all(!(!vec3<bool>(var_3.b, var_3.b, global0.a)))));
    return _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-(_wgslsmith_sub_vec2_i32(vec2<i32>(global3.x, 0i), vec2<i32>(var_3.a.x, -60043i)) << (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global0.c), vec2<u32>(23749u, global0.c)) % vec2<u32>(32u))), select(~vec2<i32>(12814i, -4021i), var_3.a ^ u_input.a, select(vec2<bool>(false, var_3.b), vec2<bool>(var_4, var_3.b), vec2<bool>(global0.a, var_3.b))) << (countOneBits(select(vec2<u32>(var_3.c, var_3.c), vec2<u32>(global0.c, 22291u), vec2<bool>(global0.a, true))) % vec2<u32>(32u))), vec2<i32>(var_3.a.x, ~min(var_3.a.x, global3.x) & _wgslsmith_clamp_i32(i32(-1i) * -1i, reverseBits(11839i), _wgslsmith_dot_vec2_i32(vec2<i32>(-41008i, global3.x), vec2<i32>(1i, u_input.a.x)))));
}

fn func_2() -> i32 {
    global3 = select(countOneBits(-(vec2<i32>(global3.x, 12870i) ^ vec2<i32>(global3.x, u_input.a.x)) ^ (vec2<i32>(-1i) * -vec2<i32>(1i, u_input.a.x))), ~(func_3() >> (vec2<u32>(global0.c, global0.c) % vec2<u32>(32u))), select(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(global0.a, global0.a)), select(vec2<bool>(true, false), vec2<bool>(false, global0.a), true), select(vec2<bool>(true, global0.a), vec2<bool>(false, false), vec2<bool>(global0.a, global0.a))), !(!vec2<bool>(global0.a, global0.a)), !(!select(vec2<bool>(false, global0.a), vec2<bool>(global0.a, global0.a), vec2<bool>(false, true)))));
    global0 = Struct_1(!(~global0.c == 56639u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + global0.b)))), global0.c);
    let var_0 = select(max(global0.c, 4294967295u), ~select(16204u, global0.c, any(!vec3<bool>(true, false, global0.a))), false);
    global1 = array<f32, 21>();
    return _wgslsmith_div_i32(0i, -2147483647i);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = array<vec4<f32>, 25>();
    let var_0 = true;
    let var_1 = Struct_2(u_input.a, !select(false, !var_0, var_0) || (u_input.a.x >= -(56458i | global3.x)), global0.c);
    global3 = _wgslsmith_div_vec2_i32(var_1.a ^ -var_1.a, var_1.a | vec2<i32>(~global3.x, ~32762i)) | (u_input.a ^ select(select(var_1.a, -vec2<i32>(global3.x, -83212i), true), select(vec2<i32>(53978i, u_input.a.x) | u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(-29187i, 0i), u_input.a), vec2<bool>(true, global0.a)), false));
    let var_2 = firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(0i, -select(var_1.a.x, 10433i, global0.a)), u_input.a.x, ~func_2()));
    return Struct_1(820f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(76359u, 21u)], 1000f)) * -926f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 21u)] - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.b, global0.b), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 21u)])), all(vec2<bool>(var_0, var_0))))) - -487f), _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, abs(max(1u, 4294967295u))), ~(~firstLeadingBit(vec2<u32>(63242u, var_1.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(0u);
    let var_0 = -vec4<i32>(u_input.a.x, -(~reverseBits(-1940i)), -2147483647i, ~global3.x);
    var var_1 = all(!select(vec2<bool>(func_1(4294967295u).a, false), select(select(vec2<bool>(false, true), vec2<bool>(global0.a, true), vec2<bool>(true, false)), select(vec2<bool>(false, global0.a), vec2<bool>(global0.a, global0.a), global0.a), !global0.a), select(vec2<bool>(true, global0.a), vec2<bool>(false, global0.a), !vec2<bool>(global0.a, global0.a))));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1119f), 56329u);
    var var_2 = _wgslsmith_mod_vec2_i32((select(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, 25039i), var_0.yw), _wgslsmith_clamp_vec2_i32(var_0.xy, vec2<i32>(global3.x, global3.x), vec2<i32>(-1i, u_input.a.x)), vec2<bool>(global0.a, true)) << (~_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.c, global0.c), vec2<u32>(global0.c, global0.c), vec2<u32>(global0.c, global0.c)) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_i32(min(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(global3.x, u_input.a.x)), vec2<i32>(-2147483647i, 19261i)), select(select(vec2<i32>(global3.x, 0i), vec2<i32>(var_0.x, var_0.x), vec2<bool>(global0.a, global0.a)), u_input.a ^ var_0.zw, !vec2<bool>(global0.a, false))), -vec2<i32>(-25005i, abs(_wgslsmith_div_i32(-29615i, -53094i))));
    let var_3 = Struct_2(vec2<i32>(global3.x, -1i ^ abs(var_0.x | 3467i)), !(true && global0.a), ~global0.c);
    let var_4 = var_3;
    global0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_1(1u).b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1411f), _wgslsmith_f_op_f32(f32(-1f) * -299f)), var_3.b))), func_1(var_4.c).c);
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, reverseBits(vec3<u32>(~global0.c, global0.c, var_3.c)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2480f, _wgslsmith_f_op_f32(-global0.b), _wgslsmith_div_f32(-608f, global1[_wgslsmith_index_u32(var_4.c, 21u)]), _wgslsmith_f_op_f32(1351f * 1109f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(var_3.c, 21u)], -195f)), select(!vec4<bool>(false, var_4.b, false, var_4.b), select(vec4<bool>(var_3.b, true, true, true), vec4<bool>(true, true, false, global0.a), var_4.b), vec4<bool>(false, true, var_3.b, true)))))), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_4.c, 21u)]), -439f, _wgslsmith_f_op_f32(682f - -1216f), _wgslsmith_f_op_f32(global0.b + -237f)));
}

