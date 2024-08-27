struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 18>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(arg_2.zxw));
    global0 = arg_1;
    var_0 = vec3<f32>(arg_2.x, var_0.x, var_0.x);
    let var_1 = arg_1;
    let var_2 = (~(~(vec3<u32>(63804u, var_1.a, 4294967295u) << (vec3<u32>(1u, u_input.b, 0u) % vec3<u32>(32u)))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(max(var_1.a, var_1.a), _wgslsmith_mult_u32(global0.a, 4294967295u), ~var_1.a), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(17315u, 4294967295u, arg_1.a)) | firstTrailingBit(vec3<u32>(arg_1.a, global0.a, 20949u)))) & vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(min(var_1.a, 41095u), select(1u, 55807u, arg_0.x)), vec2<u32>(1u, 1u) | firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 18u)])), global0.a, ~arg_1.a);
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(~4294967295u, ~arg_0.a << (39533u % 32u)));
    let var_1 = ~vec2<u32>(min(arg_0.a, 4294967295u), ~_wgslsmith_div_u32(~arg_0.a, 4294967295u));
    var var_2 = Struct_1(min(1u << (min(4294967295u, arg_1.a) % 32u), 0u), true);
    global1 = array<vec2<u32>, 18>();
    var_0 = ~select(0u, var_1.x, false);
    return select(vec3<bool>(!any(vec3<bool>(true, global0.b, arg_0.b)), arg_1.b, all(!func_3(vec4<bool>(false, false, var_2.b, false), arg_1, vec4<f32>(arg_2, arg_2, 620f, arg_2)))), vec3<bool>(arg_0.b, true, func_3(!func_3(vec4<bool>(arg_0.b, false, arg_1.b, arg_1.b), Struct_1(39730u, true), vec4<f32>(1000f, -1064f, -1000f, arg_2)), arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-122f, arg_2, arg_2, 753f))).x), !vec3<bool>(all(!vec2<bool>(global0.b, arg_0.b)), !any(vec2<bool>(false, arg_0.b)), true));
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_1(global0.a, global0.b);
    var var_1 = true;
    var var_2 = firstLeadingBit(u_input.c.x);
    var_0 = Struct_1(u_input.b, !global0.b);
    var var_3 = select(select(func_2(Struct_1(reverseBits(0u), true), Struct_1(var_0.a, var_0.b | false), 1402f), select(vec3<bool>(select(false, false, true), global0.b, false), !vec3<bool>(var_0.b, false, true), (true && global0.b) == var_0.b), !global0.b), vec3<bool>(false, !var_0.b, global0.b), var_0.b);
    return func_2(Struct_1(abs(firstTrailingBit(~4294967295u)), func_2(Struct_1(_wgslsmith_clamp_u32(var_0.a, global0.a, var_0.a), true), Struct_1(82527u, true), -130f).x), Struct_1(select(~40771u, global0.a, true), global0.b & (4294967295u == (var_0.a << (79681u % 32u)))), _wgslsmith_f_op_f32(695f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))).xx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 18>();
    var var_0 = select(select(select(!vec2<bool>(global0.b, false), vec2<bool>(!global0.b, true), (12174u == u_input.a.x) & false), select(!select(vec2<bool>(true, global0.b), vec2<bool>(false, true), vec2<bool>(global0.b, false)), select(vec2<bool>(global0.b, false), vec2<bool>(global0.b, global0.b), vec2<bool>(true, true)), select(vec2<bool>(global0.b, global0.b), select(vec2<bool>(global0.b, false), vec2<bool>(global0.b, false), vec2<bool>(global0.b, global0.b)), !vec2<bool>(global0.b, global0.b))), vec2<bool>(true, true)), func_1(), global0.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1230f, 1000f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(638f, -367f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1201f, -1139f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(982f, -115f))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -605f))))));
    let var_2 = Struct_1(u_input.b, !func_1().x);
    var_0 = func_2(Struct_1(4294967295u, !func_3(vec4<bool>(var_2.b, global0.b, true, true), var_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -154f, 1000f, var_1.x) - vec4<f32>(-463f, -370f, 1502f, -1372f))).x), Struct_1(var_2.a, global0.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1996f - -1000f), -383f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-706f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), all(select(!vec4<bool>(false, var_0.x, global0.b, false), vec4<bool>(true, var_2.b, false, global0.b), vec4<bool>(true, true, true, true)))))).zx;
    let x = u_input.a;
    s_output = StorageBuffer(13990u, -733f, vec4<i32>(i32(-1i) * -reverseBits(u_input.c.x), -u_input.c.x, ~u_input.c.x, -reverseBits(u_input.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x), _wgslsmith_f_op_f32(floor(var_1.x)), var_1.x)));
}

