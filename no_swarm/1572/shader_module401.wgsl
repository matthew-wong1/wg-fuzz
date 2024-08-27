struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16>;

var<private> global1: i32;

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_3, 13>;

var<private> global4: Struct_3 = Struct_3(vec3<i32>(-1i, 1i, -38648i), true, 1000f, Struct_2(Struct_1(false), Struct_1(true)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<f32>) -> i32 {
    var var_0 = vec4<bool>(!arg_2, !all(!select(arg_1, vec2<bool>(false, true), arg_2)), arg_1.x, false);
    let var_1 = abs(vec4<i32>(arg_0, countOneBits(global4.a.x), firstLeadingBit(_wgslsmith_add_i32(~(-10058i), _wgslsmith_mod_i32(global4.a.x, u_input.c.x))), _wgslsmith_div_i32(reverseBits(abs(29145i)), -1i)));
    global0 = array<vec4<f32>, 16>();
    var var_2 = arg_3.xx;
    let var_3 = Struct_5(_wgslsmith_add_i32(countOneBits(2147483647i >> (0u % 32u)), -20640i), Struct_4(abs(vec3<u32>(1u, 1u << (0u % 32u), countOneBits(17211u))), global4.d, global4.d.b), 1i, true, -1i);
    return abs(~_wgslsmith_mult_i32(global4.a.x, -40142i)) | (firstTrailingBit(_wgslsmith_dot_vec2_i32(var_1.yw << (vec2<u32>(3660u, var_3.b.a.x) % vec2<u32>(32u)), global4.a.xz >> (var_3.b.a.xz % vec2<u32>(32u)))) << (var_3.b.a.x % 32u));
}

fn func_2() -> Struct_5 {
    global4 = Struct_3(abs(global4.a), true, global4.c, global4.d);
    var var_0 = Struct_3(-vec3<i32>(_wgslsmith_mod_i32(2147483647i ^ u_input.d.x, 12514i), ~func_3(global4.a.x, vec2<bool>(global4.b, global4.d.a.a), false, vec4<f32>(global4.c, 886f, -745f, -1493f)), firstLeadingBit(20265i)), false, _wgslsmith_f_op_f32(sign(-304f)), global4.d);
    var var_1 = var_0.d.a;
    let var_2 = _wgslsmith_div_f32(var_0.c, var_0.c);
    var var_3 = global3[_wgslsmith_index_u32(4294967295u >> (0u % 32u), 13u)];
    return Struct_5(global2.x & -(i32(-1i) * -u_input.d.x), Struct_4(~_wgslsmith_div_vec3_u32(select(vec3<u32>(28658u, 63964u, 0u), vec3<u32>(0u, 3583u, 11084u), vec3<bool>(false, global4.d.b.a, true)), ~vec3<u32>(1u, 79040u, 0u)), Struct_2(Struct_1(var_0.b), global4.d.b), Struct_1(!global4.b)), var_0.a.x, all(vec2<bool>(false, all(vec4<bool>(false, true, true, false)) != !var_3.d.b.a)), _wgslsmith_mult_i32(2147483647i, var_0.a.x));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b.x, var_0.e), -2147483647i, 239i), 1i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-260f)) * _wgslsmith_f_op_f32(global4.c - _wgslsmith_f_op_f32(-global4.c))) + _wgslsmith_f_op_f32(-global4.c));
    var var_3 = !select(vec4<bool>(var_0.b.c.a, func_2().b.c.a, any(vec2<bool>(false, false)), global4.d.a.a), !vec4<bool>(true, true, all(vec4<bool>(var_0.b.c.a, var_0.d, false, true)), false), u_input.c.x != var_1);
    let var_4 = global3[_wgslsmith_index_u32(arg_0.x, 13u)];
    return Struct_3(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_sub_i32(u_input.a, global4.a.x), var_1 >> (arg_0.x % 32u), reverseBits(var_1)), var_4.c < var_4.c, global4.c, Struct_2(var_4.d.b, Struct_1(false & (global4.d.b.a || true))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1(min(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 3617u), vec2<u32>(24467u, 70924u))), min(_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 71187u), reverseBits(vec2<u32>(49516u, 53451u))), vec2<u32>(max(4294967295u, 5006u), 0u << (0u % 32u)))));
    let var_0 = func_2().c;
    global2 = max(~(global4.a.yx << (~(~vec2<u32>(1u, 23970u)) % vec2<u32>(32u))), ~(~vec2<i32>(global2.x, global4.a.x)));
    let var_1 = Struct_4(vec3<u32>(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(43872u, 4069u, 4294967295u, 0u)), abs(vec4<u32>(4294967295u, 52765u, 20685u, 1u))), ~22636u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 47026u), vec2<u32>(1u, 1u))), Struct_2(Struct_1(global4.b), global4.d.a), Struct_1(true));
    var var_2 = Struct_4(_wgslsmith_add_vec3_u32(vec3<u32>(13753u, ~var_1.a.x, 126880u) ^ var_1.a, vec3<u32>(abs(var_1.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 0u), vec2<u32>(var_1.a.x, 1u)), var_1.a.x >> (0u % 32u)) ^ var_1.a), Struct_2(func_1(var_1.a.xy).d.a, global4.d.b), Struct_1((0u <= _wgslsmith_dot_vec2_u32(var_1.a.yz, var_1.a.xz)) || !all(vec3<bool>(global4.d.b.a, false, false))));
    var var_3 = func_2();
    let var_4 = Struct_2(var_2.c, func_2().b.c);
    global1 = countOneBits(~global4.a.x);
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global4.c, global4.c)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4.c, global4.c, global4.c))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(~52834u | var_2.a.x, reverseBits(min(var_2.a.x, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.a.x, 1u, 0u, var_2.a.x), vec4<u32>(var_2.a.x, var_3.b.a.x, var_3.b.a.x, 1u))), vec3<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, var_2.a.x, var_3.b.a.x, var_1.a.x)), vec4<u32>(var_3.b.a.x, 34144u, 4294967295u, var_1.a.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(59218u, var_1.a.x, 54225u)), 77018u)), 1f, vec2<i32>(-2147483647i, _wgslsmith_mult_i32(-50402i, ~0i) << (~var_2.a.x % 32u)), _wgslsmith_add_vec3_i32(vec3<i32>(9708i, ~var_0, _wgslsmith_sub_i32(~1i, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(51248i, u_input.a)))), ~(-global4.a)), firstTrailingBit(~(~(var_2.a.x | 0u))));
}

