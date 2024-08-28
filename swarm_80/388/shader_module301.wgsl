struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: u32 = 4294967295u;

var<private> global4: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = -(~(-9776i));
    var var_1 = ~global4.c;
    var_0 = arg_3.c.x;
    global1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_1.a.a.x, arg_3.d.a.a.x, 1042f), global4.d.a.a))))), arg_3.d.b.a));
    let var_2 = vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(57484u, ~global4.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 42074u, 0u, 78252u), ~vec4<u32>(arg_3.b, global4.b, u_input.a.x, u_input.a.x))), 32625u);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(686f)), _wgslsmith_f_op_f32(sign(-210f)), _wgslsmith_f_op_f32(-192f - 1000f), -1817f));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32) -> vec3<bool> {
    global3 = ((44925u << (abs(~arg_1.x) % 32u)) ^ _wgslsmith_clamp_u32(~arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(48542u, 61104u, 47364u) << (arg_1.xzz % vec3<u32>(32u)), vec3<u32>(0u, 14345u, 30712u) ^ arg_1.ywz), ~1u)) << (0u % 32u);
    let var_0 = Struct_3(func_2(36326i, Struct_3(arg_0, 7633u, ~select(vec4<i32>(global4.c.x, 66981i, 1i, u_input.b.x), global4.c, vec4<bool>(true, false, global0[_wgslsmith_index_u32(28852u, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)])), Struct_2(Struct_1(vec4<f32>(-1384f, global4.d.a.a.x, -382f, 724f)), Struct_1(global4.d.b.a)), global4.e), global4.c.x, Struct_3(func_2(0i, Struct_3(global4.d.a, arg_1.x, global4.c, Struct_2(arg_0, Struct_1(vec4<f32>(arg_0.a.x, global1.a.x, global4.d.b.a.x, 325f))), global4.e), u_input.b.x, Struct_3(Struct_1(vec4<f32>(global4.a.a.x, -340f, arg_2, -846f)), 0u, global4.c, global4.d, vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 16u)], global4.e.x, global4.e.x))), ~arg_1.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u), arg_1) % 32u), vec4<i32>(u_input.b.x, global4.c.x, global4.c.x, 24782i) >> (vec4<u32>(arg_1.x, u_input.a.x, global4.b, 70792u) % vec4<u32>(32u)), global4.d, !select(vec3<bool>(false, false, global4.e.x), vec3<bool>(true, false, false), false))), 1u, global4.c, Struct_2(func_2(countOneBits(-61762i << (global4.b % 32u)), Struct_3(func_2(global4.c.x, Struct_3(global4.d.b, u_input.a.x, global4.c, global4.d, vec3<bool>(global4.e.x, global0[_wgslsmith_index_u32(arg_1.x, 16u)], global0[_wgslsmith_index_u32(global4.b, 16u)])), u_input.b.x, Struct_3(Struct_1(global1.a), 0u, global4.c, Struct_2(global4.d.b, Struct_1(vec4<f32>(arg_2, -503f, arg_2, global4.d.a.a.x))), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 16u)], false))), 0u, global4.c, Struct_2(Struct_1(vec4<f32>(1000f, -1582f, arg_2, -288f)), global4.d.b), !vec3<bool>(global4.e.x, true, global4.e.x)), _wgslsmith_div_i32(-2147483647i, u_input.b.x), Struct_3(Struct_1(arg_0.a), 1u, min(vec4<i32>(global4.c.x, -64322i, -51805i, -2147483647i), vec4<i32>(-33236i, 0i, u_input.b.x, u_input.b.x)), global4.d, select(vec3<bool>(false, global4.e.x, global0[_wgslsmith_index_u32(69984u, 16u)]), global4.e, vec3<bool>(true, global4.e.x, global4.e.x)))), global4.d.b), vec3<bool>(2033f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1326f + arg_2) - 1000f), global1.a.x < global1.a.x, select(global4.e.x, -u_input.b.x <= -3152i, global0[_wgslsmith_index_u32(4294967295u, 16u)])));
    let var_1 = ~((vec3<i32>(-1i) * -vec3<i32>(-23507i, var_0.c.x, 11488i)) << (arg_1.zzz % vec3<u32>(32u)));
    var var_2 = global4.e.x;
    var var_3 = vec4<bool>(!global4.e.x, any(var_0.e), true, global0[_wgslsmith_index_u32(~u_input.a.x, 16u)]);
    return global4.e;
}

fn func_1() -> Struct_1 {
    let var_0 = select(global4.e, select(global4.e, !select(!vec3<bool>(global4.e.x, global4.e.x, false), global4.e, !global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(97798u, u_input.a.x, 12558u, 23355u) >> (vec4<u32>(u_input.a.x, global4.b, u_input.a.x, 0u) % vec4<u32>(32u))), ~abs(vec4<u32>(65757u, global4.b, global4.b, 0u))), 16u)]), false);
    global1 = func_2(u_input.b.x, Struct_3(global4.a, 4294967295u, _wgslsmith_div_vec4_i32(global4.c, global4.c), Struct_2(Struct_1(vec4<f32>(-421f, global1.a.x, global4.d.a.a.x, 1000f)), global4.d.a), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~u_input.a.x), 16u)], !global0[_wgslsmith_index_u32(53899u >> (0u % 32u), 16u)], !global0[_wgslsmith_index_u32(~global4.b, 16u)])), global4.c.x, Struct_3(global4.a, countOneBits(~(~36098u)), vec4<i32>(2147483647i, -u_input.b.x, -1i, -min(-46001i, 30366i)), global4.d, !vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)] && true, true, u_input.a.x <= global4.b)));
    global2 = u_input.b.x;
    global1 = func_2(~u_input.b.x, Struct_3(func_2(26917i, Struct_3(func_2(-1i, Struct_3(Struct_1(vec4<f32>(global1.a.x, -1000f, global4.d.a.a.x, global1.a.x)), global4.b, vec4<i32>(u_input.b.x, u_input.b.x, 1i, -27868i), global4.d, var_0), 1i, Struct_3(Struct_1(vec4<f32>(135f, global1.a.x, global1.a.x, 2125f)), 648u, global4.c, Struct_2(Struct_1(vec4<f32>(-1832f, -783f, 778f, -1451f)), global4.d.b), vec3<bool>(var_0.x, var_0.x, true))), abs(0u), global4.c, Struct_2(global4.d.b, Struct_1(global4.d.a.a)), func_3(global4.a, vec4<u32>(4294967295u, global4.b, u_input.a.x, global4.b), global4.a.a.x)), u_input.b.x, Struct_3(global4.a, ~u_input.a.x, countOneBits(vec4<i32>(u_input.b.x, -1i, 1i, u_input.b.x)), global4.d, !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], true))), countOneBits(_wgslsmith_add_u32(global4.b >> (55715u % 32u), 26874u)), vec4<i32>(abs(u_input.b.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, -20162i, 0i, u_input.b.x)), vec4<i32>(-28368i, 27208i, -39791i, -2147483647i)), 1i, (u_input.b.x >> (u_input.a.x % 32u)) | 1i), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(global4.d.a.a + global1.a)), func_2(-global4.c.x, Struct_3(global4.d.a, 4294967295u, global4.c, global4.d, vec3<bool>(false, global4.e.x, global4.e.x)), 1i, Struct_3(Struct_1(global1.a), u_input.a.x, global4.c, Struct_2(global4.d.a, Struct_1(global4.a.a)), vec3<bool>(false, false, false)))), select(var_0, var_0, true)), -1i, Struct_3(func_2(abs(firstTrailingBit(24718i)), Struct_3(func_2(global4.c.x, Struct_3(Struct_1(vec4<f32>(1791f, global4.d.a.a.x, 318f, 511f)), 56527u, global4.c, Struct_2(global4.a, global4.d.a), global4.e), 2147483647i, Struct_3(Struct_1(global1.a), 61179u, global4.c, global4.d, vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(global4.b, 16u)], true))), global4.b, vec4<i32>(global4.c.x, 22003i, 0i, 0i), Struct_2(Struct_1(vec4<f32>(global4.a.a.x, 388f, global4.d.b.a.x, global1.a.x)), global4.d.b), vec3<bool>(var_0.x, var_0.x, true)), i32(-1i) * -1i, Struct_3(Struct_1(vec4<f32>(global1.a.x, 1313f, 918f, global1.a.x)), u_input.a.x & 1u, vec4<i32>(global4.c.x, 1i, u_input.b.x, -18147i), Struct_2(global4.a, Struct_1(global4.a.a)), func_3(Struct_1(global4.a.a), vec4<u32>(global4.b, 0u, global4.b, 4294967295u), 410f))), abs(1761u), select(~(vec4<i32>(-11673i, global4.c.x, global4.c.x, 2147483647i) >> (vec4<u32>(13765u, u_input.a.x, 1u, global4.b) % vec4<u32>(32u))), global4.c, !(!vec4<bool>(global4.e.x, global4.e.x, var_0.x, global0[_wgslsmith_index_u32(9293u, 16u)]))), global4.d, vec3<bool>(global4.a.a.x == _wgslsmith_f_op_f32(-global4.a.a.x), func_3(Struct_1(global1.a), firstTrailingBit(vec4<u32>(11539u, global4.b, 15479u, u_input.a.x)), -1157f).x, all(select(global4.e.zz, vec2<bool>(global4.e.x, global4.e.x), var_0.zx)))));
    global4 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-func_2(countOneBits(-33486i), Struct_3(global4.d.a, global4.b, vec4<i32>(-36412i, u_input.b.x, u_input.b.x, -1i), Struct_2(global4.a, Struct_1(global4.a.a)), var_0), global4.c.x, Struct_3(Struct_1(vec4<f32>(-719f, -891f, global1.a.x, global1.a.x)), 13167u, vec4<i32>(-10901i, u_input.b.x, global4.c.x, global4.c.x), global4.d, vec3<bool>(true, var_0.x, global0[_wgslsmith_index_u32(global4.b, 16u)]))).a)), 13711u, abs(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(17892i, -6310i, u_input.b.x), u_input.b), -u_input.b.x, 0i, _wgslsmith_add_i32(u_input.b.x, global4.c.x))), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(global4.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(589f * global1.a.x), 1000f)), func_2(countOneBits(u_input.b.x), Struct_3(func_2(global4.c.x, Struct_3(Struct_1(global4.d.a.a), u_input.a.x, vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), global4.d, var_0), global4.c.x, Struct_3(Struct_1(vec4<f32>(222f, -2305f, 155f, global4.d.a.a.x)), global4.b, global4.c, global4.d, global4.e)), _wgslsmith_div_u32(u_input.a.x, 11665u), global4.c, Struct_2(global4.a, global4.a), var_0), -14136i, Struct_3(global4.d.b, 0u, firstLeadingBit(global4.c), global4.d, func_3(global4.d.b, vec4<u32>(61909u, 16087u, global4.b, 85882u), 243f)))), select(vec3<bool>(all(global4.e.xx), true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 16u)]), !(!(!var_0)), !global4.e.x));
    return global4.a;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = vec4<u32>(1u, ~_wgslsmith_add_u32(~select(global4.b, 49015u, global4.e.x), u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_mult_u32(global4.b << (0u % 32u), ~(~global4.b)), select(~u_input.a.x, 85192u, false | global4.e.x)), 8963u);
    var var_1 = vec4<bool>(global0[_wgslsmith_index_u32(global4.b, 16u)], global4.c.x < ~2147483647i, !(!(!global4.e.x && (global4.e.x || global4.e.x))), false);
    global4 = Struct_3(global4.d.a, ~(~u_input.a.x) | var_0.x, abs(firstLeadingBit(select(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, global4.c.x), vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, 0i), !var_1.x))), global4.d, global4.e);
    var var_2 = -677f;
    var var_3 = _wgslsmith_dot_vec4_i32(global4.c << (vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.x), vec2<u32>(global4.b, 4294967295u)), u_input.a), ~(~u_input.a.x), ~0u, min(~0u, ~86040u)) % vec4<u32>(32u)), firstLeadingBit(global4.c >> ((vec4<u32>(global4.b, 79497u, u_input.a.x, var_0.x) ^ firstLeadingBit(vec4<u32>(u_input.a.x, 51261u, u_input.a.x, 87043u))) % vec4<u32>(32u))));
    return global4.d;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    var var_0 = func_4(arg_2.d.a);
    var var_1 = max(-16574i, u_input.b.x);
    var var_2 = firstLeadingBit(4294967295u) & ~(~u_input.a.x & 19656u);
    var var_3 = arg_1;
    let var_4 = true;
    return func_4(arg_1.b).a;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~(~vec4<u32>(global4.b, min(global4.b, 1u), ~1u, abs(10545u)) & _wgslsmith_mult_vec4_u32(~(vec4<u32>(1u, 1u, global4.b, 22005u) | vec4<u32>(1u, 1u, global4.b, global4.b)), min(vec4<u32>(global4.b, global4.b, u_input.a.x, global4.b) << (vec4<u32>(u_input.a.x, u_input.a.x, 0u, 29001u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, 79234u, global4.b, 14179u))));
    var var_1 = func_4(func_4(func_1()).a);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1166f - 436f), -628f, global1.a.x, _wgslsmith_f_op_f32(-var_1.a.a.x)) + global1.a))));
    let var_3 = select(16745u, 0u, all(func_3(global4.d.a, firstLeadingBit(~vec4<u32>(1u, 69679u, 22511u, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + arg_0.a.x))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global4.d.a.a.yx)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1267f, 521f, 1209f, var_2.a.x))))) * vec4<f32>(_wgslsmith_f_op_f32(global4.a.a.x - -882f), _wgslsmith_f_op_f32(floor(global4.a.a.x)), _wgslsmith_f_op_f32(global1.a.x * var_4.x), -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_6(func_5(_wgslsmith_div_vec4_f32(global1.a, vec4<f32>(global4.a.a.x, 327f, global4.a.a.x, global1.a.x)), func_4(func_1()), Struct_3(func_1(), 1u, global4.c << (vec4<u32>(global4.b, 4294967295u, 1u, 16047u) % vec4<u32>(32u)), Struct_2(global4.d.a, Struct_1(global4.a.a)), func_3(Struct_1(global4.a.a), vec4<u32>(20979u, u_input.a.x, 28594u, u_input.a.x), 393f)))), 1u, vec4<i32>(global4.c.x, global4.c.x, ~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(49211i, 0i, global4.c.x, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, -19544i, -8764i))), 29954i), global4.d, select(!func_3(global4.a, ~vec4<u32>(4294967295u, global4.b, 0u, u_input.a.x), -311f), vec3<bool>(!all(global4.e), !global0[_wgslsmith_index_u32(4483u, 16u)], global0[_wgslsmith_index_u32(countOneBits(reverseBits(global4.b)), 16u)]), false));
    var var_1 = Struct_3(Struct_1(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(816f, var_0.d.b.a.x, global1.a.x, global1.a.x))), func_4(func_1()), Struct_3(func_6(Struct_1(vec4<f32>(global4.d.a.a.x, var_0.a.a.x, global1.a.x, 501f))), reverseBits(var_0.b), max(global4.c, vec4<i32>(var_0.c.x, -2147483647i, -17674i, u_input.b.x)), Struct_2(Struct_1(vec4<f32>(var_0.d.b.a.x, global4.a.a.x, -309f, -881f)), global4.a), global4.e)).a), ~_wgslsmith_dot_vec2_u32(u_input.a, ~(u_input.a & u_input.a)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.c, global4.c), vec4<i32>(-var_0.c.x, global4.c.x, i32(-1i) * -29277i, _wgslsmith_mod_i32(global4.c.x, u_input.b.x)) ^ vec4<i32>(reverseBits(global4.c.x), _wgslsmith_dot_vec3_i32(global4.c.xzx, global4.c.zyz), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), abs(1i))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.a.a.x, -299f, global4.a.a.x, global1.a.x), _wgslsmith_f_op_vec4_f32(-global4.a.a), func_3(global4.d.a, vec4<u32>(34657u, u_input.a.x, 4693u, 0u), global1.a.x).x)))), var_0.e);
    let var_2 = vec4<bool>(select(0u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(58u, 94131u, 0u, var_1.b), vec4<u32>(1u, var_0.b, u_input.a.x, 34740u)) >= _wgslsmith_dot_vec4_u32(vec4<u32>(60775u, var_1.b, 1u, u_input.a.x), vec4<u32>(var_0.b, u_input.a.x, var_0.b, var_0.b))) > global4.b, true, firstLeadingBit(select(_wgslsmith_div_i32(u_input.b.x, -11087i), u_input.b.x, true)) < ~_wgslsmith_sub_i32(1512i, var_0.c.x), true);
    let var_3 = Struct_3(func_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.a.a.x, 193f, var_0.d.a.a.x)) - _wgslsmith_f_op_vec4_f32(floor(global4.d.b.a))))), var_0.d, Struct_3(var_1.a, ~(0u & global4.b), var_1.c, var_0.d, var_1.e)), 30545u, vec4<i32>(-38967i, 2147483647i, 1i, -18158i), global4.d, global4.e);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.d.b.a.xwy));
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_3.d.b.a)), vec4<f32>(-774f, var_3.a.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1().a.x * global1.a.x))), var_4.x));
    global0 = array<bool, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec4<u32>(_wgslsmith_mult_u32(global4.b, u_input.a.x), var_1.b, abs(1u), 17717u), func_4(var_3.a).b.a.x, _wgslsmith_sub_vec2_u32(~(~countOneBits(u_input.a)), _wgslsmith_add_vec2_u32(reverseBits(u_input.a), _wgslsmith_sub_vec2_u32(abs(u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), u_input.a)))), -(~_wgslsmith_mult_i32(min(-47961i, -12407i), countOneBits(var_0.c.x))));
}

