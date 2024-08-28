struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_3;

var<private> global3: vec2<f32> = vec2<f32>(-1346f, -1879f);

var<private> global4: array<Struct_3, 22>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = u_input.d & ~(~0u);
    var var_1 = global4[_wgslsmith_index_u32(reverseBits(var_0 | ~firstLeadingBit(4294967295u >> (u_input.c.x % 32u))), 22u)];
    global2 = Struct_3(vec4<bool>(global2.a.x, true, all(vec3<bool>(true, true, true)), -8826i <= _wgslsmith_sub_i32(~u_input.e, ~u_input.e)), global2.b, global2.c);
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, firstTrailingBit(~u_input.d), var_0 ^ abs(var_0)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 0u) ^ select(vec3<u32>(1u, 18313u, 1847u), vec3<u32>(u_input.d, 28429u, 0u), vec3<bool>(false, false, false)), ~vec3<u32>(global1.x, 66844u, 22350u) << (vec3<u32>(0u, var_0, global1.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(77945u, 416u, global1.x), ~vec3<u32>(4294967295u, global1.x, global1.x)))));
    var var_3 = u_input.e;
    return 1u;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: f32) -> u32 {
    global1 = ~vec3<u32>(min(_wgslsmith_sub_u32(global1.x, 1u), 96797u), 4294967295u, reverseBits(func_3())) & ~_wgslsmith_div_vec3_u32(reverseBits(min(vec3<u32>(0u, 94638u, 4294967295u), vec3<u32>(u_input.d, global1.x, 12069u))), vec3<u32>(0u, u_input.c.x, 0u) << (~vec3<u32>(u_input.c.x, 37200u, 0u) % vec3<u32>(32u)));
    var var_0 = -1155f;
    global4 = array<Struct_3, 22>();
    var_0 = arg_2;
    global2 = global4[_wgslsmith_index_u32(global1.x, 22u)];
    return 1u;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    global0 = array<vec3<i32>, 29>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-524f + global2.c), global2.c, _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1287f))))), vec3<bool>(~u_input.b < arg_1.b.x, all(select(global2.a, global2.a, vec4<bool>(true, arg_1.a.x, false, true))), arg_1.c.x == arg_1.c.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-309f, global3.x, 1453f, global3.x))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, global3.x, 1967f, 1301f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global3.x, global3.x, global2.c) * vec4<f32>(global3.x, global2.c, 1000f, -453f)))))));
    let var_1 = arg_1.a.x;
    let var_2 = -select(-2147483647i, arg_2, false);
    global0 = array<vec3<i32>, 29>();
    return Struct_3(global2.a, select(!select(select(global2.a.yzw, vec3<bool>(arg_1.a.x, false, global2.b.x), vec3<bool>(arg_1.a.x, true, true)), select(global2.b, vec3<bool>(true, global2.a.x, true), global2.a.wzx), -23763i < u_input.a.x), vec3<bool>(true && all(global2.a.zw), any(select(vec4<bool>(true, global2.a.x, true, true), global2.a, global2.a)), false), !(!select(vec3<bool>(true, arg_1.a.x, false), global2.b, global2.b))), 1665f);
}

fn func_1() -> vec4<f32> {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_sub_i32(u_input.e, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(30209i, u_input.b, u_input.e, 0i), ~vec4<i32>(u_input.b, u_input.e, 1698i, -70226i))) >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(global1.x, var_0.x), _wgslsmith_clamp_u32(u_input.c.x, global1.x, u_input.d)), ~u_input.d) % 32u));
    global3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2239f, global3.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-566f * -1705f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x)), global3.x))));
    global4 = array<Struct_3, 22>();
    let var_2 = func_4(global3.x, Struct_1(vec2<bool>(!(true | global2.b.x), global2.a.x), vec4<i32>(var_1, 86302i, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, ~var_1), abs(u_input.a.x)), vec4<u32>(1u, var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, global1.x), vec3<u32>(u_input.d, 62936u, 1u)) >> (func_2(false, global2.a.x, global3.x, 1000f) % 32u), u_input.c.x)), -2147483647i);
    return vec4<f32>(-1187f, global3.x, _wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(var_2.c * -396f)), _wgslsmith_f_op_f32(-352f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.c * 1119f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, global3.x, -697f), vec3<f32>(287f, 782f, global2.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, global3.x) + vec3<f32>(global3.x, 377f, -926f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 504f, -723f, global3.x) - vec4<f32>(-1758f, global2.c, global2.c, 935f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.c, global3.x, global2.c, 308f), vec4<f32>(global3.x, -398f, -324f, global3.x)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_1()))))))));
    let var_1 = vec3<u32>(reverseBits(8969u), 12206u, 32454u >> (min(_wgslsmith_dot_vec3_u32(select(vec3<u32>(global1.x, u_input.c.x, u_input.c.x), vec3<u32>(global1.x, 43823u, 0u), global2.a.zzw), vec3<u32>(34126u, global1.x, global1.x)), ~_wgslsmith_sub_u32(0u, global1.x)) % 32u));
    global4 = array<Struct_3, 22>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.b.yzy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)));
    let var_3 = func_4(_wgslsmith_f_op_f32(-func_4(global3.x, Struct_1(vec2<bool>(global2.a.x, false), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.e, u_input.e, 1i), vec4<i32>(u_input.b, u_input.a.x, 0i, 0i)), vec4<u32>(5093u, u_input.d, u_input.d, global1.x)), _wgslsmith_sub_i32(u_input.e, -2979i) ^ ~u_input.a.x).c), Struct_1(global2.b.xy, -(abs(vec4<i32>(1i, u_input.e, -11489i, u_input.a.x)) >> ((vec4<u32>(36416u, global1.x, var_1.x, u_input.c.x) | vec4<u32>(4294967295u, 0u, 46470u, 4294967295u)) % vec4<u32>(32u))), ~(~(~vec4<u32>(1u, u_input.c.x, var_1.x, 61183u)))), ~36938i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(firstTrailingBit(-u_input.a.x), ~(-14182i), u_input.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-46165i, u_input.a.x), u_input.b, u_input.a.x), -_wgslsmith_add_vec3_i32(vec3<i32>(37677i, u_input.e, -2147483647i), vec3<i32>(-2147483647i, 7161i, 11242i)))), vec2<i32>(-1i) * -abs(u_input.a.zz | u_input.a.zy), ~func_2(global2.a.x, true, -1138f, _wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x)))));
}

