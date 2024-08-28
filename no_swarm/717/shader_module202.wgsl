struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -666f;

var<private> global1: vec2<f32>;

var<private> global2: array<i32, 19> = array<i32, 19>(37071i, -1i, 35256i, 0i, i32(-2147483648), 22227i, -41608i, 0i, 12696i, 1i, 2147483647i, 45742i, -1i, 13392i, 2147483647i, -37918i, 12470i, 2147483647i, -1i);

var<private> global3: Struct_2 = Struct_2(27424u, true, vec3<bool>(false, true, true), vec3<f32>(-253f, 951f, 1232f), vec3<u32>(0u, 4294967295u, 0u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> bool {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))), any(!vec4<bool>(global3.b, true, global3.a <= global3.e.x, -1i > u_input.a)), vec4<i32>(-(~30045i), global2[_wgslsmith_index_u32(~global3.e.x, 19u)], _wgslsmith_clamp_i32(u_input.a, -12235i ^ global2[_wgslsmith_index_u32(10727u, 19u)], ~global2[_wgslsmith_index_u32(21000u, 19u)]), ~global2[_wgslsmith_index_u32(~global3.e.x, 19u)]) & ~((vec4<i32>(2147483647i, u_input.a, -29758i, global2[_wgslsmith_index_u32(4294967295u, 19u)]) >> (vec4<u32>(global3.a, 12983u, global3.a, 23511u) % vec4<u32>(32u))) | abs(vec4<i32>(u_input.a, 3434i, u_input.a, global2[_wgslsmith_index_u32(global3.a, 19u)]))), 4294967295u, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-927f * -2110f))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1138f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.a) * _wgslsmith_f_op_f32(-global3.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(812f, _wgslsmith_f_op_f32(global3.d.x - -1755f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-561f, -993f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global3.d.zy - _wgslsmith_f_op_vec2_f32(round(var_1.xy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1302f, 805f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(967f, 884f)) - _wgslsmith_div_vec2_f32(var_1.zx, vec2<f32>(var_0.a, 222f)))) - global3.d.yy)));
    global2 = array<i32, 19>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global3.d.xx))));
    return ~abs(1u) != global3.a;
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_4) -> Struct_2 {
    let var_0 = global3.c;
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-252f, global1.x)))) * arg_2.b.d.xx), _wgslsmith_f_op_vec2_f32(trunc(global3.d.yz))))));
    global2 = array<i32, 19>();
    global2 = array<i32, 19>();
    return Struct_2(~arg_2.b.e.x, global3.c.x, select(vec3<bool>(_wgslsmith_f_op_f32(-global1.x) != _wgslsmith_div_f32(global1.x, arg_0), true || !global3.c.x, select(all(vec3<bool>(arg_2.b.b, global3.c.x, var_0.x)), 152f < arg_2.c.x, !arg_2.b.c.x)), vec3<bool>(!(true || var_0.x), false, false), false), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d.x * global1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.d.x)) + -112f)), global3.d.x, global1.x), arg_2.b.e);
}

fn func_1() -> vec3<f32> {
    global3 = func_3(global1.x, vec2<bool>(!select(any(global3.c), global3.b, func_2()), true & !global3.c.x), Struct_4(true, Struct_2(global3.a, select(global3.c.x, true, true), global3.c, vec3<f32>(_wgslsmith_f_op_f32(global3.d.x - 1028f), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -907f)), global3.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.d.x)))));
    global2 = array<i32, 19>();
    global3 = func_3(_wgslsmith_f_op_f32(461f - global1.x), !(!global3.c.zx), Struct_4(true != global3.c.x, Struct_2(global3.e.x, !select(global3.c.x, global3.b, true), !func_3(924f, global3.c.zy, Struct_4(true, Struct_2(46020u, true, vec3<bool>(global3.b, global3.c.x, global3.b), global3.d, vec3<u32>(global3.a, 62698u, global3.a)), global3.d, global3.d.x)).c, vec3<f32>(_wgslsmith_f_op_f32(trunc(-481f)), 920f, _wgslsmith_f_op_f32(global3.d.x + 1050f)), global3.e), vec3<f32>(global3.d.x, 463f, -755f), _wgslsmith_f_op_f32(global3.d.x - 1f)));
    var var_0 = global3.c.yx;
    var var_1 = Struct_2(59082u, false, select(global3.c, vec3<bool>(false, all(global3.c), var_0.x), all(select(!vec4<bool>(global3.c.x, global3.b, false, var_0.x), vec4<bool>(var_0.x, true, global3.c.x, var_0.x), global3.b))), global3.d, global3.e);
    return var_1.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(func_3(985f, !func_3(_wgslsmith_f_op_f32(f32(-1f) * -791f), func_3(global1.x, vec2<bool>(false, true), Struct_4(false, arg_1, global3.d, arg_1.d.x)).c.yx, Struct_4(false, arg_1, global3.d, -936f)).c.zx, Struct_4(min(54805i, 38395i) != (global2[_wgslsmith_index_u32(arg_2.a, 19u)] & -22512i), func_3(global1.x, vec2<bool>(false, false), Struct_4(true, Struct_2(0u, arg_1.b, vec3<bool>(false, true, true), arg_1.d, vec3<u32>(14368u, arg_0.a, 1u)), vec3<f32>(-311f, -103f, 2207f), arg_1.d.x)), global3.d, global1.x)).d.yz, arg_1.d.xx));
    return -((vec4<i32>(global2[_wgslsmith_index_u32(3184u, 19u)], 52444i, u_input.a, 0i) ^ _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-2644i, 2147483647i, global2[_wgslsmith_index_u32(arg_2.a, 19u)], 0i)), max(vec4<i32>(u_input.a, -2147483647i, 7236i, 0i), vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(0u, 19u)], -1i, u_input.a)), vec4<i32>(8575i, -42036i, 1i, 1i))) >> (vec4<u32>(arg_2.a, ~_wgslsmith_sub_u32(4294967295u, 0u), 4898u, ~1u) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_u32(firstTrailingBit(global3.e.zy), (global3.e.yz & ~arg_3.zy) | ~abs(global3.e.yx));
    var var_1 = vec4<bool>(all(!select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, global3.b, global3.b), !vec4<bool>(global3.c.x, global3.c.x, arg_0.x, true))), !(!arg_0.x), 16895i != ~_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(var_0.x & arg_3.x, 19u)], arg_1.x), true);
    global3 = func_3(-576f, !vec2<bool>(_wgslsmith_div_u32(var_0.x, 0u) > arg_2.a, ~arg_1.x < arg_1.x), Struct_4(!all(!vec4<bool>(global3.c.x, false, true, false)), func_3(global1.x, global3.c.yy, Struct_4(false, func_3(global3.d.x, global3.c.xy, Struct_4(true, Struct_2(1u, arg_0.x, var_1.zzx, global3.d, vec3<u32>(27596u, 4294967295u, var_0.x)), global3.d, global1.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.d.x, -872f, global1.x))), 952f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global3.d, vec3<f32>(-1195f, -327f, global3.d.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2030f, 608f, 180f) * vec3<f32>(182f, 1309f, -354f))), global3.d)), global1.x));
    var_1 = !(!(!vec4<bool>(func_3(global1.x, vec2<bool>(arg_0.x, global3.b), Struct_4(true, Struct_2(4294967295u, global3.b, global3.c, vec3<f32>(-1049f, global3.d.x, -439f), global3.e), vec3<f32>(global1.x, -119f, global3.d.x), 571f)).c.x, any(vec2<bool>(global3.c.x, global3.b)), true, arg_0.x)));
    var var_2 = Struct_2(arg_2.a, true | func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global3.d.x)), arg_0, Struct_4(true, func_3(global3.d.x, global3.c.yz, Struct_4(var_1.x, Struct_2(60752u, false, vec3<bool>(true, false, false), vec3<f32>(global3.d.x, -666f, -1000f), global3.e), vec3<f32>(1501f, -1240f, global3.d.x), 1591f)), _wgslsmith_f_op_vec3_f32(-global3.d), global1.x)).b, !func_3(362f, global3.c.xy, Struct_4(true, func_3(global3.d.x, var_1.zz, Struct_4(arg_0.x, Struct_2(1u, var_1.x, global3.c, global3.d, vec3<u32>(76695u, var_0.x, var_0.x)), global3.d, 1008f)), global3.d, -748f)).c, _wgslsmith_f_op_vec3_f32(vec3<f32>(2166f, _wgslsmith_f_op_f32(abs(777f)), _wgslsmith_f_op_f32(global1.x + global1.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.d - vec3<f32>(global3.d.x, global1.x, -111f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.d - vec3<f32>(global3.d.x, 389f, global3.d.x))), select(select(vec3<bool>(false, global3.b, global3.b), vec3<bool>(arg_0.x, arg_0.x, var_1.x), global3.c.x), func_3(global3.d.x, vec2<bool>(false, true), Struct_4(global3.c.x, Struct_2(20327u, global3.c.x, global3.c, global3.d, vec3<u32>(global3.a, 71596u, 0u)), global3.d, global1.x)).c, vec3<bool>(var_1.x, var_1.x, global3.b))))), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, arg_2.a), global3.e.zy >> (vec2<u32>(26703u, 1u) % vec2<u32>(32u))), ~arg_3.x, var_0.x));
    return Struct_1(min(~func_3(-902f, vec2<bool>(true, true), Struct_4(true, Struct_2(1u, arg_0.x, vec3<bool>(var_1.x, true, arg_0.x), vec3<f32>(-693f, var_2.d.x, -175f), vec3<u32>(arg_3.x, 1384u, arg_3.x)), vec3<f32>(884f, 775f, 1590f), 616f)).e.x, ~var_2.a) | var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!global3.c.xz, func_4(Struct_1(global3.e.x), Struct_2(select(0u, 10731u, true), false, vec3<bool>(any(global3.c), !global3.b, any(vec4<bool>(global3.c.x, false, global3.b, global3.c.x))), _wgslsmith_f_op_vec3_f32(func_1()), vec3<u32>(max(global3.a, global3.e.x), 64108u, 4294967295u)), Struct_1(firstLeadingBit(_wgslsmith_clamp_u32(51732u, global3.a, 4670u)))), Struct_1(~_wgslsmith_mod_u32(7313u, global3.e.x) | global3.e.x), vec3<u32>(global3.a, global3.e.x ^ ((global3.a >> (4294967295u % 32u)) & (global3.a << (global3.a % 32u))), 56440u));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_3(-1727f, global3.c.yx, Struct_4(global3.b, Struct_2(73999u, true, global3.c, global3.d, vec3<u32>(global3.a, 0u, global3.a)), vec3<f32>(423f, global3.d.x, -2442f), global3.d.x)).d.x)) - global1.x), _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-1111f * _wgslsmith_f_op_f32(-162f + global1.x)))))), false, vec4<i32>(2147483647i, 21593i, ~(-(u_input.a | u_input.a)), 0i), ~_wgslsmith_mod_u32(global3.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(global3.a, 0u, var_0.a, var_0.a), vec4<u32>(1u, 26341u, 0u, 14835u))), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(-global3.d.x), !global3.b))))));
    let var_2 = func_3(_wgslsmith_f_op_f32(-650f * var_1.a), global3.c.zx, Struct_4(var_1.b, Struct_2(countOneBits(firstLeadingBit(var_1.d)), true, select(!vec3<bool>(global3.b, true, global3.c.x), !vec3<bool>(false, true, global3.c.x), vec3<bool>(global3.c.x, true, false)), global3.d, min(global3.e, vec3<u32>(var_1.d, 43146u, 1u)) >> (~global3.e % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-232f, 1047f, 467f))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global3.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.x))));
    var var_3 = ~firstLeadingBit(~(~(~var_2.e)));
    let var_4 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-282f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), ~var_0.a <= 1u)) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(1000f - 459f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1726f)))))), -10554i < u_input.a, -vec4<i32>(abs(global2[_wgslsmith_index_u32(4294967295u, 19u)]), ~_wgslsmith_dot_vec4_i32(var_1.c, vec4<i32>(u_input.a, var_1.c.x, -2147483647i, global2[_wgslsmith_index_u32(var_0.a, 19u)])), abs(-1i), u_input.a), var_0.a, var_1.e);
    var var_5 = Struct_5(_wgslsmith_f_op_f32(step(var_1.e.a, _wgslsmith_f_op_f32(-global1.x))), true, ~_wgslsmith_sub_vec4_i32(vec4<i32>(-26533i | var_4.c.x, ~(-19465i), -20484i, 24024i), vec4<i32>(0i | global2[_wgslsmith_index_u32(global3.e.x, 19u)], -1i, firstLeadingBit(u_input.a), abs(59346i))), abs(~75451u), Struct_3(841f));
    var_3 = var_2.e;
    var_1 = Struct_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_vec3_f32(func_1()).x)), true, var_4.c, (13769u ^ (~1u & countOneBits(var_4.d))) ^ abs(global3.e.x), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -808f)));
    var_5 = Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 488f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f))))), var_1.c.x != var_1.c.x, max(abs(var_1.c), vec4<i32>(func_4(var_0, var_2, var_0).x, u_input.a, global2[_wgslsmith_index_u32(max(var_0.a, var_0.a), 19u)], _wgslsmith_dot_vec4_i32(var_5.c, vec4<i32>(global2[_wgslsmith_index_u32(16542u, 19u)], -4803i, -2147483647i, var_4.c.x))) ^ vec4<i32>(1i, 91139i, 2147483647i, 0i)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 0u, var_3.x) >> (vec3<u32>(var_5.d, var_5.d, 14883u) % vec3<u32>(32u)), global3.e), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.a * _wgslsmith_f_op_f32(-var_1.e.a)), 1178f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_2.d, vec3<f32>(global1.x, 369f, var_5.e.a))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_5.e.a, 801f, var_4.a), global3.d))), _wgslsmith_f_op_vec3_f32(exp2(var_2.d)))), _wgslsmith_f_op_vec3_f32(-var_2.d)), vec4<i32>(countOneBits(var_1.c.x & abs(0i)), min(-1i, 0i), 1i, -(~abs(33956i))), ~(func_3(_wgslsmith_f_op_f32(-495f + 599f), select(vec2<bool>(global3.b, false), var_2.c.yz, vec2<bool>(var_4.b, true)), Struct_4(var_4.b, Struct_2(4294967295u, false, vec3<bool>(false, true, true), vec3<f32>(var_5.a, -1596f, var_1.a), vec3<u32>(var_3.x, global3.e.x, var_4.d)), var_2.d, global3.d.x)).a << (29277u % 32u)));
}

