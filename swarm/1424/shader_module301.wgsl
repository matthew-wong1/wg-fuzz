struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<u32>(4294967295u, 1u, 29729u, 0u)), Struct_1(vec4<u32>(4294967295u, 0u, 97713u, 2900u)), Struct_1(vec4<u32>(42997u, 72505u, 4294967295u, 4063u)), Struct_1(vec4<u32>(4294967295u, 0u, 79584u, 1u)), Struct_1(vec4<u32>(78440u, 4294967295u, 20836u, 32293u)), Struct_1(vec4<u32>(61856u, 103066u, 8472u, 6439u)), Struct_1(vec4<u32>(1u, 26296u, 12980u, 64426u)), Struct_1(vec4<u32>(78245u, 0u, 0u, 4294967295u)), Struct_1(vec4<u32>(4804u, 4294967295u, 15911u, 3706u)), Struct_1(vec4<u32>(4943u, 1u, 31315u, 0u)), Struct_1(vec4<u32>(24499u, 1u, 120976u, 4294967295u)));

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> bool {
    global0 = array<Struct_1, 11>();
    var var_0 = !select(vec3<bool>(true, _wgslsmith_f_op_f32(-global1.x) >= 488f, u_input.a < _wgslsmith_add_u32(1u, arg_0.a.a.x)), vec3<bool>(true, true, true), !vec3<bool>(false, true, global1.x >= -202f));
    let var_1 = Struct_2(Struct_1(~(~arg_0.a.a)));
    let var_2 = Struct_2(Struct_1(~var_1.a.a));
    var var_3 = any(!vec3<bool>(all(var_0.zy), false, false));
    return any(!var_0.zy);
}

fn func_2() -> vec3<i32> {
    let var_0 = select(vec2<bool>(_wgslsmith_add_u32(u_input.a, 0u) <= u_input.a, true), select(select(vec2<bool>(true, true), vec2<bool>(func_3(Struct_2(global0[_wgslsmith_index_u32(u_input.b, 11u)]), global1.x), true), false), select(vec2<bool>(func_3(Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.b, 12116u, 1u))), global1.x), func_3(Struct_2(Struct_1(vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b))), global1.x)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, false), any(vec3<bool>(false, true, true))), vec2<bool>(true, true)), !(func_3(Struct_2(Struct_1(vec4<u32>(3225u, u_input.b, 4294967295u, u_input.a))), -849f) & true)), select(!select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, false), true), countOneBits(u_input.b) != 4294967295u), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -2811f)), global1.x, _wgslsmith_f_op_f32(abs(203f)), _wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, 394f, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) - vec4<f32>(global1.x, -873f, -673f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-261f, 493f, global1.x, -917f))))))));
    global2 = array<Struct_1, 12>();
    var var_1 = vec3<i32>(firstTrailingBit(u_input.c.x), firstLeadingBit(2147483647i), ~u_input.d.x) & u_input.c;
    global2 = array<Struct_1, 12>();
    return vec3<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.d | ~u_input.c.yy, vec2<i32>(-1i, min(var_1.x, var_1.x)), vec2<i32>(-2147483647i, min(var_1.x, u_input.d.x))), min(-reverseBits(u_input.c.xx), _wgslsmith_div_vec2_i32(abs(vec2<i32>(-5873i, var_1.x)), vec2<i32>(6357i, u_input.c.x)))), var_1.x);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_vec3_i32(-u_input.c, abs(_wgslsmith_add_vec3_i32(u_input.c, func_2())));
    var var_1 = vec4<bool>(true, true, true, true);
    var var_2 = max(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 21565u, 10272u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u)), ~0u & abs(u_input.a)) ^ firstTrailingBit(vec2<u32>(13001u, u_input.a)), vec2<u32>(countOneBits(u_input.b), _wgslsmith_mod_u32(2725u, u_input.a)));
    let var_3 = abs(~(~(~select(var_2.x, 7698u, true))));
    global0 = array<Struct_1, 11>();
    return vec3<bool>(true, true, any(select(!select(var_1.yx, vec2<bool>(true, false), var_1.wx), select(var_1.xy, vec2<bool>(true, var_1.x), var_1.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.c.x, -451f, global1.x);
    global2 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1203f))))));
    var var_2 = 1952f;
    let var_3 = ~reverseBits(firstLeadingBit(-u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x + -1744f), _wgslsmith_f_op_f32(floor(-200f)), any(!vec4<bool>(var_0.x, false, var_0.x, var_0.x))))));
}

