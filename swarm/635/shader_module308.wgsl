struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 17>;

var<private> global2: array<Struct_1, 27>;

var<private> global3: array<Struct_1, 17>;

var<private> global4: vec4<f32> = vec4<f32>(673f, 516f, -866f, -750f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = global0.b;
    global3 = array<Struct_1, 17>();
    global2 = array<Struct_1, 27>();
    var var_1 = 1i;
    var var_2 = vec4<bool>(true, false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, false, true, false)), any(vec3<bool>(false, false, false)), true, any(vec3<bool>(true, false, false))), !all(vec4<bool>(false, true, false, true)))), all(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    return select(var_2.xz, var_2.zx, select(vec2<bool>(true, global0.c.x <= -6485i), var_2.yz, arg_2.b.c == 40249u));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.b.x, 4294967295u)), u_input.b, u_input.b), u_input.b >> (u_input.b % vec2<u32>(32u))), 54676u);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(383f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, 1136f) + -153f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.x - -159f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a.x) * _wgslsmith_f_op_f32(-global0.b.b.x))), 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 2100f, -758f, global4.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a.x, -1000f, -955f, -1072f) - global0.b.b))), _wgslsmith_f_op_vec4_f32(abs(global0.b.b)))));
    var var_2 = ~global0.b.c;
    var var_3 = !select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), select(func_3(~vec4<u32>(4294967295u, 1202u, 51867u, 13996u), min(1i, u_input.c), global1[_wgslsmith_index_u32(u_input.b.x ^ 4294967295u, 17u)]), vec2<bool>(true, true), false), true);
    let var_4 = _wgslsmith_add_u32(global0.b.c, 68459u);
    return _wgslsmith_f_op_f32(round(global0.b.a.x));
}

fn func_1() -> u32 {
    global1 = array<Struct_2, 17>();
    global4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(-1000f + -311f)), global0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(global0.c.x)))) - _wgslsmith_f_op_f32(1f - 1460f)), global0.b.a.x));
    var var_0 = u_input.a.yy;
    let var_1 = u_input.a.zx;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(global4.zww, global0.b.b.xyy)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.b.x * global4.x)), _wgslsmith_f_op_f32(sign(global4.x)), global0.b.b.x, global4.x)), 40917u >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(~70072u, global0.b.c & global0.b.c), 0u) % 32u));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.c, ~(~var_2.c), var_2.c), vec3<u32>(~66832u, 4294967295u, _wgslsmith_div_u32(1u, abs(var_2.c)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c, global0.b.c, 103154u, global0.b.c), ~vec4<u32>(34488u, global0.b.c, var_2.c, var_2.c)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = Struct_1(vec3<f32>(-482f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.a.x))), -583f), _wgslsmith_f_op_vec4_f32(min(global0.b.b, vec4<f32>(global0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a.x - 2616f)), _wgslsmith_f_op_f32(-450f - global0.b.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(630f + global0.b.a.x), _wgslsmith_f_op_f32(global0.b.b.x - global0.b.b.x), true))))), _wgslsmith_add_u32(_wgslsmith_div_u32(~func_1(), firstTrailingBit(~4294967295u)), _wgslsmith_sub_u32(0u & (9420u | global0.b.c), global0.b.c)));
    var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, select(abs(~var_1.c) << (select(4294967295u, max(22761u, 1u), func_3(vec4<u32>(0u, 8949u, u_input.b.x, 26463u), -2147483647i, global1[_wgslsmith_index_u32(36226u, 17u)]).x) % 32u), ~(~1u), (_wgslsmith_f_op_f32(f32(-1f) * -374f) < _wgslsmith_f_op_f32(global4.x * global4.x)) & any(vec3<bool>(true, true, true)))), 17u)];
    global2 = array<Struct_1, 27>();
    let var_2 = global0.b;
    global0 = global1[_wgslsmith_index_u32(countOneBits(20252u), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(8074u, u_input.b.x, 261f, u_input.b, _wgslsmith_div_i32(1i, -(~global0.c.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.c, 0u), vec2<u32>(26932u, global0.b.c)) % 32u))));
}

