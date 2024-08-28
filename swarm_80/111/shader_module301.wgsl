struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-24025i, vec4<u32>(4294967295u, 45715u, 4294967295u, 4294967295u), vec4<u32>(71806u, 4294967295u, 20864u, 10336u), vec2<f32>(123f, 1906f));

var<private> global1: array<vec2<i32>, 22>;

var<private> global2: bool = true;

var<private> global3: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<bool> {
    global0 = Struct_1(global0.a, global0.b, vec4<u32>(max(1u, ~global0.c.x), global0.c.x, ~(min(u_input.a.x, global0.b.x) ^ 4294967295u), ~_wgslsmith_mult_u32(4294967295u & u_input.a.x, 1u)), vec2<f32>(_wgslsmith_f_op_f32(1551f * global0.d.x), global0.d.x));
    global3 = ~abs(1u << (_wgslsmith_div_u32(0u, 17128u) % 32u)) > global0.c.x;
    global1 = array<vec2<i32>, 22>();
    let var_0 = ~23516u;
    var var_1 = Struct_1(-u_input.d, _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.c, _wgslsmith_clamp_u32(3826u, 1u, var_0) ^ ~var_0, firstLeadingBit(4294967295u), 71344u), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(67294u, 1u), ~u_input.a.xx), 4294967295u, u_input.a.x, 25575u)), (_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 19428u, u_input.c, global0.c.x), ~vec4<u32>(var_0, u_input.c, 44344u, 4294967295u)) >> ((vec4<u32>(103617u, 1u, var_0, u_input.c) ^ global0.b) % vec4<u32>(32u))) ^ max(vec4<u32>(abs(u_input.a.x), 1u, 59980u << (u_input.a.x % 32u), global0.b.x), vec4<u32>(global0.c.x, ~global0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), global0.c.wx), reverseBits(72758u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.d.x, -260f))))))));
    return vec2<bool>(-110f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1384f)) * _wgslsmith_f_op_f32(-var_1.d.x)) + 837f), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(select(true, true, false), all(vec2<bool>(true, false)), true, true))));
}

fn func_2() -> Struct_1 {
    let var_0 = !(!(!func_3(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 17599u, 4294967295u), 22u)])));
    global2 = any(!vec3<bool>(true, true, !var_0.x));
    return Struct_1(-u_input.b.x, select(_wgslsmith_div_vec4_u32(global0.b, vec4<u32>(4769u, ~7500u, global0.b.x, 1u)), global0.b, true), ~(~(~vec4<u32>(u_input.c, 0u, 57899u, 4294967295u))), vec2<f32>(-1045f, global0.d.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>) -> vec2<i32> {
    var var_0 = abs(u_input.a.x);
    global1 = array<vec2<i32>, 22>();
    var var_1 = _wgslsmith_dot_vec2_u32(countOneBits(global0.b.yy), ~global0.c.zy);
    var var_2 = func_2();
    let var_3 = func_2();
    return -_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.x, -2147483647i), ~vec2<i32>(abs(0i), -10596i << (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.b, vec3<f32>(250f, global0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -763f)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(abs(global0.d.x)), select(false, true, global0.d.x <= global0.d.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) * global0.d.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(670f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -991f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(385f, 760f) - 2300f)))));
    global2 = !(-1326f > global0.d.x);
    var var_2 = u_input.a.x;
    var var_3 = Struct_1(global0.a, select(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, 8712u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.c, 29678u, 4294967295u)), select(vec4<u32>(u_input.c, 43768u, 4294967295u, global0.b.x), global0.b, vec4<bool>(false, false, true, false))), select(~_wgslsmith_sub_vec4_u32(global0.c, vec4<u32>(0u, 0u, 28465u, 1u)), global0.c, global0.c.x >= u_input.a.x), any(vec3<bool>(any(vec3<bool>(false, true, false)), true, true))), _wgslsmith_sub_vec4_u32(~global0.b, vec4<u32>(~1u, global0.b.x, ~u_input.a.x & ~1u, 43486u & global0.b.x)), vec2<f32>(global0.d.x, -171f));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) * var_1)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1669f, -941f) * _wgslsmith_f_op_f32(-394f * 544f)), _wgslsmith_div_f32(var_3.d.x, _wgslsmith_f_op_f32(round(-1956f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.d.x * var_1.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(925f)))))), -29661i, ~max(~(~vec4<i32>(var_0.x, -1173i, u_input.b.x, global0.a)), -max(u_input.b, u_input.b)));
}

