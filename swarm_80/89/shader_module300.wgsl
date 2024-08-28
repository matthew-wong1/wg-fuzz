struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(1u, true, 19084i), Struct_2(4294967295u, true, -34294i), Struct_2(1u, true, -22808i), Struct_2(0u, true, -1i), Struct_2(68700u, true, -38584i), Struct_2(4294967295u, true, -12919i), Struct_2(0u, false, -14664i), Struct_2(1u, true, 2147483647i), Struct_2(59335u, false, 0i), Struct_2(75926u, true, -29284i), Struct_2(1u, true, -15434i), Struct_2(1u, false, 31696i), Struct_2(4294967295u, false, 2147483647i), Struct_2(81298u, false, -1i), Struct_2(43360u, false, 42580i), Struct_2(4294967295u, false, -5622i), Struct_2(4695u, true, 0i), Struct_2(75278u, true, -4800i), Struct_2(10635u, true, 2147483647i), Struct_2(0u, false, 0i), Struct_2(702u, true, 2147483647i), Struct_2(1u, false, 5482i), Struct_2(53066u, false, 53775i), Struct_2(4294967295u, false, i32(-2147483648)), Struct_2(31615u, true, -1i), Struct_2(29689u, false, -1i), Struct_2(0u, false, -72867i), Struct_2(18966u, true, 1i), Struct_2(39544u, false, -1i), Struct_2(110750u, true, 58527i), Struct_2(4294967295u, true, i32(-2147483648)), Struct_2(8515u, false, -1i));

var<private> global3: vec4<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 32>();
    var var_0 = vec2<bool>(19671i <= _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(u_input.e.x, global3.x, 1i), i32(-1i) * -1i), false);
    let var_1 = Struct_1(1i);
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1001f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))))));
    let var_4 = vec3<u32>(u_input.d.x, _wgslsmith_add_u32((~4294967295u >> (~u_input.d.x % 32u)) ^ 3880u, 1u), u_input.b.x);
    global0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_vec2_f32(floor(var_3)), ~u_input.c);
}

