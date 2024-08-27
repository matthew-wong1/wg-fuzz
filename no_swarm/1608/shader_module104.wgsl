struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<vec4<i32>, 20>;

var<private> global2: array<vec3<i32>, 17>;

var<private> global3: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(1u, 6892u), vec2<u32>(20525u, 57749u), vec2<u32>(0u, 93581u), vec2<u32>(4294967295u, 11743u), vec2<u32>(43221u, 54797u), vec2<u32>(84163u, 0u), vec2<u32>(4294967295u, 242u), vec2<u32>(94054u, 1u), vec2<u32>(110955u, 0u), vec2<u32>(41514u, 4294967295u), vec2<u32>(42211u, 4294967295u), vec2<u32>(67801u, 4294967295u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(893f, 738f, -825f, 609f) + vec4<f32>(1000f, -288f, 1185f, -1000f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 1985f, 2001f, -243f)))))))));
    global3 = array<vec2<u32>, 12>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), -1000f, -1326f, _wgslsmith_f_op_f32(var_0.x * 1002f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -534f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1408f)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(852f + 790f))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = arg_0;
    global1 = array<vec4<i32>, 20>();
    var var_1 = var_0.d.wyz;
    var var_2 = Struct_3(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1303f))), var_0.a, _wgslsmith_f_op_vec4_f32(func_3(!vec4<bool>(var_0.c, arg_0.a, var_0.c, false), -max(-7612i, u_input.c.x), var_0.c))), Struct_2(vec4<i32>(~u_input.c.x, u_input.d.x, 2147483647i, u_input.d.x) << (_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 61289u, u_input.a), vec4<u32>(34281u, u_input.a, u_input.a, u_input.a), vec4<bool>(true, arg_0.a, false, arg_0.c)), reverseBits(vec4<u32>(84936u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u))));
    var var_3 = abs(~_wgslsmith_clamp_vec4_i32(countOneBits(global1[_wgslsmith_index_u32(u_input.a, 20u)] << (vec4<u32>(u_input.a, 4294967295u, 2465u, 1u) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, 1i, 81322i, -67005i), ~global1[_wgslsmith_index_u32(u_input.a, 20u)]));
    return _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(-var_1.x));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1898f, 1383f, _wgslsmith_div_f32(-774f, _wgslsmith_f_op_f32(func_2(Struct_1(true, -914f, false, vec4<f32>(-1425f, -1207f, -259f, 1105f)), -2564f))), -1052f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(732f, 1334f, -1404f, -1000f)))))) - vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(389f + -1000f))))), _wgslsmith_f_op_f32(round(-390f)), _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, true, true, true), -42076i, -449f < _wgslsmith_f_op_f32(floor(717f)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false), 1i, all(vec3<bool>(true, false, true)))).x)));
    let var_1 = Struct_1(!(!(_wgslsmith_f_op_f32(-var_0.x) == 681f)), _wgslsmith_f_op_f32(round(-699f)), !(!select(any(vec3<bool>(false, true, true)), all(vec4<bool>(true, true, true, false)), u_input.a > u_input.a)), _wgslsmith_f_op_vec4_f32(var_0 * var_0));
    global1 = array<vec4<i32>, 20>();
    global1 = array<vec4<i32>, 20>();
    let var_2 = arg_0.a.x;
    return select(!select(vec3<bool>(true, true, true), !(!vec3<bool>(var_1.a, var_1.c, false)), true), !select(!(!vec3<bool>(var_1.a, false, true)), !(!vec3<bool>(var_1.a, var_1.a, var_1.a)), true), select(vec3<bool>(any(vec2<bool>(var_1.a, false)), u_input.a != _wgslsmith_clamp_u32(24842u, 0u, 2713u), false), !(!vec3<bool>(var_1.c, false, var_1.a)), !vec3<bool>(all(vec3<bool>(true, true, false)), !var_1.a, true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> StorageBuffer {
    var var_0 = vec3<u32>(firstTrailingBit(~abs(15981u) >> (_wgslsmith_mod_u32(1u, u_input.a) % 32u)), min(arg_1 >> (arg_1 % 32u), ~(arg_1 >> (u_input.a % 32u)) & u_input.a), _wgslsmith_sub_u32(u_input.a, 19910u));
    global1 = array<vec4<i32>, 20>();
    let var_1 = select(all(func_1(Struct_2(max(vec4<i32>(-2147483647i, u_input.b, u_input.c.x, u_input.b), vec4<i32>(-46593i, u_input.c.x, u_input.d.x, u_input.d.x))))), true, arg_0.x != arg_0.x);
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(203f, _wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1228f)), _wgslsmith_f_op_f32(1386f + -1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1561f))) - 393f) + _wgslsmith_f_op_f32(1092f + 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(arg_0.x, -1915f, var_1, vec4<f32>(-374f, -622f, -343f, -893f)), -431f)) + _wgslsmith_f_op_f32(sign(1724f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -313f))) - -1283f)), global1[_wgslsmith_index_u32(~(arg_1 >> (arg_1 % 32u)), 20u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -global1[_wgslsmith_index_u32(u_input.a, 20u)];
    global2 = array<vec3<i32>, 17>();
    var var_1 = Struct_2(~(-var_0));
    global3 = array<vec2<u32>, 12>();
    var var_2 = 1000f;
    let x = u_input.a;
    s_output = func_4(!(!func_1(Struct_2(vec4<i32>(-30462i, -2147483647i, 1i, var_0.x)))), 4294967295u);
}

