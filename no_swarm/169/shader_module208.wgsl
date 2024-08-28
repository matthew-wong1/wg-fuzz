struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
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

var<private> global0: array<vec3<bool>, 29>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1824f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(775f, -263f, true)))), _wgslsmith_f_op_f32(min(401f, -1050f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1231f)) - 1f))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1081f, 143f, false)) + _wgslsmith_f_op_f32(-378f + -1011f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-997f, 1668f)))), 806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(103f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-964f, -583f, 498f, 608f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(666f, 1532f, 118f, 1142f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-517f, -302f, 159f, 274f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), var_1.x)) * 116f), var_1.x, _wgslsmith_f_op_f32(max(-105f, _wgslsmith_f_op_f32(-1207f - _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 313f) * var_1.x) - var_1.x)));
    var_0 = arg_1.a.a.x;
    let var_2 = arg_0;
    return arg_0.a.b;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(~9996u < firstTrailingBit(0u), true, true), _wgslsmith_mod_vec4_u32(vec4<u32>(abs(u_input.c.x), ~0u, 1u, 64402u), ~(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u))), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false), select(u_input.a.x, u_input.c.x, true) < u_input.c.x)), vec4<i32>(-u_input.d.x << ((u_input.a.x | ~0u) % 32u), u_input.d.x, u_input.b.x, ~(~(-u_input.d.x))), u_input.a.x & ~0u);
    global0 = array<vec3<bool>, 29>();
    var_0 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(~0u, 29u)], (~vec4<u32>(0u, 1u, u_input.a.x, 0u) >> (func_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(56162u, 29u)], vec4<u32>(1u, 4294967295u, var_0.a.b.x, 21976u), var_0.a.c), vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, var_0.b.x), u_input.a.x), Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], var_0.a.b, var_0.a.c), var_0.b, var_0.c)) % vec4<u32>(32u))) ^ reverseBits(vec4<u32>(11806u, u_input.a.x, var_0.a.b.x, 41101u)), !select(vec4<bool>(var_0.a.c.x, false, var_0.a.c.x, false), !vec4<bool>(false, var_0.a.a.x, true, var_0.a.c.x), true)), u_input.b, var_0.c);
    global0 = array<vec3<bool>, 29>();
    var_0 = Struct_2(var_0.a, abs(-var_0.b), min(func_3(Struct_2(Struct_1(vec3<bool>(true, var_0.a.a.x, false), var_0.a.b, var_0.a.c), vec4<i32>(u_input.d.x, u_input.d.x, u_input.b.x, var_0.b.x), var_0.a.b.x), Struct_2(Struct_1(vec3<bool>(false, var_0.a.a.x, false), var_0.a.b, vec4<bool>(var_0.a.c.x, false, true, var_0.a.c.x)), u_input.b, 0u)).x >> (0u % 32u), _wgslsmith_dot_vec2_u32(~var_0.a.b.xw, vec2<u32>(u_input.a.x, var_0.c))));
    return Struct_1(!global0[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<u32>(u_input.a.x, var_0.a.b.x, var_0.c, 3270u), vec4<bool>(false, false, var_0.a.a.x, var_0.a.a.x)), var_0.b, 4294967295u), Struct_2(Struct_1(var_0.a.a, vec4<u32>(13448u, var_0.a.b.x, var_0.c, var_0.a.b.x), var_0.a.c), vec4<i32>(u_input.b.x, u_input.d.x, 2147483647i, 1i), 24940u)).x | _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.a.b.x, 4294967295u), ~92662u), 29u)], ~vec4<u32>(u_input.a.x, 1u, ~(u_input.c.x | 114091u), _wgslsmith_mod_u32(u_input.a.x, 1u)), !(!select(!vec4<bool>(false, true, false, var_0.a.a.x), select(var_0.a.c, var_0.a.c, var_0.a.c), !vec4<bool>(true, false, var_0.a.c.x, var_0.a.a.x))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = -474f;
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -1480f, -1646f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-850f, -964f, 862f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f) - 493f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1135f) * _wgslsmith_f_op_f32(f32(-1f) * -149f)), -1000f)), all(vec4<bool>(true, true, true, true))));
    let var_2 = 38193u;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~23867u);
    var var_1 = func_1(u_input.a);
    var_1 = func_2();
    let var_2 = Struct_2(func_1(min(func_1(firstLeadingBit(var_1.b.xyx)).b.ywy, ~u_input.a)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~u_input.b, u_input.b, select(max(vec4<i32>(-1i, u_input.d.x, u_input.d.x, 1i), vec4<i32>(0i, -2147483647i, -1i, 0i)), -u_input.b, !vec4<bool>(var_1.a.x, true, true, false))), vec4<i32>(u_input.b.x, 14979i, 1i, 88899i)), ~(~select(18471u >> (var_1.b.x % 32u), 14083u, true)));
    global0 = array<vec3<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, var_1.b.x);
}

