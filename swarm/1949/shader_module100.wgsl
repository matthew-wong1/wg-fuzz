struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 51368i;

var<private> global1: array<u32, 9> = array<u32, 9>(1u, 13925u, 40620u, 1u, 1u, 1u, 0u, 47503u, 0u);

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

var<private> global3: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(0u, 81132u), vec2<u32>(23194u, 1u), vec2<u32>(4294967295u, 75529u), vec2<u32>(1u, 1600u), vec2<u32>(1u, 1u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 108121u), vec2<u32>(1u, 23334u), vec2<u32>(0u, 0u), vec2<u32>(52748u, 24119u), vec2<u32>(0u, 4294967295u), vec2<u32>(20432u, 1u), vec2<u32>(64336u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(45318u, 49441u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 98679u), vec2<u32>(24642u, 23983u), vec2<u32>(49884u, 1u), vec2<u32>(83428u, 97557u), vec2<u32>(86894u, 0u), vec2<u32>(1u, 7220u), vec2<u32>(0u, 43553u), vec2<u32>(0u, 1u), vec2<u32>(14374u, 4294967295u), vec2<u32>(4294967295u, 786u));

var<private> global4: Struct_3 = Struct_3(true, vec2<i32>(1i, 1i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_4) -> bool {
    var var_0 = Struct_1(select(!vec4<bool>(all(global2.xx), true, true, global4.a), select(!select(vec4<bool>(global2.x, false, global2.x, global4.a), vec4<bool>(false, global4.a, false, global2.x), vec4<bool>(true, true, true, global2.x)), !select(vec4<bool>(global4.a, false, true, global4.a), vec4<bool>(false, global2.x, global2.x, global2.x), false), vec4<bool>(all(global2.xy), true, !global4.a, global2.x | global4.a)), global4.a), true, !select(vec4<bool>(false && global4.a, true, global4.a, true), !select(vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(global4.a, true, true, global2.x), true), vec4<bool>(true, true, true, global4.a)), arg_1.yxy, (vec4<u32>(0u, 0u, ~u_input.a, _wgslsmith_mult_u32(1u, u_input.a)) & ~select(vec4<u32>(463u, arg_0, arg_2.a, 30764u), arg_1, true)) ^ arg_1);
    let var_1 = 20481u;
    var var_2 = i32(-1i) * -_wgslsmith_clamp_i32(firstTrailingBit(-23999i), -11211i, countOneBits(u_input.b));
    let var_3 = global4.b;
    var var_4 = ~vec4<u32>(abs(64259u), global1[_wgslsmith_index_u32(var_0.d.x, 9u)], _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.a, 9u)] ^ 49871u, arg_1.x), _wgslsmith_mult_u32(u_input.a, ~(~arg_1.x)));
    return !(!any(var_0.a));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_3(!any(!select(vec3<bool>(false, global2.x, true), vec3<bool>(false, global2.x, false), false)), vec2<i32>(-_wgslsmith_sub_i32(global4.b.x, global4.b.x), reverseBits(1010i)) & (abs(u_input.c.xz) >> (~max(vec2<u32>(4294967295u, 1u), global3[_wgslsmith_index_u32(0u, 28u)]) % vec2<u32>(32u))));
    var var_1 = ~select(72368u, _wgslsmith_mult_u32(74441u, ~max(u_input.a, u_input.a)), true && global2.x);
    let var_2 = func_3(5807u, abs(vec4<u32>(~min(u_input.a, u_input.a), 1u, global1[_wgslsmith_index_u32(1u, 9u)] & 80183u, u_input.a)), Struct_4(1u));
    var var_3 = firstTrailingBit(vec3<u32>(~_wgslsmith_add_u32(u_input.a, u_input.a), global1[_wgslsmith_index_u32(u_input.a, 9u)], min(~global1[_wgslsmith_index_u32(1u, 9u)], 1u))) << (select(~vec3<u32>(u_input.a, 0u, u_input.a) | min(~vec3<u32>(1658u, u_input.a, 120719u), ~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(14811u, 9u)], 38262u)), _wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.a, 4294967295u, u_input.a) | vec3<u32>(u_input.a, u_input.a, 1u), countOneBits(vec3<u32>(u_input.a, 20038u, 1u)), vec3<bool>(false, true, var_2)), vec3<u32>(_wgslsmith_mult_u32(u_input.a, 0u), 3432u, u_input.a)), !all(vec4<bool>(var_0.a, var_2, false, global4.a))) % vec3<u32>(32u));
    var var_4 = _wgslsmith_sub_u32(~u_input.a, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_3.x, var_3.x), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], global1[_wgslsmith_index_u32(15344u, 9u)])), ~u_input.a), 9u)], 0u));
    return vec3<bool>(!(!global4.a), false, true);
}

fn func_1() -> vec2<i32> {
    var var_0 = !select(select(select(!vec3<bool>(global4.a, true, false), vec3<bool>(true, true, true), vec3<bool>(global2.x, global4.a, true)), vec3<bool>(false, !global2.x, true), any(global2.zz)), select(select(vec3<bool>(false, false, global2.x), func_2(global4.b, vec2<f32>(-999f, 1000f)), vec3<bool>(false, global2.x, true)), vec3<bool>(true, false, true), global4.a), ((global4.b.x ^ u_input.b) & 1i) > firstTrailingBit(-22865i));
    let var_1 = false;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1957f, -892f), _wgslsmith_f_op_f32(select(780f, -2101f, true)))) * 1181f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-376f, _wgslsmith_f_op_f32(f32(-1f) * -1875f)) + _wgslsmith_f_op_f32(193f + _wgslsmith_f_op_f32(sign(467f)))))));
    var var_3 = vec3<u32>(~(~(11951u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 9u)], 9u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(~global1[_wgslsmith_index_u32(4294967295u, 9u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], abs(0u), u_input.a) >> (vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(u_input.a, 9u)]), 9u)], ~u_input.a, ~u_input.a, countOneBits(31683u)) % vec4<u32>(32u)), min(vec4<u32>(16239u, 1u, u_input.a, 81946u), vec4<u32>(~4294967295u, _wgslsmith_mult_u32(u_input.a, u_input.a), firstTrailingBit(5030u), ~37196u))), ~(~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 1u, u_input.a), 9u)]) << (~global1[_wgslsmith_index_u32(26664u, 9u)] % 32u));
    global1 = array<u32, 9>();
    return -reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), u_input.c.xx, vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(global4.b.x, -2147483647i, global4.b.x)), _wgslsmith_add_i32(u_input.c.x, u_input.c.x))));
}

fn func_4(arg_0: Struct_3) -> Struct_5 {
    global0 = arg_0.b.x;
    var var_0 = Struct_3(!global4.a, _wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(-vec2<i32>(-46291i, -2147483647i), min(vec2<i32>(arg_0.b.x, global4.b.x), vec2<i32>(global4.b.x, u_input.c.x))), arg_0.b));
    global2 = select(select(!(!vec3<bool>(true, var_0.a, arg_0.a)), select(select(vec3<bool>(arg_0.a, global4.a, global4.a), vec3<bool>(global4.a, true, true), vec3<bool>(true, false, global2.x)), func_2(-var_0.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -828f), vec2<f32>(-220f, 1000f), global2.xy))), false), func_2(~arg_0.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(291f, -493f) - vec2<f32>(1038f, 1000f)))))), !select(!select(vec3<bool>(true, false, global4.a), vec3<bool>(global2.x, arg_0.a, arg_0.a), arg_0.a), !(!vec3<bool>(true, global4.a, false)), true), arg_0.a);
    var var_1 = vec2<bool>(!global4.a, global4.a | true);
    let var_2 = Struct_1(select(select(select(vec4<bool>(var_1.x, false, false, arg_0.a), vec4<bool>(global2.x, var_0.a, false, global2.x), var_0.a), select(select(vec4<bool>(var_1.x, global2.x, global4.a, true), vec4<bool>(false, true, false, var_1.x), true), select(vec4<bool>(arg_0.a, true, false, global4.a), vec4<bool>(var_1.x, true, var_0.a, false), global4.a), select(vec4<bool>(var_1.x, global4.a, var_1.x, false), vec4<bool>(true, true, false, var_1.x), vec4<bool>(false, false, false, false))), vec4<bool>(func_3(u_input.a, vec4<u32>(0u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)]), Struct_4(56108u)), any(vec3<bool>(global4.a, global4.a, var_1.x)), true, var_1.x)), !vec4<bool>(global4.a, func_2(vec2<i32>(14986i, var_0.b.x), vec2<f32>(-182f, 1796f)).x, !var_0.a, all(global2.xz)), select(!(!vec4<bool>(arg_0.a, true, global4.a, var_1.x)), select(!vec4<bool>(arg_0.a, global2.x, false, var_0.a), !vec4<bool>(var_1.x, global2.x, true, true), select(vec4<bool>(global4.a, global4.a, arg_0.a, false), vec4<bool>(false, global2.x, true, var_0.a), vec4<bool>(global4.a, false, false, true))), select(select(vec4<bool>(global4.a, true, var_1.x, var_0.a), vec4<bool>(var_0.a, var_0.a, arg_0.a, var_1.x), vec4<bool>(false, false, true, var_1.x)), vec4<bool>(global4.a, global2.x, var_1.x, false), !var_1.x))), (((u_input.a ^ global1[_wgslsmith_index_u32(0u, 9u)]) >> (1u % 32u)) >= _wgslsmith_mod_u32(4294967295u, 548u)) || var_0.a, !select(select(!vec4<bool>(var_0.a, arg_0.a, global2.x, var_1.x), select(vec4<bool>(true, true, false, arg_0.a), vec4<bool>(false, arg_0.a, true, false), true), select(vec4<bool>(true, global4.a, false, var_0.a), vec4<bool>(global4.a, global2.x, true, false), true)), vec4<bool>(var_0.a || var_0.a, true, func_3(global1[_wgslsmith_index_u32(53119u, 9u)], vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(4u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], 32930u), Struct_4(16537u)), arg_0.a), var_0.a), ~vec3<u32>(u_input.a, 1u, 0u) | ~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 65624u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 54219u, global1[_wgslsmith_index_u32(85222u, 9u)]), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 9u)], 30232u))), vec4<u32>(4070u, ~46057u, ~8533u, u_input.a));
    return Struct_5(global1[_wgslsmith_index_u32(54510u, 9u)]);
}

fn func_5(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: bool) -> Struct_5 {
    global0 = -22492i;
    let var_0 = _wgslsmith_mod_u32(u_input.a, (~(~u_input.a) | func_4(Struct_3(true, vec2<i32>(1i, -2147483647i))).a) & (arg_0.a & 4294967295u));
    global0 = countOneBits(-9367i);
    let var_1 = Struct_2(Struct_1(select(vec4<bool>(u_input.a != 23472u, true, global4.a, true), vec4<bool>(global2.x, true, true, true), true), global2.x, !vec4<bool>(true, true, all(vec4<bool>(false, global4.a, global2.x, true)), arg_2), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 6451u, global1[_wgslsmith_index_u32(0u, 9u)], 2956u), _wgslsmith_clamp_vec4_u32(vec4<u32>(17499u, u_input.a, var_0, arg_0.a), vec4<u32>(global1[_wgslsmith_index_u32(27327u, 9u)], arg_0.a, global1[_wgslsmith_index_u32(7054u, 9u)], 9981u), vec4<u32>(u_input.a, 1u, arg_1.x, var_0))), firstTrailingBit(_wgslsmith_add_u32(41703u, u_input.a)), ~_wgslsmith_sub_u32(arg_1.x, 30165u)), firstLeadingBit(~vec4<u32>(arg_0.a, u_input.a, var_0, 4294967295u) | min(vec4<u32>(arg_0.a, arg_0.a, 8663u, arg_0.a), vec4<u32>(u_input.a, 58842u, arg_0.a, 37523u)))), Struct_1(!vec4<bool>(arg_1.x != u_input.a, global4.a, arg_2, false), global4.a, vec4<bool>(arg_2, arg_2, select(false, func_2(vec2<i32>(0i, global4.b.x), vec2<f32>(-673f, 874f)).x, func_2(vec2<i32>(u_input.b, global4.b.x), vec2<f32>(364f, -1572f)).x), true), abs(vec3<u32>(global1[_wgslsmith_index_u32(~var_0, 9u)], _wgslsmith_dot_vec3_u32(vec3<u32>(15393u, 23962u, 4294967295u), vec3<u32>(arg_0.a, arg_1.x, arg_0.a)), 4294967295u)), ~(~abs(vec4<u32>(var_0, arg_0.a, global1[_wgslsmith_index_u32(33691u, 9u)], arg_0.a)))), u_input.c.x, reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a >> (0u % 32u), 43200u, 17218u << (0u % 32u)), vec3<u32>(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(var_0, 28u)], arg_1), ~1u, ~83477u))), -vec2<i32>(1i, max(1i, 1i)));
    let var_2 = var_1;
    return Struct_5(~(1u | abs(u_input.a & arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -627f;
    var var_1 = func_5(func_4(Struct_3(!(!global4.a), func_1())), ~_wgslsmith_div_vec2_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u << (u_input.a % 32u), 16058u << (u_input.a % 32u)), 28u)], ~(~global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 9u)], 28u)])), global2.x);
    var var_2 = vec4<i32>(u_input.b, global4.b.x, 2147483647i, 0i);
    global1 = array<u32, 9>();
    var var_3 = vec3<bool>(true, global2.x, global4.a);
    global1 = array<u32, 9>();
    var var_4 = ~vec4<u32>(~(~(~14969u)), _wgslsmith_mult_u32(0u ^ _wgslsmith_mult_u32(9426u, u_input.a), global1[_wgslsmith_index_u32(var_1.a, 9u)]), ~(~(~1u)), var_1.a);
    let var_5 = -809f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(var_1.a, 9u)], func_5(Struct_5(1689u), vec2<u32>(39762u, 1u), global4.a).a), _wgslsmith_add_u32(87954u, u_input.a) & 0u, firstLeadingBit(~var_4.x), ~(~var_1.a)) >> (vec4<u32>(var_1.a, firstTrailingBit(_wgslsmith_dot_vec3_u32(var_4.xxx, var_4.xyx)), max(func_5(Struct_5(var_1.a), global3[_wgslsmith_index_u32(var_4.x, 28u)], false).a, u_input.a >> (61265u % 32u)), _wgslsmith_clamp_u32(abs(global1[_wgslsmith_index_u32(46121u, 9u)]), func_5(Struct_5(1u), global3[_wgslsmith_index_u32(37074u, 28u)], false).a, ~36061u)) % vec4<u32>(32u)), vec4<u32>(~(~(~var_1.a)), _wgslsmith_div_u32(4482u, _wgslsmith_div_u32(u_input.a, var_1.a)), ~(~6514u), 0u));
}

