struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(27794i, vec2<bool>(false, true), 736f, vec2<bool>(false, true));

var<private> global2: vec3<u32> = vec3<u32>(17486u, 52502u, 108305u);

var<private> global3: array<f32, 23> = array<f32, 23>(1905f, 639f, -203f, -328f, -1533f, 805f, -1015f, 421f, 1483f, 1750f, -1363f, 1412f, 1116f, -270f, 350f, 685f, 415f, 3390f, -688f, 823f, 865f, -408f, 236f);

var<private> global4: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> i32 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-104f)))), _wgslsmith_f_op_f32(global1.c - global3[_wgslsmith_index_u32(~(~arg_0), 23u)]), global1.c));
    let var_1 = ~4294967295u;
    let var_2 = all(select(global4.d, !vec2<bool>(true, arg_1.x), !global4.b));
    var var_3 = Struct_1(-2147483647i, arg_1.wz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(f32(-1f) * -184f))), !global4.d);
    var_3 = Struct_1(-2147483647i, var_3.d, global1.c, !vec2<bool>(global4.b.x, false));
    return -_wgslsmith_clamp_i32(-global1.a, i32(-1i) * -5499i, -2147483647i);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = abs(vec3<u32>(u_input.a.x, 4294967295u, ~global2.x << (_wgslsmith_mod_u32(global2.x, u_input.b) % 32u)));
    let var_1 = abs(43855u);
    let var_2 = _wgslsmith_div_vec3_i32(-vec3<i32>(func_2(var_0.x, vec4<bool>(arg_2.d.x, true, global1.d.x, global4.d.x)), arg_0.x ^ -1i, 2147483647i ^ arg_0.x), reverseBits(vec3<i32>(~u_input.c, countOneBits(u_input.c), global1.a))) & ((vec3<i32>(arg_1 & global1.a, arg_2.a, ~arg_1) << (min(u_input.a.yyx, ~u_input.a.yxy) % vec3<u32>(32u))) >> (u_input.a.yzx % vec3<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_2.c)))), _wgslsmith_f_op_f32(f32(-1f) * -1191f))) >= _wgslsmith_f_op_f32(175f - -815f);
    var var_4 = !vec4<bool>(_wgslsmith_add_u32(29384u, global2.x) >= _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, var_1, 18802u), abs(4294967295u)), true, false, arg_2.d.x);
    return var_4.zzx;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    global3 = array<f32, 23>();
    var var_0 = u_input.c;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1822f, 843f, arg_0.c) - vec3<f32>(1096f, 158f, arg_0.c))))))));
    var_0 = (i32(-1i) * -1524i) ^ -countOneBits(u_input.c);
    var var_2 = global4.b.x | false;
    return -673f;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(48195i, select(!vec2<bool>(false, false & global1.d.x), !global1.b, global2.x <= global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(27187u, 23u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -849f) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.x, 23u)])))), global1.b);
    global2 = _wgslsmith_add_vec3_u32(u_input.a.yzy, _wgslsmith_mod_vec3_u32(vec3<u32>(~272u, u_input.b, ~19000u) & ~_wgslsmith_sub_vec3_u32(vec3<u32>(11056u, global2.x, 0u), vec3<u32>(1778u, 1u, 0u)), u_input.a.zww));
    global4 = Struct_1(-(var_0.a << (select(~1u, abs(u_input.a.x), var_0.d.x) % 32u)), global4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(43530u, 23u)]) - var_0.c)) + -1000f), !var_0.b);
    global0 = min(_wgslsmith_add_i32(-1i, -2147483647i), -func_2(global2.x, vec4<bool>(!global1.d.x, !global4.d.x, true, all(vec3<bool>(false, false, false)))));
    global1 = Struct_1(-global4.a, vec2<bool>(true, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(-1i, vec2<bool>(global1.d.x, true), global3[_wgslsmith_index_u32(u_input.a.x, 23u)], global4.d), func_3(vec2<i32>(-1i, global4.a), global4.a, Struct_1(global4.a, var_0.b, global3[_wgslsmith_index_u32(11004u, 23u)], var_0.b))))) - global1.c), !(!(!global4.d)));
    return 13329u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(141f, global3[_wgslsmith_index_u32(u_input.a.x, 23u)])), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 0u), 23u)])) > global4.c);
    let var_1 = vec2<i32>(global1.a, -(~_wgslsmith_add_i32(global4.a, global1.a))) << (vec2<u32>(func_1(), 55594u) % vec2<u32>(32u));
    let var_2 = vec4<i32>(0i, max(firstTrailingBit(_wgslsmith_div_i32(27249i, global1.a)) | _wgslsmith_clamp_i32(var_1.x, ~global4.a, _wgslsmith_sub_i32(u_input.c, u_input.c)), firstTrailingBit(-2147483647i)), abs(1i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(global4.a, -34989i, -7022i), vec3<i32>(1i, -1i, global4.a)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.c, -2147483647i), vec3<i32>(u_input.c, 13470i, var_1.x), vec3<i32>(var_1.x, 2147483647i, 11931i)), min(vec3<i32>(global4.a, global1.a, -2147483647i), vec3<i32>(-14871i, global1.a, 1i)))), select(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -33780i, 13369i) ^ vec3<i32>(17160i, u_input.c, -35930i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -27540i, global4.a), vec3<i32>(-5924i, 2147483647i, u_input.c))), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(u_input.c, 1i, global1.a)), -vec3<i32>(2147483647i, 8573i, 1389i)), true)));
    var var_3 = false;
    global0 = 1i;
    var var_4 = Struct_1(1i, !global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c)), select(!(!select(global1.d, vec2<bool>(true, global1.d.x), global4.d.x)), select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(global1.b.x, false, false, false))), !(!global4.b)), select(select(vec2<bool>(true, true), global1.d, vec2<bool>(true, true)), select(global4.b, !vec2<bool>(true, global1.b.x), vec2<bool>(global1.b.x, global4.d.x)), true)));
    global3 = array<f32, 23>();
    var var_5 = global2.x >> ((~(~_wgslsmith_div_u32(0u, 1u)) | u_input.a.x) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(~abs(24920i), global1.a), global4.a, var_2.x | countOneBits(_wgslsmith_mod_i32(-7971i, var_1.x))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 1u, 4294967295u, global2.x), abs(vec4<u32>(global2.x, u_input.a.x, u_input.b, 4294967295u)), !global1.b.x) >> (u_input.a % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), 9195u | global2.x, global2.x, ~global2.x)), max(~global2.x, 22232u) ^ _wgslsmith_dot_vec2_u32(min(u_input.a.wz >> (vec2<u32>(global2.x, u_input.b) % vec2<u32>(32u)), u_input.a.zy), select(~u_input.a.xy, ~vec2<u32>(40179u, global2.x), select(false, var_4.d.x, global1.d.x))), max(_wgslsmith_dot_vec4_u32(~(vec4<u32>(global2.x, 25923u, 39728u, 4294967295u) | u_input.a), vec4<u32>(u_input.b, u_input.b, firstLeadingBit(u_input.a.x), ~global2.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global2.x, 131767u, u_input.a.x), u_input.a) << (0u % 32u)), var_2);
}

