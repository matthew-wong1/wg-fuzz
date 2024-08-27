struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, 2147483647i);

var<private> global1: array<vec4<bool>, 21>;

var<private> global2: bool;

var<private> global3: vec3<f32>;

var<private> global4: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(0i, 1i, 2147483647i, 38924i), vec4<i32>(i32(-2147483648), -11152i, 0i, 2147483647i), vec4<i32>(-20167i, -12812i, 27782i, -327i), vec4<i32>(-1i, -9394i, -40660i, 30519i), vec4<i32>(52955i, -35208i, -27777i, -12170i), vec4<i32>(-2517i, 55738i, 28665i, 1i), vec4<i32>(0i, 1i, 2147483647i, -46384i), vec4<i32>(-19660i, -45622i, -1i, 8716i), vec4<i32>(2147483647i, 72370i, -26915i, -1i), vec4<i32>(2147483647i, 1i, 0i, 24344i), vec4<i32>(-1i, -15347i, 27690i, 1i), vec4<i32>(2147483647i, 0i, 35528i, -1i), vec4<i32>(26157i, i32(-2147483648), 0i, -1i), vec4<i32>(-41640i, 1i, -8110i, 0i), vec4<i32>(-8386i, -83597i, -15151i, 0i), vec4<i32>(-1i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(-48780i, 19539i, -11532i, i32(-2147483648)));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> vec3<bool> {
    let var_0 = firstTrailingBit(min(global4[_wgslsmith_index_u32(1u, 17u)], (arg_0.a.b.c | vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.a.x)) & _wgslsmith_sub_vec4_i32(vec4<i32>(54728i, global0.x, global0.x, u_input.b), vec4<i32>(u_input.b, 0i, 1i, arg_0.a.b.c.x))) & vec4<i32>(-reverseBits(u_input.b), 1i, _wgslsmith_add_i32(_wgslsmith_add_i32(global0.x, u_input.b), 3943i ^ arg_0.a.e), u_input.a.x));
    var var_1 = abs(~(arg_0.c >> (vec3<u32>(~arg_0.a.b.a, 25741u, abs(arg_0.c.x)) % vec3<u32>(32u))));
    let var_2 = arg_0;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-1f), var_2.a.b, select(var_2.a.c.b.yz, var_2.a.b.b.yy, !(688f < _wgslsmith_f_op_f32(ceil(-661f)))), global1[_wgslsmith_index_u32(~var_1.x, 21u)]);
    global2 = false;
    return select(!select(var_3.d.zyw, !var_2.a.b.b, var_3.b.d < min(var_2.c.x, 4294967295u)), arg_0.a.c.b, var_3.c.x);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: vec2<i32>) -> bool {
    global2 = arg_0.a.c.e | any(select(vec2<bool>(-23412i >= arg_3.x, true), vec2<bool>(global0.x >= arg_2.x, arg_1.x), arg_0.a.a.zx));
    var var_0 = Struct_2(global3.x, Struct_1(~(min(arg_0.c.x, 4294967295u) << (_wgslsmith_div_u32(arg_0.a.d, arg_0.c.x) % 32u)), select(arg_1, func_3(arg_0, _wgslsmith_f_op_f32(trunc(global3.x))), arg_1.x), ~vec4<i32>(firstLeadingBit(51790i), arg_0.a.e & -2147483647i, 1i, arg_2.x), 4294967295u, !select(true, false, false)), vec2<bool>(arg_1.x, all(!vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, true, arg_0.a.a.x))), !vec4<bool>(any(arg_0.a.b.b.yz), true, arg_1.x, false));
    let var_1 = ~28997i;
    var var_2 = _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(countOneBits(4294967295u), arg_0.a.d), min(var_0.b.d, firstTrailingBit(0u))), _wgslsmith_add_u32(~_wgslsmith_add_u32(var_0.b.a, var_0.b.d), select(1u, var_0.b.a, select(false, arg_1.x, arg_1.x)))), ~(~((16712u | arg_0.c.x) | ~var_0.b.a)));
    let var_3 = _wgslsmith_mult_i32(-23935i, -10521i) == (-countOneBits(1i) << (~(~arg_0.a.b.d) % 32u));
    return arg_0.a.a.x;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = any(select(select(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(113519u, 1u)), 21u)], all(vec3<bool>(false, true, true)) || all(vec3<bool>(true, false, false))), !select(global1[_wgslsmith_index_u32(4294967295u, 21u)], vec4<bool>(true, false, false, false), true), func_2(Struct_4(Struct_3(global1[_wgslsmith_index_u32(57069u, 21u)], Struct_1(66781u, vec3<bool>(true, true, true), vec4<i32>(u_input.a.x, 0i, global0.x, arg_0.x), 0u, true), Struct_1(11633u, vec3<bool>(true, false, false), global4[_wgslsmith_index_u32(4294967295u, 17u)], 0u, true), 4294967295u, arg_0.x), _wgslsmith_f_op_f32(abs(global3.x)), vec3<u32>(43659u, 4294967295u, 0u)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, true), global0.x >= 1i), abs(vec4<i32>(arg_0.x, u_input.b, global0.x, global0.x) & vec4<i32>(-99999i, -45889i, 1i, 11711i)), u_input.a)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1527f)) + -1000f), 1744f, -816f);
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(4294967295u, 21u)], Struct_1(45238u, vec3<bool>(true, select(all(vec3<bool>(true, false, true)), true, true), true), vec4<i32>(arg_0.x, _wgslsmith_clamp_i32(~26848i, u_input.b, arg_0.x), select(abs(global0.x), 0i, true), u_input.a.x), 1u, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-21791i, 3160i, -44932i), arg_0) != -2147483647i), Struct_1(abs(min(reverseBits(1u), _wgslsmith_div_u32(4294967295u, 2375u))), !vec3<bool>(288f >= var_1.x, func_2(Struct_4(Struct_3(vec4<bool>(false, true, true, false), Struct_1(0u, vec3<bool>(true, false, true), global4[_wgslsmith_index_u32(41983u, 17u)], 0u, true), Struct_1(7872u, vec3<bool>(true, false, false), global4[_wgslsmith_index_u32(10547u, 17u)], 4294967295u, false), 4294967295u, global0.x), -416f, vec3<u32>(1u, 24666u, 1u)), vec3<bool>(false, true, true), vec4<i32>(0i, 45455i, u_input.b, u_input.a.x), vec2<i32>(-1i, -35200i)), false), abs(reverseBits(reverseBits(global4[_wgslsmith_index_u32(20439u, 17u)]))), 14675u, (-u_input.b | u_input.a.x) == -firstTrailingBit(59754i)), 4294967295u, global0.x);
    global1 = array<vec4<bool>, 21>();
    global0 = -(~max(vec2<i32>(0i, 3082i) & _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(global0.x, global0.x)), min(arg_0.zz | vec2<i32>(arg_0.x, -1i), vec2<i32>(global0.x, 1i))));
    return 53782u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_add_i32(max(max(global0.x, global0.x) << (1u % 32u), 40091i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(-32300i, u_input.a.x), global0.x), 1i, -18526i)) > (~55807i << ((select(~110480u, 1u, -2147483647i > u_input.b) << (~min(1u, 66099u) % 32u)) % 32u));
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~7066u), _wgslsmith_sub_u32(4294967295u, func_1(vec3<i32>(2147483647i, -29073i, 851i) | vec3<i32>(global0.x, -1i, -1i)))), ~(vec2<u32>(1u, 81677u << (0u % 32u)) << ((min(vec2<u32>(25617u, 18720u), vec2<u32>(65494u, 1u)) << (firstTrailingBit(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_1 = Struct_3(vec4<bool>(!func_2(Struct_4(Struct_3(vec4<bool>(true, true, true, true), Struct_1(20724u, vec3<bool>(true, false, true), vec4<i32>(global0.x, 26966i, -21124i, u_input.a.x), 10428u, true), Struct_1(0u, vec3<bool>(false, true, true), global4[_wgslsmith_index_u32(4294967295u, 17u)], 13851u, false), 45603u, 1i), global3.x, vec3<u32>(0u, 98752u, 20548u)), func_3(Struct_4(Struct_3(vec4<bool>(false, false, false, false), Struct_1(34226u, vec3<bool>(false, false, false), vec4<i32>(-2147483647i, -241i, 4597i, 2147483647i), 0u, false), Struct_1(90089u, vec3<bool>(false, false, false), vec4<i32>(2147483647i, -1i, 0i, 2147483647i), 4294967295u, false), 67206u, u_input.a.x), 1405f, vec3<u32>(4294967295u, 0u, 4294967295u)), -724f), _wgslsmith_div_vec4_i32(vec4<i32>(34365i, 48450i, u_input.a.x, u_input.b), global4[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_mod_vec2_i32(u_input.a, u_input.a)), !all(func_3(Struct_4(Struct_3(global1[_wgslsmith_index_u32(1u, 21u)], Struct_1(0u, vec3<bool>(true, true, false), global4[_wgslsmith_index_u32(90672u, 17u)], 1u, false), Struct_1(0u, vec3<bool>(false, true, true), vec4<i32>(u_input.b, u_input.a.x, -1i, global0.x), 26053u, true), 50u, u_input.b), 995f, vec3<u32>(42629u, 87173u, 9288u)), global3.x)), !any(vec2<bool>(true, true)), !(_wgslsmith_f_op_f32(-global3.x) == 486f)), Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(31850u, 1u, 1u, 33894u), vec4<u32>(62947u, 39957u, 40220u, 37026u)), ~countOneBits(1u)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(func_2(Struct_4(Struct_3(global1[_wgslsmith_index_u32(0u, 21u)], Struct_1(1u, vec3<bool>(true, false, false), global4[_wgslsmith_index_u32(0u, 17u)], 0u, true), Struct_1(42700u, vec3<bool>(false, false, true), global4[_wgslsmith_index_u32(89863u, 17u)], 22165u, true), 24514u, global0.x), -1000f, vec3<u32>(9916u, 4294967295u, 4294967295u)), vec3<bool>(true, true, false), global4[_wgslsmith_index_u32(1u, 17u)], vec2<i32>(1i, global0.x)), true, true), _wgslsmith_f_op_f32(round(-1000f)) < _wgslsmith_f_op_f32(global3.x - -100f)), ~(select(vec4<i32>(23345i, -8406i, u_input.b, global0.x), global4[_wgslsmith_index_u32(47109u, 17u)], true) ^ -vec4<i32>(u_input.b, -22869i, u_input.b, 0i)), 1u, any(vec4<bool>(true, true, true, select(true, false, false)))), Struct_1(0u, vec3<bool>(true, false, true), ~(~vec4<i32>(u_input.a.x, global0.x, -7297i, 0i)), 1u, !(!select(false, false, true))), ~4294967295u, i32(-1i) * -global0.x);
    global4 = array<vec4<i32>, 17>();
    var var_2 = var_1.a;
    var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(~firstTrailingBit(4294967295u) << (~var_1.b.d % 32u)), abs(max(var_1.d, 5640u)), 0u), 21u)];
    var var_3 = var_1.c.c.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, global3.x, -208f), vec3<f32>(global3.x, -1193f, global3.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(616f, global3.x, 329f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1738f, -1923f, global3.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(global3.x - global3.x), all(var_1.c.b))) - global3.x))), var_1.c.a, _wgslsmith_f_op_f32(global3.x + -779f));
}

