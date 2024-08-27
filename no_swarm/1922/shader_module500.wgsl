struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-5952i, -29062i, -25837i), vec3<u32>(38126u, 0u, 0u));

var<private> global2: array<Struct_3, 2>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global2 = array<Struct_3, 2>();
    let var_0 = ~abs(0u) <= max(1u ^ global1.b.x, countOneBits(~4294967295u));
    var var_1 = arg_0;
    return max(~firstTrailingBit(arg_0.b) << (vec3<u32>(_wgslsmith_mult_u32(5232u, 60554u) | u_input.b.x, global1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, var_1.b.x, var_1.b.x) >> (arg_0.b % vec3<u32>(32u)), arg_0.b)) % vec3<u32>(32u)), firstTrailingBit(var_1.b));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<f32> {
    let var_0 = vec4<bool>(true, true, true, true);
    global1 = Struct_1(global1.a, select(func_3(Struct_1(global1.a, abs(u_input.b))), u_input.b, !var_0.xzx));
    var var_1 = true;
    global0 = array<Struct_1, 30>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-670f, arg_0) * vec2<f32>(1275f, 272f))))));
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, _wgslsmith_f_op_f32(select(1259f, _wgslsmith_f_op_f32(262f - _wgslsmith_f_op_f32(-var_2.x)), -u_input.a.x != 1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(149f)), _wgslsmith_f_op_f32(-824f + arg_0)))))), vec3<f32>(var_2.x, _wgslsmith_div_f32(-2084f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + arg_0)))), var_2.x)));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(global1.a.x, arg_2.b.x, -1i), arg_2.b.x)) >> ((u_input.b.zx & ~(~vec2<u32>(global1.b.x, arg_2.a.a))) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x << (arg_2.d.b.x % 32u)) << (u_input.c.yw % vec2<u32>(32u))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(447f * _wgslsmith_f_op_f32(abs(-1010f))))), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 1847f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f)));
    var var_2 = arg_2.a;
    global1 = arg_2.d;
    return arg_2.d;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_1 {
    global1 = arg_1;
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global1 = func_4(!select(!all(vec2<bool>(arg_0, false)), true, arg_3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-445f, -2248f)), ~0u)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), -920f, 1f)), arg_2);
    var var_0 = global2[_wgslsmith_index_u32(global1.b.x, 2u)];
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    let var_0 = Struct_4(Struct_2(global1.b.x), firstLeadingBit(u_input.a) ^ -firstTrailingBit(_wgslsmith_add_vec4_i32(u_input.a, u_input.a)), _wgslsmith_add_u32(abs(25591u), u_input.c.x), Struct_1(arg_0.a, vec3<u32>(_wgslsmith_add_u32(global1.b.x >> (arg_0.b.x % 32u), global1.b.x), ~arg_0.b.x, 1u)));
    let var_1 = Struct_4(Struct_2(0u), (_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -64253i, arg_1.x, arg_1.x), ~vec4<i32>(arg_1.x, 0i, 19344i, 16322i), u_input.a) >> (vec4<u32>(func_4(true, vec3<f32>(-364f, 1439f, -896f), Struct_4(var_0.a, vec4<i32>(u_input.a.x, 9325i, -17507i, 2147483647i), var_0.c, arg_0)).b.x, u_input.b.x, 1u, global1.b.x) % vec4<u32>(32u))) ^ u_input.a, u_input.c.x, arg_0);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    let var_0 = vec3<bool>(all(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true)), !(true || func_5(func_1(true, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], Struct_4(Struct_2(4294967295u), vec4<i32>(u_input.a.x, 27611i, global1.a.x, u_input.a.x), u_input.c.x, global0[_wgslsmith_index_u32(37000u, 30u)]), vec3<bool>(true, false, false)), ~global1.a.yy)), any(vec4<bool>(true, true, true, true)));
    var var_1 = Struct_2(global1.b.x);
    var var_2 = _wgslsmith_mod_u32(19929u, 1u);
    let var_3 = Struct_3(u_input.a, countOneBits(var_1.a), Struct_1(~vec3<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(40272i, 68693i), global1.a.xx), u_input.a.x), ~vec3<u32>(u_input.c.x, ~u_input.c.x, ~39884u)), any(!(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, false, var_0.x), vec4<bool>(false, var_0.x, true, false)))), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.a, _wgslsmith_mod_u32(~u_input.c.x >> (~(~u_input.c.x) % 32u), ~(28079u << (1u % 32u))));
}

