struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(-1i, 460f);

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(firstLeadingBit(arg_0.a), arg_0.b);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = u_input.b.x;
    global2 = array<Struct_1, 24>();
    var var_1 = ~abs(_wgslsmith_div_i32(arg_3.a.a >> (var_0 % 32u), 45978i)) & firstTrailingBit(global1.a);
    global0 = any(!select(vec4<bool>(true, false, -23870i <= global1.a, true), vec4<bool>(u_input.b.x > 72077u, true, true, all(vec3<bool>(false, true, false))), all(vec3<bool>(true, true, true))));
    let var_2 = 658f;
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = 45778u;
    global0 = true;
    global2 = array<Struct_1, 24>();
    let var_1 = func_3(Struct_1(arg_0.a, global1.b), _wgslsmith_f_op_f32(floor(global1.b)), -531f, Struct_2(arg_0, func_1(arg_0)));
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(1u, 24u)], Struct_1(u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -264f)));
    return 2054f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2[_wgslsmith_index_u32(abs(min(~51618u, 1u)) | _wgslsmith_mult_u32(~(~u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b)), 24u)]);
    let var_1 = true;
    var var_2 = global2[_wgslsmith_index_u32(52279u, 24u)];
    global1 = func_1(Struct_1(-(~u_input.c.x) | 2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], !vec2<bool>(false, var_1), true, -1i)), _wgslsmith_f_op_f32(round(var_2.b)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), -1302f, var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(586f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -253f))))));
    var_2 = func_1(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x)) << (_wgslsmith_dot_vec2_u32(reverseBits(countOneBits(vec2<u32>(3380u, 1u))), ~u_input.b) % 32u), 24u)]);
    global2 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(abs(vec4<i32>(global1.a, -85921i, 0i, -30484i) << (vec4<u32>(u_input.b.x, 4294967295u, 42194u, 1u) % vec4<u32>(32u)))), _wgslsmith_sub_i32(var_2.a, -1i));
}

