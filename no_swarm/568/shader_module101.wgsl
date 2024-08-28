struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(16003u, 0u, 4294967295u, 8416u, 67493u, 1u, 1u);

var<private> global1: bool;

var<private> global2: array<u32, 12> = array<u32, 12>(1u, 22060u, 30562u, 1u, 0u, 26519u, 1u, 4294967295u, 67302u, 26307u, 39478u, 29368u);

var<private> global3: Struct_2;

var<private> global4: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-197f, vec2<u32>(19777u, 0u)), Struct_1(-1543f, vec2<u32>(1u, 4294967295u)), Struct_1(852f, vec2<u32>(13878u, 1u)), Struct_1(-1247f, vec2<u32>(2692u, 18741u)), Struct_1(569f, vec2<u32>(13776u, 0u)), Struct_1(-871f, vec2<u32>(12488u, 1u)), Struct_1(756f, vec2<u32>(1u, 4294967295u)), Struct_1(-896f, vec2<u32>(58336u, 40773u)), Struct_1(1103f, vec2<u32>(38342u, 54236u)), Struct_1(2396f, vec2<u32>(0u, 0u)), Struct_1(1080f, vec2<u32>(43494u, 0u)), Struct_1(2645f, vec2<u32>(0u, 27905u)), Struct_1(337f, vec2<u32>(1u, 61606u)), Struct_1(152f, vec2<u32>(1u, 18959u)), Struct_1(-1420f, vec2<u32>(1u, 57299u)), Struct_1(725f, vec2<u32>(47032u, 4294967295u)), Struct_1(-261f, vec2<u32>(0u, 8156u)), Struct_1(-1000f, vec2<u32>(1u, 0u)), Struct_1(-1000f, vec2<u32>(4294967295u, 64039u)), Struct_1(-712f, vec2<u32>(14223u, 44473u)), Struct_1(-2753f, vec2<u32>(10169u, 0u)), Struct_1(1000f, vec2<u32>(5524u, 29928u)), Struct_1(-349f, vec2<u32>(12245u, 1u)), Struct_1(2333f, vec2<u32>(4294967295u, 55455u)), Struct_1(2759f, vec2<u32>(30436u, 4294967295u)), Struct_1(686f, vec2<u32>(3288u, 4294967295u)), Struct_1(1074f, vec2<u32>(117880u, 1u)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e.a, 1000f, -195f, global3.e.a)))), vec4<f32>(global3.e.a, _wgslsmith_f_op_f32(693f * 927f), _wgslsmith_f_op_f32(min(-744f, global3.e.a)), _wgslsmith_f_op_f32(min(1000f, global3.e.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1301f, -301f, 112f, -339f))) + vec4<f32>(global3.e.a, 1466f, global3.e.a, -231f))))));
    let var_1 = global2[_wgslsmith_index_u32(18364u, 12u)];
    global1 = !select(arg_1, all(!select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, arg_1, false), arg_1)), any(vec3<bool>(all(vec2<bool>(false, arg_1)), true, arg_1)));
    global0 = array<u32, 7>();
    var var_2 = var_0.x;
    return global3.b;
}

fn func_2() -> vec2<i32> {
    global4 = array<Struct_1, 27>();
    let var_0 = reverseBits(_wgslsmith_mult_i32(0i, -(global3.b ^ func_3(vec2<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 7u)]), true, 67438u))));
    let var_1 = -1101f;
    let var_2 = global3.e.a;
    let var_3 = global3.e.a;
    return vec2<i32>(-abs(_wgslsmith_add_i32(~var_0, var_0)), max(~2147483647i, func_3(~_wgslsmith_add_vec2_u32(global3.c, global3.c), true, 4294967295u)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -750f, -1596f, _wgslsmith_f_op_f32(-arg_2)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(834f, global3.e.a, -1003f, -1000f), vec4<f32>(1677f, -1282f, -108f, 408f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, arg_2, arg_2, arg_1)))))))));
    global0 = array<u32, 7>();
    let var_1 = global3.a;
    let var_2 = Struct_1(_wgslsmith_div_f32(518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_2))), global3.e.b);
    var var_3 = select(vec4<i32>(1i, _wgslsmith_sub_i32(-2147483647i, arg_3.x), ~(_wgslsmith_sub_i32(arg_3.x, 14342i) | countOneBits(2147483647i)), global3.d.x), vec4<i32>(-2147483647i, _wgslsmith_mod_i32(~6886i >> (var_2.b.x % 32u), _wgslsmith_div_i32(reverseBits(arg_3.x), reverseBits(global3.d.x))), ~_wgslsmith_dot_vec3_i32(global3.d, vec3<i32>(var_1.x, 0i, -18812i) & vec3<i32>(-1i, var_1.x, arg_3.x)), -_wgslsmith_clamp_i32(1i, 0i, _wgslsmith_sub_i32(global3.a.x, 0i))), true);
    return !(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), true));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    var var_0 = func_4(select(u_input.b, 40312u, any(vec4<bool>(global3.e.a > -802f, true, true, false))), _wgslsmith_f_op_f32(-552f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.e.a - global3.e.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.e.a, 1100f))))), _wgslsmith_f_op_f32(global3.e.a - global3.e.a), -func_2() >> (~vec2<u32>(_wgslsmith_div_u32(1u, u_input.a), ~9606u) % vec2<u32>(32u)));
    let var_1 = Struct_2(global3.a, -23215i, abs(~firstLeadingBit(vec2<u32>(u_input.a, 0u) & vec2<u32>(4294967295u, 0u))), firstTrailingBit(reverseBits(-min(vec3<i32>(global3.d.x, global3.d.x, global3.b), vec3<i32>(-36640i, 2147483647i, global3.d.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1982f)) + _wgslsmith_f_op_f32(-global3.e.a))), vec2<u32>(countOneBits(_wgslsmith_mod_u32(94250u, 25440u)), 4294967295u)));
    var var_2 = Struct_2(max(-global3.d, _wgslsmith_clamp_vec3_i32(var_1.a << (vec3<u32>(var_1.c.x, var_1.c.x, global3.e.b.x) % vec3<u32>(32u)), ~global3.a, ~vec3<i32>(2147483647i, 1900i, global3.a.x))) | global3.d, _wgslsmith_sub_i32(-11372i, global3.a.x) ^ _wgslsmith_clamp_i32(~0i, ~_wgslsmith_dot_vec3_i32(global3.d, var_1.a), 1i), vec2<u32>(~global2[_wgslsmith_index_u32(arg_0 & global3.c.x, 12u)], firstLeadingBit(global2[_wgslsmith_index_u32(~var_1.e.b.x, 12u)] ^ _wgslsmith_mod_u32(0u, 4294967295u))), vec3<i32>(var_1.b, ~_wgslsmith_clamp_i32(~global3.a.x, select(global3.d.x, 1584i, false), var_1.b & var_1.b), abs(~(-global3.a.x))), var_1.e);
    return vec3<u32>(~10430u, 20870u | reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 12u)], global3.e.b.x, global3.c.x), vec4<u32>(4294967295u, arg_0, 34990u, 4294967295u)), max(vec4<u32>(4294967295u, 4294967295u, arg_0, 1u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 7u)], global3.e.b.x, 60830u, 4294967295u)))), select(0u, 0u, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(global3.a.x, ~(global3.d.x >> (31987u % 32u))) | (_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 17720i, 1i, global3.b), ~vec4<i32>(-12355i, -2147483647i, global3.b, 0i)) & global3.b), 1i);
    var var_1 = Struct_1(-2462f, global3.e.b);
    var var_2 = func_1(~u_input.a);
    global3 = Struct_2(-countOneBits(abs(global3.a)) & _wgslsmith_div_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 1i, -39097i), vec3<i32>(global3.b, 1i, var_0.x))), -global3.a), 2147483647i, var_2.xz, abs(global3.d), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * -291f) - _wgslsmith_f_op_f32(ceil(global3.e.a)))), ~(~max(var_2.xx, var_2.yz))));
    var var_3 = vec4<bool>(true, any(vec4<bool>(false, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), true, true)), true, !(!any(vec2<bool>(true, true))));
    var_1 = global3.e;
    var var_4 = global3.e;
    var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.e.a + 2729f) - _wgslsmith_f_op_f32(global3.e.a - -795f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), global3.e.a, true)))), _wgslsmith_div_vec2_u32(abs(_wgslsmith_div_vec2_u32(min(vec2<u32>(var_4.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.x, 7u)], 7u)]), vec2<u32>(1u, u_input.b)), ~vec2<u32>(60044u, u_input.a))), global3.c));
    var var_5 = global3.e.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(global3.b, _wgslsmith_mult_vec4_i32(vec4<i32>(global3.b, global3.b, -reverseBits(38660i), global3.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_0.x, 0i), firstTrailingBit(global3.a.x), -3968i, var_0.x >> (0u % 32u)), (vec4<i32>(var_0.x, var_0.x, -2147483647i, global3.b) << (vec4<u32>(global2[_wgslsmith_index_u32(global3.e.b.x, 12u)], 1u, var_1.b.x, global0[_wgslsmith_index_u32(4489u, 7u)]) % vec4<u32>(32u))) & vec4<i32>(var_0.x, global3.b, global3.a.x, global3.d.x))));
}

