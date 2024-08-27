struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(false, -1000f), Struct_2(true, 1000f), Struct_2(false, -566f), Struct_2(false, -339f), Struct_2(false, 1302f), Struct_2(true, -544f), Struct_2(false, 331f), Struct_2(false, 1368f), Struct_2(false, 460f), Struct_2(true, -421f), Struct_2(true, -1174f), Struct_2(false, -399f), Struct_2(false, -1812f), Struct_2(false, -1372f), Struct_2(true, 813f), Struct_2(false, -986f));

var<private> global2: Struct_2;

var<private> global3: Struct_2;

var<private> global4: Struct_2 = Struct_2(false, -591f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-603f, _wgslsmith_f_op_f32(ceil(global4.b))))));
    let var_1 = u_input.a;
    return ~u_input.d;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: u32) -> u32 {
    global4 = Struct_2(false, _wgslsmith_f_op_f32(-1000f + -863f));
    global4 = global1[_wgslsmith_index_u32(~(arg_3 & arg_3), 16u)];
    global3 = global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.d.x), 26u)];
    global4 = global0[_wgslsmith_index_u32(arg_3 & arg_3, 26u)];
    var var_0 = arg_0;
    return 50356u;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec4<u32>) -> bool {
    global0 = array<Struct_2, 26>();
    let var_0 = ~vec2<u32>(~(func_3(Struct_3(-12777i), 2147483647i, global2.a, arg_2.x) << (_wgslsmith_div_u32(41719u, arg_2.x) % 32u)), u_input.d.x);
    global1 = array<Struct_2, 16>();
    let var_1 = arg_0;
    global0 = array<Struct_2, 26>();
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<bool>(false, global3.a));
    let var_1 = vec3<bool>(true, any(!select(vec3<bool>(global3.a, global4.a, global2.a), vec3<bool>(global2.a, global4.a, true), true)) && func_2(Struct_3(max(u_input.a, 28668i)), vec3<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, -1i), -2147483647i >> (var_0.x % 32u), ~u_input.a), select(vec4<u32>(4294967295u, 24372u, 4294967295u, var_0.x) >> (vec4<u32>(u_input.b.x, 1u, 1u, u_input.e) % vec4<u32>(32u)), select(vec4<u32>(var_0.x, var_0.x, 1238u, u_input.b.x), vec4<u32>(0u, 82956u, 17868u, 0u), true), vec4<bool>(false, false, true, false))), u_input.a > max(u_input.a, u_input.a));
    var var_2 = u_input.a;
    var_2 = (_wgslsmith_div_i32(34708i << (var_0.x % 32u), u_input.a) & u_input.a) & -19737i;
    global2 = Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1741f) * 101f)));
    let var_3 = vec4<i32>(u_input.a, -24989i, 26595i, ~(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -6088i, u_input.a), vec3<i32>(u_input.a, u_input.a, 13885i)), u_input.a, u_input.a << (17638u % 32u))));
    var var_4 = global0[_wgslsmith_index_u32(firstLeadingBit(~firstTrailingBit(var_0.x)), 26u)];
    let var_5 = global3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, global2.b) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(423f, global2.b), vec2<f32>(376f, global3.b), var_1.zy))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(274f, global2.b), vec2<f32>(-1000f, -759f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, -247f)), var_4.a)))), ~abs(abs(u_input.b.zx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.b, global2.b))));
}

