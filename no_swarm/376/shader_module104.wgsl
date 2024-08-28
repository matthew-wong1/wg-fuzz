struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: array<vec3<bool>, 30>;

var<private> global2: vec3<f32> = vec3<f32>(-171f, 2414f, -583f);

var<private> global3: array<vec2<bool>, 9>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = -2147483647i;
    global1 = array<vec3<bool>, 30>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-787f - _wgslsmith_f_op_f32(global2.x + 189f))), !all(vec2<bool>(global0.x, false)) || false, vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, all(!select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, true, true, global0.x))), !global0.x, global0.x));
    var var_2 = false;
    var var_3 = global2.x;
    return true;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global3 = array<vec2<bool>, 9>();
    var var_0 = u_input.a.zx;
    let var_1 = arg_0.c;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-global2.x), !var_1.x, select(var_1, !vec4<bool>(global0.x | true, global2.x < arg_0.a, false, true), vec4<bool>(func_3(), true, !var_1.x, !all(global1[_wgslsmith_index_u32(var_0.x, 30u)]))), !arg_0.d);
    var_0 = ~(~(~min(_wgslsmith_sub_vec2_u32(u_input.a.zx, u_input.a.zw), ~vec2<u32>(var_0.x, u_input.a.x))));
    return 1313f;
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, -906f, global2.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-183f, global2.x, global2.x))), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(func_2(Struct_1(global2.x, arg_0, vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(global0.x, global0.x, false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -306f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1746f) + _wgslsmith_f_op_f32(-164f - 697f)), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-712f, 2008f, true))))));
    var var_1 = -2141f;
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(123f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x - -2234f))))));
    var var_2 = arg_0;
    global0 = vec4<bool>(true, false || select(any(vec4<bool>(false, true, true, false)), false, false), true, false);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(round(global2.x)), !all(vec4<bool>(true, global0.x, false, global0.x)))), !all(!global0.yxw), select(vec4<bool>(arg_0, global0.x, arg_0, select(arg_0, true, global0.x)), select(select(vec4<bool>(global0.x, arg_0, false, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), false), !vec4<bool>(global0.x, global0.x, global0.x, global0.x), false), !arg_0), !vec4<bool>(true, true, arg_0, all(global3[_wgslsmith_index_u32(u_input.a.x, 9u)]))), ~abs(~_wgslsmith_mod_i32(2147483647i, 38266i)), ~u_input.a.x, var_0.x);
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = Struct_2(func_1((true || global0.x) == arg_2.a.c.x).a, -1i, ~(~(arg_2.c & ~arg_2.c)), _wgslsmith_f_op_f32(floor(-2322f)));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(13436u & u_input.a.x, 33885u) & (abs(arg_2.c) | (u_input.a.x << (u_input.a.x % 32u))), 14296u, 36552u, 42705u), vec4<u32>(_wgslsmith_mod_u32(240u, arg_2.c >> (1u % 32u)), 58246u, u_input.a.x, countOneBits(countOneBits(_wgslsmith_div_u32(arg_2.c, var_0.c)))));
    var var_2 = true;
    var var_3 = func_1(any(vec2<bool>(arg_2.a.b, func_1(true).a.d.x)));
    let var_4 = var_3.a;
    return select(vec4<bool>(global0.x && !(!var_3.a.b), all(!select(vec2<bool>(arg_2.a.c.x, false), global3[_wgslsmith_index_u32(0u, 9u)], vec2<bool>(global0.x, var_4.c.x))), !(_wgslsmith_f_op_f32(-var_3.d) < arg_2.d), func_1(var_3.a.d.x).c <= abs(4063u)), !var_4.d, vec4<bool>(false, var_3.a.c.x, func_3(), !all(global0.zw) & true));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = 1365f;
    global0 = func_1(true).a.d;
    let var_1 = Struct_1(global2.x, false, func_4(-116f, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 1065f, global2.x, global2.x) + vec4<f32>(func_1(true).a.a, _wgslsmith_f_op_f32(global2.x - -506f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -228f))), func_1(global0.x)), arg_0);
    return func_1(var_1.b).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(func_4(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x) + vec4<f32>(global2.x, -622f, global2.x, -1000f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.x, 663f, -2571f, global2.x), vec4<f32>(global2.x, global2.x, global2.x, global2.x))))), func_1(select(global0.x, false, true))), !(!func_1(true).a.c), func_4(_wgslsmith_f_op_f32(func_2(func_1(global0.x).a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(340f, -1491f, global2.x, global2.x)), Struct_2(func_1(true).a, _wgslsmith_mod_i32(2147483647i, 1i), u_input.a.x, global2.x))), !global0.wwx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 658f, 1060f) + vec3<f32>(-119f, global2.x, -839f))))), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(28202i, 1i, ~(-2147483647i)), ~(-vec3<i32>(-2147483647i, 48425i, 1i)), reverseBits(vec3<i32>(-9548i, 32217i, 29567i))), ~vec3<i32>(~(-2147483647i), 1i << (u_input.a.x % 32u), ~(-781i))));
    let var_1 = ~vec3<i32>(~(-(~12052i)), 5659i, -_wgslsmith_mult_i32(0i, _wgslsmith_div_i32(19767i, -15681i)));
    var var_2 = func_5(func_5(func_4(_wgslsmith_div_f32(274f, _wgslsmith_f_op_f32(global2.x - var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, -555f, global2.x, 1000f)))), Struct_2(Struct_1(451f, false, vec4<bool>(false, true, false, var_0.c.x), vec4<bool>(true, false, global0.x, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(1727i, var_1.x, -9898i, 1i), vec4<i32>(var_1.x, var_1.x, var_1.x, 1i)), u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -686f))), !vec3<bool>(global0.x, select(global0.x, var_0.c.x, false), var_0.c.x), vec3<f32>(-894f, _wgslsmith_f_op_f32(func_5(var_0.d, vec3<bool>(var_0.c.x, true, false), vec3<f32>(605f, 709f, global2.x), vec3<i32>(var_1.x, 2147483647i, 0i)).a * _wgslsmith_f_op_f32(global2.x - var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - -634f) - var_0.a)), -(~var_1)).c, select(vec3<bool>(true, var_0.c.x, global0.x & (u_input.a.x <= 10847u)), !select(func_5(vec4<bool>(true, true, false, false), global1[_wgslsmith_index_u32(35916u, 30u)], vec3<f32>(-840f, global2.x, 855f), var_1).d.yzw, vec3<bool>(global0.x, var_0.d.x, false), global0.x & true), any(func_4(-158f, vec4<f32>(-204f, 566f, -978f, 1339f), Struct_2(Struct_1(-751f, false, vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, global0.x)), var_1.x, u_input.a.x, global2.x)).wzy)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, global2.x, 1815f) - vec3<f32>(-554f, global2.x, global2.x)))), vec3<f32>(-412f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-890f, 1435f))), _wgslsmith_f_op_f32(sign(-821f))))), var_1);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -552f), true, vec4<bool>(global0.x, false, var_0.c.x, var_2.c.x), !func_4(752f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(976f, 352f, 662f, -1725f)))), Struct_2(func_5(var_0.d, global0.zxy, vec3<f32>(1382f, var_2.a, var_2.a), var_1), var_1.x, ~u_input.a.x, _wgslsmith_f_op_f32(max(-331f, var_0.a)))));
    var var_4 = vec2<bool>(true, false);
    var_4 = !vec2<bool>(true, func_3());
    var_4 = var_0.d.wz;
    var_4 = !global0.ww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 3237i, var_1.x, 1i), vec4<i32>(var_1.x, -28432i, var_1.x, 1i)), -var_1.x, var_1.x, 24639i) << (max(u_input.a, u_input.a) % vec4<u32>(32u)), select(vec4<i32>(-2147483647i, var_1.x, _wgslsmith_sub_i32(var_1.x, var_1.x), _wgslsmith_sub_i32(-9730i, 37722i)), vec4<i32>(var_1.x, -11922i, i32(-1i) * -35901i, var_1.x), false)), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-var_1.x, -var_1.x, reverseBits(var_1.x), _wgslsmith_mod_i32(34609i, 47773i))), vec4<i32>(~var_1.x, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(42017i, -2147483647i, 1i), vec3<i32>(var_1.x, var_1.x, 28177i))), var_1.x | (var_1.x & -2147483647i), firstTrailingBit(var_1.x))), abs(select(reverseBits(vec4<i32>(-33992i, 0i, var_1.x, 1i) & vec4<i32>(11571i, 5146i, -25044i, 2147483647i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -50684i, var_1.x, 1i), vec4<i32>(var_1.x, var_1.x, -2147483647i, var_1.x)), !(!vec4<bool>(false, true, var_0.b, true)))));
}

