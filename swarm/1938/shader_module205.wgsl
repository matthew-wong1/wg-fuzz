struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2>;

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<f32, 5> = array<f32, 5>(1148f, -1000f, 369f, 1338f, -1000f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> u32 {
    return (firstTrailingBit(min(u_input.b.x, ~4294967295u)) >> (1u % 32u)) | ~(~_wgslsmith_clamp_u32(1u, arg_1.a.b.x, 6403u >> (arg_1.a.c.x % 32u)));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    global0 = array<vec3<u32>, 2>();
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(~firstTrailingBit(0u), u_input.a.x, u_input.b.x), global0[_wgslsmith_index_u32(~0u, 2u)]);
    return Struct_1(u_input.c, u_input.b, select(vec2<u32>(_wgslsmith_clamp_u32(~66715u, u_input.a.x, _wgslsmith_add_u32(var_1.x, 15091u)), 1u), select(max(u_input.a.yy >> (vec2<u32>(var_1.x, 58562u) % vec2<u32>(32u)), ~vec2<u32>(0u, 45790u)), var_1.zy, (u_input.b.x > var_1.x) && (arg_0 || true)), false), ~(-2147483647i) << (firstLeadingBit(_wgslsmith_div_u32(var_1.x | var_1.x, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b))) % 32u));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(u_input.c, _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.c.x, _wgslsmith_div_u32(abs(1u), 0u << (u_input.b.x % 32u)), arg_2.b.x, 17174u), u_input.b), ~vec2<u32>(arg_2.c.x, 0u), -_wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_clamp_i32(u_input.c, arg_0, arg_0)), arg_2.a));
    let var_1 = vec2<bool>(false, true);
    let var_2 = global0[_wgslsmith_index_u32(1u, 2u)];
    global0 = array<vec3<u32>, 2>();
    var var_3 = 1u;
    return Struct_1(~(u_input.c >> (8388u % 32u)), vec4<u32>(arg_2.c.x, var_0.c.x, 15955u, ~0u) ^ _wgslsmith_clamp_vec4_u32((var_0.b ^ u_input.b) ^ (var_0.b ^ vec4<u32>(4294967295u, var_0.b.x, arg_2.b.x, arg_2.b.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.c.x, 8125u, arg_2.b.x, 0u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.a.x)), countOneBits(min(vec4<u32>(97788u, var_2.x, 3380u, arg_2.c.x), vec4<u32>(4294967295u, 0u, 74525u, 34704u)))), abs(vec2<u32>(var_0.b.x, func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.d, 2147483647i), vec3<i32>(arg_2.a, -7608i, 1i)), Struct_2(arg_2, Struct_1(-1i, vec4<u32>(4294967295u, arg_2.c.x, 15076u, var_0.b.x), arg_2.b.wx, 55167i))))), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~_wgslsmith_dot_vec2_u32(~max(u_input.a.zy, vec2<u32>(41710u, u_input.a.x)), ~firstLeadingBit(vec2<u32>(14558u, u_input.b.x))), ~0u, 64645u);
    var var_1 = true;
    var var_2 = Struct_2(func_3(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-26760i, u_input.c), vec2<i32>(u_input.c, u_input.c)), ~vec2<i32>(u_input.c, u_input.c)) >> (countOneBits(~2203u) % 32u), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2[_wgslsmith_index_u32(func_1(u_input.c, Struct_2(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(var_0.x, 23u)])), 5u)], global2[_wgslsmith_index_u32(4294967295u >> (u_input.a.x % 32u), 5u)], _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(1u, 5u)]))))), func_2(true, u_input.c)), Struct_1(~min(u_input.c, u_input.c) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(39172u, u_input.a.x, 4294967295u) | vec3<u32>(4294967295u, 3075u, u_input.b.x), u_input.a) % 32u), reverseBits(u_input.b), var_0.xz << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, u_input.b.x, 23332u), u_input.b), countOneBits(1u)) % vec2<u32>(32u)), 2147483647i));
    var var_3 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 19577u, var_0.x), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(17977u, 4294967295u, 1u), ~vec3<u32>(0u, 14388u, var_2.a.c.x)), var_2.a.b.zxz)), 5u)]);
    var var_4 = u_input.c;
    global2 = array<f32, 5>();
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1000f, -377f)))))), global2[_wgslsmith_index_u32(func_3(1i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(27853u, 5u)]), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b.x, 5u)], 599f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.x, 5u)] * -1780f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(323f, -339f, -959f) + vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 5u)], global2[_wgslsmith_index_u32(var_0.x, 5u)], -362f))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)))), func_3(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.d, -1i, u_input.c, -1i), vec4<i32>(-15985i, 0i, var_2.b.d, 0i)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-361f, global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(2955u, 5u)]))))), func_2(17919u <= var_2.a.b.x, -var_2.a.d))).c.x, 5u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(637f - -415f), _wgslsmith_f_op_f32(1000f * global2[_wgslsmith_index_u32(4294967295u, 5u)]), global2[_wgslsmith_index_u32(max(12294u, 19615u), 5u)], global2[_wgslsmith_index_u32(firstTrailingBit(1u), 5u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.x, 5u)]) + _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, var_0.x, u_input.a.x)), countOneBits(u_input.b.x)), 5u)]))), -25797i, vec4<i32>(countOneBits(func_3(select(u_input.c, var_2.a.d, false), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(88667u, 5u)]))), Struct_1(-1i, vec4<u32>(var_0.x, 43440u, u_input.b.x, var_0.x), vec2<u32>(u_input.b.x, 0u), 19024i)).a), ~u_input.c, abs(0i) ^ (0i & ~var_2.a.d), -((1i >> (u_input.b.x % 32u)) & 1i)), vec3<u32>(var_2.a.c.x, max(u_input.b.x, 1u | _wgslsmith_mult_u32(var_0.x, var_0.x)), 1u));
}

