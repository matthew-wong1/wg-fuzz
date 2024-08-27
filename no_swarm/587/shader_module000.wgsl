struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1306u;

var<private> global1: Struct_2;

var<private> global2: vec4<f32> = vec4<f32>(396f, -516f, 913f, -1105f);

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    global0 = min(_wgslsmith_mod_u32(~(~(~arg_0)), _wgslsmith_sub_u32(arg_0, ~(~global1.b))), 2761u);
    let var_0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(arg_0, arg_0, u_input.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, u_input.a, u_input.a), ~vec3<u32>(arg_0, 12222u, u_input.b.x), ~vec3<u32>(49438u, u_input.a, 90628u))), ~vec3<u32>(_wgslsmith_dot_vec2_u32(select(u_input.b, u_input.b, vec2<bool>(global1.a.a.x, global1.c.b)), u_input.b), 4294967295u, ~global1.b));
    global0 = 0u;
    global0 = var_0 ^ ~(~0u);
    var var_1 = -1000f;
    return select(vec2<bool>(global1.c.b, true), !vec2<bool>(global1.a.b, all(!vec4<bool>(false, global1.c.a.x, global1.c.a.x, global1.a.a.x))), global1.c.a);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(select(vec2<bool>(false, arg_3.a.x & false), !select(global1.c.a, global1.a.a, true), _wgslsmith_f_op_f32(170f * arg_0.x) < arg_0.x), global1.c.a.x), global1.b, arg_3);
    let var_1 = 46429u >= global1.b;
    var var_2 = func_3(~(~1u));
    let var_3 = _wgslsmith_clamp_vec4_i32(-select(vec4<i32>(-23060i, _wgslsmith_dot_vec4_i32(vec4<i32>(7101i, -30151i, -1i, 0i), vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -51769i)), max(-1i, 2147483647i), firstTrailingBit(2147483647i)), vec4<i32>(-1i) * -vec4<i32>(0i, -1i, -1i, -2147483647i), !vec4<bool>(false, var_2.x, var_0.a.a.x, arg_3.b)), vec4<i32>(~_wgslsmith_mult_i32(abs(-1i), select(17377i, -1i, false)), -1i, _wgslsmith_div_i32(-2147483647i, 1i ^ select(-29024i, 38783i, false)), 0i), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(17462i, 0i), countOneBits(2147483647i)) ^ _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-10892i, -24925i, 6489i), vec3<i32>(2147483647i, 1i, -10864i)), 29226i), _wgslsmith_mult_i32(24388i, 1i >> (var_0.b % 32u)), 2147483647i, 1i));
    let var_4 = Struct_1(vec2<bool>(!(global1.c.b || any(global1.c.a)), true), true);
    return var_4;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = select(vec2<bool>(true, any(select(vec3<bool>(arg_0.a.a.x, false, global1.c.b), vec3<bool>(global1.c.b, true, true), global1.a.a.x)) & arg_0.c.b), select(vec2<bool>(select(arg_0.a.a.x, true, true), global1.a.b || global1.c.b), arg_0.a.a, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1419f, global2.x, global2.x, 625f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 786f, -1086f, 949f))), global2.zwx, _wgslsmith_f_op_f32(trunc(global2.x)), global1.a).a), vec2<bool>(any(vec2<bool>(true, arg_0.a.b)), arg_0.c.a.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-240f, _wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(abs(global2.x)))))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-620f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -751f))) + vec3<f32>(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.x, -201f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1529f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), arg_0.a, ~_wgslsmith_mod_i32(1i, ~(-22144i)), ~arg_0.b, -vec2<i32>(_wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -4191i), vec3<i32>(2147483647i, 27510i, -11165i)), -1i), 1i));
    let var_3 = 0i;
    var var_4 = _wgslsmith_div_f32(225f, _wgslsmith_div_f32(-316f, -591f));
    return Struct_2(global1.a, min(1u, 4294967295u), arg_0.c);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<bool>) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1177f, -2449f, -505f, -2264f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1809f, 321f, 734f, global2.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 1000f, global2.x)))));
    global1 = func_4(Struct_2(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1125f, global2.x, 797f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 737f, 1347f))), global2.wxz, _wgslsmith_f_op_f32(-global2.x), global1.a), 15734u, Struct_1(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_2.x, arg_1.x), true), true)));
    global3 = array<Struct_1, 19>();
    return Struct_2(Struct_1(!select(select(global1.c.a, vec2<bool>(arg_1.x, global1.a.b), arg_1), func_2(vec4<f32>(107f, global2.x, -1000f, 946f), vec3<f32>(global2.x, 844f, global2.x), -467f, global1.a).a, func_4(Struct_2(Struct_1(global1.a.a, arg_1.x), global1.b, Struct_1(arg_1, arg_1.x))).c.b), true), 30036u, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec3<f32>(-1000f, global2.x, global2.x), global3[_wgslsmith_index_u32(0u, 19u)], 4593i, global1.b & ~(~(u_input.a | global1.b)), vec2<i32>(~min(_wgslsmith_sub_i32(-1i, 24198i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 1i), vec3<i32>(-2147483647i, 2147483647i, -31086i))), 1i));
    global1 = func_1(-1i, select(!(!global1.a.a), var_0.b.a, vec2<bool>(var_0.b.a.x, all(select(global1.a.a, vec2<bool>(true, var_0.b.a.x), global1.c.a.x)))), global1.a.a);
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), _wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_add_vec2_u32(~vec2<u32>(66431u, 40326u), u_input.b)));
    let var_2 = select(vec4<bool>(!any(!vec3<bool>(false, global1.c.a.x, var_0.b.b)), func_1(_wgslsmith_mult_i32(firstLeadingBit(45107i), _wgslsmith_mult_i32(var_0.e.x, var_0.c)), var_0.b.a, vec2<bool>(func_4(Struct_2(Struct_1(vec2<bool>(false, true), var_0.b.b), 1u, var_0.b)).a.a.x, true)).c.b, true, (1u << (reverseBits(var_0.d) % 32u)) < global1.b), select(select(select(!vec4<bool>(false, global1.a.a.x, global1.a.a.x, false), vec4<bool>(var_0.b.a.x, false, global1.a.a.x, global1.c.b), false), select(vec4<bool>(var_0.b.a.x, var_0.b.a.x, false, var_0.b.b), select(vec4<bool>(global1.a.b, false, var_0.b.a.x, false), vec4<bool>(var_0.b.b, global1.c.b, var_0.b.b, true), var_0.b.a.x), true), true), select(vec4<bool>(false, global1.a.a.x, true, true), vec4<bool>(select(true, var_0.b.b, global1.c.a.x), var_0.b.a.x, 41182u <= var_1.x, false), select(vec4<bool>(global1.c.b, global1.a.b, global1.c.a.x, false), vec4<bool>(var_0.b.b, var_0.b.a.x, global1.a.b, true), !vec4<bool>(global1.a.b, global1.a.a.x, var_0.b.b, true))), true), select(!select(select(vec4<bool>(true, global1.a.b, true, global1.c.b), vec4<bool>(false, var_0.b.a.x, var_0.b.a.x, global1.a.b), true), vec4<bool>(true, true, true, true), global1.c.b), !select(vec4<bool>(global1.a.a.x, global1.a.b, var_0.b.a.x, false), select(vec4<bool>(false, true, global1.a.a.x, global1.c.a.x), vec4<bool>(var_0.b.a.x, true, false, true), var_0.b.a.x), !vec4<bool>(false, global1.a.a.x, global1.c.a.x, false)), any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec2<i32>(45132i >> (global1.b % 32u), -var_0.c)), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2375f) + _wgslsmith_f_op_f32(1635f - 1509f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))), 0i);
}

