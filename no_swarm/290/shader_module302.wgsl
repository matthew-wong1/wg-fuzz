struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec2<u32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 11>;

var<private> global1: Struct_1 = Struct_1(false, vec3<bool>(false, false, true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec4<i32>) -> i32 {
    let var_0 = arg_2.xzy;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    var var_2 = reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(7557u, 0u, 18275u)), ~vec3<u32>(1u, 1u, 4294967295u)), ~vec3<u32>(1u, 4294967295u, 1u)));
    var_2 = vec3<u32>(var_2.x, 19950u, 24274u);
    var_2 = select(~(~(~vec3<u32>(1u, 1u, 1u))), max(vec3<u32>(~var_2.x, var_2.x | var_2.x, ~var_2.x), ~vec3<u32>(3051u, 1u, 0u) >> ((vec3<u32>(var_2.x, var_2.x, 75964u) << (vec3<u32>(4294967295u, var_2.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (select(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, var_2.x, 47548u), vec3<u32>(40443u, var_2.x, var_2.x), vec3<u32>(1u, 1u, var_2.x)), max(vec3<u32>(var_2.x, var_2.x, 0u), vec3<u32>(var_2.x, var_2.x, 4294967295u)), !vec3<bool>(global1.b.x, false, global1.a)), ~vec3<u32>(10678u, 0u, var_2.x), false || global1.b.x) % vec3<u32>(32u)), global1.b);
    return reverseBits(10076i);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-720f)) - _wgslsmith_f_op_f32(f32(-1f) * -696f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-706f, 230f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -246f), 712f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -855f))), Struct_1(!global1.b.x != (firstTrailingBit(0i) >= -83717i), global1.b), ~(~_wgslsmith_clamp_u32(~19222u, 961u, 1u)), vec3<i32>(_wgslsmith_mod_i32((-1i | u_input.a) | firstLeadingBit(1i), func_3(-1179f, -23345i, ~vec4<i32>(-24359i, u_input.b.x, 15246i, 82482i))), -10275i, -countOneBits(~(-13332i))));
    let var_1 = u_input.b.x >> (~var_0.c % 32u);
    var_0 = Struct_3(var_0.a, var_0.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(3591u, var_0.c, var_0.c), ~vec3<u32>(var_0.c, 0u, 0u)) & var_0.c, var_0.d);
    var var_2 = _wgslsmith_f_op_f32(floor(var_0.a.x));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(269f)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, -930f, -966f)))) * var_0.a), Struct_1(~var_0.d.x >= 1i, var_0.b.b), 34399u, _wgslsmith_add_vec3_i32(vec3<i32>(-20114i, var_0.d.x, var_1), vec3<i32>(-var_0.d.x, _wgslsmith_add_i32(var_1, var_1), firstLeadingBit(var_0.d.x))) << (~(~(vec3<u32>(15805u, 17895u, var_0.c) & vec3<u32>(var_0.c, 4294967295u, 10544u))) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: f32, arg_3: f32) -> Struct_4 {
    let var_0 = ~countOneBits(arg_1.e);
    var var_1 = ~6403i;
    var_1 = -arg_0.d.x;
    let var_2 = -1000f;
    var_1 = _wgslsmith_mod_i32(max(arg_0.d.x, -(~(23871i >> (arg_1.e.x % 32u)))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(func_2().d, vec3<i32>(-1i) * -arg_0.d), ~vec3<i32>(arg_0.d.x ^ u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.d.x, -34086i, -20990i), vec4<i32>(0i, 2147483647i, u_input.a, 4688i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, 36877i, -26346i), vec4<i32>(arg_0.d.x, arg_0.d.x, u_input.a, 90810i)))));
    return arg_1.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<bool>) -> vec3<u32> {
    let var_0 = func_4(func_2(), global0[_wgslsmith_index_u32(0u, 11u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(trunc(arg_1.x))))), -268f);
    global0 = array<Struct_5, 11>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(min(-1548f, _wgslsmith_div_f32(371f, arg_1.x)))) - 599f);
    global1 = Struct_1(any(vec3<bool>(global1.b.x, global1.b.x, 76640i == u_input.a)), select(arg_0.yxx, !arg_2, arg_2.x));
    var var_2 = vec2<bool>(false, true);
    return (vec3<u32>(select(~66078u, select(0u, 3866u, arg_2.x), false), _wgslsmith_mult_u32(~1u, 1u >> (1u % 32u)), ~5833u) << (vec3<u32>(~(~1u), 38816u, 1u << (func_2().c % 32u)) % vec3<u32>(32u))) | select(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~(~vec3<u32>(1u, 4294967295u, 49156u)), vec3<u32>(abs(45115u), max(57993u, 1u), _wgslsmith_mod_u32(1u, 127841u))), vec3<u32>(_wgslsmith_sub_u32(1u, 1u), 4294967295u, _wgslsmith_add_u32(23382u << (1u % 32u), select(7150u, 105750u, global1.b.x))), vec3<bool>((873f != var_0.b.x) && true, (8818i >= u_input.b.x) && !global1.b.x, !arg_0.x));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> Struct_3 {
    let var_0 = ~(~((firstLeadingBit(vec4<i32>(arg_3, arg_1.d.x, 0i, arg_3)) ^ vec4<i32>(0i, arg_3, 24427i, -27471i)) >> (~(~vec4<u32>(arg_0.x, 4294967295u, arg_1.c, arg_0.x)) % vec4<u32>(32u))));
    let var_1 = Struct_2(func_2().b, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, 1u), 26853u ^ (26946u & arg_0.x), ~(~arg_0.x)), _wgslsmith_mod_u32(arg_0.x & arg_0.x, func_2().c), _wgslsmith_mod_u32(4294967295u, ~firstTrailingBit(1857u))));
    let var_2 = reverseBits(i32(-1i) * -select(~u_input.a, ~(-20795i), any(arg_1.b.b)));
    var var_3 = vec4<bool>(func_2().b.b.x, func_2().b.b.x, all(global1.b), true);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(!vec4<bool>(global1.b.x, false, u_input.b.x <= -16131i, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(823f, 239f, 1664f), vec3<f32>(-2056f, 193f, -384f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-864f, -967f, -656f) * vec3<f32>(1896f, -1511f, 1558f)))), !select(global1.b, !vec3<bool>(true, global1.a, true), !global1.b)), Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-767f, 285f, 1349f) - vec3<f32>(812f, 831f, 838f)))), Struct_1(true, vec3<bool>(true, true, 1i >= u_input.a)), 38076u, -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -6911i, u_input.a), ~vec3<i32>(1i, u_input.a, u_input.a))), false, u_input.a);
    global1 = func_2().b;
    let var_1 = Struct_4(!(!vec4<bool>(all(var_0.b.b.yy), true, true, true)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(ceil(1645f))));
    let var_2 = func_5(_wgslsmith_mult_vec3_u32(vec3<u32>(~var_0.c, 1u, ~var_0.c), firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(var_0.c, 17682u), abs(1u), func_2().c))), Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.b.x - 1107f), var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x * var_1.b.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_1.b.x, 833f) - vec3<f32>(-1615f, var_0.a.x, 1337f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(628f, var_0.a.x, var_0.a.x))), vec3<bool>(false, true, false)))), Struct_1(!func_5(vec3<u32>(var_0.c, 1u, 4294967295u), Struct_3(vec3<f32>(1000f, 661f, -249f), Struct_1(true, global1.b), var_0.c, var_0.d), global1.b.x, 1i).b.a, var_0.b.b), reverseBits(reverseBits(var_0.c)), _wgslsmith_div_vec3_i32(~(~var_0.d), vec3<i32>(_wgslsmith_div_i32(2147483647i, var_0.d.x), u_input.a, select(var_0.d.x, var_0.d.x, false)))), !((true && !var_0.b.b.x) | func_4(func_2(), global0[_wgslsmith_index_u32(22268u, 11u)], _wgslsmith_f_op_f32(floor(1169f)), _wgslsmith_f_op_f32(var_0.a.x - 718f)).a.x), _wgslsmith_mult_i32(-1i, 21228i));
    global0 = array<Struct_5, 11>();
    var var_3 = -_wgslsmith_add_vec2_i32(min(select(firstLeadingBit(vec2<i32>(2147483647i, var_0.d.x)), ~var_2.d.xy, global1.b.zx), firstLeadingBit(-vec2<i32>(u_input.a, u_input.a))), countOneBits(func_5(vec3<u32>(var_0.c, 14184u, 1u), Struct_3(vec3<f32>(1532f, var_2.a.x, -343f), Struct_1(var_1.a.x, global1.b), var_0.c, vec3<i32>(u_input.a, var_0.d.x, u_input.a)), var_2.b.b.x, -1i).d.xz) >> (vec2<u32>(~var_2.c, countOneBits(7000u)) % vec2<u32>(32u)));
    var var_4 = Struct_1(global1.a, vec3<bool>(any(select(!vec3<bool>(true, false, global1.b.x), var_0.b.b, !var_0.b.b.x)), true, true));
    let var_5 = all(!select(vec4<bool>(true, var_1.a.x && true, var_1.a.x, true && var_0.b.a), func_4(var_2, Struct_5(Struct_4(var_1.a, vec2<f32>(var_0.a.x, var_2.a.x)), var_4.b.x, vec2<u32>(var_2.c, 1u), Struct_2(var_2.b, 4294967295u), vec3<u32>(10777u, var_2.c, 16426u)), _wgslsmith_f_op_f32(exp2(var_1.b.x)), var_1.b.x).a, vec4<bool>(global1.a, var_2.b.a, select(global1.a, var_0.b.b.x, false), true)));
    var var_6 = 2147483647i >> (~var_2.c % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.xy, ~(~0u), abs(vec3<u32>(~var_0.c, 1u, 86664u)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(502f, _wgslsmith_f_op_f32(ceil(var_1.b.x)), var_2.a.x, -1387f))), _wgslsmith_clamp_vec2_i32(~var_0.d.zy, func_2().d.yy, u_input.b));
}

