struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec4<u32>(59443u, 1u, 39438u, 4294967295u)), Struct_2(1i), Struct_1(vec4<u32>(51981u, 1u, 38001u, 66978u)));

var<private> global2: array<vec2<f32>, 30>;

var<private> global3: vec2<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = Struct_4(1i, global1.b, global1.a, Struct_2(_wgslsmith_mod_i32(37005i, ~u_input.b.x)));
    let var_1 = min(2147483647i, ~(-(u_input.b.x ^ var_0.b.a))) >> (1094u % 32u);
    var var_2 = any(!vec3<bool>(arg_0, true == !arg_0, true));
    global1 = Struct_3(global1.c, Struct_2(-(-39653i >> (var_0.c.a.x % 32u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), global1.c.a.xz >> (global1.a.a.zw % vec2<u32>(32u))) % 32u)), Struct_1(vec4<u32>(~u_input.a.x, 17764u, _wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_dot_vec2_u32(min(global1.c.a.wz, global1.c.a.yw), select(var_0.c.a.zy, u_input.c.zx, vec2<bool>(false, true))))));
    let var_3 = firstTrailingBit(_wgslsmith_mult_u32(global1.c.a.x, min(~u_input.a.x, _wgslsmith_div_u32(29399u, 4294967295u)) | u_input.c.x));
    return vec4<i32>(var_0.a, var_0.a, -2147483647i | (-2147483647i ^ global0.x), ~1i);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32) -> Struct_3 {
    global0 = ~_wgslsmith_div_vec4_i32(max(_wgslsmith_add_vec4_i32(~vec4<i32>(global0.x, 41387i, 37246i, -1i), vec4<i32>(u_input.b.x, -24052i, -25234i, global0.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a, global1.b.a, u_input.b.x, global1.b.a), vec4<i32>(12687i, -2147483647i, global0.x, 0i), vec4<i32>(global1.b.a, -22861i, -1i, global0.x)), func_3(true))), vec4<i32>(global0.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(global0.x, 1i), u_input.b.x), _wgslsmith_sub_i32(arg_0.a, func_3(arg_1.x).x), -70157i));
    let var_0 = global1.a;
    global3 = arg_1;
    global2 = array<vec2<f32>, 30>();
    global0 = vec4<i32>(global0.x, 6912i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.x, u_input.b.x), vec3<i32>(global0.x, arg_0.a, u_input.b.x)), -7105i, firstTrailingBit(global1.b.a), ~arg_0.a), ~vec4<i32>(global0.x, global1.b.a, 1i, -1i)), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, u_input.b.x, 10144i), vec3<i32>(-29093i, arg_0.a, arg_0.a)))), ~1i);
    return Struct_3(Struct_1(global1.a.a), global1.b, Struct_1(vec4<u32>(~47614u, arg_2, ~(~var_0.a.x), u_input.a.x)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: vec3<i32>) -> StorageBuffer {
    global1 = Struct_3(Struct_1(arg_0), global1.b, Struct_1(abs(vec4<u32>(0u, arg_0.x, global1.c.a.x, u_input.a.x) << (global1.a.a % vec4<u32>(32u)))));
    var var_0 = ~1i;
    var_0 = -reverseBits(-2147483647i);
    var var_1 = func_2(global1.b, vec2<bool>(!(!global3.x), any(!select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(false, true, global3.x), false))), 1u);
    var var_2 = !all(vec2<bool>(!all(vec3<bool>(true, false, true)), global0.x != ~global0.x));
    return StorageBuffer(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.a.a.x, 73243u), var_1.a.a.xx), 1u, vec4<u32>(1u, u_input.c.x, _wgslsmith_div_u32(0u, ~(~4294967295u)), 20039u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global1.a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-238f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), 444f)), ~(~max(vec2<u32>(global1.a.a.x, global1.a.a.x), u_input.a.zy)), vec3<i32>(-(~_wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), global0.x, -_wgslsmith_mod_i32(global1.b.a, 2147483647i)));
}

