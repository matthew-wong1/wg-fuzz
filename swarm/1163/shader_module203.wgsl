struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(-497f, 1540f, 704f, -963f), 1i, vec4<bool>(false, false, true, true));

var<private> global2: array<Struct_1, 14>;

var<private> global3: array<i32, 28> = array<i32, 28>(-1i, -10113i, 2147483647i, 1i, 10087i, 1i, 25149i, i32(-2147483648), -60862i, -1i, 1i, -26435i, 4505i, -26982i, 1i, 0i, -1i, 0i, 1i, 0i, 0i, 1i, -33450i, -14595i, 5670i, 49165i, -29619i, 0i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    global3 = array<i32, 28>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-967f, -1246f)));
    global0 = _wgslsmith_f_op_f32(step(global1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a.x), -624f))))))));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.a.x)), -201f);
    global0 = _wgslsmith_f_op_f32(floor(362f));
    return global1.c;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: Struct_2) -> bool {
    var var_0 = 2147483647i;
    var var_1 = ~u_input.a;
    var var_2 = _wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.a) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(3083u, 0u, u_input.b, 0u), vec4<u32>(1u, 1u, 150u, u_input.a), vec4<u32>(0u, u_input.a, u_input.b, u_input.a)), countOneBits(vec4<u32>(4294967295u, u_input.a, 0u, 1u)), ~vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, min(u_input.a, 29398u), u_input.a), vec3<u32>(u_input.a, 32640u, abs(u_input.b))), 17803u, ~u_input.a, 4294967295u));
    var_2 = _wgslsmith_mult_vec4_u32(min(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, u_input.a, 39367u, u_input.a)), ~(~vec4<u32>(u_input.a, var_2.x, var_2.x, var_2.x)), ~countOneBits(vec4<u32>(103274u, 1u, 28146u, var_2.x))), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_2.x, 4294967295u, 38937u) >> (vec4<u32>(var_2.x, 68271u, var_2.x, 35201u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 0u, 83278u, var_2.x))), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(22332u, u_input.b, var_2.x, 19711u), vec4<u32>(u_input.b, 4294967295u, 0u, u_input.a)), firstLeadingBit(vec4<u32>(u_input.a, u_input.b, u_input.a, var_2.x)) | (vec4<u32>(var_2.x, 1u, 4294967295u, u_input.a) << (vec4<u32>(1u, var_2.x, 8352u, u_input.a) % vec4<u32>(32u)))) | _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(36597u, var_2.x, 1u, 32147u), vec4<u32>(1u, 1u, u_input.b, u_input.a)) & ~vec4<u32>(var_2.x, 4294967295u, 4294967295u, var_2.x), vec4<u32>(~8824u, 1u, 1958u, u_input.a)));
    let var_3 = 619f;
    return false != !(firstLeadingBit(u_input.b) == ~min(u_input.b, var_2.x));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<u32>) -> Struct_3 {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-global1.a), -1i, vec4<bool>(global1.c.x, true, !func_4(func_3(), vec2<bool>(true, false), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 64004i, arg_1, arg_1), vec4<i32>(arg_0, 2147483647i, 32669i, global3[_wgslsmith_index_u32(4294967295u, 28u)])), Struct_2(global1.a, arg_0, vec4<bool>(false, global1.c.x, false, global1.c.x))), true));
    var var_0 = !(!(!func_3()));
    var_0 = !select(!(!(!vec4<bool>(false, true, false, global1.c.x))), global1.c, global1.c);
    let var_1 = ~max(vec2<u32>(1u, ~26971u) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, u_input.a), arg_2), 1u), abs(~vec2<u32>(u_input.a, 1u) ^ abs(vec2<u32>(arg_2.x, u_input.a))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * 2127f);
    return Struct_3(global1.c.x, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-global1.a.x), -1611f, _wgslsmith_f_op_f32(-global1.a.x))), reverseBits(_wgslsmith_div_i32(-2147483647i, arg_0 | -2147483647i)), !global1.c), firstTrailingBit(-((vec2<i32>(global3[_wgslsmith_index_u32(arg_2.x, 28u)], 1i) & vec2<i32>(2147483647i, global1.b)) | (vec2<i32>(arg_1, arg_1) | vec2<i32>(arg_1, arg_0)))), vec3<u32>(var_1.x, u_input.b, ~_wgslsmith_div_u32(abs(var_1.x), ~0u)));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: f32) -> i32 {
    var var_0 = arg_0;
    var var_1 = func_2(abs(~(~_wgslsmith_add_i32(1i, 0i))), abs(_wgslsmith_sub_i32(arg_0.b & -2147483647i, reverseBits(-4050i)) >> (arg_2 % 32u)), ~firstTrailingBit(~vec4<u32>(6542u, arg_2, arg_2, 0u)));
    let var_2 = var_1.b;
    var_0 = func_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.d.yy & countOneBits(_wgslsmith_sub_vec2_u32(var_1.d.xx, var_1.d.zx)), ~vec2<u32>(arg_2, var_1.d.x) << (max(var_1.d.zz, ~vec2<u32>(110481u, 36950u)) % vec2<u32>(32u))), 28u)], -2147483647i, ~_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_2, var_1.d.x, arg_2), vec4<u32>(12930u, u_input.b, 12829u, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 4294967295u, var_1.d.x, u_input.a) ^ vec4<u32>(1u, 3390u, u_input.b, arg_2), vec4<u32>(arg_2, u_input.b, 7233u, 13131u)))).b;
    let var_3 = var_2.b;
    return ~_wgslsmith_div_i32(global3[_wgslsmith_index_u32(arg_2, 28u)], var_1.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mod_vec2_i32(max(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(global1.b, -12581i)), vec2<i32>(1i, global1.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-5855i, global1.b), vec2<i32>(global1.b, 16732i), vec2<i32>(global3[_wgslsmith_index_u32(26252u, 28u)], 16203i)) ^ min(vec2<i32>(global1.b, 46468i), vec2<i32>(0i, global1.b))), abs(max(-vec2<i32>(-1i, -2147483647i), vec2<i32>(13582i, global1.b))));
    var var_1 = _wgslsmith_add_i32(func_1(Struct_2(global1.a, -global3[_wgslsmith_index_u32(1u << (u_input.b % 32u), 28u)], global1.c), global1.c.x, ~(~48040u) << (_wgslsmith_div_u32(~u_input.b, ~1u) % 32u), -165f), _wgslsmith_sub_i32(i32(-1i) * -global1.b, ~2147483647i));
    global1 = Struct_2(vec4<f32>(643f, global1.a.x, 1472f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(103f, global1.a.x))), _wgslsmith_f_op_f32(abs(864f)))), max(abs(global3[_wgslsmith_index_u32(53461u, 28u)]), global1.b), global1.c);
    var var_2 = (vec4<i32>(var_0.x, select(0i, global3[_wgslsmith_index_u32(4294967295u, 28u)], false) << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u), ~abs(-20747i), global1.b) ^ _wgslsmith_sub_vec4_i32(-(~vec4<i32>(global1.b, global1.b, global3[_wgslsmith_index_u32(u_input.a, 28u)], 5225i)), firstLeadingBit(vec4<i32>(-59193i, global1.b, 0i, 63953i)))) | firstTrailingBit(select(abs(vec4<i32>(-31875i, global1.b, global3[_wgslsmith_index_u32(38828u, 28u)], 0i)) >> (vec4<u32>(u_input.b, 0u, u_input.b, 4294967295u) % vec4<u32>(32u)), ~abs(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 28u)], 1i, global1.b, 1i)), global1.c));
    let var_3 = vec3<f32>(1f, global1.a.x, 685f);
    var var_4 = ~(~_wgslsmith_div_u32(u_input.b, max(u_input.b, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-540f - global1.a.x))), _wgslsmith_f_op_vec4_f32(global1.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global1.a))))), -var_2.wzz);
}

