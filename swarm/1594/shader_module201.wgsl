struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<i32>(13385i, 0i, i32(-2147483648))));

var<private> global1: array<u32, 17> = array<u32, 17>(81989u, 4294967295u, 86596u, 1u, 68626u, 4294967295u, 4294967295u, 4294967295u, 2323u, 4294967295u, 60000u, 6093u, 35701u, 25595u, 4294967295u, 7573u, 1u);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 16896i, 2147483647i));

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<i32>(-1i, 0i, 0i)), Struct_1(vec3<i32>(2147483647i, -39209i, 64086i)), Struct_1(vec3<i32>(1i, 0i, 6718i)), Struct_1(vec3<i32>(64977i, -43308i, 54548i)), Struct_1(vec3<i32>(1320i, 1i, 20440i)), Struct_1(vec3<i32>(25075i, -20873i, 1i)), Struct_1(vec3<i32>(1i, 46237i, -1i)), Struct_1(vec3<i32>(0i, -13724i, i32(-2147483648))), Struct_1(vec3<i32>(-5262i, -33421i, 1i)), Struct_1(vec3<i32>(1i, 2147483647i, -1i)), Struct_1(vec3<i32>(i32(-2147483648), 1i, -1i)), Struct_1(vec3<i32>(37483i, 0i, 1i)), Struct_1(vec3<i32>(2147483647i, -1i, -1i)), Struct_1(vec3<i32>(35896i, 6258i, 2147483647i)), Struct_1(vec3<i32>(-91226i, 2147483647i, 27791i)), Struct_1(vec3<i32>(-10065i, 2147483647i, -19085i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = Struct_2(abs(u_input.c));
    global1 = array<u32, 17>();
    global2 = Struct_1(-(-global2.a ^ -vec3<i32>(global2.a.x, -19812i, 24928i)));
    var var_1 = Struct_1(u_input.a.wzw);
    var var_2 = max(firstTrailingBit(-1i), -1i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1396f) + _wgslsmith_f_op_f32(f32(-1f) * -734f));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> f32 {
    let var_0 = Struct_2(u_input.c);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.x, arg_0.x), vec2<f32>(-1000f, 456f)))) + vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)))), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -996f))));
    let var_2 = true;
    let var_3 = var_0;
    global2 = global0[_wgslsmith_index_u32(0u, 1u)];
    return _wgslsmith_f_op_f32(round(-736f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-374f, _wgslsmith_f_op_f32(func_1(u_input.a.x)), _wgslsmith_f_op_f32(ceil(381f)), 1f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-193f - 647f), _wgslsmith_f_op_f32(117f * -649f), 1019f, _wgslsmith_f_op_f32(func_2(vec3<f32>(977f, 342f, -1430f), 70819u))))) * vec4<f32>(416f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1200f, _wgslsmith_f_op_f32(430f - 1000f)) * -1144f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2672f + 586f) + _wgslsmith_f_op_f32(427f * -403f))), _wgslsmith_f_op_f32(min(-425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1489f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1429f, -1031f, -369f, 667f)))));
    global2 = Struct_1(~vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x ^ global2.a.x, ~(-1i), countOneBits(u_input.a.x)), 1i));
    global3 = array<Struct_1, 16>();
    var var_1 = Struct_2(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(-23071i);
}

