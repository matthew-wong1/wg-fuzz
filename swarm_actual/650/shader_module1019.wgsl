struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: u32;

var<private> global2: array<u32, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1640f, -660f)), -385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(sign(-243f)))))));
    let var_1 = Struct_1(vec3<bool>(false, true, true), 27301u, vec2<u32>(abs(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 30u)], 0u)) << (countOneBits(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], arg_0.x)) % 32u), abs(u_input.a.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zx + vec2<f32>(_wgslsmith_f_op_f32(-293f * var_0.x), 177f)));
    var var_3 = var_0.zx;
    var_3 = var_2;
    return !(!(!select(vec3<bool>(var_1.a.x, false, true), !var_1.a, true)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(true, true, true), _wgslsmith_dot_vec3_u32(u_input.a, ~_wgslsmith_add_vec3_u32(abs(vec3<u32>(0u, 50312u, u_input.a.x)), select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, false))), u_input.a.xx);
    global1 = abs(21708u);
    global2 = array<u32, 30>();
    var_0 = Struct_1(var_0.a, 1u, vec2<u32>(1u << (0u % 32u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~var_0.b), 30u)] ^ countOneBits(~global2[_wgslsmith_index_u32(102059u, 30u)]), 30u)]));
    global2 = array<u32, 30>();
    return Struct_1(!select(vec3<bool>(var_0.a.x, true, !var_0.a.x), var_0.a, func_3(vec4<u32>(62406u, 1u, var_0.b, u_input.a.x))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(97491u, abs(u_input.a.x), 1u), 0u) >> (_wgslsmith_mod_u32(15338u, ~0u) % 32u), ~firstTrailingBit(~u_input.a.zx) >> (_wgslsmith_mult_vec2_u32(var_0.c, _wgslsmith_mod_vec2_u32(var_0.c, var_0.c)) % vec2<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    let var_0 = ~global2[_wgslsmith_index_u32(abs(1u) << (max(u_input.a.x, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4489u, 24307u), vec2<u32>(u_input.a.x, arg_1.e.b.b)))) % 32u), 30u)];
    let var_1 = func_2();
    let var_2 = select(arg_1.b.b.a.xx, arg_1.e.b.a.zx, vec2<bool>(func_3(vec4<u32>(var_0, global2[_wgslsmith_index_u32(126u, 30u)], 28119u, global2[_wgslsmith_index_u32(26394u, 30u)]) << (abs(vec4<u32>(4294967295u, var_0, u_input.a.x, 45792u)) % vec4<u32>(32u))).x, func_3(arg_1.b.a << (~vec4<u32>(1u, var_0, var_1.c.x, 1u) % vec4<u32>(32u))).x));
    var var_3 = arg_1.b.a;
    var var_4 = 25329u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-1567f * -914f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.c.x * arg_1.c.x)))) - _wgslsmith_f_op_f32(-arg_1.c.x)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_1(func_3(vec4<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4202u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.b.b, 30u)], 30u)]), 30u)], _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.a.zx, vec2<u32>(2157u, 4294967295u)), 30u)], firstTrailingBit(1u)), reverseBits(_wgslsmith_sub_u32(arg_2.a.x, global2[_wgslsmith_index_u32(arg_2.a.x, 30u)])), _wgslsmith_div_u32(0u, countOneBits(arg_0.x)))), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 0u), select(4294967295u, _wgslsmith_sub_u32(0u, u_input.a.x), any(vec4<bool>(false, arg_2.b.a.x, true, true)))), countOneBits(min(vec2<u32>(~28001u, 2794u), select(arg_2.b.c, arg_0.zz, arg_2.b.a.x & arg_2.b.a.x))));
    global2 = array<u32, 30>();
    var var_1 = abs(arg_0);
    let var_2 = 73234u;
    var var_3 = 0i;
    return ~(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_2, 35308u, 27926u, arg_0.x)), abs(max(vec4<u32>(var_2, arg_0.x, 83415u, 42955u), arg_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~u_input.a.x) << (~u_input.a.x % 32u), countOneBits(firstTrailingBit(global2[_wgslsmith_index_u32(reverseBits(u_input.a.x), 30u)]))), func_4(vec3<u32>(u_input.a.x ^ ~u_input.a.x, global2[_wgslsmith_index_u32(~u_input.a.x, 30u)] << (u_input.a.x % 32u), countOneBits(~global2[_wgslsmith_index_u32(u_input.a.x, 30u)])), vec2<f32>(_wgslsmith_f_op_f32(func_1(false, Struct_3(vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.a.x, 1u)], vec3<f32>(647f, 635f, -1323f), vec2<f32>(-1203f, 1000f), global0[_wgslsmith_index_u32(4294967295u, 1u)]), true, vec3<bool>(true, true, false))), -309f), global0[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)]), 1u)]));
}

