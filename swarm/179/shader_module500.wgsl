struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(100989u, vec2<u32>(0u, 0u), 13363i, vec2<f32>(-276f, -1000f), vec4<f32>(391f, -481f, -729f, 584f));

var<private> global1: Struct_3;

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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(1u, _wgslsmith_clamp_vec2_u32(~global1.a.b.b, global1.b.b | ~_wgslsmith_add_vec2_u32(global1.b.b, vec2<u32>(global0.b.x, 0u)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(55343u, global0.b.x), vec2<u32>(14208u, 1u), true) & ~vec2<u32>(13543u, 4294967295u), global0.b)), 45217i << (min(select(global1.a.b.a, ~global0.a, false), ~global1.a.b.b.x) % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(549f, _wgslsmith_f_op_f32(select(global1.a.b.e.x, -191f, true)))), global1.b.e);
    var var_1 = !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1645f, _wgslsmith_f_op_f32(select(global1.b.e.x, global0.d.x, global1.c)))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.e.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * global0.d.x))));
    let var_2 = select(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(min(vec3<i32>(u_input.a, var_0.c, 23252i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 1i, global0.c), vec3<i32>(-1i, -12520i, 0i))), vec3<i32>(_wgslsmith_add_i32(-2147483647i, global0.c), abs(-1i), _wgslsmith_add_i32(global1.b.c, u_input.a))), -vec3<i32>(1i, u_input.a, 21780i)), -(max(countOneBits(vec3<i32>(43347i, 2147483647i, global1.b.c)), reverseBits(vec3<i32>(2147483647i, u_input.a, var_0.c))) ^ (vec3<i32>(global1.a.b.c, -60678i, 31402i) ^ -vec3<i32>(-1i, u_input.a, var_0.c))), vec3<bool>(select(true, all(select(global1.a.c.zxy, global1.a.c.wyw, true)), global1.a.c.x), all(vec3<bool>(select(global1.a.c.x, global1.c, global1.c), global1.c, global1.a.d.x)), true));
    let var_3 = true || (global0.a <= 85730u);
    let var_4 = vec4<bool>(!global1.c, var_3, all(vec2<bool>(all(global1.a.c.wzw) && (u_input.a < global0.c), !any(vec2<bool>(global1.a.a, var_3)))), false);
    return ~max(~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.x, u_input.a), vec2<i32>(var_0.c, global0.c), vec2<i32>(var_0.c, var_2.x))), var_2.zx);
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> u32 {
    let var_0 = arg_0.a.a;
    let var_1 = max(~_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(arg_0.a.a.b.c, 64244i), vec2<i32>(13934i, -1i) >> (vec2<u32>(arg_0.a.b.a, 1u) % vec2<u32>(32u))), vec2<i32>(-16454i & global1.a.b.c, ~14228i)), firstTrailingBit(func_3()) >> (vec2<u32>(_wgslsmith_clamp_u32(~1u, global1.b.a, var_0.b.b.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 4294967295u, 4294967295u), vec3<u32>(global0.b.x, 94427u, arg_1))) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_dot_vec4_u32(~select(~vec4<u32>(9232u, arg_1, 1u, global0.b.x), max(_wgslsmith_mult_vec4_u32(vec4<u32>(10836u, var_0.b.a, 17243u, 25059u), vec4<u32>(arg_1, 4294967295u, global1.b.b.x, var_0.b.a)), ~vec4<u32>(19608u, global1.b.b.x, 0u, 38100u)), arg_0.a.a.d.x), vec4<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(23257u, 4294967295u, arg_1), vec3<u32>(5512u, 30088u, arg_0.a.a.b.b.x), vec3<bool>(true, arg_0.a.c, arg_0.a.c)), ~vec3<u32>(global0.b.x, 21329u, var_0.b.b.x)) & 74942u, 27604u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(5661u, var_0.b.b.x, global1.a.b.b.x, global0.b.x)), ~(~vec4<u32>(global1.b.b.x, 51790u, arg_0.a.b.a, arg_1))), ~select(max(arg_0.a.b.a, arg_1), global0.a & arg_0.a.a.b.a, var_0.d.x)));
    global0 = arg_0.a.b;
    let var_3 = vec4<i32>(var_0.b.c >> (31027u % 32u), -_wgslsmith_mod_i32(global1.b.c >> (_wgslsmith_clamp_u32(arg_1, 1u, 0u) % 32u), -1i << (var_2 % 32u)), abs(u_input.a & arg_0.a.a.b.c), max(global0.c, ~30700i));
    return select(4294967295u, var_2, arg_0.a.c);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = global1.a.b.e.x;
    var var_1 = _wgslsmith_div_i32(~u_input.a, arg_2 >> (_wgslsmith_mod_u32(~func_2(Struct_4(Struct_3(Struct_2(true, Struct_1(574u, global0.b, -1570i, global1.b.e.zw, vec4<f32>(329f, -1920f, -679f, 1661f)), global1.a.c, vec2<bool>(global1.c, arg_1.x)), global1.a.b, false)), 0u), global0.a) % 32u));
    let var_2 = ~select(vec2<i32>(select(-50260i, ~global1.b.c, !arg_1.x), global0.c), select(vec2<i32>(global1.a.b.c << (3081u % 32u), _wgslsmith_sub_i32(15204i, 7756i)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2, 2147483647i), vec2<i32>(28950i, u_input.a), vec2<i32>(-7967i, 26968i)), !global1.a.c.xw), select(select(select(vec2<bool>(false, arg_1.x), arg_1.xz, global1.a.d.x), vec2<bool>(true, true), false), vec2<bool>(!arg_1.x, arg_1.x), 623f < _wgslsmith_div_f32(global0.e.x, global1.b.e.x)));
    return global1.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(global1.a, func_1(~_wgslsmith_mult_u32(global0.a, global0.a), global1.a.c.ywy, u_input.a), global1.a.a & !global1.a.c.x);
    var var_0 = -(11594i ^ global0.c);
    let var_1 = global0.d;
    var_0 = _wgslsmith_dot_vec3_i32(~vec3<i32>(global1.b.c, 67752i, 5537i), -_wgslsmith_mod_vec3_i32(~vec3<i32>(global1.b.c, global0.c, -1i), abs(vec3<i32>(33031i, u_input.a, global1.a.b.c)))) & u_input.a;
    global1 = Struct_3(global1.a, func_1(global0.b.x, vec3<bool>(false, !all(vec3<bool>(true, true, global1.c)), any(vec3<bool>(true, global1.a.d.x, global1.c)) | global1.c), reverseBits(-(u_input.a << (39201u % 32u)))), any(!global1.a.c.zwx));
    var var_2 = ~(-(~abs(vec4<i32>(0i, global1.b.c, 24963i, global0.c) >> (vec4<u32>(global1.a.b.a, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstTrailingBit(global0.b.x)), global1.a.b.e, ((global1.a.b.a & 471u) >> (_wgslsmith_clamp_u32(_wgslsmith_div_u32(global1.b.b.x, global1.b.b.x), global0.b.x, min(1u, 4294967295u)) % 32u)) >> (firstLeadingBit(abs(global1.b.b.x)) % 32u));
}

