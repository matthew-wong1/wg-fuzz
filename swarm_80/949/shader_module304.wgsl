struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(57685u, 46935u, 11770u);

var<private> global1: Struct_5 = Struct_5(Struct_2(Struct_1(344f, vec3<u32>(2674u, 16372u, 1u), false, -778f), vec2<u32>(1u, 18944u)), vec2<f32>(929f, -1630f), Struct_1(294f, vec3<u32>(14922u, 0u, 0u), false, -566f), vec3<f32>(-1163f, -684f, -486f), 4294967295u);

var<private> global2: array<Struct_5, 13>;

var<private> global3: bool;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec3<u32>) -> vec2<i32> {
    return -abs(firstTrailingBit(select(vec2<i32>(0i, u_input.a.x), u_input.a.zx, true)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = vec2<bool>(false, global1.a.a.c);
    global1 = Struct_5(global1.a, _wgslsmith_f_op_vec2_f32(global1.d.xx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -751f), arg_1.b.x))), arg_1.a.a, _wgslsmith_f_op_vec3_f32(-arg_1.d), global0.x | 1u);
    global0 = _wgslsmith_div_vec3_u32(min(~_wgslsmith_sub_vec3_u32(vec3<u32>(31076u, 26675u, global0.x), vec3<u32>(arg_0.b.x, 6811u, arg_1.a.b.x)), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 65680u, 31009u), ~vec3<u32>(25911u, 59105u, global1.e))) & arg_2.b, _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(4294967295u, 34579u, arg_2.b.x)) & ~(vec3<u32>(29337u, 13587u, arg_0.b.x) | vec3<u32>(arg_2.b.x, arg_0.b.x, global0.x)), vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 37913u, 1u), firstLeadingBit(vec3<u32>(arg_0.b.x, 4294967295u, arg_1.c.b.x))), global1.c.b.x)));
    var var_1 = arg_1.c;
    let var_2 = arg_2;
    return !select(vec2<bool>(any(vec3<bool>(true, true, true)), false), vec2<bool>(true, true), false);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(global1.c.b.x, 13u)];
    var var_1 = !global1.c.c;
    var var_2 = any(!select(!vec2<bool>(global1.c.c, false), select(select(vec2<bool>(var_0.a.a.c, true), vec2<bool>(var_0.c.c, global1.a.a.c), global1.a.a.c), func_3(global1.c, global2[_wgslsmith_index_u32(3060u, 13u)], global1.a.a), vec2<bool>(true, var_0.c.c)), func_3(Struct_1(1276f, var_0.a.a.b, var_0.c.c, 318f), Struct_5(Struct_2(global1.c, vec2<u32>(global1.c.b.x, 4044u)), var_0.b, Struct_1(var_0.b.x, global1.a.a.b, true, arg_2), vec3<f32>(arg_2, var_0.b.x, var_0.c.d), global1.e), global1.c)));
    global1 = Struct_5(Struct_2(global1.a.a, ~(_wgslsmith_mult_vec2_u32(var_0.a.a.b.xz, var_0.a.b) | global1.c.b.yy)), _wgslsmith_f_op_vec2_f32(-var_0.d.xy), Struct_1(594f, vec3<u32>(~_wgslsmith_mult_u32(arg_1.x, 28925u), 10697u, 1u), arg_1.x == abs(var_0.c.b.x >> (arg_1.x % 32u)), _wgslsmith_f_op_f32(trunc(-1659f))), _wgslsmith_f_op_vec3_f32(abs(global1.d)), 25659u);
    global0 = countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global1.c.b.x, global1.a.a.b.x), _wgslsmith_add_vec3_u32((vec3<u32>(6159u, arg_1.x, global0.x) ^ var_0.a.a.b) >> (vec3<u32>(var_0.a.a.b.x, 23617u, 1321u) % vec3<u32>(32u)), select(var_0.c.b, var_0.c.b, vec3<bool>(true, global1.c.c, true)) >> (~vec3<u32>(global1.a.a.b.x, global0.x, var_0.a.a.b.x) % vec3<u32>(32u)))));
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1571f;
    var var_1 = func_2(-_wgslsmith_sub_vec3_i32(u_input.a, u_input.a), ~global1.a.b, _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_mod_vec2_i32(firstTrailingBit(u_input.a.yy), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(804f, var_0, global1.d.x) + vec3<f32>(250f, -1209f, -588f)), global1.a, global1.d, global1.a.a.b)) | u_input.a.zx);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -727f))))), var_1.b, true, _wgslsmith_f_op_f32(floor(-1000f)));
    global0 = global1.a.a.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a)) * _wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a, global1.c.d, global1.a.a.c))), var_0), global1.d));
    var var_4 = var_1.c;
    global0 = vec3<u32>(~(max(_wgslsmith_add_u32(var_2.b.x, 1u), _wgslsmith_div_u32(33364u, global0.x)) >> (_wgslsmith_dot_vec3_u32(select(var_1.b, global1.a.a.b, vec3<bool>(true, false, var_1.c)), var_2.b) % 32u)), 0u, ~abs(select(86157u, global0.x, global1.c.c || var_2.c)));
    global1 = global2[_wgslsmith_index_u32(min(39955u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(func_2(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), abs(vec2<u32>(var_2.b.x, var_2.b.x)), _wgslsmith_f_op_f32(trunc(var_2.a)), ~vec2<i32>(-1i, u_input.a.x)).b.zz, global0.xy), ~4294967295u)), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, global0.x), select(_wgslsmith_clamp_vec2_u32(var_1.b.xz, var_2.b.yz, var_1.b.yy), ~vec2<u32>(var_1.b.x, 1u), global1.a.a.c && true) | min(firstLeadingBit(vec2<u32>(112738u, global1.c.b.x)), vec2<u32>(12217u, 109034u))));
}

