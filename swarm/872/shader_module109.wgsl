struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(0i, false, vec3<u32>(73437u, 4294967295u, 19826u)));

var<private> global1: Struct_3 = Struct_3(Struct_1(-1i, false, vec3<u32>(0u, 39128u, 0u)));

var<private> global2: array<vec2<i32>, 15>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: u32) -> bool {
    var var_0 = false;
    global2 = array<vec2<i32>, 15>();
    let var_1 = Struct_3(global0.a);
    var var_2 = select(!select(select(select(vec3<bool>(false, false, var_1.a.b), vec3<bool>(global0.a.b, false, global1.a.b), vec3<bool>(global0.a.b, global0.a.b, true)), vec3<bool>(global0.a.b, global0.a.b, global1.a.b), all(vec2<bool>(var_1.a.b, false))), !select(vec3<bool>(var_1.a.b, global1.a.b, global1.a.b), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), global1.a.b), vec3<bool>(global1.a.b, ~_wgslsmith_mult_i32(1i, global0.a.a) < _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, var_1.a.a, global0.a.a), vec4<i32>(-1i, u_input.a, global0.a.a, -3104i)), !(var_1.a.b | false)), global1.a.b);
    let var_3 = Struct_1(_wgslsmith_mult_i32(~_wgslsmith_mult_i32(var_1.a.a, global0.a.a), countOneBits(3695i)) ^ global0.a.a, true, _wgslsmith_add_vec3_u32(~vec3<u32>(0u, 17358u, global1.a.c.x) << (var_1.a.c % vec3<u32>(32u)), vec3<u32>(abs(0u), _wgslsmith_mod_u32(0u, 1u), min(4294967295u, arg_2))) ^ abs(_wgslsmith_mod_vec3_u32(abs(global1.a.c), ~vec3<u32>(64748u, u_input.b, global1.a.c.x))));
    return true;
}

fn func_2() -> Struct_3 {
    var var_0 = vec4<bool>(false, !global0.a.b, global0.a.b, false);
    var_0 = select(!vec4<bool>(true, !global1.a.b & true, any(!var_0.wyz), 24209u != _wgslsmith_div_u32(1u, global0.a.c.x)), !vec4<bool>(func_3(~global0.a.c, select(vec2<u32>(global1.a.c.x, 10557u), vec2<u32>(26112u, 1687u), false), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.c.x, 81037u, global1.a.c.x, u_input.b), vec4<u32>(u_input.b, 4294967295u, 4294967295u, 24090u))), !(global0.a.c.x >= 1u), true, func_3(~vec3<u32>(36336u, 47955u, u_input.b), ~vec2<u32>(41153u, u_input.b), 1u)), true);
    let var_1 = global1.a.b & true;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -216f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -781f)))))));
    global2 = array<vec2<i32>, 15>();
    return Struct_3(Struct_1(global1.a.a, func_3(vec3<u32>(global1.a.c.x, global1.a.c.x, global1.a.c.x ^ 17959u), vec2<u32>(global0.a.c.x, ~u_input.b), 0u), _wgslsmith_add_vec3_u32(vec3<u32>(~1u, _wgslsmith_div_u32(global0.a.c.x, 0u), 1u >> (global0.a.c.x % 32u)), ~global1.a.c)));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_3) -> vec4<i32> {
    global1 = func_2();
    global2 = array<vec2<i32>, 15>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1347f);
    let var_1 = vec2<u32>(0u, _wgslsmith_add_u32(global1.a.c.x, _wgslsmith_mult_u32(global0.a.c.x, 1u)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -446f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(986f, 1000f)) + _wgslsmith_f_op_f32(119f - -1006f)))) * 313f);
    return -abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.a, 3022i, 9072i, global0.a.a), vec4<i32>(global1.a.a, 1i, u_input.a, 38383i)) | abs(vec4<i32>(-2147483647i, -1i, -9514i, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.b;
    let var_1 = ~(-_wgslsmith_add_vec4_i32(func_1(-vec3<i32>(-48557i, 2147483647i, global1.a.a), true, Struct_3(Struct_1(global1.a.a, false, global1.a.c))), min(vec4<i32>(2147483647i, 9741i, global0.a.a, 26920i), vec4<i32>(-63637i, -32614i, u_input.a, global1.a.a)) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -20816i, global0.a.a), vec4<i32>(-1i, 2147483647i, u_input.a, global1.a.a))));
    global2 = array<vec2<i32>, 15>();
    var var_2 = func_2().a;
    let var_3 = select(vec4<bool>(!(u_input.b != var_2.c.x), true, global0.a.b, true), vec4<bool>(global0.a.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(149f, -131f)), _wgslsmith_f_op_f32(f32(-1f) * -376f))) == 250f, global1.a.c.x < ~4294967295u, true), vec4<bool>(true, all(select(vec4<bool>(global0.a.b, global1.a.b, var_2.b, true), vec4<bool>(true, var_2.b, global1.a.b, true), !vec4<bool>(global1.a.b, false, global0.a.b, false))), true, var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, select(vec4<u32>(u_input.b, (var_2.c.x << (1u % 32u)) >> (4294967295u % 32u), ~_wgslsmith_div_u32(0u, 1u), u_input.b | max(0u, 1u)), max(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, global0.a.c.x, 55229u), vec4<u32>(4294967295u, 62620u, 0u, u_input.b))), (vec4<u32>(global0.a.c.x, var_2.c.x, global1.a.c.x, 1u) | vec4<u32>(56340u, var_2.c.x, u_input.b, 43657u)) & ~vec4<u32>(global0.a.c.x, global1.a.c.x, u_input.b, 6055u)), global0.a.b), firstTrailingBit(_wgslsmith_dot_vec3_i32(var_1.wzy, var_1.www)), 21366i);
}

