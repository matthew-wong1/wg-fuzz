struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(false);

var<private> global4: array<Struct_1, 25>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    global2 = Struct_1(true);
    return Struct_1(any(vec4<bool>(global3.a, true, true, true)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    global3 = Struct_1(true);
    let var_0 = u_input.d.www;
    var var_1 = vec3<u32>(4625u, 10470u, u_input.e);
    global0 = array<vec4<f32>, 3>();
    var var_2 = _wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(1u, 3u)]));
    return 2783u;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(true);
    var var_1 = ~_wgslsmith_div_i32(u_input.d.x, countOneBits(reverseBits(22835i)));
    var var_2 = i32(-1i) * -u_input.a;
    global2 = func_2();
    global1 = Struct_1(arg_1.a);
    return select(!select(select(!vec4<bool>(true, global3.a, false, false), vec4<bool>(false, false, false, true), true), !(!vec4<bool>(false, global2.a, global2.a, true)), global3.a), select(!vec4<bool>(!var_0.a, global2.a, any(vec3<bool>(global3.a, arg_2.a, arg_1.a)), true), vec4<bool>(true, !any(vec4<bool>(true, true, global1.a, global1.a)), !var_0.a & select(global1.a, false, global1.a), global2.a), vec4<bool>(global2.a, true, !global1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -22319i, 4806i, 79730i), u_input.d) < u_input.a)), abs(_wgslsmith_sub_i32(54392i, -903i >> (u_input.b % 32u))) >= ~(abs(-30839i) ^ u_input.d.x));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = arg_0.x;
    global2 = Struct_1(false);
    let var_1 = select(!(!(!(!vec4<bool>(false, false, global2.a, global1.a)))), vec4<bool>(false, all(vec2<bool>(true, false)), all(vec2<bool>(false, global2.a)) | (true != any(vec4<bool>(global2.a, false, global1.a, global1.a))), all(!vec4<bool>(global2.a, false, global3.a, global1.a))), !(!vec4<bool>(true, global1.a, global3.a, true & global1.a)));
    var var_2 = select(select(!select(var_1.xw, var_1.xy, any(var_1.wy)), vec2<bool>(select(false & global3.a, true, !global1.a), true), all(func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.c.x), vec3<u32>(0u, 46175u, 0u)), func_2(), global4[_wgslsmith_index_u32(func_3(Struct_1(global2.a), -14790i), 25u)]))), vec2<bool>(false, var_1.x), any(!var_1.zzw));
    var var_3 = Struct_1(!(!(!(global3.a | true))));
    return ~u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(44258u | ~func_1(u_input.d)) >> (u_input.c.x % 32u);
    global2 = global4[_wgslsmith_index_u32(4294967295u, 25u)];
    global3 = global4[_wgslsmith_index_u32(~var_0, 25u)];
    var var_1 = global4[_wgslsmith_index_u32(u_input.c.x, 25u)];
    global4 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.d.x, u_input.d.x), _wgslsmith_add_vec4_i32(-vec4<i32>(-1i, u_input.d.x, u_input.d.x, 1i), ~(-select(vec4<i32>(u_input.d.x, 1i, 32446i, 1952i), vec4<i32>(u_input.d.x, -10863i, u_input.d.x, u_input.d.x), vec4<bool>(global3.a, global3.a, false, false)))));
}

