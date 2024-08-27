struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32 = -16425i;

var<private> global2: vec3<f32>;

var<private> global3: array<i32, 25> = array<i32, 25>(17418i, 1i, 0i, 16482i, 0i, 6494i, -52923i, 2147483647i, 16193i, 2147483647i, -1i, -1i, 2147483647i, 23207i, 2147483647i, -33419i, -1i, -38157i, 1i, -1520i, 50608i, 1i, i32(-2147483648), 32397i, 0i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_1(-52962i);
    let var_1 = Struct_1(-1i);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-235f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), 723f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.zwx * vec3<f32>(global0.x, global0.x, 1000f)))))));
    global3 = array<i32, 25>();
    var var_2 = 0u;
    return _wgslsmith_f_op_vec3_f32(trunc(global0.xyz));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_2(~firstTrailingBit(~firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, 89298u))));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.wzw + _wgslsmith_div_vec3_f32(global0.xzz, vec3<f32>(-1931f, 818f, -1144f))) * vec3<f32>(903f, _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(-global0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3()))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(132f, global2.x, 1000f))))));
    global3 = array<i32, 25>();
    var var_1 = var_0;
    var var_2 = global0.wzz;
    return var_0;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> Struct_2 {
    var var_0 = func_2(!(!any(vec4<bool>(arg_0.x, true, arg_0.x, true))) || true);
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 816f, global0.x, global0.x) + _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 710f, -1559f, -489f), vec4<f32>(global2.x, 625f, global0.x, 1381f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global0.x, 1054f, -504f) - vec4<f32>(global2.x, -131f, global0.x, 2237f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(round(global0.x)))))));
    var var_2 = _wgslsmith_mult_i32((countOneBits(u_input.a) & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 23939i, u_input.a, global3[_wgslsmith_index_u32(52282u, 25u)]), vec4<i32>(-23598i, -2147483647i, 2147483647i, 11126i) >> (vec4<u32>(var_0.a.x, var_0.a.x, 69387u, u_input.b.x) % vec4<u32>(32u)))) & _wgslsmith_mod_i32(0i, 25395i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(abs(i32(-1i) * -2147483647i), max(-15857i, u_input.a), _wgslsmith_clamp_i32(select(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], global3[_wgslsmith_index_u32(var_0.a.x, 25u)], false), global3[_wgslsmith_index_u32(9147u, 25u)], _wgslsmith_div_i32(-4237i, -1i))), u_input.a));
    let var_3 = vec3<bool>(!(global0.x < global0.x), true, false);
    return Struct_2(~(~(select(var_0.a, vec3<u32>(4294967295u, 4294967295u, 92946u), vec3<bool>(false, var_3.x, arg_0.x)) >> (var_0.a % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = Struct_2(vec3<u32>(u_input.b.x, firstTrailingBit(1u), ~(~(~644u))));
    var var_2 = func_1(vec2<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(827f)))) >= _wgslsmith_f_op_f32(ceil(global2.x)), select(false, true, !(global0.x >= -723f))), ~1u);
    global2 = _wgslsmith_f_op_vec3_f32(min(global0.yyz, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.xzw)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(574f, global2.x, -1000f))), _wgslsmith_f_op_vec3_f32(floor(global0.zyx))) + vec3<f32>(_wgslsmith_div_f32(global0.x, -405f), global0.x, _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_3 = _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(min(971f, _wgslsmith_f_op_f32(218f * 909f))));
    global0 = vec4<f32>(961f, global2.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(-284f))))));
    let var_4 = Struct_1(firstTrailingBit(u_input.a));
    let var_5 = -(~min(-vec3<i32>(-45894i, u_input.a, 1i), -vec3<i32>(u_input.a, u_input.a, 2147483647i)) >> (~var_2.a % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, _wgslsmith_f_op_vec3_f32(-global0.wwz), vec4<i32>(-_wgslsmith_mult_i32(var_4.a, -40627i), firstLeadingBit(_wgslsmith_div_i32(abs(-26320i), _wgslsmith_clamp_i32(1i, 27339i, var_5.x))), ~_wgslsmith_dot_vec2_i32(var_5.xz, var_5.xy) | 12439i, abs(firstTrailingBit(~0i))));
}

