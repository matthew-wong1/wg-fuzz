struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5;

var<private> global2: array<vec4<bool>, 14>;

var<private> global3: array<Struct_3, 31>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5) -> u32 {
    global3 = array<Struct_3, 31>();
    var var_0 = 13889i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1340f, -532f)))));
    var var_2 = Struct_4(~vec2<u32>(4294967295u, ~1u), -236f, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-669f, -1659f)), -1669f) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(108f, 1135f) * vec2<f32>(453f, 1940f))))), -549f), Struct_2(vec4<u32>(u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.yy | vec2<u32>(50147u, u_input.d.x), vec2<u32>(1u, u_input.d.x)), ~27372u, u_input.d.x >> (countOneBits(u_input.d.x) % 32u))));
    return 1u;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(u_input.d.x, 31u)];
    global0 = -global1.a;
    let var_1 = ~u_input.d;
    let var_2 = Struct_2(vec4<u32>(arg_0.a.x, ~func_3(Struct_5(-1i), Struct_5(-1i)), u_input.d.x, abs(~(~1u))));
    global2 = array<vec4<bool>, 14>();
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = arg_3;
    return ~var_0.d.a;
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: vec2<i32>) -> vec2<f32> {
    var var_0 = arg_1.d.a;
    global0 = 24062i;
    var var_1 = arg_0;
    var var_2 = Struct_2(_wgslsmith_add_vec4_u32(~func_4(func_2(arg_1.d), !vec2<bool>(arg_0, arg_0), -356f, Struct_4(vec2<u32>(arg_1.d.a.x, u_input.d.x), arg_1.c.b, arg_1.c, arg_1.d)), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(arg_1.d.a, arg_1.d.a), 4294967295u, 977u, arg_1.d.a.x), vec4<u32>(1u, countOneBits(66088u), ~15099u, func_4(Struct_2(arg_1.d.a), vec2<bool>(arg_0, arg_0), -847f, Struct_4(vec2<u32>(var_0.x, 0u), -405f, arg_1.c, arg_1.d)).x))));
    var_1 = any(!vec4<bool>(!arg_0, true, !arg_0, all(vec2<bool>(true, true))));
    return arg_1.c.a;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 59935u), 31u)];
    let var_1 = !var_0.c.x;
    let var_2 = Struct_4(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(~25820u, u_input.d.x), firstTrailingBit(abs(u_input.d.xz))), _wgslsmith_sub_vec2_u32(~u_input.d.xx, ~select(u_input.d.yx, u_input.d.zy, var_0.c.x)), vec2<u32>(1u, u_input.d.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.b))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.a.a - var_0.a.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b, 847f) + arg_2.a))), var_0.a.a.x), func_2(func_2(func_2(Struct_2(vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.d.x))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)))), -503f));
    var var_4 = min(~vec2<i32>(_wgslsmith_mult_i32(2147483647i, global1.a), abs(-2147483647i)) ^ (select(u_input.c.xx, ~u_input.b.yw, !var_0.c) << (vec2<u32>(u_input.d.x, 31661u << (u_input.d.x % 32u)) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.a, _wgslsmith_add_i32(u_input.b.x, arg_1)), -firstLeadingBit(u_input.c.zx)), vec2<i32>(firstTrailingBit(2147483647i), u_input.a)));
    return ~(abs(u_input.c) ^ u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.b.wy;
    global2 = array<vec4<bool>, 14>();
    var var_1 = false;
    let var_2 = select(func_5((-2147483647i | -var_0.x) >> (u_input.d.x % 32u), global1.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(false, Struct_4(vec2<u32>(4294967295u, 4294967295u), 175f, Struct_1(vec2<f32>(101f, 608f), -1000f), Struct_2(vec4<u32>(18502u, 81709u, 1u, u_input.d.x))), vec2<i32>(global1.a, global1.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, 1772f))), _wgslsmith_f_op_f32(f32(-1f) * -159f))), vec4<i32>(var_0.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.b), u_input.b), ~var_0.x, ~select(-1i, _wgslsmith_sub_i32(var_0.x, global1.a), true)), !(_wgslsmith_dot_vec4_i32(u_input.b, u_input.c) > _wgslsmith_dot_vec3_i32(vec3<i32>(25341i, var_0.x, -47941i), vec3<i32>(-27910i, global1.a, 2147483647i))) & false);
    global3 = array<Struct_3, 31>();
    global3 = array<Struct_3, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

