struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: vec3<u32> = vec3<u32>(1u, 21709u, 54206u);

var<private> global2: u32;

var<private> global3: array<Struct_1, 6>;

var<private> global4: vec4<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> f32 {
    global3 = array<Struct_1, 6>();
    return _wgslsmith_f_op_f32(min(-1136f, 1409f));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    global2 = countOneBits((arg_2.b << (0u % 32u)) | _wgslsmith_div_u32(~(~u_input.b.x), 69232u));
    var var_0 = !global4.xxx;
    let var_1 = Struct_1(-715f, arg_1.b, arg_2.c);
    var var_2 = -max(max(vec4<i32>(firstTrailingBit(-52121i), _wgslsmith_mult_i32(u_input.d, 1i), ~1i, _wgslsmith_clamp_i32(u_input.d, u_input.d, u_input.d)), -vec4<i32>(u_input.d, u_input.d, -1i, 2147483647i) >> (countOneBits(vec4<u32>(46293u, 0u, 33436u, 1u)) % vec4<u32>(32u))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<i32>(u_input.d, 50579i, u_input.d, 28737i), vec4<i32>(-1i, 1i, -1628i, u_input.d)), abs(vec4<i32>(2147483647i, 2147483647i, 48738i, 1i)), false) ^ select(vec4<i32>(u_input.d, 49480i, 0i, 2147483647i), countOneBits(vec4<i32>(-22419i, u_input.d, -47962i, -6404i)), arg_2.c));
    global0 = array<Struct_1, 9>();
    return vec2<i32>(-(u_input.d >> (u_input.b.x % 32u)), _wgslsmith_add_i32(countOneBits(-2147483647i), 1i));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = ~func_3(_wgslsmith_f_op_f32(func_2()), Struct_1(1201f, firstTrailingBit(arg_1.b), false), arg_1);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a, -318f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_1.a - arg_1.a), global4.x)))), ~1u, !(arg_1.c & false));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(round(794f)), arg_0)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(-887f + arg_0), _wgslsmith_f_op_f32(arg_0 * 512f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a, 748f, -1261f), vec3<f32>(-1818f, var_1.a, arg_0)))))))));
    global2 = _wgslsmith_sub_u32(firstLeadingBit(firstLeadingBit(~_wgslsmith_add_u32(global1.x, 0u))), _wgslsmith_clamp_u32(~(~(~global1.x)), min(u_input.c.x, ~arg_1.b), min(0u | ~arg_1.b, 46402u)));
    global4 = select(vec4<bool>(true, any(global4.wx), true, all(vec4<bool>(!var_1.c, false, arg_1.c, true))), select(select(vec4<bool>(true, any(vec4<bool>(true, false, arg_1.c, true)), global4.x, !var_1.c), vec4<bool>(true, true, true, true), vec4<bool>(!var_1.c, true, any(vec2<bool>(true, arg_1.c)), arg_1.c)), select(!select(vec4<bool>(arg_1.c, false, true, false), vec4<bool>(var_1.c, false, true, var_1.c), vec4<bool>(false, arg_1.c, true, false)), !vec4<bool>(false, false, var_1.c, true), global4.x), var_1.c), select(select(select(vec4<bool>(arg_1.c, false, global4.x, false), vec4<bool>(true, arg_1.c, true, true), true), !select(vec4<bool>(false, global4.x, true, false), vec4<bool>(true, false, true, false), vec4<bool>(global4.x, var_1.c, global4.x, true)), vec4<bool>(arg_1.c, all(global4.wxx), true, var_1.c)), !select(select(vec4<bool>(false, global4.x, true, global4.x), vec4<bool>(false, arg_1.c, true, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, var_1.c, global4.x, arg_1.c), true), true), arg_1.c));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec3<u32>(~(~u_input.b.x), u_input.c.x, 0u);
    global3 = array<Struct_1, 6>();
    let var_0 = vec3<i32>(u_input.d, u_input.d, -u_input.d | 1i);
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, func_1(-122f, global3[_wgslsmith_index_u32(u_input.b.x, 6u)], u_input.d & var_0.x), 1i, var_0.x), (abs(vec4<i32>(-56706i, 2147483647i, u_input.d, 2147483647i)) << ((vec4<u32>(4294967295u, global1.x, 88197u, u_input.a.x) | u_input.c) % vec4<u32>(32u))) >> (vec4<u32>(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, u_input.c.x), ~0u, abs(11710u)) % vec4<u32>(32u))), select(vec4<i32>(-1i) * -(vec4<i32>(-2147483647i, var_0.x, u_input.d, -2147483647i) >> (u_input.c % vec4<u32>(32u))), min(vec4<i32>(u_input.d & var_0.x, ~(-1i), u_input.d, u_input.d | -1i), ~(vec4<i32>(-1i, -2147483647i, -4106i, var_0.x) >> (vec4<u32>(0u, global1.x, 1u, 0u) % vec4<u32>(32u)))), !select(select(vec4<bool>(false, true, global4.x, global4.x), vec4<bool>(true, global4.x, false, true), vec4<bool>(true, false, false, global4.x)), vec4<bool>(global4.x, true, global4.x, global4.x), true)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1498f) * 1f), 44999u, !(!any(select(vec2<bool>(true, false), global4.wx, vec2<bool>(global4.x, true)))));
    var var_3 = _wgslsmith_dot_vec2_i32(var_0.zy, select(vec2<i32>(func_1(921f, global3[_wgslsmith_index_u32(global1.x, 6u)], u_input.d), 15687i), var_0.yz, all(select(vec2<bool>(true, true), global4.zy, global4.zw)))) ^ (var_0.x >> (~(~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)) % 32u));
    global4 = !(!select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(var_2.c, global4.x, false, var_2.c), var_2.c), vec4<bool>(global4.x, var_2.c, true, false), any(global4.xxw)), !(!vec4<bool>(true, false, var_2.c, var_2.c)), 4294967295u > u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, u_input.d, -1577f);
}

