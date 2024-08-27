struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
    d: vec3<bool>,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_3, 13>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> bool {
    global2 = array<Struct_3, 13>();
    global2 = array<Struct_3, 13>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.b, 13u)];
    var var_1 = var_0.b;
    let var_2 = Struct_3(~var_0.a, var_0.b, var_0.a.yx, Struct_1(var_0.c.x));
    return select(true, true, any(vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<bool>) -> vec4<i32> {
    let var_0 = !(func_2() && true);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(215f * 667f)), _wgslsmith_f_op_f32(f32(-1f) * -766f), 650f))));
    return vec4<i32>(-1i) * -countOneBits(select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 23515i, u_input.c, -44209i), vec4<i32>(u_input.c, global1.x, 2147483647i, u_input.c)), vec4<i32>(global1.x, global1.x, -40242i, -2147483647i) & vec4<i32>(-2147483647i, 29499i, -17070i, 53654i), !vec4<bool>(true, var_0, var_0, arg_0.x)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_3 {
    global1 = vec2<i32>(select(~func_1(vec3<bool>(true, true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), arg_2.x <= arg_2.x, vec2<bool>(true, true)).x, u_input.c, true), -2147483647i);
    return Struct_3(vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_0.x, 53335u, 0u, 35620u), vec4<u32>(arg_2.x, 4294967295u, u_input.a.x, 48345u), vec4<bool>(false, false, false, true)), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(arg_2.x, 4294967295u)), 1u & u_input.b, ~1u, arg_0.x)), ~_wgslsmith_sub_u32(arg_0.x, ~1u), 0u, 2577u), arg_3, arg_2, Struct_1(62284u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<bool>(true, (u_input.c != -13626i) && true), ((global1.x | global1.x) > ~0i) & true), any(vec3<bool>(true, true, true)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(717f - 106f), _wgslsmith_f_op_f32(-170f + -1086f)))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, _wgslsmith_f_op_f32(select(337f, -1000f, false)) != _wgslsmith_f_op_f32(f32(-1f) * -2471f)), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false))), select(true, all(vec4<bool>(true, u_input.c != u_input.c, true, select(false, true, false))), true));
    let var_1 = func_3(vec2<u32>(u_input.a.x, _wgslsmith_div_u32(~0u, firstTrailingBit(11171u))) & (firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)) >> (select(u_input.a, ~u_input.a, vec2<bool>(true, true)) % vec2<u32>(32u))), -(~(~vec4<i32>(global1.x, u_input.c, 11082i, u_input.c))) | func_1(!vec3<bool>(false, var_0.a.x, var_0.b), vec2<bool>(select(false, var_0.a.x, true), var_0.a.x && var_0.b), var_0.d.x, vec2<bool>(true, !var_0.d.x)), ~u_input.a, Struct_2(var_0.c.a));
    let var_2 = 1i;
    var var_3 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-24240i), ~68691u);
}

