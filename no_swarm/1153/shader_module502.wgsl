struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 27>;

var<private> global2: Struct_4;

var<private> global3: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> u32 {
    var var_0 = global0.b.b;
    let var_1 = i32(-1i) * -2147483647i;
    return 0u;
}

fn func_3() -> vec3<u32> {
    var var_0 = vec2<bool>(all(vec4<bool>(global0.c, false || any(vec2<bool>(false, global0.c)), true, true & !global0.c)), any(vec2<bool>(global0.c, !(-2147483647i > u_input.b))));
    let var_1 = !select(select(vec3<bool>(!global0.c, true, false), !vec3<bool>(false, var_0.x, false), select(!vec3<bool>(true, global0.c, var_0.x), select(vec3<bool>(false, global0.c, var_0.x), vec3<bool>(var_0.x, global0.c, true), false), select(vec3<bool>(false, var_0.x, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), select(select(vec3<bool>(true, global0.c, global0.c), !vec3<bool>(var_0.x, var_0.x, true), var_0.x), !vec3<bool>(global0.c, false, var_0.x), vec3<bool>(true, 1u < global0.a.x, all(vec4<bool>(false, false, false, global0.c)))), !select(select(vec3<bool>(false, global0.c, var_0.x), vec3<bool>(true, var_0.x, false), var_0.x), !vec3<bool>(false, var_0.x, false), var_0.x || var_0.x));
    let var_2 = _wgslsmith_div_u32(~select(reverseBits(global0.a.x), _wgslsmith_mult_u32(firstLeadingBit(u_input.e.x), ~global0.a.x), any(var_1)), global0.a.x | 38990u);
    let var_3 = Struct_5(_wgslsmith_f_op_f32(global0.d.c - -176f), global0.b);
    let var_4 = Struct_3(~(~global3.wxy), global0.d, false, var_3.b);
    return vec3<u32>(u_input.d.x, u_input.c, 4294967295u);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(global0.d.b | -(~(~u_input.b)));
    var var_1 = ~global3.x;
    let var_2 = max(0i, global0.d.a.x);
    let var_3 = !(!select(vec2<bool>(true, all(vec4<bool>(false, false, global0.c, true))), vec2<bool>(!global0.c, true), all(select(vec4<bool>(global0.c, true, false, global0.c), vec4<bool>(false, global0.c, global0.c, global0.c), vec4<bool>(global0.c, false, false, global0.c)))));
    var var_4 = Struct_1(-global0.b.a << (vec4<u32>(_wgslsmith_dot_vec3_u32(~u_input.e, vec3<u32>(u_input.d.x, u_input.e.x, 21015u) ^ u_input.e), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, 4294967295u, 5533u), vec4<u32>(global0.a.x, global0.a.x, u_input.e.x, global3.x))), _wgslsmith_add_u32(10497u, ~u_input.d.x), abs(_wgslsmith_add_u32(global0.a.x, 27824u))) % vec4<u32>(32u)), -33645i, 786f);
    return Struct_3((countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(global3.x, 0u, 1u), vec3<u32>(15898u, global0.a.x, 1u))) >> (u_input.e % vec3<u32>(32u))) | func_3(), global0.d, global0.c, global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(floor(global0.b.c)), Struct_1(global0.b.a, -39i, 1432f));
    var var_1 = ~(~(func_1() & ~(~u_input.e.x)));
    var var_2 = func_2();
    var var_3 = countOneBits(-2147483647i);
    var var_4 = 16708u;
    var_0 = Struct_5(_wgslsmith_f_op_f32(sign(var_0.b.c)), global0.d);
    var_0 = Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c * var_0.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1257f - var_0.a) * global0.d.c)))), Struct_1(_wgslsmith_div_vec4_i32(~_wgslsmith_clamp_vec4_i32(global0.b.a, vec4<i32>(-13002i, -2147483647i, global2.a, global2.a), var_2.b.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.d.a.x, -1i, global0.d.a.x, -1379i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b.a.x, var_0.b.a.x, -61790i, var_0.b.b), vec4<i32>(-11942i, -18580i, -2147483647i, global2.a), var_0.b.a), var_0.b.a & var_0.b.a)), var_0.b.a.x, _wgslsmith_f_op_f32(abs(var_2.b.c))));
    var var_5 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x << (var_2.a.x % 32u), vec3<f32>(var_2.d.c, _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, 494f) + _wgslsmith_f_op_f32(ceil(var_2.d.c))))), global0.b.c), _wgslsmith_add_u32(11355u, ~73322u), -542f, ~(-(~(-1i))));
}

