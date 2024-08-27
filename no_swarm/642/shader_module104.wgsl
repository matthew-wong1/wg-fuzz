struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32;

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> bool {
    var var_0 = u_input.c;
    var var_1 = Struct_3(global0.a);
    var var_2 = Struct_3(var_1.a);
    return true;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c.b, arg_2.c.b, 9962i, u_input.d.x), ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c.b, u_input.a, arg_2.c.b, u_input.d.x), vec4<i32>(arg_2.c.b, u_input.c.x, arg_2.c.b, arg_2.c.b)), ~2147483647i, _wgslsmith_mod_i32(-52052i, arg_2.c.b), arg_2.c.b)), arg_2.c.b);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1976f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1103f, _wgslsmith_f_op_f32(sign(1710f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(514f)) + global2.a.x)) * 1f));
    let var_2 = Struct_2(vec2<bool>(any(!vec4<bool>(arg_2.b, true, arg_0.x, true)), !all(vec3<bool>(arg_0.x, arg_2.a.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(657f, global2.a.x)))) >= -1495f, arg_2.c);
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-957f, 752f))));
    var var_4 = select(vec4<bool>(true, !(!var_2.a.x), true, !var_2.a.x), select(vec4<bool>(all(vec4<bool>(false, arg_0.x, var_2.a.x, arg_0.x)), true, true, true), vec4<bool>(arg_0.x, true, arg_2.a.x, var_2.a.x), vec4<bool>(func_2(), 1i == _wgslsmith_add_i32(arg_2.c.b, 16418i), any(vec2<bool>(arg_2.a.x, arg_2.b)), true)), select(!vec4<bool>(false, arg_2.a.x & arg_2.b, all(arg_0), arg_2.b), vec4<bool>(true, false, _wgslsmith_mod_i32(var_2.c.b, 0i) < min(arg_2.c.b, var_2.c.b), true), !select(vec4<bool>(false, false, arg_0.x, var_2.a.x), select(vec4<bool>(arg_0.x, true, true, true), vec4<bool>(true, arg_0.x, arg_2.a.x, false), vec4<bool>(arg_2.a.x, false, true, arg_2.b)), vec4<bool>(arg_2.b, true, arg_0.x, var_2.b))));
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = func_3(vec2<bool>(true, func_2()), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global2.a), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.a.x, global2.a.x))), true)))), Struct_2(select(select(!arg_1.xz, arg_1.xz, false), vec2<bool>(arg_1.x && true, true), vec2<bool>(false, true)), true, arg_0));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.a.x), 458f)))), 275f);
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.a.x), arg_0.a.x)));
    let var_2 = 1746f;
    var_0 = Struct_2(vec2<bool>(all(select(!vec4<bool>(true, false, true, var_0.b), vec4<bool>(true, false, false, true), vec4<bool>(false, arg_1.x, true, var_0.a.x))), false), any(!vec3<bool>(arg_1.x, func_3(arg_1.yz, Struct_3(var_1), Struct_2(var_0.a, true, Struct_1(arg_2.a, arg_0.b))).b, arg_1.x)), var_0.c);
    return Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(-var_2)) * arg_2.a.xz));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    var var_0 = ~arg_0.x;
    global2 = arg_1;
    let var_1 = i32(-1i) * -u_input.d.x;
    var var_2 = vec4<u32>(8225u, _wgslsmith_div_u32(max(~15379u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 4294967295u), vec4<u32>(17974u, arg_0.x, 65861u, 81083u))), 1u), 25368u, ~0u) & _wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(0u) >> (abs(arg_0.x) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x), arg_0.xy) << (~63449u % 32u), abs(arg_0.x), ~abs(1u)), vec4<u32>(34783u, 4294967295u, ~(~arg_0.x), arg_0.x));
    var var_3 = ~_wgslsmith_mod_u32(40445u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, 4294967295u, arg_0.x), vec3<u32>(1u, 1u, arg_0.x)), arg_0), ~firstLeadingBit(var_2.x)));
    return ~min(_wgslsmith_dot_vec4_i32(min(firstTrailingBit(vec4<i32>(2147483647i, u_input.b, var_1, 41168i)), -vec4<i32>(u_input.b, u_input.e, 10700i, var_1)), _wgslsmith_sub_vec4_i32(~vec4<i32>(var_1, var_1, u_input.a, u_input.e), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 42117i, 22094i, u_input.c.x), vec4<i32>(u_input.a, var_1, -67006i, -5778i)))), ~min(u_input.c.x, 9608i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -1i;
    global0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1531f))))), -2514f));
    let var_0 = Struct_1(vec4<f32>(1115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f - _wgslsmith_f_op_f32(round(-757f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(122f - -267f) * global0.a.x) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.x - 1001f), _wgslsmith_f_op_f32(-global0.a.x)))), global0.a.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(abs(min(u_input.d.x, 10111i)), -5130i), firstTrailingBit(-15433i)));
    global1 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(func_4(vec3<u32>(1u, 1u, 1u), Struct_3(vec2<f32>(var_0.a.x, global0.a.x)), func_1(Struct_1(vec4<f32>(-1408f, 1898f, var_0.a.x, -904f), var_0.b), vec3<bool>(true, false, false), Struct_1(vec4<f32>(-806f, global0.a.x, global0.a.x, -1000f), var_0.b))), -1i, (u_input.c.x & u_input.a) << (reverseBits(4294967295u) % 32u)) ^ countOneBits(var_0.b), -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d.x, -61511i, -2147483647i), abs(u_input.d)), -_wgslsmith_dot_vec2_i32(vec2<i32>(114169i, var_0.b), vec2<i32>(-1i, 9420i))));
    let var_1 = Struct_2(!(!func_3(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), Struct_3(vec2<f32>(global2.a.x, var_0.a.x)), func_3(vec2<bool>(false, false), Struct_3(vec2<f32>(-912f, var_0.a.x)), Struct_2(vec2<bool>(false, true), false, var_0))).a), true, func_3(func_3(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a.x, global2.a.x), vec2<f32>(global0.a.x, var_0.a.x)))), func_3(vec2<bool>(true, true), Struct_3(vec2<f32>(943f, global0.a.x)), Struct_2(vec2<bool>(true, true), true, var_0))).a, Struct_3(_wgslsmith_f_op_vec2_f32(abs(global2.a))), func_3(vec2<bool>(false, any(vec4<bool>(true, true, false, false))), Struct_3(global2.a), Struct_2(vec2<bool>(true, true), true, func_3(vec2<bool>(true, false), Struct_3(vec2<f32>(global2.a.x, var_0.a.x)), Struct_2(vec2<bool>(false, false), true, Struct_1(vec4<f32>(var_0.a.x, global0.a.x, var_0.a.x, global0.a.x), var_0.b))).c))).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(select(25117u, 0u, var_1.b) >> (74741u % 32u)), 1u), min(~(~vec3<u32>(1u, 1u, 1u)), abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 18145u, 62509u), vec3<u32>(63317u, 1u, 8121u), vec3<u32>(69382u, 4294967295u, 53952u)))));
}

