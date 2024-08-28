struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: vec4<u32> = vec4<u32>(10020u, 58615u, 46775u, 1u);

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(1056f, vec2<u32>(11620u, 2729u), true, vec3<bool>(false, true, true), 4294967295u), Struct_1(167f, vec2<u32>(4294967295u, 2633u), true, vec3<bool>(true, true, false), 4294967295u), Struct_1(-155f, vec2<u32>(0u, 72436u), true, vec3<bool>(true, true, true), 17182u), Struct_1(-1000f, vec2<u32>(0u, 1u), true, vec3<bool>(false, false, false), 4294967295u), Struct_1(824f, vec2<u32>(4294967295u, 58757u), true, vec3<bool>(false, false, true), 4294967295u), Struct_1(-1000f, vec2<u32>(33780u, 36420u), true, vec3<bool>(false, false, true), 78320u), Struct_1(255f, vec2<u32>(4294967295u, 23748u), true, vec3<bool>(false, true, false), 11918u), Struct_1(1998f, vec2<u32>(55528u, 41669u), true, vec3<bool>(true, false, true), 1u), Struct_1(-516f, vec2<u32>(1656u, 1u), false, vec3<bool>(true, false, false), 32335u), Struct_1(-728f, vec2<u32>(16095u, 10167u), true, vec3<bool>(true, false, true), 7448u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> i32 {
    var var_0 = (~global2.yxw >> (_wgslsmith_sub_vec3_u32(global2.yzy & ~global2.wzw, global2.xzy) % vec3<u32>(32u))) << (global2.xxx % vec3<u32>(32u));
    return ~(-16361i);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec2<bool>(arg_2.d.x, !arg_2.c & (2147483647i <= (arg_0.x >> (reverseBits(20632u) % 32u))));
    var var_1 = vec4<bool>(arg_2.d.x, var_0.x, true, global0.c);
    var var_2 = arg_1;
    var var_3 = arg_2;
    var_0 = select(!vec2<bool>(false, all(var_1.yzz)), global0.d.xy, select(vec2<bool>(arg_2.d.x, true), var_2.d.zy, !select(vec2<bool>(arg_1.d.x, true), arg_2.d.yz, select(vec2<bool>(true, true), vec2<bool>(false, var_2.d.x), false))));
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -876f)))), global0.b, var_2.d.x, vec3<bool>(true, !all(!vec4<bool>(global1.d.x, arg_2.c, var_2.d.x, arg_1.c)), true), var_2.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = global1.b;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(-1728f)), vec2<u32>(global0.e, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(16890u, 20598u, 32427u, 16729u), vec4<u32>(4294967295u, var_0.x, 0u, 6617u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, 15593u, arg_0.e, global2.x), vec4<u32>(global1.e, 13415u, global0.e, 3869u)))), false, global0.d, var_0.x & global0.e);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, -513f, 1140f, var_1.a), vec4<f32>(1308f, -559f, 1563f, 152f)))) - vec4<f32>(global0.a, -1000f, -1591f, arg_0.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_1, vec4<f32>(164f, 472f, global0.a, global0.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-725f, -479f, 220f, var_1.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, arg_1.x, var_1.a) + vec4<f32>(arg_0.a, -1179f, global1.a, var_1.a))))) - arg_1);
    let var_3 = func_3(abs(~vec4<i32>(0i, u_input.a >> (var_0.x % 32u), min(u_input.a, u_input.a), u_input.a)), func_3(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-8781i, 28549i, u_input.a, u_input.a), firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -498i, -19314i, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), Struct_1(arg_0.a, ~_wgslsmith_sub_vec2_u32(global1.b, global1.b), all(vec2<bool>(true, global1.c)) | !var_1.c, var_1.d, var_0.x), arg_0), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))) * arg_0.a), firstLeadingBit(_wgslsmith_sub_vec2_u32(var_1.b, vec2<u32>(var_1.e, 0u))), all(!(!vec3<bool>(global0.d.x, false, global0.d.x))), vec3<bool>(true && (false || var_1.c), false, var_1.c), var_0.x << (~28449u % 32u)));
    let var_4 = func_3(abs(vec4<i32>(1i, ~(-14925i), _wgslsmith_mod_i32(u_input.a << (var_1.b.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-7202i, u_input.a), vec2<i32>(u_input.a, u_input.a))), u_input.a)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(750f)), 257f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) + _wgslsmith_f_op_f32(select(global1.a, global0.a, var_3.d.x)))), ~(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, global1.e), var_1.b) & global0.b), true, global0.d, ~2033u), global3[_wgslsmith_index_u32(global1.e & countOneBits(26766u), 10u)]);
    return func_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(39905i), 0i, _wgslsmith_mult_i32(0i, 0i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), (-1i ^ u_input.a) & -(~u_input.a), reverseBits(u_input.a >> (69349u % 32u)), ~(~u_input.a)), arg_0, global3[_wgslsmith_index_u32(global2.x, 10u)]);
}

fn func_1(arg_0: bool) -> u32 {
    global0 = global3[_wgslsmith_index_u32(global0.e, 10u)];
    global1 = func_4(func_3(vec4<i32>(-1i, -u_input.a, u_input.a, reverseBits(func_2())), Struct_1(_wgslsmith_div_f32(-646f, _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(29815u, global1.e), vec2<u32>(0u, 4294967295u)) >> (global1.b % vec2<u32>(32u)), !select(arg_0, true, false), vec3<bool>(global0.c, false | global1.c, global1.c), 26161u), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1660f), global0.a), global0.b, true, global1.d, global2.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(648f * global1.a) * global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-434f * _wgslsmith_div_f32(global1.a, global1.a)) - global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -535f)), _wgslsmith_f_op_f32(f32(-1f) * -635f)));
    let var_0 = ~(vec4<u32>(~_wgslsmith_mult_u32(28186u, 1u), ~_wgslsmith_mult_u32(17328u, 12527u), 6109u, _wgslsmith_sub_u32(~0u, firstLeadingBit(global2.x))) >> (~abs(vec4<u32>(60777u, 1u, 0u, 48563u)) % vec4<u32>(32u)));
    global3 = array<Struct_1, 10>();
    var var_1 = global3[_wgslsmith_index_u32(func_3(vec4<i32>(u_input.a, 70255i, -(~u_input.a), -2147483647i), global3[_wgslsmith_index_u32(global1.b.x, 10u)], func_3(~vec4<i32>(2147483647i, -4528i, u_input.a, -9692i) ^ -vec4<i32>(-17527i, u_input.a, u_input.a, -1i), func_3(vec4<i32>(u_input.a, u_input.a, 26536i, u_input.a), func_3(vec4<i32>(0i, u_input.a, u_input.a, 53741i), Struct_1(-610f, vec2<u32>(0u, 1u), global0.d.x, global1.d, var_0.x), global3[_wgslsmith_index_u32(0u, 10u)]), global3[_wgslsmith_index_u32(1u, 10u)]), global3[_wgslsmith_index_u32(~(~0u), 10u)])).b.x | 4294967295u, 10u)];
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-33563i, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.a, 20402i, u_input.a, 1i), vec4<i32>(38626i, 62922i, -20734i, -2147483647i))), abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -22019i), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)))), -u_input.a, 44909i);
    global0 = global3[_wgslsmith_index_u32(global2.x, 10u)];
    var var_1 = _wgslsmith_div_i32(u_input.a, ~var_0.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(global1.a * global1.a), ~select(vec2<u32>(1u, global0.b.x), vec2<u32>(func_1(true), ~34651u), vec2<bool>(!global0.d.x, any(global1.d.zz))), global1.c, global1.d, global0.b.x);
    var var_3 = !vec2<bool>(u_input.a <= ~(~(-1i)), all(global1.d.yx));
    let var_4 = 4294967295u;
    var_3 = !select(vec2<bool>(func_3(vec4<i32>(2147483647i, 2147483647i, -2147483647i, u_input.a), func_4(global3[_wgslsmith_index_u32(29146u, 10u)], vec4<f32>(global1.a, 1000f, var_2.a, global1.a)), func_4(Struct_1(262f, global0.b, global1.d.x, global1.d, var_2.b.x), vec4<f32>(global0.a, var_2.a, global0.a, -1278f))).c, all(var_2.d.xy) && global1.d.x), var_2.d.xx, global0.d.zz);
    global3 = array<Struct_1, 10>();
    global3 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(~global0.e);
}

