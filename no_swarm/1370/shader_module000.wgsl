struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(-1186f, -1000f, 1000f), vec3<f32>(965f, -573f, 408f), vec3<f32>(719f, -1000f, -486f), vec3<f32>(-1120f, -714f, -1385f), vec3<f32>(343f, -499f, 1803f), vec3<f32>(-306f, -375f, 1097f), vec3<f32>(874f, -680f, -492f), vec3<f32>(152f, 758f, 1140f), vec3<f32>(556f, 947f, 459f), vec3<f32>(1469f, -1131f, -1868f), vec3<f32>(646f, 1108f, 1181f), vec3<f32>(296f, -1000f, -1000f), vec3<f32>(1251f, -315f, -1000f), vec3<f32>(-1352f, 722f, -491f));

var<private> global1: vec3<f32> = vec3<f32>(454f, 2492f, -1000f);

var<private> global2: array<f32, 8> = array<f32, 8>(-1000f, 247f, -567f, -1964f, 935f, 156f, 114f, -567f);

var<private> global3: vec2<f32> = vec2<f32>(-332f, 400f);

var<private> global4: array<f32, 31> = array<f32, 31>(1000f, -192f, -612f, 450f, 1554f, 547f, -1939f, -132f, -226f, -953f, -136f, -253f, 145f, 1000f, -829f, 1564f, 524f, 805f, -1542f, 276f, -641f, -554f, -1597f, -535f, 1440f, -2284f, 297f, 2104f, -408f, 1320f, 954f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1466f, _wgslsmith_f_op_f32(1197f - arg_1.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.x - 476f), -895f, arg_0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.a.a.x, 739f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(1u, 8u)], 255f)))), _wgslsmith_f_op_vec2_f32(-arg_1.b))));
    global3 = _wgslsmith_div_vec2_f32(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -268f)))));
    return select(arg_0.d.b, select(arg_0.d.b, vec4<bool>(true, 0i < ~u_input.a, select(arg_0.d.b.x, any(vec3<bool>(arg_0.d.b.x, arg_0.a.x, true)), !arg_0.a.x), arg_0.a.x), vec4<bool>(all(select(vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.d.b.xx, vec2<bool>(true, arg_0.a.x))), arg_0.a.x, arg_0.d.b.x, arg_0.a.x)), !arg_0.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> vec4<bool> {
    return select(vec4<bool>(arg_0.a.x, arg_0.d.b.x, all(vec4<bool>(true, true, select(arg_0.d.b.x, false, arg_0.d.b.x), true)), true), arg_0.d.b, select(!(!select(vec4<bool>(arg_0.a.x, false, arg_0.d.b.x, arg_0.d.b.x), arg_0.d.b, false)), vec4<bool>(arg_0.a.x, arg_0.a.x, firstTrailingBit(-6261i) != _wgslsmith_dot_vec2_i32(vec2<i32>(27715i, arg_0.b), vec2<i32>(9198i, 31980i)), all(select(arg_0.d.b, arg_0.d.b, arg_0.d.b.x))), arg_0.a.x));
}

fn func_2(arg_0: f32) -> Struct_4 {
    global2 = array<f32, 8>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(24523u, 8u)], -154f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global2[_wgslsmith_index_u32(0u, 8u)])))), vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(floor(global1.x)))), func_4(Struct_3(vec2<bool>(true, true), 0i, select(vec4<u32>(2557u, 42990u, 22486u, 18420u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(1u, 42700u, 42591u, 1u)), func_3(Struct_3(vec2<bool>(false, false), u_input.b, vec4<u32>(4294967295u, 32497u, 4294967295u, 10105u), Struct_2(Struct_1(global1.zy, global1.yz), vec4<bool>(true, true, false, true), Struct_1(vec2<f32>(arg_0, global1.x), global1.zz))), Struct_1(vec2<f32>(1000f, -1082f), vec2<f32>(1153f, global3.x)))), Struct_2(Struct_1(vec2<f32>(1000f, global3.x), vec2<f32>(709f, global2[_wgslsmith_index_u32(0u, 8u)])), vec4<bool>(true, true, true, true), Struct_1(global1.yy, global1.xy))), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.xx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.zz) * _wgslsmith_f_op_vec2_f32(global1.zy * global1.zx)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(38527u, 8u)])), _wgslsmith_f_op_f32(select(global3.x, 389f, true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.zx, vec2<f32>(321f, 2182f), true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1254f, 1370f), _wgslsmith_f_op_vec2_f32(exp2(global1.xx)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -630f)) * vec2<f32>(global4[_wgslsmith_index_u32(29821u, 31u)], global4[_wgslsmith_index_u32(42985u, 31u)])), func_4(Struct_3(vec2<bool>(false, false), u_input.a, vec4<u32>(37525u, 22164u, 1421u, 45941u), Struct_2(Struct_1(global1.xy, vec2<f32>(global1.x, global3.x)), vec4<bool>(false, true, true, false), Struct_1(vec2<f32>(-754f, 387f), vec2<f32>(551f, arg_0)))), Struct_1(global1.zx, global1.zy)).x))));
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 31u)]))), -937f), var_0.b);
    var var_2 = 1u;
    let var_3 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.x * -329f))), 1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-201f, arg_0))))))), func_4(Struct_3(func_4(Struct_3(vec2<bool>(var_1.b.x, var_1.b.x), u_input.a, vec4<u32>(0u, 0u, 1u, 4294967295u), Struct_2(Struct_1(vec2<f32>(arg_0, var_1.a.x), var_0.a.b), var_0.b, var_0.a)), var_0.c).yy, firstTrailingBit(u_input.b), ~vec4<u32>(81335u, 25634u, 39182u, 19894u), Struct_2(Struct_1(var_0.c.b, vec2<f32>(global3.x, 860f)), vec4<bool>(false, var_1.b.x, var_0.b.x, true), var_0.c)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.a)) + vec2<f32>(-1000f, global1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.xx - vec2<f32>(-1385f, arg_0)) - var_0.a.a))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, global2[_wgslsmith_index_u32(30846u, 8u)]) - var_0.c.b) + _wgslsmith_f_op_vec2_f32(-var_1.a)) - _wgslsmith_f_op_vec2_f32(sign(global1.xx))), _wgslsmith_f_op_vec2_f32(min(var_1.a, vec2<f32>(1244f, _wgslsmith_f_op_f32(arg_0 - -142f))))));
    return Struct_4(_wgslsmith_div_vec2_f32(global1.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2322f, -1000f))), _wgslsmith_div_vec2_f32(vec2<f32>(652f, 1424f), vec2<f32>(-909f, var_3.a.a.x))))), select(var_0.b, vec4<bool>(false, (var_3.b.x && true) || any(vec2<bool>(var_1.b.x, var_0.b.x)), var_3.b.x, 0i > _wgslsmith_clamp_i32(u_input.b, u_input.b, 2147483647i)), !var_0.b.x));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(~u_input.b), _wgslsmith_mod_i32(-13909i, _wgslsmith_mult_i32(55119i, u_input.a)) ^ (i32(-1i) * -3567i)), ~(~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.a) | vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.b, 0i))));
    let var_1 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.x)))))));
    let var_2 = _wgslsmith_mult_u32(abs(countOneBits(~_wgslsmith_div_u32(4294967295u, 4294967295u))), ~(~1u));
    global0 = array<vec3<f32>, 14>();
    return _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_2, var_2) >> (~(~vec2<u32>(21443u, var_2)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(0u, 1u)), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_2, var_2), vec2<u32>(var_2, 37146u), false) & ~vec2<u32>(var_2, var_2), vec2<u32>(17814u, var_2 ^ var_2), firstLeadingBit(vec2<u32>(var_2, 0u)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_4) -> u32 {
    global3 = arg_2.a;
    let var_0 = vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(38792u, arg_0.x), 8u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-513f * 1115f))), -531f);
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.x >> (63044u % 32u), ~40729u), vec2<u32>(_wgslsmith_div_u32(1u, arg_0.x), arg_0.x) >> (vec2<u32>(arg_0.x, ~4294967295u) % vec2<u32>(32u))), arg_0.wz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = -1165f;
    global0 = array<vec3<f32>, 14>();
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-596f * 169f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(43925u, 2194u, 18483u), 31u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-1297f * 1384f), _wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(1u, 31u)]))))) * global0[_wgslsmith_index_u32(~(~0u), 14u)]));
    global1 = global0[_wgslsmith_index_u32(~func_5(vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 15368u, 1u), vec3<u32>(19905u, 29326u, 4294967295u))), _wgslsmith_sub_u32(func_1(Struct_2(Struct_1(vec2<f32>(-374f, -1516f), vec2<f32>(1023f, global2[_wgslsmith_index_u32(1u, 8u)])), vec4<bool>(var_0.x, true, true, false), Struct_1(global1.yz, vec2<f32>(132f, global2[_wgslsmith_index_u32(65949u, 8u)]))), false), 4294967295u), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(24528u, 76259u, 56123u), max(vec3<u32>(4294967295u, 0u, 59423u), vec3<u32>(15560u, 1u, 0u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-426f, _wgslsmith_f_op_f32(round(-205f)), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 31u)] - global2[_wgslsmith_index_u32(0u, 8u)]), global4[_wgslsmith_index_u32(1u, 31u)])), Struct_4(global1.xx, vec4<bool>(var_0.x && false, var_0.x, var_0.x, true)), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-575f, global1.x))), func_4(Struct_3(var_0.zz, u_input.b, vec4<u32>(51127u, 76257u, 61708u, 40815u), Struct_2(Struct_1(vec2<f32>(global4[_wgslsmith_index_u32(19868u, 31u)], global3.x), vec2<f32>(787f, global4[_wgslsmith_index_u32(0u, 31u)])), vec4<bool>(var_0.x, true, var_0.x, true), Struct_1(vec2<f32>(-534f, global4[_wgslsmith_index_u32(2849u, 31u)]), global1.zx))), Struct_1(global1.yz, global1.xy)))), 14u)];
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(4294967295u, 14u)] - global0[_wgslsmith_index_u32(53213u, 14u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(31666u, 9830u, 16274u, 1u), vec4<u32>(28499u, 4294967295u, 5213u, 15405u)), 14u)])))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-361f, -1000f, 978f) - _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(~4294967295u, 14u)] + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(54907u, 14u)]), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-806f, 2059f, global2[_wgslsmith_index_u32(32790u, 8u)]))))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

