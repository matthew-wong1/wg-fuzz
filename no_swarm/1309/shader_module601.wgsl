struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<u32, 9>;

var<private> global2: u32;

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = ~(~firstLeadingBit(firstTrailingBit(vec4<u32>(global3.x, global0.x, 59366u, global3.x))));
    global0 = abs(~vec2<u32>(var_0.x, var_0.x));
    var var_1 = -352f;
    var var_2 = Struct_2(arg_0, -(arg_0.a.xy >> (select(~var_0.ww, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(72526u, 9u)]), vec2<u32>(4294967295u, global3.x)), arg_0.c.x) % vec2<u32>(32u))));
    var var_3 = vec2<f32>(var_2.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.b.x, 1000f))))) - _wgslsmith_f_op_f32(-var_2.a.b.x)));
    return var_2.a.a;
}

fn func_2() -> Struct_2 {
    global3 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 20095u, 4294967295u, global3.x) | vec4<u32>(global1[_wgslsmith_index_u32(global0.x, 9u)], 0u, 2588u, 29435u), ~vec4<u32>(global3.x, global3.x, global0.x, 29129u)), ~(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.x, 9u)], 9u)], global0.x, global0.x, 28877u))), _wgslsmith_clamp_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 76155u, 1u, global0.x), vec4<u32>(global1[_wgslsmith_index_u32(global3.x, 9u)], global0.x, global1[_wgslsmith_index_u32(42201u, 9u)], 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, global0.x, 24838u), vec4<u32>(4294967295u, 26192u, global1[_wgslsmith_index_u32(9722u, 9u)], 6345u)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(33727u, 9u)], 10249u), vec2<u32>(global0.x, 1u)), ~74320u, ~2778u, global1[_wgslsmith_index_u32(4294967295u, 9u)]), ~(~vec4<u32>(global1[_wgslsmith_index_u32(21822u, 9u)], 4294967295u, 13966u, global3.x))));
    let var_0 = vec3<bool>(true, true, global0.x < global3.x);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-124f)), -814f, 1038f, -558f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1470f, -284f, 448f, 359f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1059f, 1862f, -130f, -193f) * vec4<f32>(-1178f, 1217f, -2504f, 1000f))) - vec4<f32>(_wgslsmith_f_op_f32(floor(-744f)), -1000f, -310f, _wgslsmith_div_f32(668f, 1172f)))));
    global0 = select(global3.zz, _wgslsmith_div_vec2_u32(~global3.yz, global3.wx), any(!select(var_0.xx, vec2<bool>(var_0.x, false), var_0.zy))) >> (vec2<u32>(75154u, firstTrailingBit(83477u)) % vec2<u32>(32u));
    var var_2 = var_1.x;
    return Struct_2(Struct_1(-func_3(Struct_1(u_input.a, var_1.yw, vec3<bool>(false, true, false))), _wgslsmith_f_op_vec2_f32(var_1.wx - vec2<f32>(var_1.x, _wgslsmith_f_op_f32(268f * 653f))), !select(vec3<bool>(true, true, var_0.x), var_0, any(vec2<bool>(true, var_0.x)))), u_input.a.yz);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: bool) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = var_0.a.c.xy;
    global1 = array<u32, 9>();
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(~u_input.a.x, 15332i), var_0.b.x);
    let var_3 = Struct_1(vec3<i32>(min(-(i32(-1i) * -35392i), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_0.a.a.x, -2147483647i, -28002i))), 2147483647i, _wgslsmith_mod_i32(~var_2.x << (~global0.x % 32u), _wgslsmith_mult_i32(u_input.a.x, -1i) >> (~1u % 32u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(962f))), _wgslsmith_f_op_f32(var_0.a.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)))), vec3<bool>(arg_2, arg_1, var_0.a.c.x));
    return func_2().a;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    global1 = array<u32, 9>();
    var var_0 = (all(vec3<bool>(false, arg_0, arg_1.a.c.x)) && arg_1.a.c.x) & func_2().a.c.x;
    var var_1 = !vec4<bool>(false, func_3(func_2().a).x < (i32(-1i) * -53028i), select(any(!vec4<bool>(false, true, arg_0, false)), true, abs(global0.x) != ~4294967295u), arg_0 | any(arg_1.a.c));
    var var_2 = ~(~(~vec4<u32>(4294967295u, 35745u, ~1u, _wgslsmith_mult_u32(14131u, global1[_wgslsmith_index_u32(38102u, 9u)]))));
    var var_3 = func_1(_wgslsmith_sub_vec3_u32(var_2.yzw >> (_wgslsmith_add_vec3_u32(vec3<u32>(global3.x, global0.x, 36938u), var_2.zyw) % vec3<u32>(32u)), (select(var_2.xzz, vec3<u32>(global1[_wgslsmith_index_u32(77907u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], global0.x), true) << (firstLeadingBit(vec3<u32>(86383u, 4623u, global3.x)) % vec3<u32>(32u))) ^ ((global3.zxx >> (vec3<u32>(var_2.x, 96526u, global3.x) % vec3<u32>(32u))) & firstLeadingBit(var_2.wwy))), func_2().a.c.x, func_1(~countOneBits(global3.zyw), true, select(-8439i <= func_2().a.a.x, false, arg_0)).c.x);
    return Struct_2(func_1(vec3<u32>(var_2.x, 1u, ~_wgslsmith_mult_u32(4294967295u, global0.x)), select(false, false, any(!vec4<bool>(arg_1.a.c.x, var_1.x, arg_1.a.c.x, false))), arg_1.a.c.x), firstLeadingBit(vec2<i32>(1i, i32(-1i) * -12954i)) >> (abs(countOneBits(global3.zz & vec2<u32>(21218u, 38993u))) % vec2<u32>(32u)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(global3.yx, vec2<u32>(40942u, global1[_wgslsmith_index_u32(global3.x, 9u)])), ~(~_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(global3.x, arg_2.x)), ~arg_2.yx, global3.xz)), arg_2.yz);
    let var_0 = !select(select(select(vec4<bool>(arg_1.c.x, false, true, arg_1.c.x), !vec4<bool>(false, arg_0.a.c.x, false, arg_0.a.c.x), any(vec2<bool>(true, arg_0.a.c.x))), !select(vec4<bool>(false, false, false, true), vec4<bool>(arg_0.a.c.x, false, false, false), arg_0.a.c.x), select(!vec4<bool>(arg_1.c.x, arg_1.c.x, arg_0.a.c.x, true), vec4<bool>(false, false, arg_1.c.x, false), all(arg_0.a.c.xx))), !select(!vec4<bool>(false, false, arg_0.a.c.x, true), !vec4<bool>(arg_0.a.c.x, arg_3.c.x, false, arg_0.a.c.x), func_1(global3.xxx, false, arg_3.c.x).c.x), !vec4<bool>(true, arg_3.c.x, all(vec4<bool>(false, arg_1.c.x, false, true)), func_2().a.c.x));
    global2 = global0.x | 0u;
    global3 = firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(select(firstTrailingBit(vec4<u32>(1u, 1u, 24445u, global0.x)), ~vec4<u32>(4294967295u, 20159u, 52884u, global3.x), func_1(arg_2, false, true).c.x), max(abs(vec4<u32>(global0.x, 0u, global1[_wgslsmith_index_u32(arg_2.x, 9u)], 1u)), firstLeadingBit(vec4<u32>(4294967295u, 0u, 39232u, global0.x)))), min(~firstLeadingBit(vec4<u32>(global3.x, 4294967295u, 1u, global1[_wgslsmith_index_u32(global3.x, 9u)])), ~vec4<u32>(4294967295u, 57311u, global3.x, 52418u)), ~(abs(vec4<u32>(global0.x, arg_2.x, global1[_wgslsmith_index_u32(4294967295u, 9u)], 32970u)) ^ ~vec4<u32>(global3.x, global0.x, arg_2.x, arg_2.x))));
    var var_1 = abs(global3.xy);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.a.b.x, -1204f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -24439i, u_input.a.x, u_input.a.x)))) >> (vec3<u32>(reverseBits(1u), ~global0.x, firstTrailingBit(_wgslsmith_div_u32(global0.x << (global3.x % 32u), 4294967295u))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_mod_i32(~firstLeadingBit(-2147483647i), ~(-2147483647i)) > ~u_input.a.x;
    global1 = array<u32, 9>();
    var var_2 = _wgslsmith_f_op_f32(func_5(func_4(true, Struct_2(func_1(reverseBits(vec3<u32>(1u, 4294967295u, 1u)), true, var_0.x != u_input.a.x), u_input.a.yz)), Struct_1(abs(u_input.a), vec2<f32>(1f, 1f), vec3<bool>(var_1, var_1, var_1)), _wgslsmith_mult_vec3_u32(~max(~vec3<u32>(63273u, global0.x, 55261u), _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global0.x, 9u)], 24490u, 7801u), global3.wwy)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(36411u, 4294967295u), vec2<u32>(63879u, global0.x)), ~global1[_wgslsmith_index_u32(13769u, 9u)], ~global1[_wgslsmith_index_u32(0u, 9u)])), func_1(global3.wyy, true | var_1, false)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f - 2014f)));
    var var_3 = func_4(all(!(!vec3<bool>(true, false, var_1))) || var_1, Struct_2(func_1(global3.xyy, func_2().a.c.x, var_1), vec2<i32>(i32(-1i) * -u_input.a.x, -(var_0.x | 1i)))).a;
    var var_4 = func_2().b.x;
    let var_5 = func_1(global3.zzw, var_1, all(vec4<bool>(true, true, func_4(var_3.c.x && var_1, Struct_2(Struct_1(vec3<i32>(var_3.a.x, u_input.a.x, -16135i), vec2<f32>(277f, var_3.b.x), vec3<bool>(var_3.c.x, false, var_3.c.x)), vec2<i32>(37120i, u_input.a.x))).a.c.x, !all(vec4<bool>(var_3.c.x, var_1, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, var_5.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b.x) + _wgslsmith_f_op_f32(sign(-282f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, var_3.b.x, var_3.c.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -202f));
}

