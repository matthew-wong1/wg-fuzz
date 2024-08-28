struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 18>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> vec4<u32> {
    global0 = Struct_1(global0.a, firstLeadingBit(~vec2<i32>(1i, -2147483647i)));
    global1 = array<Struct_1, 18>();
    global0 = Struct_1(vec3<i32>(1i, arg_2.x << (~countOneBits(u_input.c.x) % 32u), u_input.a), ~global0.a.xz);
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1261f)) + arg_1), arg_1));
    var var_1 = arg_0;
    return countOneBits(~select(vec4<u32>(~4294967295u, ~19283u, 4294967295u, abs(83780u)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.d), u_input.b), u_input.d, ~u_input.c.x), false));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    global2 = Struct_1(_wgslsmith_sub_vec3_i32(min(global0.a, vec3<i32>(0i, u_input.a, 0i)) | _wgslsmith_mod_vec3_i32(global2.a, global0.a), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, 12839i, 2147483647i), vec3<i32>(u_input.a, 2147483647i, -52078i)), i32(-1i) * -3794i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, 0i), arg_1))) ^ vec3<i32>(global2.b.x, firstLeadingBit(arg_1.x >> (1154u % 32u)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, arg_1.x, global2.b.x), global2.a), arg_1.x, -2147483647i)), vec2<i32>(-_wgslsmith_add_i32(_wgslsmith_sub_i32(39490i, -1i), -u_input.a), 0i));
    let var_0 = firstLeadingBit(i32(-1i) * -15499i);
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(~(~vec3<u32>(32221u, 9973u, 0u))), arg_0.yyz), reverseBits(select(select(vec3<u32>(arg_0.x, 1u, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, 4294967295u), vec3<bool>(false, false, false)), ~u_input.c, vec3<bool>(true, true, false))) & firstTrailingBit(arg_0.ywy)), 18u)];
    global1 = array<Struct_1, 18>();
    let var_1 = ~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, u_input.c.x, u_input.b.x), arg_0.yzx, ~u_input.c) << (~vec3<u32>(9445u, ~1u, u_input.d ^ 78562u) % vec3<u32>(32u)));
    return arg_0.x << (~(~(~arg_0.x) & _wgslsmith_dot_vec2_u32(~var_1.zy, vec2<u32>(4294967295u, u_input.b.x))) % 32u);
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = !(!vec3<bool>(true, false, any(vec3<bool>(true, true, true))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, 0u, arg_0, u_input.d), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b.x, 79429u, arg_0), func_2(false, 1147f, global0.a.yz))), (vec2<i32>(-1i) * -global0.b) & global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1282f, -884f) + -1000f))), 0u), 18u)];
    global0 = global1[_wgslsmith_index_u32(func_2(var_0.x, _wgslsmith_div_f32(-890f, -1232f), abs(-var_1.b)).x, 18u)];
    global0 = Struct_1(vec3<i32>(10307i, 13191i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(4405i, global2.a.x) ^ var_1.a.xx, -vec2<i32>(var_1.b.x, -1i)), 12395i), select(vec2<i32>(global0.b.x, global0.a.x), vec2<i32>(var_1.b.x, -10948i), vec2<bool>(false, all(vec4<bool>(false, true, false, true)) & !var_0.x)));
    global1 = array<Struct_1, 18>();
    return ~u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(~u_input.b.x) | ~(u_input.d | 4294967295u), firstTrailingBit(func_1(~(~1u)))), 18u)];
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f))))));
    let var_1 = global1[_wgslsmith_index_u32((~u_input.c.x << (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 31470u, 4294967295u), vec3<u32>(u_input.c.x, max(4294967295u, 0u), u_input.d)) % 32u)) ^ reverseBits(u_input.d ^ u_input.c.x), 18u)];
    global1 = array<Struct_1, 18>();
    var var_2 = select(~(-max(_wgslsmith_mult_vec4_i32(vec4<i32>(12533i, -2147483647i, global0.b.x, global0.b.x), vec4<i32>(-35363i, u_input.a, 2147483647i, 1i)), vec4<i32>(var_1.a.x, 2147483647i, global2.b.x, var_1.b.x) << (vec4<u32>(u_input.d, 23248u, u_input.d, 114122u) % vec4<u32>(32u)))), -firstTrailingBit(vec4<i32>(~global0.b.x, global0.b.x, global2.a.x | global2.b.x, u_input.a)), !(((31152u <= u_input.b.x) != select(false, true, false)) | false));
    var var_3 = var_2.yw;
    var var_4 = 11963u | u_input.d;
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -358f)))), 1i, _wgslsmith_clamp_u32(~4294967295u, u_input.c.x, _wgslsmith_add_u32(44377u, select(0u, 0u, false)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(147748u, 4294967295u, 9445u), _wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.b.x, 0u), u_input.c))), u_input.d);
}

