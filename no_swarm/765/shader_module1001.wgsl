struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: Struct_2 = Struct_2(40014u);

var<private> global3: Struct_4;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> vec4<bool> {
    var var_0 = u_input.b >> (34713u % 32u);
    return select(select(vec4<bool>(true, _wgslsmith_f_op_f32(floor(arg_0)) < 1f, true, all(global1.zzz)), !vec4<bool>(global1.x, any(global1.xw), true, global3.d), !(!(4294967295u <= global3.a.x))), select(!(!vec4<bool>(global1.x, true, global3.e.x, true)), vec4<bool>(global3.d, 66579u > _wgslsmith_mult_u32(42366u, global3.b), !select(global1.x, global3.e.x, true), !global3.e.x), !global1.x), global1.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> bool {
    global0 = array<u32, 18>();
    global3 = Struct_4(u_input.a.xz, 1u, _wgslsmith_f_op_f32(f32(-1f) * -1036f), global3.e.x, global1.zwz);
    global1 = !vec4<bool>(global1.x, all(vec2<bool>(!arg_0.b, global3.e.x)), all(select(func_3(733f, vec4<i32>(u_input.b, arg_2.x, arg_0.a.x, 18455i), u_input.b), !vec4<bool>(false, false, global1.x, false), global3.e.x)), !(global3.c == _wgslsmith_f_op_f32(-global3.c)));
    global1 = select(vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-498f + global3.c), -1601f)) < global3.c, any(global1.zz), any(vec2<bool>(true, !global3.e.x)), select(u_input.a.x < ~59627u, func_3(_wgslsmith_f_op_f32(-global3.c), -vec4<i32>(u_input.b, arg_2.x, arg_2.x, 49297i), select(20579i, u_input.b, false)).x, arg_0.b)), !func_3(_wgslsmith_f_op_f32(-global3.c), vec4<i32>(-arg_2.x, max(19774i, arg_0.a.x), i32(-1i) * -1640i, _wgslsmith_sub_i32(0i, -50362i)), arg_2.x), global1.x);
    global2 = arg_1;
    return arg_0.b;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    return vec4<bool>(arg_0, arg_0, arg_0 && true, any(vec3<bool>(false, func_2(Struct_1(vec2<i32>(-19500i, 1i), global1.x), Struct_2(global3.b), firstTrailingBit(vec2<i32>(u_input.b, u_input.b))), any(vec3<bool>(global1.x, global1.x, true)) && select(global3.e.x, arg_0, false))));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>) -> vec2<u32> {
    var var_0 = Struct_4(u_input.a.yz, min(firstLeadingBit(1u), global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.c * -293f), _wgslsmith_f_op_f32(-391f + global3.c))))), any(func_1(!(global3.e.x != false))), vec3<bool>(_wgslsmith_f_op_f32(sign(global3.c)) >= global3.c, func_3(878f, select(vec4<i32>(1i, -28998i, -2147483647i, 37925i) << (vec4<u32>(arg_0, 0u, global2.a, 10033u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.b, u_input.b), vec4<i32>(u_input.b, -2147483647i, u_input.b, 29019i)), arg_1), u_input.b).x, func_2(Struct_1(vec2<i32>(u_input.b, u_input.b), global3.e.x), Struct_2(global3.b), ~vec2<i32>(9659i, u_input.b)) != (_wgslsmith_dot_vec4_u32(vec4<u32>(65738u, 0u, 21186u, 20252u), vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 18u)], 30248u, 51819u)) == ~0u)));
    global1 = vec4<bool>(arg_1.x, _wgslsmith_f_op_f32(abs(-750f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(972f)))), true && !global3.d, abs(u_input.a.x) >= global3.b);
    let var_1 = u_input.b;
    let var_2 = vec2<f32>(var_0.c, global3.c);
    global3 = Struct_4(global3.a, 0u & global0[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c)))))), global3.e.x, arg_1.xzx);
    return _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(min(vec2<u32>(4785u, global3.a.x), vec2<u32>(global3.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9861u, 18u)], 18u)]))), select(~vec2<u32>(u_input.a.x, 17608u), vec2<u32>(var_0.b, 18701u), vec2<bool>(true, global3.d))), var_0.a, firstTrailingBit(vec2<u32>(global2.a, max(arg_0, u_input.a.x)))), u_input.a.zx);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_4(func_4(~max(global2.a, min(global0[_wgslsmith_index_u32(28754u, 18u)], global2.a)), !select(func_1(true), !vec4<bool>(true, false, global3.d, global1.x), global3.e.x)), u_input.a.x, -1153f, true, func_1(!global3.d).wxw);
    global2 = Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83479u, 18u)], 18u)]);
    global1 = vec4<bool>(!global3.e.x, true & global1.x, global3.d, max(global3.a.x & ~44612u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, 16769u, global2.a), firstTrailingBit(vec3<u32>(u_input.a.x, 83352u, 117455u)))) <= 4294967295u);
    global0 = array<u32, 18>();
    let var_0 = min(_wgslsmith_mult_vec3_u32(~u_input.a & _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(global2.a, 4294967295u, global2.a)), firstLeadingBit(vec3<u32>(8556u, 18391u, global0[_wgslsmith_index_u32(global3.a.x, 18u)])) ^ max(_wgslsmith_div_vec3_u32(vec3<u32>(43417u, u_input.a.x, global2.a), vec3<u32>(4294967295u, global3.a.x, global0[_wgslsmith_index_u32(global3.b, 18u)])), select(vec3<u32>(29185u, 1153u, 12190u), vec3<u32>(0u, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.b, 18u)], 18u)]), vec3<bool>(false, global3.e.x, global1.x)))), ~_wgslsmith_div_vec3_u32(abs(u_input.a), max(u_input.a, _wgslsmith_div_vec3_u32(u_input.a, u_input.a))));
    var var_1 = any(!vec2<bool>((u_input.b | 0i) < _wgslsmith_add_i32(u_input.b, u_input.b), true));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2593f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(2117f, global3.c)), global3.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), _wgslsmith_mod_vec2_u32(~vec2<u32>(27208u, global3.b), select(vec2<u32>(0u, global2.a), vec2<u32>(1u, 29944u), global1.x))), vec2<i32>(2147483647i, reverseBits(u_input.b)));
}

