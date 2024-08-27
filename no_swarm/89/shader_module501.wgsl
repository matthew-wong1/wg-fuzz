struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1769f, 839f, 257f);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1326f), Struct_1(214f), Struct_1(-232f), Struct_1(631f), Struct_1(-207f), Struct_1(726f), Struct_1(-1068f), Struct_1(178f), Struct_1(662f), Struct_1(893f), Struct_1(-1307f), Struct_1(-1116f), Struct_1(1000f), Struct_1(-1472f), Struct_1(673f), Struct_1(702f), Struct_1(-643f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1227f, global0.x, 1053f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(264f, -502f, global0.x), vec3<f32>(global0.x, global0.x, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), global0.x, -865f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2195f, global0.x, 768f), vec3<f32>(-652f, 489f, -370f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))));
    let var_0 = _wgslsmith_f_op_f32(-800f * _wgslsmith_f_op_f32(1332f + global0.x));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(~u_input.b.x), ~(u_input.b.x << (~max(u_input.b.x, u_input.b.x) % 32u))), 17u)];
    var var_2 = !vec2<bool>(true, !(!all(vec4<bool>(true, true, true, false))));
    var var_3 = Struct_1(-1655f);
    return abs(-1i);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(-func_3(), global1[_wgslsmith_index_u32(~(u_input.b.x << (_wgslsmith_dot_vec4_u32(~vec4<u32>(54321u, 4702u, u_input.b.x, 1u), vec4<u32>(56136u, 7898u, 13247u, 34550u)) % 32u)), 17u)], global1[_wgslsmith_index_u32(arg_0.x, 17u)], select(1i != u_input.c.x, any(vec3<bool>(true, true, true)), !all(vec2<bool>(true, true))));
    let var_1 = var_0.d;
    var var_2 = u_input.c;
    global1 = array<Struct_1, 17>();
    let var_3 = global1[_wgslsmith_index_u32(arg_0.x, 17u)];
    return Struct_1(var_0.b.a);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = ~(_wgslsmith_clamp_vec2_u32(~vec2<u32>(10609u, 5467u), u_input.b, vec2<u32>(~u_input.b.x, ~0u)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), (vec2<u32>(38805u, u_input.b.x) ^ vec2<u32>(u_input.b.x, u_input.b.x)) & vec2<u32>(44580u, 1u)) % vec2<u32>(32u)));
    let var_1 = func_2(firstLeadingBit(vec2<u32>(~1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, var_0.x), var_0.x))));
    let var_2 = Struct_1(1839f);
    var_0 = _wgslsmith_sub_vec2_u32(countOneBits(u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(1u, ~_wgslsmith_div_u32(1u, u_input.b.x)), select(~min(vec2<u32>(1u, u_input.b.x), vec2<u32>(u_input.b.x, 44274u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(var_0.x, 0u, 6163u)), u_input.b.x), -arg_0 > ~(-2147483647i))));
    let var_3 = ~u_input.b.x;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(2147483647i, global1[_wgslsmith_index_u32(firstTrailingBit(~1u), 17u)], func_1(u_input.a.x), any(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), any(vec4<bool>(true, true, false, false)) && (u_input.c.x > u_input.c.x), true)));
    var_0 = Struct_2(_wgslsmith_mod_i32(firstTrailingBit(24641i), min(8035i, u_input.c.x)) & u_input.c.x, func_1(var_0.a), func_2(vec2<u32>(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_sub_u32(4294967295u, ~u_input.b.x))), true);
    var var_1 = func_2(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(21743u, ~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, 0u, 120388u) ^ vec3<u32>(4294967295u, 44898u, 0u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + 397f))))))), ~(abs(~vec4<u32>(60286u, u_input.b.x, 4294967295u, 0u)) ^ vec4<u32>(abs(u_input.b.x), abs(u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x)));
}

