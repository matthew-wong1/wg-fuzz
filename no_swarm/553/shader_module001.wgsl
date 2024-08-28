struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 15>;

var<private> global2: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global3: array<f32, 5> = array<f32, 5>(-316f, 1971f, -520f, 961f, 249f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    let var_0 = all(select(select(vec2<bool>(false, u_input.d.x == u_input.d.x), arg_3.a.yy, vec2<bool>(true, true)), select(select(global0.a.zz, vec2<bool>(true, false), !global0.a.yw), vec2<bool>(true, true), any(global0.a.wz)), all(arg_3.a.zyy)));
    var var_1 = arg_3;
    global1 = array<vec3<f32>, 15>();
    var var_2 = Struct_1(!arg_3.a);
    var var_3 = u_input.c.x;
    return !(!all(vec3<bool>(global2.x <= u_input.a, global3[_wgslsmith_index_u32(0u, 5u)] < global3[_wgslsmith_index_u32(u_input.d.x, 5u)], true)));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = all(!global0.a);
    let var_1 = !vec4<bool>(any(vec2<bool>(false, true)), !func_2(false, u_input.c.x, u_input.d.yxz, Struct_1(global0.a)) | global0.a.x, -(~u_input.c.x) >= ~select(1i, u_input.c.x, true), true);
    global0 = Struct_1(var_1);
    let var_2 = true;
    let var_3 = vec2<f32>(-1090f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f)));
    return Struct_1(!var_1);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<u32> {
    let var_0 = vec2<u32>(~u_input.b.x, ~global2.x);
    let var_1 = arg_1;
    let var_2 = min(u_input.d.xyy, select(u_input.d.wyy, ~vec3<u32>(52366u, ~18631u, 0u), all(var_1.a) | func_1(abs(arg_2.x), 1u).a.x));
    let var_3 = func_1(55312u, ~(min(firstTrailingBit(var_0.x), u_input.d.x >> (global2.x % 32u)) >> (4294967295u % 32u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-arg_0);
    return ~countOneBits(_wgslsmith_div_vec3_u32(~var_2, var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.d.wz & ~reverseBits(vec2<u32>(u_input.e, 35262u)));
    global0 = Struct_1(global0.a);
    var var_1 = func_1(_wgslsmith_add_u32(82903u, 71715u | abs(~var_0.x)), ~abs(106288u));
    let var_2 = vec4<bool>(4294967295u > (0u & ~global2.x), true, true, func_2(global0.a.x, 32562i << ((global2.x << (50307u % 32u)) % 32u), func_3(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.x, 5u)]), global3[_wgslsmith_index_u32(~u_input.d.x, 5u)], _wgslsmith_div_f32(1024f, global3[_wgslsmith_index_u32(38572u, 5u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(42634u, global2.x, 24933u, 4294967295u)), 5u)]), Struct_1(global0.a), _wgslsmith_sub_vec2_u32(u_input.d.xw, vec2<u32>(global2.x, 37723u))), func_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global2.x, u_input.b.x), _wgslsmith_clamp_u32(var_0.x, u_input.b.x, global2.x), ~var_0.x), 98034u)));
    var var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.c.x) | vec4<i32>(-41262i, u_input.c.x, u_input.c.x, u_input.c.x)) >> (u_input.d % vec4<u32>(32u)), countOneBits(~vec4<i32>(u_input.c.x, u_input.c.x, 15159i, u_input.c.x))), u_input.d.yw);
}

