struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_2, 32>;

var<private> global2: bool;

var<private> global3: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(23269i), Struct_2(30687i), Struct_2(37957i), Struct_2(-71551i), Struct_2(i32(-2147483648)), Struct_2(1i), Struct_2(22480i), Struct_2(1i), Struct_2(1i), Struct_2(-17781i), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(1i), Struct_2(2147483647i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    global0 = Struct_4(global0.a, global0.b);
    global2 = all(!select(!select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(false, false, false, arg_0), arg_0), select(!vec4<bool>(arg_0, true, arg_0, false), select(vec4<bool>(true, true, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0), arg_0), !arg_0));
    let var_0 = ~_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 57749u, 56074u, 4294967295u)), firstLeadingBit(vec4<u32>(0u, 16710u, 87944u, 1u)))), ~(~1u));
    var var_1 = Struct_3(Struct_2(-2147483647i), -1i);
    var_1 = global0.a;
    return vec4<u32>(47643u, 4294967295u, var_0, var_0) >> (_wgslsmith_add_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, var_0), vec4<u32>(var_0, var_0, 4294967295u, var_0))), vec4<u32>(var_0, ~26598u, 1u, var_0 >> (1u % 32u))) % vec4<u32>(32u));
}

fn func_2() -> vec4<u32> {
    let var_0 = ~vec2<u32>(abs(~(~3166u)), reverseBits(~_wgslsmith_mult_u32(17185u, 0u)));
    let var_1 = global0.b;
    global1 = array<Struct_2, 32>();
    global0 = Struct_4(Struct_3(Struct_2(-_wgslsmith_sub_i32(global0.a.a.a, 16725i)), 0i), global0.b);
    var var_2 = _wgslsmith_f_op_f32(-global0.b);
    return func_3(true);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = 0i;
    var var_1 = global3[_wgslsmith_index_u32(0u, 14u)];
    global1 = array<Struct_2, 32>();
    let var_2 = _wgslsmith_dot_vec4_u32(~func_2(), select(abs(vec4<u32>(1u, 1u, 1u, 1u)), ~firstTrailingBit(vec4<u32>(1u, 4294967295u, 1u, 4294967295u)), vec4<bool>(any(vec4<bool>(true, false, false, true)), any(vec2<bool>(true, false)), true, true))) & ~(~(~(~4319u)));
    let var_3 = 1i;
    return Struct_1(var_2, !(true || all(vec4<bool>(true, true, true, true))), 3990u);
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(global0.b, -1715f), 630f, 688f, _wgslsmith_div_f32(415f, global0.b)))))));
    global2 = arg_0.b;
    global3 = array<Struct_2, 14>();
    global1 = array<Struct_2, 32>();
    let var_1 = arg_0.c;
    return 362f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(~u_input.b.xxx & u_input.c, _wgslsmith_add_vec3_i32(u_input.b.xxx, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.a), u_input.c)))), countOneBits(abs(-1i) >> (1u % 32u)));
    global3 = array<Struct_2, 14>();
    global0 = Struct_4(global0.a, 632f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(round(-760f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.b)), global0.b) + global0.b), _wgslsmith_f_op_f32(func_4(func_1(1406f)))));
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(sign(global0.b)));
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.x, 1385f), 257f))), _wgslsmith_f_op_f32(func_4(Struct_1(17757u, false, 1u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(min(reverseBits(~vec2<i32>(0i, -64304i)), -max(u_input.c.yx, vec2<i32>(u_input.c.x, -8577i))), u_input.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(-1000f, var_2.x), _wgslsmith_f_op_f32(var_2.x * 1135f), global0.b, 1738f)))), abs(_wgslsmith_clamp_i32(u_input.c.x, 2147483647i, global0.a.a.a) << (_wgslsmith_sub_u32(4294967295u, 16181u) % 32u)) << (4294967295u % 32u), abs(-select(~u_input.b.xx, -u_input.d, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) * global0.b), _wgslsmith_f_op_f32(step(-893f, global0.b)), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b)))));
}

