struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    var var_0 = ~select(max(_wgslsmith_dot_vec3_u32(vec3<u32>(91333u, 63485u, 3574u), vec3<u32>(4294967295u, u_input.b, u_input.b) | vec3<u32>(u_input.b, u_input.b, 1u)), 4294967295u), u_input.b, any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))));
    global0 = array<Struct_2, 18>();
    var_0 = _wgslsmith_sub_u32(~51782u | ~_wgslsmith_clamp_u32(u_input.b, u_input.a, 1u), countOneBits(_wgslsmith_mod_u32(u_input.b, u_input.b)));
    global0 = array<Struct_2, 18>();
    var var_1 = ~(~vec2<u32>(_wgslsmith_mult_u32(u_input.b, u_input.a), u_input.a) | ~vec2<u32>(abs(u_input.a), firstTrailingBit(4294967295u)));
    return ~vec4<u32>(u_input.b, 1u, 3882u, ~0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> vec4<u32> {
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    let var_0 = vec2<bool>(true, true);
    return countOneBits(~abs(vec4<u32>(0u, u_input.a, 25161u, 4294967295u)) >> (min(firstTrailingBit(vec4<u32>(u_input.a, 0u, u_input.b, 12074u) & vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), _wgslsmith_mult_vec4_u32(func_3(), vec4<u32>(1u, 4294967295u, 4294967295u, u_input.a))) % vec4<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: u32) -> u32 {
    global0 = array<Struct_2, 18>();
    var var_0 = Struct_1(~_wgslsmith_mod_vec4_u32(abs(func_2(vec4<f32>(-868f, 127f, 2157f, 717f), -11109i)), vec4<u32>(u_input.b, 1u, u_input.a, 18662u)), true, firstLeadingBit(~firstLeadingBit(vec4<u32>(arg_1, arg_1, arg_1, 6340u))));
    var_0 = Struct_1(var_0.a, false, vec4<u32>(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(385f, -167f, 677f, 1137f))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1821i, 2147483647i, 1i), vec3<i32>(77055i, 1i, -15847i)), 1i, max(-1i, -50234i))).x, ~countOneBits(~1u), 3002u, abs(1u)));
    var_0 = Struct_1(vec4<u32>(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(~var_0.a, var_0.c)), 14021u, 1u << (1u % 32u), ~(func_3().x << (1u % 32u))), true, vec4<u32>(_wgslsmith_dot_vec2_u32(~(vec2<u32>(var_0.a.x, 1u) ^ vec2<u32>(0u, 8703u)), vec2<u32>(~51279u, ~arg_1)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, var_0.c.x), _wgslsmith_sub_u32(arg_1, 74579u), 44573u & var_0.c.x), ~var_0.a.xyw), countOneBits(_wgslsmith_add_u32(abs(u_input.a), _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(39599u, 0u, 1u, arg_1)))), var_0.c.x & abs(u_input.a)));
    var_0 = Struct_1(~(func_3() & ((var_0.c >> (var_0.c % vec4<u32>(32u))) & var_0.a)), min(~_wgslsmith_clamp_i32(2147483647i, -9615i, 2147483647i), -1i) < 1i, var_0.a);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(select(u_input.b != 1u, all(vec2<bool>(true, true)), true), all(vec3<bool>(false, false, false)), (4294967295u >> (u_input.a % 32u)) <= u_input.b), vec3<bool>(true, true, true), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))), vec3<bool>(true, any(vec2<bool>(true, true)), !(_wgslsmith_f_op_f32(trunc(-409f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1015f))), firstLeadingBit(func_1(false, 89209u) ^ ~u_input.a) <= ~func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-308f, 2460f, -650f, 402f))), 1i).x);
    var var_1 = Struct_1(vec4<u32>(u_input.b, 1u >> (1u % 32u), ~(~0u), 42841u) | ~vec4<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(u_input.b, 1u), ~0u, 1u << (0u % 32u)), any(var_0.zy), vec4<u32>(_wgslsmith_div_u32(u_input.a, 0u), func_1(true && !var_0.x, u_input.a), 4294967295u, abs(countOneBits(~9075u))));
    var_1 = Struct_1(var_1.a, var_1.b, abs(countOneBits(var_1.a)));
    let var_2 = var_1.c.x;
    var_1 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_sub_u32(var_1.c.x, 4294967295u) >> (select(63472u, var_1.c.x, var_0.x) % 32u), 1u, var_1.a.x << (~18402u % 32u)), var_1.a), true, ~var_1.c ^ _wgslsmith_mod_vec4_u32(var_1.c, vec4<u32>(u_input.a, 1u, func_2(vec4<f32>(132f, -1098f, 1161f, 1210f), -54692i).x, 41868u)));
    var var_3 = Struct_3(_wgslsmith_div_i32(max(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, -34882i), abs(1i)), _wgslsmith_sub_i32(-30319i, 1i)), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(12496i, -36087i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 22082i, 25108i, 2147483647i), vec4<i32>(1i, 0i, -34306i, 2147483647i))), _wgslsmith_div_i32(1i, -12706i))), Struct_1(countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(22444u, var_1.a.x, var_1.c.x), vec3<u32>(97074u, u_input.a, 1u)), func_2(vec4<f32>(-401f, -1027f, -1124f, 870f), 34670i).x, 24306u << (u_input.a % 32u), ~4294967295u)), false, var_1.c), ~(-1i >> (~u_input.b % 32u)), Struct_1(abs((vec4<u32>(u_input.a, u_input.b, var_1.c.x, u_input.a) << (var_1.a % vec4<u32>(32u))) | vec4<u32>(19530u, u_input.b, 8092u, var_1.a.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(26835u, u_input.a, var_1.a.x), reverseBits(vec3<u32>(27960u, 1u, 1u))) == (func_3().x << (var_1.a.x % 32u)), ~var_1.a), Struct_1(var_1.c, true, var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

