struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<f32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-315f, -1171f);

var<private> global1: array<Struct_3, 12>;

var<private> global2: array<bool, 18> = array<bool, 18>(true, false, false, false, true, false, false, false, true, false, true, false, true, true, true, false, true, false);

var<private> global3: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = global0.x;
    let var_2 = vec4<bool>(var_0, !((4294967295u << ((u_input.b.x & u_input.a) % 32u)) < u_input.b.x), global2[_wgslsmith_index_u32(~(u_input.a >> (u_input.b.x % 32u)), 18u)], !(true | !var_0));
    var var_3 = -29619i;
    let var_4 = u_input.a;
    var var_5 = -964f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.c.x, 1264i) << (var_4 % 32u), global3.a.x, ~(-85745i) | global3.a.x), global3.a.xww), ~3866u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(1299f + -1000f))) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), ~_wgslsmith_mod_u32(~u_input.a, _wgslsmith_clamp_u32(u_input.b.x, min(u_input.a, var_4), firstLeadingBit(1u))));
}

