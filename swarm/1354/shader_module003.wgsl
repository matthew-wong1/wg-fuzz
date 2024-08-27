struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1212f, -1861f, 1491f);

var<private> global1: f32 = 652f;

var<private> global2: array<vec4<bool>, 18>;

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_1) -> bool {
    let var_0 = arg_2;
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-515f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(global0.x - arg_0.x))) + _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_1 = !(!vec2<bool>(var_0.a, -1184f < _wgslsmith_f_op_f32(max(arg_0.x, global0.x))));
    var var_2 = !vec3<bool>(arg_2.a, !var_0.a & false, !(_wgslsmith_f_op_f32(max(global0.x, 1068f)) >= _wgslsmith_f_op_f32(-545f - 1272f)));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(floor(-546f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1668f, -896f, var_2.x)))))));
    return false;
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_clamp_i32(2147483647i, abs(~abs(9729i)), u_input.a.x) & ~firstLeadingBit(u_input.a.x);
    let var_1 = select(select(!(!global2[_wgslsmith_index_u32(13717u << (u_input.e.x % 32u), 18u)]), select(!global2[_wgslsmith_index_u32(u_input.b.x & u_input.e.x, 18u)], global2[_wgslsmith_index_u32(~(~16657u), 18u)], global2[_wgslsmith_index_u32(u_input.b.x, 18u)]), u_input.c.x <= ~max(31692u, 53761u)), vec4<bool>(func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(664f, global0.x), vec2<f32>(global0.x, -2895f), vec2<bool>(global3.a, global3.a))), min(vec2<u32>(52670u, 28417u), vec2<u32>(u_input.e.x, u_input.d)), Struct_1(global3.a)) && !(!global3.a), countOneBits(u_input.a.x) > u_input.a.x, any(select(vec3<bool>(global3.a, false, false), !vec3<bool>(true, false, global3.a), any(vec4<bool>(global3.a, global3.a, global3.a, false)))), all(vec4<bool>(global3.a, all(vec4<bool>(false, global3.a, true, true)), true && global3.a, true))), global3.a);
    global3 = Struct_1(any(var_1.yw));
    global2 = array<vec4<bool>, 18>();
    let var_2 = firstTrailingBit(u_input.a);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-120f, global0.x) - _wgslsmith_f_op_vec2_f32(global0.yx + global0.yy))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    global2 = array<vec4<bool>, 18>();
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, -112f))), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -528f)))), _wgslsmith_f_op_f32(1968f - 333f), var_0.x);
    var var_2 = 97875u;
    var var_3 = Struct_1(false);
    return Struct_1(!(1u < abs(arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 985f;
    global0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2121f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)))));
    var var_1 = ~u_input.b;
    var var_2 = func_1(max(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.zxy, u_input.b.xzy), u_input.b.yxw), u_input.b.yxy), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x)))))), !any(select(vec4<bool>(global3.a, true, true, true), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(54093u, 39197u), 18u)], !global2[_wgslsmith_index_u32(4501u, 18u)])));
    var var_3 = global0.x;
    let var_4 = func_1(countOneBits(_wgslsmith_add_vec3_u32(firstTrailingBit(select(u_input.b.zzw, u_input.b.www, vec3<bool>(global3.a, global3.a, global3.a))), vec3<u32>(145400u, 13159u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.e.x), vec2<u32>(9317u, 0u))))), vec4<f32>(global0.x, _wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1000f))))), true);
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2()).x))), u_input.b.x, u_input.a.x);
}

