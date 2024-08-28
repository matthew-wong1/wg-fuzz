struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: vec3<i32>;

var<private> global2: array<bool, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: u32) -> vec3<u32> {
    global2 = array<bool, 21>();
    global2 = array<bool, 21>();
    let var_0 = global1.x;
    let var_1 = Struct_2(71662u, ~vec3<i32>(_wgslsmith_add_i32(global1.x, u_input.c << (arg_1 % 32u)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1913i, 4167i, 14233i), vec3<i32>(-1i, 1i, u_input.c)), -1i));
    let var_2 = 1209f;
    return u_input.a;
}

fn func_2(arg_0: i32, arg_1: i32) -> u32 {
    global1 = vec3<i32>(_wgslsmith_mod_i32(~2147483647i, -u_input.c >> (u_input.a.x % 32u)), 1i, _wgslsmith_sub_i32(-_wgslsmith_sub_i32(arg_1, 53830i), -25242i) ^ ~abs(_wgslsmith_sub_i32(global1.x, 29913i)));
    global0 = array<Struct_1, 24>();
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(u_input.a << (_wgslsmith_sub_vec3_u32(u_input.a, ~u_input.a) % vec3<u32>(32u))), ~func_3(any(!vec3<bool>(true, global2[_wgslsmith_index_u32(48299u, 21u)], true)), 24773u)), 21u)];
    let var_1 = Struct_2(~u_input.a.x, vec3<i32>(~countOneBits(abs(arg_0)), -arg_0, arg_0));
    var var_2 = Struct_2(~abs(4294967295u), vec3<i32>(countOneBits(abs(0i) >> (var_1.a % 32u)), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-52672i, var_1.b.x, arg_1), var_1.b), -4995i));
    return select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~abs(var_1.a), 1u, u_input.a.x), _wgslsmith_div_vec4_u32(~(~vec4<u32>(var_1.a, 0u, 4294967295u, 4294967295u)), firstTrailingBit(~vec4<u32>(12483u, var_1.a, var_1.a, u_input.a.x)))), 22211u, true);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    let var_0 = vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~max(_wgslsmith_add_u32(1u, u_input.b), ~4294967295u), u_input.a.x), 21u)], arg_1.a >= arg_1.a);
    var var_1 = vec3<bool>(!global2[_wgslsmith_index_u32(~arg_0.a, 21u)], global2[_wgslsmith_index_u32(firstTrailingBit(arg_0.a), 21u)], true);
    global0 = array<Struct_1, 24>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1429f))), arg_1.a), -1388f));
    global1 = vec3<i32>(-1i) * -arg_0.b;
    return 38511u >> (select(1u, u_input.a.x >> (func_2(~arg_2.x, -1i) % 32u), false) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(-554f)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a), var_0.a) * vec3<f32>(-1434f, _wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(min(284f, var_0.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a + var_0.a), 740f, _wgslsmith_f_op_f32(-241f * var_0.a)))));
    global2 = array<bool, 21>();
    global1 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global1.x, -28724i), -vec3<i32>(-1i, global1.x, global1.x)), ~abs(vec3<i32>(0i, u_input.c, global1.x)) >> ((u_input.a & u_input.a) % vec3<u32>(32u)), countOneBits(vec3<i32>(49860i, select(u_input.c, 2147483647i, global2[_wgslsmith_index_u32(u_input.b, 21u)]), firstTrailingBit(2147483647i)))) << (reverseBits(~abs(abs(u_input.a))) % vec3<u32>(32u));
    global2 = array<bool, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * -672f), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-var_1.x)), ~vec4<u32>(0u << (u_input.a.x % 32u), _wgslsmith_mult_u32(57288u, func_1(Struct_2(u_input.a.x, vec3<i32>(global1.x, u_input.c, global1.x)), var_0, global1.yx)), ~u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(54122u, u_input.b, 1u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(63743u, u_input.b, u_input.a.x, 0u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(6757u, u_input.a.x, 15084u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.b, 1u, u_input.a.x), vec4<u32>(1u, 1u, u_input.a.x, 4294967295u))), ~vec4<u32>(func_3(true, u_input.b).x, _wgslsmith_add_u32(0u, u_input.a.x), _wgslsmith_div_u32(u_input.b, 4294967295u), 0u)));
}

