struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 25550i;

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, false, true, true));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, true, true, false)));

var<private> global4: array<bool, 3>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-746f, 470f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    var var_1 = ~(~_wgslsmith_mult_vec2_u32(min(reverseBits(vec2<u32>(u_input.a, 110479u)), ~vec2<u32>(4294967295u, 45218u)), vec2<u32>(1u, ~u_input.a)));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, firstTrailingBit(u_input.a)), 4u)];
    var_1 = vec2<u32>(var_1.x, ~u_input.a);
    var var_3 = global4[_wgslsmith_index_u32(var_1.x, 3u)];
    global4 = array<bool, 3>();
    global3 = array<Struct_1, 4>();
    let var_4 = global3[_wgslsmith_index_u32(u_input.a, 4u)];
    var var_5 = ~(~abs(vec2<u32>(0u, 1u) << (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(9056u, var_1.x)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0, 1i, 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2560f, 1000f)) + _wgslsmith_f_op_f32(548f - -1000f)), 259f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0, global3[_wgslsmith_index_u32(46359u, 4u)], global2.a.x, Struct_1(vec4<bool>(false, true, true, true))))))), vec4<u32>(11008u, ~0u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~12840u, ~4023u), var_5.x), 0u));
}

