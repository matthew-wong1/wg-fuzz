struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-1000f, 979f, -368f, 1735f, 1002f, 777f, 1324f, -1888f, 2292f, 879f, -1870f, -296f, -933f, 428f, -711f, 1240f, 522f, -686f, 1058f, -1950f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    global0 = array<f32, 20>();
    return Struct_1(global0[_wgslsmith_index_u32(4294967295u, 20u)], arg_1.b.b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32) -> i32 {
    var var_0 = select(vec3<bool>(true, arg_1.d, false), vec3<bool>(!arg_1.e, arg_1.e && true, arg_1.d), all(vec4<bool>(arg_1.e, all(vec2<bool>(true, false)) | arg_1.e, _wgslsmith_f_op_f32(abs(arg_1.b.a)) != _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(23085u, 20u)])), any(vec4<bool>(arg_1.e, false, true, arg_1.e)))));
    let var_1 = u_input.d;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -351f), func_1(vec2<u32>(arg_2, abs(arg_2)), Struct_2(var_1, func_1(vec2<u32>(7480u, arg_2), Struct_2(-2147483647i, Struct_1(-601f, vec4<i32>(u_input.b.x, u_input.a, u_input.a, 0i)), arg_1.c, true, false), arg_0.x), arg_1.c & arg_1.c, true, var_0.x | false), _wgslsmith_f_op_f32(func_1(vec2<u32>(arg_2, 10590u), arg_1, arg_0.x).a - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2, 20u)]))).a));
    let var_3 = _wgslsmith_add_u32(~countOneBits(~0u), _wgslsmith_mult_u32(0u, min(arg_2, _wgslsmith_sub_u32(23438u, arg_2) ^ 4294967295u)));
    let var_4 = -307f;
    return -2147483647i >> (arg_2 % 32u);
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    global0 = array<f32, 20>();
    let var_0 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u))) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 57855u, 8112u), vec3<u32>(1u, 17748u, 27092u)) % vec3<u32>(32u)), vec3<u32>(0u, ~(~65438u), 5164u));
    global0 = array<f32, 20>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a))), vec4<i32>(countOneBits(u_input.a), -2147483647i, -(~1i), func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, arg_0.b.a, global0[_wgslsmith_index_u32(719u, 20u)], global0[_wgslsmith_index_u32(var_0.x, 20u)]))), Struct_2(0i, Struct_1(1357f, arg_0.c), arg_0.b.b, arg_0.d, arg_0.e), ~31286u)) << (vec4<u32>(max(_wgslsmith_add_u32(78287u, 1u), 1u), ~14659u, var_0.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.x, var_0.x), _wgslsmith_mod_u32(4294967295u, 53742u))) % vec4<u32>(32u)));
    var var_2 = arg_0;
    return ~min(arg_0.b.b, vec4<i32>(max(_wgslsmith_sub_i32(-2147483647i, -1i), -53239i), ~(-14029i), arg_0.c.x, 19776i));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<i32>) -> StorageBuffer {
    var var_0 = Struct_2(arg_0.b.x, Struct_1(-1848f, -vec4<i32>(~arg_2, arg_0.b.x, _wgslsmith_dot_vec4_i32(arg_0.b, arg_0.b), arg_3.x)), vec4<i32>(-1i) * -(~_wgslsmith_mod_vec4_i32(arg_0.b, arg_0.b)), all(vec3<bool>(!all(vec3<bool>(false, true, true)), !(arg_3.x < arg_0.b.x), true)), true);
    global0 = array<f32, 20>();
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), min(vec2<u32>(1u, 53547u), vec2<u32>(1u, 1u))), _wgslsmith_clamp_u32(firstLeadingBit(countOneBits(1u)), _wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u), min(4294967295u, 0u))), ~46630u), max(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(30111u, 0u, 4294967295u), vec3<u32>(1u, 1u, 1u), min(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 52272u, 22700u))), ~vec3<u32>(12039u, 47774u, 0u))));
    var var_2 = var_1.x;
    var var_3 = _wgslsmith_mult_i32(-1i, countOneBits(_wgslsmith_dot_vec3_i32(var_0.c.zxx, select(vec3<i32>(18215i, u_input.c.x, 57294i), arg_0.b.zwy, vec3<bool>(var_0.e, var_0.d, false)) & _wgslsmith_sub_vec3_i32(u_input.c, arg_0.b.xyw))));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(565f + 1394f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(36737u, 20u)] * -1166f), -1255f))), global0[_wgslsmith_index_u32(6807u, 20u)], vec3<u32>(~var_1.x, _wgslsmith_dot_vec2_u32((var_1.xy | var_1.yy) | ~vec2<u32>(44082u, 4294967295u), ~vec2<u32>(var_1.x, var_1.x)), var_1.x), vec4<u32>(_wgslsmith_clamp_u32(~firstTrailingBit(50813u), ~(~var_1.x), var_1.x), ~75066u, 51753u, 56719u), reverseBits(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), u_input.c.xy) << (firstLeadingBit(1435u) % 32u), _wgslsmith_dot_vec4_i32(var_0.b.b, _wgslsmith_div_vec4_i32(var_0.c, vec4<i32>(533i, -1i, arg_0.b.x, 24576i))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec4<bool>(true, true, true, 0i < _wgslsmith_mult_i32(-2147483647i, u_input.d)));
    let var_1 = Struct_2(~(u_input.d ^ _wgslsmith_sub_i32(u_input.b.x ^ 29508i, 65482i)), Struct_1(global0[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.d, u_input.a, 0i), vec4<i32>(-2147483647i, u_input.c.x, 1i, u_input.a))), vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, u_input.b.x) << (~vec4<u32>(16589u, 12607u, 0u, 0u) % vec4<u32>(32u)))), ~vec4<i32>(-(~u_input.b.x), ~u_input.b.x, ~(-2147483647i), u_input.d), false, true);
    var var_2 = ~_wgslsmith_dot_vec3_i32(~abs(max(var_1.c.zxz, var_1.c.xyy)), reverseBits(vec3<i32>(1i, -46303i, u_input.b.x)) & var_1.b.b.xzy);
    var var_3 = var_1.b.b.wyx;
    var_0 = all(!vec2<bool>(var_1.e, false));
    let x = u_input.a;
    s_output = func_4(Struct_1(1000f, func_2(Struct_2(u_input.c.x & var_3.x, func_1(vec2<u32>(26993u, 514u), Struct_2(-1i, Struct_1(1000f, var_1.c), vec4<i32>(var_1.c.x, u_input.b.x, u_input.a, var_1.a), var_1.d, var_1.e), global0[_wgslsmith_index_u32(2438u, 20u)]), min(vec4<i32>(var_3.x, u_input.c.x, u_input.c.x, var_3.x), var_1.b.b), true, true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(917f * _wgslsmith_f_op_f32(var_1.b.a + 1248f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1204f))), -904f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-329f, global0[_wgslsmith_index_u32(1u, 20u)]))))), u_input.a, u_input.c.xz);
}

