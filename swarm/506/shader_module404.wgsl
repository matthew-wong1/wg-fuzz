struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: vec2<f32>;

var<private> global2: Struct_1 = Struct_1(13134i, vec2<i32>(-50055i, 10833i));

var<private> global3: array<bool, 9> = array<bool, 9>(true, false, false, true, true, true, false, false, false);

var<private> global4: array<i32, 21> = array<i32, 21>(5810i, 2147483647i, i32(-2147483648), 8723i, 46879i, -4651i, 1i, 0i, 0i, 1i, 18057i, 1i, 2147483647i, -1i, -1i, 36594i, -1i, 1i, -1i, 16303i, -91511i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, global1.x, 1210f, 336f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, global1.x, global1.x, -229f))))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x))), _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(704f, _wgslsmith_f_op_f32(global1.x * global1.x)))));
    global3 = array<bool, 9>();
    var var_1 = vec4<u32>(_wgslsmith_mod_u32(27908u, u_input.b), u_input.e.x, _wgslsmith_mult_u32(u_input.e.x | _wgslsmith_clamp_u32(u_input.b, _wgslsmith_sub_u32(41699u, u_input.e.x), u_input.e.x), _wgslsmith_div_u32(u_input.b, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.e.x, 69046u, 92358u), 23369u))), 1u);
    var var_2 = Struct_4(abs(_wgslsmith_mod_u32(u_input.e.x, firstTrailingBit(u_input.e.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1000f)), global1.x)))), vec3<u32>(~(~_wgslsmith_add_u32(0u, 31645u)), 72363u, var_1.x), ~u_input.c);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -1462f)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zzx)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-148f, _wgslsmith_f_op_f32(abs(-398f)), var_2.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 540f, 896f)))))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_5) -> bool {
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(reverseBits(u_input.a.x), i32(-1i) * -countOneBits(global2.b.x)), max(i32(-1i) * -2147483647i, 12156i), -1i);
    let var_1 = -51393i;
    let var_2 = 8061u;
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_3.c.x, 0u, ~_wgslsmith_add_u32(var_2, 46435u)), _wgslsmith_mod_u32(arg_3.e.x, u_input.e.x), ~(~25751u));
    global0 = array<Struct_3, 10>();
    return _wgslsmith_f_op_f32(-132f - _wgslsmith_f_op_f32(round(global1.x))) != global1.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(arg_1.c, false), vec2<bool>(false, true), arg_1.c), all(vec3<bool>(arg_1.c, true, true))), select(!vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 9u)]), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 9u)], false), select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(true, global3[_wgslsmith_index_u32(54557u, 9u)]))), all(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 9u)], arg_1.c, false, arg_1.c))));
    let var_1 = Struct_1(_wgslsmith_mult_i32(6377i, ~_wgslsmith_add_i32(62864i, -arg_1.a.x)), ~_wgslsmith_mod_vec2_i32(global2.b, max(firstTrailingBit(arg_0.yx), min(vec2<i32>(15010i, arg_0.x), arg_0.xx))));
    var var_2 = select(!vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.b), 9u)], global3[_wgslsmith_index_u32(u_input.e.x, 9u)], true, true), vec4<bool>(u_input.d.x >= 0i, arg_1.c, !arg_1.c | !var_0.x, !all(vec3<bool>(arg_1.c, arg_1.c, arg_1.c))), all(vec4<bool>(false, false, !(106f < global1.x), any(!vec3<bool>(arg_1.c, global3[_wgslsmith_index_u32(u_input.e.x, 9u)], arg_1.c)))));
    let var_3 = vec4<u32>(u_input.e.x, u_input.e.x, 26140u, ~(36100u & u_input.e.x));
    let var_4 = vec4<bool>(any(select(select(var_2.zww, vec3<bool>(true, true, true), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.e.x, 9u)], true)), select(select(vec3<bool>(false, var_2.x, true), var_2.xwy, vec3<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 9u)], var_0.x, true)), !var_2.xxx, func_3(Struct_1(25802i, vec2<i32>(1042i, 76028i)), false, var_0.x, Struct_5(vec2<bool>(var_0.x, arg_1.c), arg_1.a, u_input.e.zwz, arg_0.x, vec3<u32>(0u, var_3.x, var_3.x)))), var_2.xyz)), true, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1.d.x)))) + arg_1.d.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x)))));
    return !vec3<bool>(arg_1.c, var_2.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global1.x);
    var var_1 = _wgslsmith_f_op_f32(max(global1.x, global1.x));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1698f, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, global1.x, global1.x, 724f) * vec4<f32>(-3115f, var_0, 1000f, -540f))))));
    var var_4 = true;
    let var_5 = Struct_2(-_wgslsmith_mult_vec4_i32(~(u_input.c ^ vec4<i32>(24457i, 1i, -1i, 0i)), vec4<i32>(_wgslsmith_sub_i32(-1i, -42075i), -2147483647i, _wgslsmith_mult_i32(11124i, -1i), max(global4[_wgslsmith_index_u32(u_input.e.x, 21u)], 8829i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_3.xx + vec2<f32>(global1.x, 953f)))))) * var_3.zx), global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(4294967295u >> (var_2 % 32u)), u_input.e.x | ~var_2), 9u)], _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1656f, var_0, var_0) - var_3.yxw))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_3.yzz))), _wgslsmith_f_op_vec3_f32(func_1())), select(select(vec3<bool>(false, global3[_wgslsmith_index_u32(var_2, 9u)], false), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 9u)], global3[_wgslsmith_index_u32(48445u, 9u)], true), vec3<bool>(true, false, false), global3[_wgslsmith_index_u32(u_input.b, 9u)]), global3[_wgslsmith_index_u32(u_input.b, 9u)]), select(func_2(vec3<i32>(global4[_wgslsmith_index_u32(82398u, 21u)], -31187i, -2147483647i), Struct_2(u_input.c, var_3.wz, global3[_wgslsmith_index_u32(4294967295u, 9u)], vec3<f32>(global1.x, var_0, var_3.x))), !vec3<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 9u)]), true), select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 9u)], false, global3[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(global3[_wgslsmith_index_u32(61785u, 9u)], global3[_wgslsmith_index_u32(u_input.b, 9u)], global3[_wgslsmith_index_u32(var_2, 9u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(u_input.b, 9u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~reverseBits(abs(u_input.e.x)), ~countOneBits(var_2 >> (1u % 32u)), ~abs(_wgslsmith_sub_u32(51595u, var_2)), u_input.b), vec4<f32>(var_5.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_5.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5.b.x), _wgslsmith_f_op_f32(-var_3.x), !var_5.c)) - -614f), -302f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -953f) - 1116f), _wgslsmith_f_op_vec3_f32(func_1()).x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -2780f, var_0, -522f))))))));
}

