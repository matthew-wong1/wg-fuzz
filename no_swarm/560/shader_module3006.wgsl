struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(136f, -1405f, -1028f, 587f, 651f, 744f, -355f, 1000f, -1000f, 370f, -941f, 831f, 556f, -744f, 892f, 557f, 445f, -1809f, -1126f, 310f, 1243f, -1000f, 344f, 958f, 435f, 311f, 561f, -383f, 287f, 1714f, 332f);

var<private> global1: u32 = 11865u;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> bool {
    let var_0 = arg_0.c;
    var var_1 = vec4<bool>(true, true & arg_0.b, true, arg_0.a);
    var var_2 = 4294967295u;
    return false | (~(~u_input.b) < _wgslsmith_mult_i32(0i, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true);
    global1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(37762u, 1u), vec2<u32>(1031u, 44060u))) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(83545u, 30671u)) % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 27054u, 1u), ~71098u));
    global1 = 1u;
    global1 = reverseBits(1u);
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    let var_1 = -select(1i, _wgslsmith_sub_i32(~2147483647i, u_input.a), _wgslsmith_f_op_f32(965f - _wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(3310u, 31u)])) < -305f);
    let var_2 = Struct_1(all(vec4<bool>(true && (-1000f <= global0[_wgslsmith_index_u32(4294967295u, 31u)]), var_0.a, true, true)), all(vec2<bool>(!var_0.a, !func_1(Struct_1(true, true, -1286f), Struct_2(var_0.a), 0u))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~33612u, 31u)] - _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, ~4294967295u), 31u)], global0[_wgslsmith_index_u32(102487u, 31u)], all(vec3<bool>(false, var_0.a, var_0.a))))));
    global0 = array<f32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~max(~(~0u), 1u), 1i, -_wgslsmith_mult_i32(-u_input.a, _wgslsmith_add_i32(u_input.c << (0u % 32u), ~(-7421i))), _wgslsmith_f_op_f32(sign(var_2.c)));
}

