struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(21413u, 34060u, 1u, 26166u, 1u, 0u, 43416u, 60834u, 0u, 31526u, 32454u, 39763u, 4294967295u, 21092u, 1u, 143u, 11511u, 4294967295u, 0u, 4294967295u, 1u, 4294967295u, 0u, 16409u, 89507u, 0u, 18027u, 28245u, 59279u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = select(vec3<bool>(true, any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true))), !select(vec3<bool>(true, arg_0.x >= 0u, false), vec3<bool>(true, true, any(vec3<bool>(false, false, true))), select(true, true, u_input.b.x == u_input.b.x)), select(vec3<bool>(true, true, any(vec3<bool>(true, true, true))), vec3<bool>(true, false, select(true, any(vec4<bool>(true, false, false, true)), 40451i != u_input.b.x)), all(vec2<bool>(true, true))));
    var var_1 = var_0.x;
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(696f * 443f)), 829f)), -992f), !vec3<bool>(!(!var_0.x), var_0.x, false));
    var_1 = var_2.b.x;
    global0 = array<u32, 29>();
    return select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, !(!all(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, false))), any(vec2<bool>(all(vec4<bool>(true, true, false, var_0.x)), var_0.x))), true);
}

fn func_2() -> Struct_5 {
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    var var_0 = Struct_3(any(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true)), Struct_1(_wgslsmith_f_op_f32(step(-790f, -1485f)), vec3<bool>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23410u, 29u)], 29u)] >= (5748u ^ global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), _wgslsmith_f_op_f32(f32(-1f) * -997f) == _wgslsmith_f_op_f32(floor(2046f)), any(func_3(u_input.a.xx)))), u_input.a.x, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(803f, -1246f))), vec3<bool>(true, any(vec3<bool>(true, true, false)), func_3(u_input.a.zx).x)), _wgslsmith_add_i32(-15012i, 29750i), Struct_1(1f, vec3<bool>(true, true, true)), Struct_1(337f, vec3<bool>(true, true, all(vec3<bool>(true, false, false)))), Struct_1(853f, vec3<bool>(false, true, true))));
    global0 = array<u32, 29>();
    return Struct_5(var_0.d.e.b, _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.yzy, vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], u_input.a.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), ~vec3<u32>(var_0.c, 4294967295u, 4294967295u)), u_input.a.zxx), countOneBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(52427u, u_input.a.x, 0u), u_input.a.xyy))));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_3) -> bool {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1056f);
    var var_2 = arg_3.d;
    var_0 = func_2();
    var var_3 = Struct_3(true, var_2.a, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(max(u_input.a.x, arg_3.c), arg_3.c), ~_wgslsmith_mult_vec2_u32(arg_0, var_0.b.xx), _wgslsmith_div_vec2_u32(u_input.a.yz & vec2<u32>(arg_1, arg_0.x), ~vec2<u32>(4294967295u, 1u))), ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 797u), var_0.b.yy) & ~vec2<u32>(8598u, var_0.b.x)), arg_3.d);
    return !(true && (!var_0.a.x && func_3(~arg_0).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2121f, 959f, 456f)) - vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), -509f, -1472f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-221f, -648f, 700f), vec3<f32>(-285f, 1073f, 730f), vec3<bool>(false, true, false))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-338f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -976f)) * vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 115f)), -375f))));
    global0 = array<u32, 29>();
    var var_1 = vec2<bool>(!(!func_1(vec2<u32>(70219u, 30556u), 46975u, vec4<f32>(717f, var_0.x, var_0.x, -492f), Struct_3(false, Struct_1(252f, vec3<bool>(false, false, false)), 0u, Struct_2(Struct_1(291f, vec3<bool>(false, true, false)), 2147483647i, Struct_1(var_0.x, vec3<bool>(false, true, false)), Struct_1(287f, vec3<bool>(true, false, true)), Struct_1(2336f, vec3<bool>(true, true, true)))))) | (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), -2438f)) > 481f), true);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(223f, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(-139f, 189f, -1077f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -2238f))))), false)));
    var var_2 = !(!(!select(!vec3<bool>(var_1.x, var_1.x, false), select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, true, false)), !var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xz, var_0.x, vec2<u32>(u_input.a.x >> (global0[_wgslsmith_index_u32(u_input.a.x, 29u)] % 32u), 66853u) >> (_wgslsmith_add_vec2_u32(func_2().b.yy, abs(vec2<u32>(0u, 29664u))) % vec2<u32>(32u)), 4294967295u);
}

