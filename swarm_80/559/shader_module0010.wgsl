struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 0u), -389f));

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<u32, 9> = array<u32, 9>(0u, 1u, 1u, 0u, 146042u, 35028u, 0u, 4294967295u, 60921u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(!vec4<bool>(false, any(select(global0.a, vec4<bool>(arg_2.a.x, arg_2.a.x, false, false), false)), arg_2.a.x, !(false && global0.a.x)), ~_wgslsmith_clamp_vec2_u32(global0.b, vec2<u32>(abs(4294967295u), abs(arg_2.b.x)), select(arg_2.b >> (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u)), ~arg_2.b, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_div_f32(135f, arg_2.c))))));
    let var_1 = ~arg_0.b.x;
    var var_2 = Struct_1(select(vec4<bool>(!all(arg_0.a.wyz), arg_1.a.x, !(arg_2.a.x && true), true), vec4<bool>(arg_0.a.x, !(global2.x | global2.x), all(global0.a.xxw) && !global2.x, all(global0.a.zyx)), global0.a.x), min(~min(var_0.b, vec2<u32>(global3[_wgslsmith_index_u32(0u, 9u)], arg_0.b.x)), u_input.b.yx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(abs(1358f))) * arg_2.c)));
    let var_3 = _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(reverseBits(4294967295u), 1u) ^ (_wgslsmith_add_vec2_u32(global0.b, vec2<u32>(u_input.b.x, 31854u)) & arg_1.b)), vec2<u32>(0u, ~_wgslsmith_div_u32(~arg_1.b.x, ~3703u)));
    let var_4 = Struct_1(arg_2.a, u_input.b.xy, _wgslsmith_f_op_f32(select(arg_2.c, _wgslsmith_f_op_f32(min(831f, -140f)), true)));
    return 782f;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(1u, 9u)], 1u), abs(min(4294967295u, 0u)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(5725u, arg_0), abs(global3[_wgslsmith_index_u32(global0.b.x, 9u)]), 1u), ~firstLeadingBit(arg_0)), ~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 672u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 9u)], 9u)], arg_0), vec4<u32>(0u, 57512u, global0.b.x, 59387u)))));
    var var_1 = Struct_1(select(global0.a, !select(select(global0.a, vec4<bool>(false, global0.a.x, false, global0.a.x), true), !global0.a, vec4<bool>(false, false, global2.x, global2.x)), false), vec2<u32>(~(~global0.b.x), u_input.b.x) | vec2<u32>(~_wgslsmith_mod_u32(33788u, global3[_wgslsmith_index_u32(0u, 9u)]), arg_0), global0.c);
    let var_2 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(45506u, 1u)], Struct_1(global0.a, vec2<u32>(var_1.b.x, global3[_wgslsmith_index_u32(26917u, 9u)]), global0.c), Struct_1(vec4<bool>(false, global2.x, true, false), global0.b, global0.c))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, 1713f) - _wgslsmith_f_op_f32(var_1.c + global0.c)), true, global2.x, global0.a.x), ~vec2<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 17007u), vec2<u32>(32704u, global3[_wgslsmith_index_u32(u_input.b.x, 9u)])), var_1.b >> (vec2<u32>(19993u, 4294967295u) % vec2<u32>(32u))), ~u_input.b.x), _wgslsmith_f_op_f32(round(global0.c)));
    var var_3 = _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(abs(1u), 0u, 0u) >> (u_input.b % vec3<u32>(32u))), (((u_input.b << (u_input.b % vec3<u32>(32u))) ^ ~vec3<u32>(global3[_wgslsmith_index_u32(var_1.b.x, 9u)], 0u, global0.b.x)) >> (abs(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) % vec3<u32>(32u))) >> (vec3<u32>(select(~3314u, ~11001u, true), ~(~global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), _wgslsmith_mult_u32(~var_1.b.x, 1u)) % vec3<u32>(32u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.c, 499f, 313f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1092f, -1000f, var_2.c) - vec3<f32>(var_1.c, 557f, 584f)))))));
    return global1[_wgslsmith_index_u32(~firstTrailingBit(~var_3.x), 1u)];
}

fn func_1(arg_0: f32) -> bool {
    global0 = func_2(15269u);
    var var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 1u)];
    let var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 1u)];
    global1 = array<Struct_1, 1>();
    var var_2 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(~(-1i), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, select(u_input.a, u_input.a, false)), 1i), firstLeadingBit(u_input.a)), u_input.a);
    return !(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.c)), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 901f)))) <= 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_1(select(global0.a, vec4<bool>(global2.x, func_1(_wgslsmith_f_op_f32(global0.c - -400f)), global2.x, true), global0.a), vec2<u32>(_wgslsmith_sub_u32(47866u, global0.b.x), ~(~_wgslsmith_add_u32(14872u, u_input.b.x))), _wgslsmith_f_op_f32(global0.c * global0.c));
    var var_2 = 19334u;
    var var_3 = -122f;
    var var_4 = min(~vec3<i32>(_wgslsmith_mult_i32(-12133i, u_input.a | u_input.a), -u_input.a, firstTrailingBit(_wgslsmith_add_i32(u_input.a, u_input.a))), -((vec3<i32>(-2147483647i, 18998i, u_input.a) >> (u_input.b % vec3<u32>(32u))) ^ vec3<i32>(abs(u_input.a), -1i, u_input.a ^ -22793i)));
    var_2 = _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], u_input.b.x, _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), var_1.b) ^ ~u_input.b.x, 1u));
    global0 = global1[_wgslsmith_index_u32(countOneBits(var_1.b.x), 1u)];
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(1i | _wgslsmith_mult_i32(-14064i, abs(0i) & u_input.a), min((var_4.xx ^ (vec2<i32>(2147483647i, 24400i) >> (vec2<u32>(var_1.b.x, 4058u) % vec2<u32>(32u)))) ^ ~_wgslsmith_clamp_vec2_i32(vec2<i32>(811i, -32631i), vec2<i32>(-4001i, u_input.a), var_4.zy), vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-21503i, -1i, 0i, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i))) & _wgslsmith_mult_vec2_i32(vec2<i32>(var_4.x, var_4.x), var_4.zz >> (var_1.b % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, global0.c, var_1.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c, -306f, 1000f), vec3<f32>(1241f, global0.c, -1461f)))))), reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 61767u), u_input.b.xz), ~(~u_input.b.zz))));
}

