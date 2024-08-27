struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: array<vec3<u32>, 20>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(1u, vec4<u32>(135004u, 21172u, 3112u, 1u)), Struct_1(34725u, vec4<u32>(4294967295u, 0u, 34297u, 4294967295u)), Struct_1(23826u, vec4<u32>(45077u, 41907u, 114265u, 4294967295u)), Struct_1(4294967295u, vec4<u32>(4566u, 0u, 53747u, 4294967295u)), Struct_1(34057u, vec4<u32>(1u, 18695u, 14646u, 21458u)), Struct_1(0u, vec4<u32>(86430u, 0u, 4294967295u, 0u)), Struct_1(819u, vec4<u32>(7124u, 4503u, 4294967295u, 3102u)), Struct_1(1u, vec4<u32>(1u, 59516u, 53574u, 4294967295u)), Struct_1(1u, vec4<u32>(2077u, 82938u, 4294967295u, 1u)), Struct_1(24791u, vec4<u32>(88471u, 32558u, 12587u, 4294967295u)), Struct_1(9295u, vec4<u32>(95471u, 39313u, 4294967295u, 4294967295u)), Struct_1(20220u, vec4<u32>(0u, 3831u, 1652u, 4294967295u)), Struct_1(0u, vec4<u32>(4294967295u, 0u, 4294967295u, 1u)), Struct_1(0u, vec4<u32>(44901u, 55658u, 0u, 1u)), Struct_1(92368u, vec4<u32>(51294u, 4294967295u, 1u, 12138u)), Struct_1(4294967295u, vec4<u32>(6419u, 1u, 1u, 0u)), Struct_1(50862u, vec4<u32>(0u, 39371u, 1u, 0u)), Struct_1(4294967295u, vec4<u32>(47960u, 0u, 4294967295u, 17466u)), Struct_1(48899u, vec4<u32>(4294967295u, 8032u, 4294967295u, 4294967295u)), Struct_1(0u, vec4<u32>(80806u, 1u, 4294967295u, 1u)), Struct_1(0u, vec4<u32>(9034u, 0u, 29576u, 9866u)), Struct_1(58902u, vec4<u32>(0u, 1u, 6613u, 57064u)), Struct_1(21479u, vec4<u32>(0u, 63014u, 4294967295u, 51819u)), Struct_1(29963u, vec4<u32>(33785u, 1u, 0u, 36316u)), Struct_1(19893u, vec4<u32>(1u, 0u, 0u, 38752u)), Struct_1(1u, vec4<u32>(1u, 0u, 4294967295u, 1u)), Struct_1(4294967295u, vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), Struct_1(0u, vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), Struct_1(42057u, vec4<u32>(1u, 4294967295u, 70403u, 1u)), Struct_1(4294967295u, vec4<u32>(4294967295u, 6417u, 75142u, 0u)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(arg_0.a.x, 31u)];
    var var_1 = Struct_4(vec4<u32>(var_0.b.x, ~(~arg_2.a), abs(var_0.a.a), ~arg_2.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2.a, arg_2.b.x, min(4294967295u, 1u >> (arg_2.b.x % 32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, var_0.a.b.x >> (arg_2.a % 32u), select(1u, 122922u, false)), countOneBits(vec4<u32>(70858u, var_0.b.x, 13193u, arg_2.b.x)))), 31u)]);
    global1 = array<vec3<u32>, 20>();
    let var_2 = ~(~var_0.c.xz << (~var_1.a.yx % vec2<u32>(32u)));
    var var_3 = Struct_1(~max(4294967295u, ~var_1.a.x), ~vec4<u32>(17401u, arg_2.b.x, 1633u, _wgslsmith_add_u32(arg_2.a, 1u)));
    return 1i;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_1(~(~_wgslsmith_mult_u32(1u, firstTrailingBit(1u))), vec4<u32>(1u, 1u, 1u, 1u));
    global1 = array<vec3<u32>, 20>();
    var var_1 = _wgslsmith_mod_i32(~func_3(Struct_4(reverseBits(vec4<u32>(var_0.a, var_0.b.x, 15101u, 4294967295u)), global0[_wgslsmith_index_u32(var_0.a, 31u)]), u_input.b.x, Struct_1(var_0.a, vec4<u32>(var_0.a, 0u, var_0.a, 1u))), 44056i);
    let var_2 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(var_0.b.x, 10578u)), vec2<u32>(~var_0.b.x, 45396u)), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(var_0.a, var_0.a, var_0.b.x), global1[_wgslsmith_index_u32(var_0.a, 20u)]), vec3<u32>(var_0.b.x, var_0.b.x, var_0.a), ~vec3<u32>(0u, 4294967295u, 1u)), var_0.b.ywy), ~(~14481u)), select(vec2<u32>(var_0.a ^ (4444u & var_0.a), var_0.b.x | (var_0.b.x & var_0.b.x)), firstLeadingBit(select(vec2<u32>(var_0.a, var_0.b.x), ~vec2<u32>(22211u, var_0.b.x), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), vec2<bool>(true, true)));
    var var_3 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), false), select(vec2<bool>(false, !all(vec4<bool>(true, false, true, true))), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true))), true);
    return Struct_2(global2[_wgslsmith_index_u32(~var_0.b.x, 30u)], _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, 7556u, var_2.x), var_0.b.xyz), _wgslsmith_mod_vec4_i32(-(~u_input.c), u_input.c) | -vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, u_input.c.ywz), u_input.a | -2147483647i, arg_0.x, select(u_input.b.x, -2147483647i, false)));
}

fn func_1(arg_0: bool) -> vec3<u32> {
    let var_0 = func_2(u_input.b.zx);
    let var_1 = any(select(!(!(!vec2<bool>(false, arg_0))), !select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(false, true), arg_0), !vec2<bool>(arg_0, false)), true));
    var var_2 = var_0.c.x;
    let var_3 = 0u;
    let var_4 = Struct_4(_wgslsmith_div_vec4_u32(~firstLeadingBit(~var_0.a.b), func_2(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-10893i, 0i), u_input.b.yy, vec2<i32>(4287i, 2147483647i)), max(vec2<i32>(20848i, 1i), vec2<i32>(-2147483647i, u_input.a)))).a.b), func_2(select(vec2<i32>(var_0.c.x, 0i ^ var_0.c.x), vec2<i32>(-1i, u_input.c.x) >> (vec2<u32>(0u, var_0.a.a) % vec2<u32>(32u)), !arg_0)));
    return firstTrailingBit(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.b.x, var_4.a.x, 48398u, 1u), vec4<u32>(27899u, 57833u, var_3, 1u)), ~var_3, _wgslsmith_sub_u32(~92655u, _wgslsmith_sub_u32(var_4.b.a.a, var_4.b.a.a))));
}

fn func_4(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = Struct_4(~vec4<u32>(65142u, func_2(vec2<i32>(u_input.b.x, arg_0.c.x)).a.a, ~(4294967295u | arg_0.a.a), _wgslsmith_mult_u32(countOneBits(arg_0.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a, 0u, arg_0.a.b.x, arg_0.b.x), arg_0.a.b))), Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(arg_0.a.b, ~vec4<u32>(74106u, arg_0.b.x, 38297u, arg_0.b.x)), func_2(~u_input.b.zy).a.b), ~(~(~global1[_wgslsmith_index_u32(arg_0.a.a, 20u)])), vec4<i32>(-1i) * -arg_0.c));
    var var_1 = Struct_3(~vec4<i32>(_wgslsmith_mod_i32(10775i >> (1u % 32u), -34084i), 2147483647i, ~1i, var_0.b.c.x));
    let var_2 = 0i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(sign(-1136f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1154f - 1203f) - 1073f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    let var_1 = var_0;
    global0 = array<Struct_2, 31>();
    var var_2 = Struct_1(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(0u, 10379u)), vec2<u32>(58284u, 1u)), firstLeadingBit(~vec2<u32>(1u, 4294967295u))), ~(~vec4<u32>(_wgslsmith_sub_u32(259u, 1u), ~41036u, 1u, 29767u << (1u % 32u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.a, 4294967295u), 30u)], func_1(false), ~func_2(vec2<i32>(-2147483647i, u_input.b.x)).c))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1694f)));
    var var_4 = any(select(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), vec2<bool>(any(vec3<bool>(true, false, true)), true), 252f > var_3.x));
    global1 = array<vec3<u32>, 20>();
    var var_5 = _wgslsmith_mult_vec4_i32(select(u_input.c, _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_1, var_1, var_1, var_1)) >> (var_2.b % vec4<u32>(32u)), vec4<i32>(-9959i, -u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.a, var_1), vec3<i32>(var_0, var_1, var_0)), -var_1), _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(-64137i, var_1, 5227i, u_input.c.x)) | u_input.c), vec4<bool>(all(vec2<bool>(false, false)), !(var_1 >= var_1), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false)), true)), vec4<i32>(u_input.c.x << (var_2.a % 32u), ~select(-var_1, _wgslsmith_clamp_i32(u_input.b.x, -30585i, var_0), true), var_0, _wgslsmith_mod_i32(0i, var_0) | abs(_wgslsmith_sub_i32(37011i, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x * 814f))) + 756f), var_3.x, select(any(vec3<bool>(false, true, true)), true, any(vec3<bool>(false, true, false))) | any(vec3<bool>(true, true, true)))));
}

