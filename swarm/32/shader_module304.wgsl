struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: u32 = 1u;

var<private> global2: Struct_1 = Struct_1(false, -261f, false);

var<private> global3: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<u32> {
    var var_0 = vec4<bool>(global2.a, (u_input.c.x > reverseBits(u_input.d)) | global2.c, false, true);
    var var_1 = var_0.x;
    global0 = var_0.x;
    var var_2 = Struct_1(any(select(select(vec4<bool>(true, true, var_0.x, true), !vec4<bool>(false, var_0.x, false, var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, global2.a, false, true), true)), select(!vec4<bool>(var_0.x, global2.c, true, false), vec4<bool>(var_0.x, true, true, true), !var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, global2.a, global2.a, true), select(vec4<bool>(global2.c, true, true, global2.a), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, true, false, false))))), -693f, !(!(global2.a | true)));
    var var_3 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -180f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -609f)))));
    return max(_wgslsmith_add_vec4_u32(vec4<u32>(30623u, 1u, ~firstLeadingBit(1u), 1u), vec4<u32>(17982u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(119164u, 0u), 0u), 1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 24759u, 27678u, 1u), vec4<u32>(91891u, 4294967295u, 10786u, 4294967295u)) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(74536u, 22675u), firstTrailingBit(vec2<u32>(74931u, 9844u))))), abs(vec4<u32>(0u, _wgslsmith_mult_u32(49783u, 0u), 16817u, ~4294967295u)) | select(~vec4<u32>(1u, 1u, 1u, 1u), abs(~vec4<u32>(66328u, 2975u, 25859u, 33826u)), select(!vec4<bool>(var_2.a, false, true, true), vec4<bool>(false, global2.c, global2.c, var_0.x), true)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_u32(~(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 15328u), vec2<u32>(57043u, 23087u)), 94015u << (1u % 32u), 1u, _wgslsmith_add_u32(0u, 0u))), ~(~func_3()) >> ((~vec4<u32>(4294967295u, 0u, 1u, 99718u) ^ (abs(vec4<u32>(0u, 1688u, 45086u, 4294967295u)) & select(vec4<u32>(0u, 10987u, 0u, 42291u), vec4<u32>(14497u, 11722u, 4294967295u, 1u), global2.a))) % vec4<u32>(32u)));
    var var_1 = var_0;
    return Struct_1(global2.a, _wgslsmith_f_op_f32(-global2.b), !(var_0.x > max(1u, ~16541u)));
}

fn func_1() -> bool {
    let var_0 = func_2();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-558f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, global2.b)))), func_2().b)), 294f, global2.b);
    var var_2 = select(!select(vec3<bool>(all(vec4<bool>(var_0.a, true, var_0.a, global2.c)), global2.c, true), select(vec3<bool>(var_0.c, global2.a, global2.c), select(vec3<bool>(true, var_0.c, false), vec3<bool>(var_0.a, var_0.c, true), true), true), !global2.c), vec3<bool>((var_0.a || true) & global2.a, select(global2.c || true, global2.c, true), 162f >= _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(var_1.x, 691f))), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, global2.a, false), global2.a), vec3<bool>(global2.c, true, true), select(vec3<bool>(false, true, var_0.a), vec3<bool>(global2.c, var_0.c, var_0.a), vec3<bool>(global2.c, global2.c, var_0.a))), select(!select(vec3<bool>(false, global2.a, false), vec3<bool>(global2.a, global2.c, var_0.a), global2.a), vec3<bool>(false, false, select(false, global2.c, false)), vec3<bool>(true, false, true)), !vec3<bool>(var_0.a & false, true, true)));
    global3 = true;
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(~u_input.b.x, _wgslsmith_add_i32(29009i, u_input.c.x)), u_input.d);
    return select(any(select(vec3<bool>(all(vec4<bool>(var_0.c, false, global2.c, var_0.a)), u_input.d != u_input.d, var_2.x || var_2.x), vec3<bool>(true, !var_2.x, false), (var_0.c || false) && true)), (false | (var_2.x & true)) != (any(vec2<bool>(var_2.x, false)) & true), all(!vec3<bool>(true, true, select(true, true, var_2.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1443f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_1.x, 974f)))) - arg_2.b)), arg_1.x, _wgslsmith_div_f32(func_2().b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = vec4<bool>(all(select(!select(vec3<bool>(var_0.a, true, arg_0.a), vec3<bool>(arg_2.c, true, true), vec3<bool>(true, true, true)), select(!vec3<bool>(false, global2.a, false), vec3<bool>(true, true, true), false), true)), select(global2.c, !any(vec3<bool>(arg_2.c, true, false)) & func_2().a, true), false, arg_2.c);
    let var_3 = any(vec3<bool>(false, true, !any(var_2.zy)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(func_1(), _wgslsmith_f_op_f32(766f * _wgslsmith_f_op_f32(global2.b + 869f)), global2.c), vec2<f32>(_wgslsmith_f_op_f32(-111f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1601f))), global2.b), func_2());
    var var_1 = vec2<bool>(any(vec2<bool>(!any(vec4<bool>(false, var_0.a, true, global2.a)), any(vec4<bool>(global2.a, true, true, false)))), global2.a);
    var_1 = !(!select(select(vec2<bool>(var_0.c, global2.c), !vec2<bool>(true, global2.c), false), select(!vec2<bool>(var_0.a, var_0.a), !vec2<bool>(var_0.c, global2.a), !vec2<bool>(false, global2.a)), false));
    let var_2 = -2147483647i;
    var var_3 = ~(~vec4<u32>(~1u, ~12908u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(28659u, 11756u, 57622u, 93783u)), 1u), firstTrailingBit(~110220u)));
    var var_4 = vec2<bool>(true, (56607u | abs(firstTrailingBit(var_3.x))) >= var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(3309i)));
}

