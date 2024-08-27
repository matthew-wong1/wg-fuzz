struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: bool,
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

var<private> global0: array<u32, 24>;

var<private> global1: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(35580u, 418u, 9637u, 5682u), vec4<u32>(0u, 41883u, 91710u, 83627u), vec4<u32>(64312u, 4294967295u, 3138u, 4294967295u), vec4<u32>(1u, 54303u, 1u, 5107u), vec4<u32>(4294967295u, 1u, 37868u, 67023u), vec4<u32>(4294967295u, 23715u, 0u, 48685u), vec4<u32>(0u, 23239u, 5252u, 64790u), vec4<u32>(8428u, 0u, 68038u, 1u), vec4<u32>(14469u, 8084u, 2438u, 4294967295u), vec4<u32>(17699u, 1u, 5426u, 1u), vec4<u32>(46462u, 85400u, 29377u, 1651u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(77954u, 67891u, 30767u, 7724u), vec4<u32>(4648u, 36592u, 0u, 7001u), vec4<u32>(17381u, 43516u, 4294967295u, 35887u));

var<private> global2: vec2<u32>;

var<private> global3: array<bool, 27>;

var<private> global4: vec2<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global0 = array<u32, 24>();
    var var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = ~var_0.b.x;
    let var_3 = arg_0.c;
    return var_1;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec4<bool> {
    global1 = array<vec4<u32>, 15>();
    global2 = vec2<u32>(~func_1(func_1(func_1(Struct_1(vec2<u32>(global2.x, 4294967295u), vec4<i32>(u_input.a, arg_2.b.x, arg_2.b.x, u_input.a), vec4<bool>(global4.x, true, true, true), arg_2.c.wyw, arg_2.c.x), -42378i), 1i), i32(-1i) * -arg_2.b.x).a.x, global2.x);
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~countOneBits(~abs(arg_0)), firstTrailingBit(~1u ^ (arg_1 >> (6977u % 32u)))), 27u)];
    let var_1 = Struct_1(~arg_2.a, max(_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, u_input.a, arg_2.b.x, arg_2.b.x), arg_2.b), _wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(5639i, u_input.a, u_input.a, arg_2.b.x), arg_2.b)), vec4<i32>(~2499i, _wgslsmith_mult_i32(u_input.a, u_input.a), abs(u_input.a), -1i))), vec4<bool>(true, !(arg_2.c.x & arg_2.d.x) | any(!arg_2.d), false, true), !(!arg_2.d), any(arg_2.c.zz));
    global2 = var_1.a;
    return func_1(Struct_1(~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(72968u, 0u), vec2<u32>(1u, 1u)), var_1.a), ~arg_2.b, vec4<bool>(arg_2.c.x, true, any(arg_2.c.wx), var_1.e), !select(!vec3<bool>(global4.x, false, true), var_1.c.yzx, func_1(Struct_1(vec2<u32>(0u, var_1.a.x), vec4<i32>(-43856i, 0i, 38764i, arg_2.b.x), vec4<bool>(global3[_wgslsmith_index_u32(arg_2.a.x, 27u)], false, true, true), arg_2.d, true), var_1.b.x).d), global4.x), -23070i).c;
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global2 = max(vec2<u32>(global0[_wgslsmith_index_u32(14792u, 24u)], _wgslsmith_clamp_u32(0u, firstTrailingBit(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global2.x, 24u)], global2.x)), abs(~4294967295u))), ~_wgslsmith_clamp_vec2_u32(~(vec2<u32>(4294967295u, global2.x) ^ vec2<u32>(global2.x, 0u)), firstLeadingBit(vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(56748u, global2.x) % vec2<u32>(32u))), vec2<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], ~global2.x)));
    let var_0 = Struct_1(vec2<u32>(~1u, global2.x), abs(-_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -753i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, 27503i), vec4<i32>(-2147483647i, u_input.a, 4080i, u_input.a), vec4<i32>(-24901i, u_input.a, u_input.a, u_input.a)))), vec4<bool>(~(~global2.x) != 1u, all(func_3(63310u ^ global2.x, global2.x ^ 1u, Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(607u, 24u)], 51791u), vec4<i32>(30311i, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 27u)]), vec3<bool>(global3[_wgslsmith_index_u32(87135u, 27u)], true, false), global3[_wgslsmith_index_u32(4294967295u, 27u)]))), global3[_wgslsmith_index_u32(25817u, 27u)], min(1i, 59044i) > min(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), abs(u_input.a))), vec3<bool>(true, true, true), global4.x);
    let var_1 = true;
    let var_2 = !(!(!global4.x));
    var var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), ~vec2<u32>(~(~4294967295u), _wgslsmith_add_u32(global2.x, ~1u)));
    return vec3<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(select(~_wgslsmith_mult_u32(var_0.a.x, var_0.a.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_3.x, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(24413u, 24u)], 39134u))), 24u)], func_1(var_0, i32(-1i) * -37920i).e), 24u)], ~select(49708u, 30199u, any(var_0.c))), 1u & ~var_0.a.x, ~global2.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = !func_1(arg_2, 2147483647i).c.wy;
    let var_1 = !arg_2.c;
    global4 = vec2<bool>(false, !var_1.x);
    let var_2 = arg_0;
    var var_3 = Struct_1(~arg_2.a, firstTrailingBit(vec4<i32>(arg_2.b.x >> (_wgslsmith_clamp_u32(arg_2.a.x, 0u, 79663u) % 32u), _wgslsmith_mult_i32(-86837i, arg_2.b.x), arg_2.b.x, -53459i)), !arg_2.c, vec3<bool>(func_1(func_1(Struct_1(vec2<u32>(arg_0.a.x, arg_0.a.x), vec4<i32>(u_input.a, arg_1.x, var_2.b.x, u_input.a), var_2.c, var_2.c.zyy, true), firstLeadingBit(-1i)), i32(-1i) * -2147483647i).d.x, arg_2.c.x, false | (!arg_2.d.x || true)), !(39007u < reverseBits(arg_2.a.x)));
    return select(func_3(0u, max(~global2.x, global2.x), var_2).wz, arg_2.d.xx, func_3(~_wgslsmith_mult_u32(40256u, 0u), 40882u, arg_0).x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = !func_4(func_1(Struct_1(vec2<u32>(63588u, 0u) >> (vec2<u32>(0u, global2.x) % vec2<u32>(32u)), -vec4<i32>(u_input.a, 41942i, -29330i, 37230i), select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 27u)], true, false, global4.x), vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 27u)], true, global3[_wgslsmith_index_u32(1u, 27u)]), false), !vec3<bool>(false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 27u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 27u)]), true), -(~(-10900i))), -(~vec3<i32>(-10763i, 7584i, -2147483647i)), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], global0[_wgslsmith_index_u32(6524u, 24u)]) >> (vec2<u32>(0u, global0[_wgslsmith_index_u32(global2.x, 24u)]) % vec2<u32>(32u)), vec2<u32>(global2.x, 102779u) & vec2<u32>(48527u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32344u, 24u)], 24u)], 24u)])), ~select(vec4<i32>(0i, 36747i, -9780i, u_input.a), vec4<i32>(u_input.a, u_input.a, -23216i, u_input.a), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], true, global4.x)), !vec4<bool>(false, true, global4.x, true), !select(vec3<bool>(false, global4.x, false), vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(true, global4.x, false)), global4.x), func_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(521f, -439f), _wgslsmith_div_f32(-847f, 1035f)))));
    var var_0 = 0i;
    global3 = array<bool, 27>();
    global4 = vec2<bool>(!all(vec4<bool>(true, all(vec3<bool>(global4.x, true, global4.x)), true, func_1(Struct_1(vec2<u32>(global2.x, global2.x), vec4<i32>(4025i, u_input.a, u_input.a, u_input.a), vec4<bool>(false, global3[_wgslsmith_index_u32(global2.x, 27u)], global3[_wgslsmith_index_u32(44074u, 27u)], global4.x), vec3<bool>(global4.x, false, global3[_wgslsmith_index_u32(global2.x, 27u)]), global4.x), 2147483647i).e)), !global3[_wgslsmith_index_u32(reverseBits(4294967295u >> (firstTrailingBit(global0[_wgslsmith_index_u32(0u, 24u)]) % 32u)), 27u)]);
    var var_1 = ~10555i;
    global1 = array<vec4<u32>, 15>();
    var_1 = ~u_input.a;
    var_1 = -3428i;
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(-u_input.a, u_input.a), 29633i, -(-29873i | _wgslsmith_clamp_i32(-1i, 10105i, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(4294967295u, 24u)]);
}

