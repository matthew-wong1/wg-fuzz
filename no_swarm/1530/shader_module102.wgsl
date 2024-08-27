struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

var<private> global3: array<vec2<bool>, 23>;

var<private> global4: f32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    global3 = array<vec2<bool>, 23>();
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(global0.a, global0.a, select(vec3<bool>(!global1.b, true, any(vec2<bool>(true, global1.b))), !select(vec3<bool>(false, false, global1.b), vec3<bool>(true, global1.b, global1.b), global1.b), vec3<bool>(true, true, true)))));
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.a), vec3<f32>(776f, 2581f, -904f))));
    var var_1 = Struct_1(-2147483647i ^ ~(~u_input.a.x), true, ~firstTrailingBit(global2.yzw));
    var_1 = Struct_1(~firstTrailingBit(~(~11571i)), var_1.b, _wgslsmith_add_vec3_u32(global2.wzy, var_1.c));
    return all(vec4<bool>(all(!global3[_wgslsmith_index_u32(1u, 23u)]), false & global1.b, !var_1.b | !all(vec4<bool>(global1.b, var_1.b, true, global1.b)), true));
}

fn func_2() -> Struct_2 {
    var var_0 = select(vec3<bool>(true, !select(global2.x >= 30121u, !global1.b, func_3()), true), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(global1.b, global1.b, true), global1.b))), !(!vec3<bool>(all(vec3<bool>(false, false, global1.b)), false, false)));
    let var_1 = firstLeadingBit(~select(-vec4<i32>(global1.a, -1i, global1.a, 2147483647i), ~(~vec4<i32>(u_input.a.x, -49949i, 1i, 14637i)), countOneBits(9265u) >= global1.c.x));
    var_0 = vec3<bool>(global1.b, global1.b, true);
    global3 = array<vec2<bool>, 23>();
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(-1046f, 426f, _wgslsmith_f_op_f32(1259f - 296f)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<bool>) -> u32 {
    global0 = func_2();
    return max(u_input.b, global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(global0.a.zx + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.xy * global0.a.xy) * _wgslsmith_f_op_vec2_f32(global0.a.yz - _wgslsmith_f_op_vec2_f32(min(global0.a.zz, vec2<f32>(global0.a.x, -1029f))))))));
    let var_1 = u_input.a.x;
    let var_2 = -(~_wgslsmith_div_vec4_i32(vec4<i32>(global1.a, i32(-1i) * -2147483647i, -global1.a, 2147483647i), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a, 2147483647i, u_input.a.x, 40976i), vec4<i32>(38611i, 2147483647i, global1.a, global1.a)), vec4<i32>(43228i, u_input.a.x, var_1, 1i))));
    global3 = array<vec2<bool>, 23>();
    var var_3 = ~_wgslsmith_mult_u32(25495u, min(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1773f, 300f, var_0.x)), var_0.x, vec4<bool>(false, global1.b, global1.b, global1.b)), 4294967295u));
    global4 = _wgslsmith_f_op_f32(-1922f + global0.a.x);
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_0.x, abs(-2147483647i), _wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, 0u) << (vec3<u32>(76903u, global2.x, 20048u) % vec3<u32>(32u))), vec3<u32>(abs(~47526u), max(0u, var_4), var_4)));
}

