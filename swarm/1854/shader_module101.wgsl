struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: vec4<bool>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    var var_0 = -1i;
    let var_1 = ~_wgslsmith_mult_i32(arg_1 & -_wgslsmith_mod_i32(4339i, -1i), -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, arg_1), vec2<i32>(5613i, 2116i)), ~vec2<i32>(0i, -27636i)));
    var var_2 = var_1;
    return arg_0.b.c;
}

fn func_3(arg_0: vec2<f32>) -> vec4<bool> {
    let var_0 = Struct_4(Struct_1(false, vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, -19232i, u_input.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -1i, 7788i), vec3<i32>(u_input.b, u_input.b, u_input.a.x))), countOneBits(-17791i << (0u % 32u)), ~(~(-15526i))), max(u_input.a, u_input.a), global1.x & global1.x), vec4<u32>(1u, _wgslsmith_mod_u32(~10003u, 1u) ^ ~firstTrailingBit(4294967295u), abs(1315u), abs(reverseBits(reverseBits(47410u)))), func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 121f)), Struct_2(abs(vec3<i32>(u_input.a.x, 38724i, u_input.a.x)), any(global1.xyx), func_1(Struct_3(883f, global0[_wgslsmith_index_u32(4294967295u, 11u)], Struct_1(false, vec3<i32>(u_input.b, u_input.b, 1061i), vec2<i32>(u_input.a.x, 0i), false)), -21523i), vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(!global1.x, _wgslsmith_div_vec3_i32(vec3<i32>(-36588i, -2622i, u_input.a.x), vec3<i32>(5554i, 0i, -6129i)), -vec2<i32>(-3953i, -70864i), false)), 1i), u_input.a, arg_0.x);
    let var_1 = global0[_wgslsmith_index_u32(~4294967295u, 11u)];
    let var_2 = -2147483647i;
    return select(!(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(global1.x, true, true, var_0.a.d), vec4<bool>(false, false, false, true)))), select(vec4<bool>(func_1(Struct_3(-422f, Struct_2(vec3<i32>(-1i, var_2, -49140i), var_0.c.a, Struct_1(false, var_0.a.b, u_input.a, var_0.c.d), var_1.d), var_1.c), 46848i).d, var_1.c.a, global1.x && var_0.a.a, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, var_1.b, true, var_0.c.a), vec4<bool>(var_0.c.d, var_1.b, true, var_1.b), vec4<bool>(true, false, var_0.c.a, true)), true), true), _wgslsmith_f_op_f32(abs(200f)) <= _wgslsmith_f_op_f32(arg_0.x - arg_0.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_3) -> u32 {
    global1 = select(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.zz, _wgslsmith_f_op_vec2_f32(arg_0.zx * vec2<f32>(1040f, arg_0.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(169f, arg_0.x)), _wgslsmith_f_op_vec2_f32(-arg_0.zz)))), vec4<bool>(all(global1.wx), any(select(!vec4<bool>(arg_2.b.b, global1.x, global1.x, false), select(vec4<bool>(false, global1.x, false, arg_2.c.d), vec4<bool>(arg_2.b.c.a, true, arg_2.b.c.a, global1.x), vec4<bool>(global1.x, arg_2.b.b, true, global1.x)), vec4<bool>(true, false, true, arg_2.c.a))), false, any(!func_3(arg_0.zz))), any(vec4<bool>(arg_2.c.a, true, false, arg_2.c.a || (arg_2.c.a & arg_2.b.b))));
    var var_0 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zy - arg_0.xz) - arg_0.xy) - _wgslsmith_f_op_vec2_f32(abs(arg_0.xz))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.xx, arg_0.yx, global1.ww)))));
    var_0 = select(select(select(vec4<bool>(any(vec4<bool>(var_0.x, arg_2.c.d, arg_2.b.c.d, var_0.x)), arg_2.b.c.d, any(vec4<bool>(false, true, true, true)), false), vec4<bool>(!arg_2.b.b, arg_2.c.d, global1.x, arg_2.c.a), false), vec4<bool>(false, select(func_1(arg_2, 2147483647i).d, var_0.x & true, !global1.x), var_0.x, true), vec4<bool>(_wgslsmith_mod_u32(1u, arg_2.b.d.x) == (arg_2.b.d.x >> (13608u % 32u)), u_input.a.x == ~11316i, all(!global1.xyy), (arg_2.b.d.x >= 13158u) & false)), select(!func_3(vec2<f32>(128f, arg_0.x)), func_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-460f, 1539f)))), select(vec4<bool>(arg_2.c.a, global1.x == false, true, any(vec4<bool>(false, true, false, false))), !vec4<bool>(arg_2.c.a, arg_2.b.c.d, false, var_0.x), vec4<bool>(true, all(vec3<bool>(false, arg_2.b.c.a, false)), true, arg_2.b.c.c.x <= 1i))), !(~(~23923u) != ~select(0u, arg_2.b.d.x, var_0.x)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-265f * arg_0.x)), arg_2.a);
    return ~select(arg_2.b.d.x, _wgslsmith_clamp_u32(35751u, 1u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, 4294967295u, arg_2.b.d.x), 19909u >> (arg_2.b.d.x % 32u), arg_2.b.d.x)), !arg_2.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(709f, 1368f)), _wgslsmith_f_op_f32(min(2137f, _wgslsmith_div_f32(282f, 778f))))));
    global0 = array<Struct_2, 11>();
    var var_1 = true;
    var var_2 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(248f, var_0, 2444f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(1551f, var_0, var_0), vec3<f32>(-588f, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(849f, var_0, -876f))))), vec4<i32>(_wgslsmith_div_i32(u_input.b, _wgslsmith_div_i32(49159i, 1i)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.b, select(-15632i, u_input.b, true), _wgslsmith_sub_i32(19651i, 2147483647i)), i32(-1i) * -66280i, -u_input.a.x), firstTrailingBit(_wgslsmith_clamp_i32(u_input.a.x, -2147483647i, -23591i) << (96086u % 32u)), 0i), Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_0)))), Struct_2(vec3<i32>(u_input.a.x, ~u_input.b, _wgslsmith_clamp_i32(21710i, 2147483647i, 7605i)), any(!vec4<bool>(global1.x, global1.x, false, global1.x)), func_1(Struct_3(var_0, global0[_wgslsmith_index_u32(1u, 11u)], Struct_1(global1.x, vec3<i32>(-36038i, u_input.a.x, u_input.a.x), u_input.a, global1.x)), -26914i >> (1u % 32u)), abs(vec4<u32>(39657u, 4294967295u, 0u, 35556u))), Struct_1(!global1.x, firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, -38708i), vec3<i32>(u_input.a.x, u_input.b, u_input.b))), min(countOneBits(vec2<i32>(-24637i, -16667i)), _wgslsmith_add_vec2_i32(u_input.a, u_input.a)), false)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-309f)), var_0)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 - -806f), _wgslsmith_f_op_f32(747f - -521f))))))));
    var var_4 = ~2147483647i == (~_wgslsmith_sub_i32(-u_input.b, u_input.a.x) & u_input.a.x);
    var var_5 = Struct_5(~vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_3.x)))));
    var var_6 = var_3.zy;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.b.x, -178f, 1038f)), vec4<i32>(abs(-1i), _wgslsmith_clamp_i32(u_input.b, u_input.a.x, -4357i), 2369i, -u_input.a.x) | ~(~vec4<i32>(u_input.b, u_input.b, u_input.b, -1i)), Struct_3(_wgslsmith_f_op_f32(select(var_5.b.x, _wgslsmith_f_op_f32(-var_3.x), any(global1.ywz))), Struct_2(~vec3<i32>(u_input.b, -36191i, 34050i), global1.x | global1.x, func_1(Struct_3(558f, global0[_wgslsmith_index_u32(var_5.a.x, 11u)], Struct_1(false, vec3<i32>(-31318i, u_input.b, u_input.a.x), u_input.a, global1.x)), u_input.b), select(vec4<u32>(var_5.a.x, var_5.a.x, var_5.a.x, 76086u), vec4<u32>(32236u, 4294967295u, 4294967295u, var_5.a.x), vec4<bool>(false, global1.x, global1.x, false))), Struct_1(true, ~vec3<i32>(u_input.b, u_input.b, -1i), vec2<i32>(2147483647i, -2147483647i), true))), select(var_5.a.x, _wgslsmith_dot_vec3_u32(max(var_5.a, var_5.a), vec3<u32>(_wgslsmith_add_u32(var_5.a.x, 0u), reverseBits(20029u), ~37310u)), false));
}

