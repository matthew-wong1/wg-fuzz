struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32 = 617f;

var<private> global2: array<vec4<u32>, 4>;

var<private> global3: array<bool, 11> = array<bool, 11>(false, false, false, false, true, true, false, false, false, true, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = -887f;
    var var_1 = select(vec4<bool>(true, arg_0.a.a, !global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~arg_0.b), 11u)], global3[_wgslsmith_index_u32(1u, 11u)]), vec4<bool>(any(vec2<bool>(select(arg_0.a.a, arg_0.a.a, false), true)), false & any(!vec4<bool>(arg_0.a.a, arg_0.d.a, false, global3[_wgslsmith_index_u32(1u, 11u)])), all(vec4<bool>(true, global3[_wgslsmith_index_u32(~4294967295u, 11u)], all(vec2<bool>(false, true)), arg_0.a.a)), false), !vec4<bool>(arg_0.d.a, arg_0.d.a, global3[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, arg_0.b), vec2<u32>(arg_0.b, 37098u)), ~arg_0.b, arg_0.b < 1u), 11u)], true));
    global2 = array<vec4<u32>, 4>();
    var var_2 = Struct_2(arg_0.d, arg_0.b, _wgslsmith_mod_vec3_i32(arg_0.c, _wgslsmith_clamp_vec3_i32(~u_input.e, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, arg_0.c.x, arg_0.c.x), arg_0.c), u_input.e.x | arg_0.c.x, firstLeadingBit(-2147483647i)), -u_input.e)), arg_0.d);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1286f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(512f, -419f, var_2.d.a)) + -1000f))));
    return false;
}

fn func_2() -> Struct_1 {
    global2 = array<vec4<u32>, 4>();
    global2 = array<vec4<u32>, 4>();
    global2 = array<vec4<u32>, 4>();
    let var_0 = Struct_1(all(vec3<bool>(global3[_wgslsmith_index_u32(1u, 11u)], true, select(global3[_wgslsmith_index_u32(19978u, 11u)], false, false))));
    let var_1 = min(1u, 28336u);
    return Struct_1(func_3(Struct_2(Struct_1(true), _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1, 12317u), var_1), ~(-u_input.e), Struct_1(false))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(~u_input.e.x, 6686i) & (i32(-1i) * -(u_input.c & 0i)), -(~u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, max(u_input.e.x & u_input.c, u_input.d.x)), vec2<i32>(u_input.d.x, u_input.d.x)), u_input.a);
    return Struct_2(func_2(), 49629u, u_input.e, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global3[_wgslsmith_index_u32(4294967295u, 11u)]);
    global3 = array<bool, 11>();
    let var_1 = var_0;
    let var_2 = ~var_1.b;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(272f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -115f)))) - 1719f));
    global2 = array<vec4<u32>, 4>();
    var var_4 = var_1.c;
    var var_5 = firstTrailingBit(70947u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3 + var_3), _wgslsmith_f_op_f32(var_3 - -344f))), _wgslsmith_f_op_f32(min(-684f, var_3)) >= _wgslsmith_f_op_f32(select(var_3, var_3, var_0.a.a)))) * _wgslsmith_f_op_f32(f32(-1f) * -765f)), _wgslsmith_div_vec3_u32(~(~(~vec3<u32>(var_1.b, 68231u, 28550u))), _wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(16431u, 95027u, var_0.b), vec3<u32>(var_2, var_0.b, 57592u), vec3<u32>(var_2, 26582u, var_1.b)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(52579u, 68249u, 77861u), vec3<u32>(var_2, 52913u, 0u)))));
}

