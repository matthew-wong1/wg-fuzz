struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: u32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 23>;

var<private> global2: vec2<u32> = vec2<u32>(64989u, 0u);

var<private> global3: Struct_4 = Struct_4(vec3<i32>(119512i, -30612i, 124i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    let var_0 = global3.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a.a * global0.a.a), vec3<i32>(2147483647i, ((arg_0.b.x << (12834u % 32u)) & 16817i) << (abs(global0.a.c) % 32u), ~countOneBits(arg_0.b.x)), global0.a.c, global0.a.d);
    var_1 = global0.a;
    var var_2 = u_input.b.x;
    var var_3 = select(global2.x, global2.x, false || arg_1);
    return !(!select(select(!vec4<bool>(arg_0.d, global0.b.x, false, arg_1), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, global0.a.d, global0.c.x), arg_0.d), select(vec4<bool>(arg_0.d, arg_1, false, arg_1), vec4<bool>(arg_0.d, true, false, false), vec4<bool>(arg_0.d, var_1.d, true, true))), !vec4<bool>(false, arg_1, var_1.d, false), var_1.d));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = func_3(global0.a, any(global0.c.yy));
    global0 = Struct_2(global0.a, !(!(!var_0.xzx)), !var_0.xww);
    let var_1 = arg_0;
    let var_2 = Struct_3(var_1.x >> ((min(47268u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.c, 36379u), u_input.b)) << (_wgslsmith_mod_u32(~global2.x, 45451u) % 32u)) % 32u), global0.a, global0.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, global1[_wgslsmith_index_u32(global0.a.c, 23u)])))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1361f))))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(48441u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(44673u, 4035u, 0u, 1u), vec4<u32>(11254u, 38344u, global0.a.c, 4294967295u))), 23u)], 124f), firstLeadingBit(_wgslsmith_sub_u32(u_input.b.x, global0.a.c)) & global0.a.c);
    var var_3 = Struct_1(global0.a.a, abs((vec3<i32>(-38224i, var_1.x, 1i) | -vec3<i32>(arg_0.x, global0.a.b.x, global0.a.b.x)) >> (vec3<u32>(var_2.c.c, 55091u, 1u) % vec3<u32>(32u))), ~min(_wgslsmith_add_u32(max(16757u, 28461u), ~4294967295u), ~0u), var_0.x);
    return Struct_2(Struct_1(var_2.c.a, ~(-vec3<i32>(-11922i, var_1.x, var_3.b.x)), 4294967295u, global0.c.x), vec3<bool>(!(true & select(var_3.d, true, var_0.x)), !(29839u > global2.x), global0.b.x), global0.c);
}

fn func_1() -> i32 {
    let var_0 = any(select(!select(global0.c.xz, vec2<bool>(global0.a.d, global0.a.d), select(vec2<bool>(global0.b.x, true), vec2<bool>(global0.a.d, false), vec2<bool>(global0.c.x, global0.a.d))), vec2<bool>(global0.c.x, true), true));
    let var_1 = 1000f;
    global2 = u_input.b >> ((~(~vec2<u32>(4294967295u, u_input.b.x)) << (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = func_2(min(-_wgslsmith_div_vec4_i32(vec4<i32>(19809i, global0.a.b.x, global3.a.x, 1i), vec4<i32>(-2147483647i, global3.a.x, 47108i, 1i)) >> (~vec4<u32>(10u, 387u, 73544u, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 19415i, -82691i, global3.a.x), vec4<i32>(u_input.a, 8266i, -3554i, 16320i))), select(vec4<i32>(-2147483647i, global0.a.b.x, -47975i, 10520i), reverseBits(vec4<i32>(u_input.a, -37503i, global3.a.x, u_input.a)), var_0), vec4<i32>(_wgslsmith_add_i32(-9685i, global0.a.b.x), 1i, firstTrailingBit(-41608i), u_input.a))));
    global3 = Struct_4(global3.a);
    return -16027i;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = arg_3.a;
    global2 = min(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(arg_0.b.c, 0u, 1u)), 1u | _wgslsmith_add_u32(arg_0.e, 22700u)), ~min(u_input.b, ~vec2<u32>(arg_2.c, arg_0.c.c))) << ((abs(u_input.b) ^ (_wgslsmith_add_vec2_u32(~vec2<u32>(var_0.c, arg_0.e), ~u_input.b) >> (vec2<u32>(reverseBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 19594u, arg_2.c), vec4<u32>(var_0.c, u_input.b.x, 22149u, 95136u))) % vec2<u32>(32u)))) % vec2<u32>(32u));
    let var_1 = ~var_0.b.xx;
    global1 = array<f32, 23>();
    var var_2 = !(!arg_2.d | all(!vec3<bool>(arg_2.d, arg_2.d, arg_3.a.d))) || true;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(~vec4<i32>(arg_1.a.x, arg_2.b.x, 20868i, -22323i)).a.a.xw - global0.a.a.yw)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.a.c, arg_2.c, u_input.b.x, u_input.b.x), abs(vec4<u32>(global2.x, 20800u, 45851u, 0u))), ~(vec4<u32>(0u, 4294967295u, global0.a.c, 4294967295u) & vec4<u32>(11639u, arg_3.a.c, var_0.c, var_0.c))), _wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(7588u, arg_2.c, 1u, 80235u)), abs(select(vec4<u32>(4294967295u, var_0.c, arg_2.c, 0u), vec4<u32>(4294967295u, var_0.c, 101763u, var_0.c), global0.c.x))), select(~abs(vec4<u32>(31391u, u_input.b.x, 1u, var_0.c)), ~(vec4<u32>(19265u, 1u, 38428u, var_0.c) >> (vec4<u32>(4294967295u, var_0.c, arg_3.a.c, global0.a.c) % vec4<u32>(32u))), !vec4<bool>(arg_3.b.x, true, false, global0.a.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -39505i;
    var var_1 = ~countOneBits(vec2<u32>(7911u, 4294967295u));
    var var_2 = 27913u;
    var_1 = ~(abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(26143u, 13342u), vec2<u32>(var_1.x, var_1.x))) ^ vec2<u32>(firstLeadingBit(~15027u), global0.a.c));
    let x = u_input.a;
    s_output = func_4(Struct_3((global0.a.b.x | (global0.a.b.x | 2147483647i)) | _wgslsmith_div_i32(-59904i, func_1()), global0.a, Struct_1(global0.a.a, ~(~global0.a.b), 1u, (u_input.a ^ 2147483647i) <= min(u_input.a, global0.a.b.x)), vec3<f32>(162f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(2455u, 23u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.a.x, global1[_wgslsmith_index_u32(global2.x, 23u)])))), firstLeadingBit(u_input.b.x)), Struct_4(global0.a.b), global0.a, func_2(vec4<i32>(_wgslsmith_mod_i32(var_0, -u_input.a), u_input.a, global3.a.x, u_input.a)));
}

