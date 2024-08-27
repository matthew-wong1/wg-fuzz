struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<vec2<i32>, 17>;

var<private> global2: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(44575u, 1u), vec2<u32>(5225u, 0u), vec2<u32>(93214u, 23579u), vec2<u32>(28292u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(5780u, 1u), vec2<u32>(0u, 1u), vec2<u32>(57209u, 11716u), vec2<u32>(34989u, 4294967295u), vec2<u32>(23889u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 30811u), vec2<u32>(9822u, 7937u), vec2<u32>(18307u, 67u), vec2<u32>(32636u, 21206u), vec2<u32>(44618u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 22941u), vec2<u32>(1u, 1u), vec2<u32>(39957u, 646u), vec2<u32>(4294967295u, 9263u), vec2<u32>(42963u, 4294967295u), vec2<u32>(19042u, 8086u), vec2<u32>(83346u, 0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> bool {
    global0 = array<Struct_1, 13>();
    return arg_0.d;
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 13>();
    global2 = array<vec2<u32>, 24>();
    global0 = array<Struct_1, 13>();
    global2 = array<vec2<u32>, 24>();
    var var_0 = u_input.b.x;
    return Struct_2(global2[_wgslsmith_index_u32(u_input.a, 24u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(411f, -332f, -1068f, -397f) - vec4<f32>(-1753f, 695f, 1071f, -1557f))))), global0[_wgslsmith_index_u32(0u, 13u)], !(true | func_2(Struct_2(global2[_wgslsmith_index_u32(u_input.a, 24u)], vec4<f32>(-2353f, -448f, -1621f, 680f), global0[_wgslsmith_index_u32(u_input.c, 13u)], false), vec4<f32>(477f, -1000f, 1000f, 634f))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global2 = array<vec2<u32>, 24>();
    return _wgslsmith_f_op_f32(-arg_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = abs(~(-3607i));
    let var_2 = global2[_wgslsmith_index_u32(u_input.c, 24u)];
    var var_3 = func_1();
    global2 = array<vec2<u32>, 24>();
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.b.zxx * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-109f, var_3.b.x, -2100f)) + vec3<f32>(var_3.b.x, var_3.b.x, var_3.b.x)))));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.b.x)) + _wgslsmith_f_op_f32(select(func_1().b.x, _wgslsmith_f_op_f32(func_3(Struct_2(var_3.a, var_3.b, func_1().c, var_3.d))), !var_3.d)));
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(u_input.a, 0u, var_2.x, var_2.x))), _wgslsmith_sub_vec2_u32(vec2<u32>(9425u, _wgslsmith_div_u32(max(var_3.a.x, 10690u), _wgslsmith_sub_u32(var_2.x, 11758u))), ~global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(58258u, u_input.c)), 24u)]), ~var_3.c.d);
}

