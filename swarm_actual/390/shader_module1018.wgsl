struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6>;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec3<f32>(327f, 376f, -1401f), vec3<f32>(-448f, 637f, -630f), Struct_1(vec3<i32>(0i, 48168i, 1i), vec2<f32>(-816f, 1707f), 1172f), Struct_1(vec3<i32>(42312i, 1i, 2147483647i), vec2<f32>(467f, -136f), 1035f)), Struct_2(vec3<f32>(645f, -153f, 1315f), vec3<f32>(-126f, 814f, -930f), Struct_1(vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec2<f32>(343f, -1574f), 1525f), Struct_1(vec3<i32>(-1i, -24532i, -1i), vec2<f32>(1000f, 905f), -2043f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<i32> {
    var var_0 = !select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), any(vec4<bool>(false, false, false, true))), any(vec4<bool>(false, false, false, false))), select(vec2<bool>(select(false, false, true), true), vec2<bool>(true, false), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c, global1.a.d.b.x)) + _wgslsmith_f_op_f32(global1.a.b.x + 1112f)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.b.x))));
    let var_1 = Struct_3(Struct_2(global1.b.a, vec3<f32>(-1184f, 326f, 124f), Struct_1(-global1.b.d.a, arg_0.b, _wgslsmith_f_op_f32(-arg_0.b.x)), Struct_1(u_input.b & reverseBits(arg_0.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -231f), 1090f), 1f)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.d.b.x, global1.a.c.c, arg_0.b.x) * global1.b.a) - global1.b.a)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(-370f + -134f)))), global1.a.c, arg_0));
    var_0 = select(select(!select(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false), var_0.x), select(vec2<bool>(false, true), vec2<bool>(false, var_0.x), vec2<bool>(true, false)), !vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), 0u < _wgslsmith_mod_u32(~16789u, ~u_input.d.x)), select(!(!vec2<bool>(var_0.x, var_0.x)), vec2<bool>(any(!vec2<bool>(false, var_0.x)), all(global0[_wgslsmith_index_u32(40235u, 6u)])), var_0.x), var_0.x);
    global1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.d.c, -811f, arg_0.c), _wgslsmith_f_op_vec3_f32(var_1.b.a - global1.b.a)))), var_1.b.a, Struct_1(vec3<i32>(_wgslsmith_sub_i32(global1.b.d.a.x, -55323i), 20323i, 2276i), vec2<f32>(_wgslsmith_f_op_f32(-1442f * arg_0.b.x), -568f), -510f), global1.a.d), global1.a);
    global1 = var_1;
    return vec4<i32>(-35590i, _wgslsmith_clamp_i32(u_input.b.x, -max(_wgslsmith_mod_i32(global1.b.d.a.x, u_input.b.x), 1i), firstTrailingBit(2147483647i)), u_input.e.x, ~_wgslsmith_div_i32(2147483647i, 31852i));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = -(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, arg_0.a.c.a.x, arg_0.b.c.a.x), func_3(Struct_1(vec3<i32>(11476i, -1i, 3876i), arg_0.b.d.b, -2364f), 35749u)) ^ firstLeadingBit(vec4<i32>(-1i) * -u_input.e));
    global1 = Struct_3(arg_0.a, Struct_2(vec3<f32>(-1245f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.c.b.x + arg_0.b.c.c)), global1.a.b.x), arg_0.b.b, Struct_1(_wgslsmith_mod_vec3_i32(arg_0.b.d.a >> (vec3<u32>(0u, 36154u, 33210u) % vec3<u32>(32u)), vec3<i32>(0i, -49353i, 0i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-161f, global1.b.d.b.x))), arg_0.b.d.b.x), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(13667i, global1.b.d.a.x, -12593i), vec3<i32>(-1177i, var_0.x, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.a.yz - vec2<f32>(global1.a.b.x, arg_0.a.b.x))), _wgslsmith_f_op_f32(arg_0.a.b.x * arg_0.b.b.x))));
    let var_1 = ~countOneBits(min(firstLeadingBit(u_input.d), ~vec2<u32>(44193u, u_input.d.x))) ^ u_input.d;
    var_0 = vec4<i32>(var_0.x, -var_0.x, _wgslsmith_mod_i32(2147483647i, countOneBits(_wgslsmith_mult_i32(-global1.b.c.a.x, _wgslsmith_clamp_i32(-1i, arg_0.b.c.a.x, 0i)))), 35784i);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1160f, arg_0.a.b.x) + -401f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1364f))))), u_input.a.x);
    return global1.a.d;
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>) -> Struct_5 {
    global0 = array<vec3<bool>, 6>();
    var var_0 = true;
    var var_1 = Struct_5(arg_0.a, Struct_1(_wgslsmith_add_vec3_i32(u_input.c, _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.b.d.a.x, global1.b.d.a.x, -1429i), arg_0.b.a, global1.b.c.a), abs(global1.b.d.a))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-857f, global1.b.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-669f, -217f), global1.a.b.zz)))), _wgslsmith_f_op_f32(arg_0.c.b.x + _wgslsmith_f_op_f32(floor(-1032f)))), arg_0.a, ~(-arg_0.d << (max(vec4<u32>(u_input.d.x, 1u, 0u, 1u), vec4<u32>(0u, arg_1.x, 50248u, 4294967295u)) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 1540u, ~u_input.d.x), select(_wgslsmith_div_vec4_u32(vec4<u32>(104483u, u_input.d.x, u_input.d.x, 104434u), vec4<u32>(arg_1.x, 6097u, u_input.d.x, 64824u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 69798u, u_input.d.x, 24422u), vec4<u32>(90994u, arg_1.x, u_input.d.x, u_input.d.x)), vec4<bool>(true, true, true, true))) % vec4<u32>(32u)));
    var var_2 = true;
    global1 = Struct_3(global1.b, global1.b);
    return Struct_5(func_2(Struct_3(Struct_2(global1.a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.b.x, -1679f, 2024f)), Struct_1(u_input.e.xzx, arg_0.b.b, -718f), func_2(Struct_3(Struct_2(global1.b.a, vec3<f32>(var_1.a.c, -1293f, -1096f), var_1.b, Struct_1(vec3<i32>(10530i, var_1.d.x, global1.a.c.a.x), arg_0.c.b, arg_0.a.c)), Struct_2(global1.b.b, vec3<f32>(-1000f, arg_0.b.c, 605f), Struct_1(vec3<i32>(global1.b.c.a.x, var_1.d.x, 33142i), var_1.c.b, -697f), Struct_1(var_1.d.xxz, vec2<f32>(-126f, -100f), var_1.a.c))), vec2<bool>(false, true))), global1.b), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)), Struct_1(vec3<i32>(firstTrailingBit(var_1.a.a.x & global1.a.d.a.x), _wgslsmith_sub_i32(u_input.c.x, ~arg_0.c.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, arg_0.a.a.x, u_input.b.x, 23374i), var_1.d) ^ u_input.a.x), global1.a.d.b, _wgslsmith_f_op_f32(global1.a.b.x - arg_0.b.c)), func_2(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-252f, -108f, global1.b.a.x) - vec3<f32>(var_1.b.c, var_1.c.c, 254f)), _wgslsmith_f_op_vec3_f32(-global1.b.b), func_2(Struct_3(Struct_2(global1.b.b, global1.b.a, Struct_1(u_input.c, vec2<f32>(var_1.a.b.x, 1000f), global1.b.c.b.x), Struct_1(vec3<i32>(-20605i, u_input.e.x, u_input.a.x), var_1.c.b, var_1.a.b.x)), Struct_2(global1.b.b, global1.b.a, Struct_1(u_input.e.yzw, arg_0.b.b, 760f), global1.a.d)), vec2<bool>(false, false)), Struct_1(global1.b.c.a, vec2<f32>(-920f, global1.b.c.b.x), -1000f)), global1.a), vec2<bool>(true, true)), vec4<i32>(u_input.a.x, 67420i << (~max(4294967295u, u_input.d.x) % 32u), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.c.x, u_input.e.x, arg_0.a.a.x, var_1.a.a.x) << (vec4<u32>(0u, arg_1.x, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), func_3(global1.b.c, arg_1.x)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.b.d.a.x, 0i, u_input.a.x, -1i), u_input.e), vec4<i32>(-35152i, u_input.a.x, -1i, 9472i))), global1.b.c.a.x));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1) -> Struct_2 {
    global1 = Struct_3(global1.b, Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(2298f, _wgslsmith_f_op_f32(ceil(global1.b.c.c)), _wgslsmith_f_op_f32(min(arg_1.b.x, 504f))) * _wgslsmith_f_op_vec3_f32(trunc(global1.b.b))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1534f, arg_1.c, arg_0.c.c), global1.b.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.b)))), Struct_1(_wgslsmith_mod_vec3_i32(countOneBits(arg_0.c.a), ~arg_0.a.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(1008f, -600f) + arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-452f + arg_1.c) - 371f)), func_4(Struct_5(Struct_1(vec3<i32>(-2147483647i, 2147483647i, arg_0.d.x), vec2<f32>(arg_0.c.c, arg_1.c), 240f), func_2(Struct_3(Struct_2(global1.a.b, vec3<f32>(223f, 1386f, 1000f), global1.b.d, Struct_1(vec3<i32>(global1.a.d.a.x, arg_1.a.x, 24069i), arg_0.b.b, 1302f)), Struct_2(vec3<f32>(557f, -132f, 1347f), global1.a.b, global1.a.c, Struct_1(arg_1.a, vec2<f32>(-1191f, -1205f), -1596f))), vec2<bool>(true, true)), func_4(Struct_5(Struct_1(arg_1.a, global1.b.c.b, global1.b.c.b.x), Struct_1(global1.a.d.a, arg_1.b, global1.a.d.c), arg_1, vec4<i32>(global1.b.d.a.x, global1.a.c.a.x, arg_1.a.x, arg_1.a.x)), vec2<u32>(u_input.d.x, u_input.d.x)).c, _wgslsmith_clamp_vec4_i32(arg_0.d, u_input.e, vec4<i32>(u_input.b.x, 1i, 2147483647i, 2147483647i))), (u_input.d | u_input.d) >> (~u_input.d % vec2<u32>(32u))).c));
    var var_0 = 0u;
    let var_1 = -61769i;
    var var_2 = var_1 ^ -33243i;
    let var_3 = u_input.e;
    return Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-690f * -1078f), 1000f, _wgslsmith_f_op_f32(trunc(global1.b.d.b.x))) + vec3<f32>(_wgslsmith_div_f32(arg_0.b.c, global1.b.a.x), _wgslsmith_f_op_f32(select(-944f, arg_1.c, false)), _wgslsmith_f_op_f32(sign(423f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(global1.b.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, global1.a.b.x, -649f))))), global0[_wgslsmith_index_u32(max(u_input.d.x, ~_wgslsmith_mod_u32(4294967295u, u_input.d.x)), 6u)])), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global1.b.a * vec3<f32>(551f, global1.b.d.b.x, arg_1.b.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(global1.a.a, vec3<f32>(367f, -153f, 1399f))))))))), Struct_1(abs(var_3.wyz), _wgslsmith_f_op_vec2_f32(-arg_0.b.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(-114f)), true))))), func_2(Struct_3(global1.a, Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.c, 960f, 134f) - vec3<f32>(571f, -229f, arg_0.c.b.x)), _wgslsmith_f_op_vec3_f32(select(global1.b.a, vec3<f32>(arg_0.b.b.x, -465f, 405f), vec3<bool>(true, false, false))), arg_1, global1.a.c)), vec2<bool>(all(vec4<bool>(false, false, false, true)), (1i > global1.b.d.a.x) || any(vec3<bool>(true, true, false)))));
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = vec4<u32>(1u, u_input.d.x, 53831u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(27717u, arg_0, arg_0) >> (~vec3<u32>(u_input.d.x, arg_0, u_input.d.x) % vec3<u32>(32u))), ~select(vec3<u32>(u_input.d.x, arg_0, 4294967295u), vec3<u32>(49455u, 1u, arg_0), global0[_wgslsmith_index_u32(arg_0, 6u)]) ^ ~vec3<u32>(1u, 1u, u_input.d.x)));
    var_0 = _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0.x, arg_0, var_0.x), vec4<u32>(0u, 1u, 4294967295u, u_input.d.x), vec4<u32>(var_0.x, arg_0, var_0.x, 101641u)) | vec4<u32>(~1u, var_0.x, ~1u, 0u), vec4<u32>(0u, arg_0, u_input.d.x, reverseBits(4294967295u))) ^ ~vec4<u32>(countOneBits(_wgslsmith_div_u32(arg_0, arg_0)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 22340u, 43378u, 50054u), vec4<u32>(4294967295u, u_input.d.x, arg_0, 3715u)), ~var_0.x), ~1u, countOneBits(u_input.d.x) | 21092u);
    var_0 = _wgslsmith_mod_vec4_u32(firstTrailingBit(abs(vec4<u32>(u_input.d.x, 25769u, ~arg_0, 0u))), vec4<u32>(43289u | _wgslsmith_div_u32(max(1u, 60606u), var_0.x), abs(var_0.x) & 4294967295u, var_0.x, 4294967295u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1357f)), arg_1.c.b.x), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_4(Struct_5(Struct_1(global1.a.d.a, vec2<f32>(global1.b.b.x, -1106f), arg_1.b.x), Struct_1(u_input.b, global1.a.b.xx, 1234f), global1.a.c, vec4<i32>(arg_1.c.a.x, global1.a.d.a.x, 29685i, u_input.c.x)), abs(vec2<u32>(var_0.x, 2856u))).a.c))), arg_1.d.b.x);
    let var_2 = -_wgslsmith_sub_i32(func_2(Struct_3(Struct_2(vec3<f32>(-851f, global1.a.d.c, var_1.x), var_1, arg_1.d, Struct_1(arg_1.d.a, var_1.xz, 453f)), global1.b), vec2<bool>(false, true)).a.x, u_input.a.x) > arg_1.d.a.x;
    return select(!select(select(global0[_wgslsmith_index_u32(~arg_0, 6u)], select(vec3<bool>(var_2, var_2, false), vec3<bool>(false, false, var_2), global0[_wgslsmith_index_u32(1u, 6u)]), !var_2), !global0[_wgslsmith_index_u32(var_0.x, 6u)], !global0[_wgslsmith_index_u32(u_input.d.x, 6u)]), select(select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_0, ~arg_0), 6u)], global0[_wgslsmith_index_u32(select(~1u, u_input.d.x, var_2), 6u)], (1i >= global1.a.c.a.x) & true), select(!select(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(6992u, 6u)], true), vec3<bool>(true, any(vec2<bool>(var_2, false)), true), any(!global0[_wgslsmith_index_u32(arg_0, 6u)])), var_2), !vec3<bool>(any(vec4<bool>(var_2, true, var_2, true)), any(select(vec4<bool>(var_2, false, true, true), vec4<bool>(var_2, var_2, false, false), true)), true));
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = select(vec3<bool>(!(-2147483647i <= _wgslsmith_mod_i32(global1.b.d.a.x, 44142i)), true, any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(40296u, 4294967295u, 13295u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 49134u, 33146u), vec3<u32>(u_input.d.x, 9717u, u_input.d.x))), 6u)])), vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a.x * global1.b.d.b.x), _wgslsmith_f_op_f32(690f + global1.a.d.b.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.d.b.x)), true, select(!(global1.b.b.x >= -864f), false, any(global0[_wgslsmith_index_u32(u_input.d.x, 6u)]))), arg_0.c.a.x <= -1i);
    var_0 = func_6(u_input.d.x, func_5(func_4(Struct_5(func_2(Struct_3(Struct_2(global1.a.b, arg_0.a, global1.a.d, Struct_1(global1.a.c.a, vec2<f32>(1000f, -362f), arg_0.d.b.x)), Struct_2(vec3<f32>(142f, 1302f, -1045f), vec3<f32>(global1.b.a.x, arg_0.d.c, arg_0.d.c), arg_0.d, arg_0.c)), vec2<bool>(var_0.x, true)), global1.a.c, Struct_1(vec3<i32>(1i, arg_0.c.a.x, 1i), vec2<f32>(global1.b.b.x, arg_0.a.x), arg_0.c.c), vec4<i32>(global1.b.d.a.x, -36904i, 2147483647i, u_input.b.x)), ~(~u_input.d)), global1.b.c));
    let var_1 = _wgslsmith_sub_vec2_i32(-countOneBits(global1.b.c.a.yy), firstLeadingBit(firstLeadingBit(global1.b.c.a.yy))) << (~vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, 4294967295u, u_input.d.x), vec4<u32>(56260u, 73810u, u_input.d.x, u_input.d.x))), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, u_input.d.x)), vec3<u32>(1u, u_input.d.x, u_input.d.x) ^ vec3<u32>(115580u, 67233u, 87502u))) % vec2<u32>(32u));
    return global1.a.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(false, true), vec2<bool>(false, false), true);
    let var_1 = Struct_5(Struct_1(select(vec3<i32>(0i, 59880i, func_1(global1.b)), -vec3<i32>(u_input.e.x, u_input.b.x, 2147483647i), !var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.a.c.b), _wgslsmith_f_op_vec2_f32(global1.a.d.b - global1.a.b.zy), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -851f)) - _wgslsmith_div_f32(623f, 637f))), global1.b.d, Struct_1(u_input.e.xwy, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.c.b.x), -999f), vec2<f32>(global1.a.d.c, global1.a.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(289f))))), vec4<i32>(i32(-1i) * -2147483647i, -reverseBits(2147483647i), u_input.c.x, -17154i));
    global1 = Struct_3(func_5(var_1, var_1.b), global1.a);
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(~global1.a.d.a, vec3<i32>(~78138i, _wgslsmith_dot_vec2_i32(vec2<i32>(39417i, 2147483647i), global1.b.c.a.zx), i32(-1i) * -1i)), -(1i & _wgslsmith_add_i32(0i, global1.a.c.a.x)), u_input.b.x, global1.b.d.a.x), ~(-(~var_1.d) << ((reverseBits(vec4<u32>(24267u, u_input.d.x, 0u, u_input.d.x)) >> (select(vec4<u32>(1u, u_input.d.x, 67232u, u_input.d.x), vec4<u32>(50852u, u_input.d.x, 68215u, 17246u), vec4<bool>(false, var_0.x, var_0.x, var_0.x)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global0 = array<vec3<bool>, 6>();
    global0 = array<vec3<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-2405f, 1509f), _wgslsmith_div_f32(-967f, global1.a.b.x), _wgslsmith_f_op_f32(global1.a.b.x + var_1.c.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2006f)))), ~abs(reverseBits(abs(vec4<u32>(28391u, u_input.d.x, 29647u, 0u)))), ~(~(~u_input.d.x)));
}

