struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: bool,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<u32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15>;

var<private> global1: array<Struct_4, 14>;

var<private> global2: array<i32, 1>;

var<private> global3: f32 = -729f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = false;
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -478f);
    var_0 = true;
    var var_1 = select(select(!(!vec3<bool>(arg_0.b, false, false)), arg_0.d.zyz, any(select(!vec4<bool>(false, arg_0.d.x, false, true), select(arg_0.d, vec4<bool>(true, false, true, true), arg_0.d.x), any(arg_0.d)))), vec3<bool>(any(vec2<bool>(true, false)), all(arg_0.d.yw), false), !(!arg_0.d.yxy));
    let var_2 = arg_0;
    return 1u;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_3.b;
    var var_1 = -vec4<i32>(~(~u_input.e.x ^ ~27252i), ~u_input.e.x, 0i << (_wgslsmith_clamp_u32(arg_2 & 1u, 0u, func_3(Struct_1(arg_3.a, arg_3.b, arg_1, arg_3.d, u_input.a.zxy))) % 32u), global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(7935u, 0u, 15871u, u_input.d), vec4<u32>(arg_3.e.x, arg_0, 0u, 0u))), 1u)]);
    let var_2 = ~arg_3.e.zy;
    global3 = _wgslsmith_f_op_f32(min(arg_3.c, -623f));
    let var_3 = ~max(var_1.x, -2147483647i);
    return vec4<bool>(arg_3.b, arg_3.b && (true | arg_3.b), true, false);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    let var_0 = vec2<u32>(33445u, u_input.b.x << (u_input.d % 32u));
    let var_1 = false;
    let var_2 = select(arg_1, vec4<bool>(var_1, false, true, 0i == u_input.e.x), select(!(!(!arg_1)), select(select(arg_1, func_2(var_0.x, -247f, u_input.b.x, Struct_1(vec2<i32>(arg_0, global2[_wgslsmith_index_u32(5027u, 1u)]), false, -2478f, vec4<bool>(var_1, true, arg_1.x, var_1), vec3<u32>(u_input.b.x, var_0.x, 0u))), u_input.e.x <= -2147483647i), select(!arg_1, !arg_1, all(arg_1.ywx)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-395f)))));
    global1 = array<Struct_4, 14>();
    var var_3 = global2[_wgslsmith_index_u32(var_0.x, 1u)] | reverseBits((0i | select(2147483647i, 2147483647i, var_2.x)) >> (u_input.c % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, -139f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * 710f) - arg_2)) - -1658f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(-2147483647i, vec4<bool>(true, true, true, true), -573f)))), -1000f, 1562f)));
    global0 = array<vec4<f32>, 15>();
    var var_1 = vec4<u32>(u_input.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, u_input.c, u_input.b.x), reverseBits(vec4<u32>(5369u, u_input.c, u_input.b.x, u_input.a.x))), ~15764u, 1u) ^ firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.c, 48943u), u_input.d, ~82137u, _wgslsmith_div_u32(0u, u_input.c)), u_input.a, countOneBits(abs(u_input.a))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1695f)), vec3<f32>(156f, var_0.x, -1309f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 367f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, -1319f, 1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -33373i, 0i, 0i))), vec4<i32>(-1i) * -((vec4<i32>(-1i, u_input.e.x, -1i, 45326i) ^ vec4<i32>(0i, global2[_wgslsmith_index_u32(0u, 1u)], 1i, 12894i)) ^ firstLeadingBit(vec4<i32>(378i, u_input.e.x, u_input.e.x, 2147483647i))), 1000f, ~vec2<u32>(_wgslsmith_mult_u32(u_input.c, 1u), ~(~u_input.d)));
}

