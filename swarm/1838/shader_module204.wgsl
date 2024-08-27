struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(4294967295u, 31968u);

var<private> global1: u32 = 0u;

var<private> global2: array<vec3<u32>, 15>;

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_1 {
    let var_0 = all(global4.a);
    let var_1 = Struct_1(!global3.a);
    let var_2 = true || !global4.a.x;
    let var_3 = var_1;
    global4 = var_3;
    return Struct_1(!select(select(!var_1.a, select(vec3<bool>(global4.a.x, var_3.a.x, true), global4.a, global4.a), false), var_3.a, var_1.a));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = func_2();
    var var_1 = !arg_2.a;
    let var_2 = func_2().a.zz;
    var var_3 = Struct_1(!global4.a);
    let var_4 = _wgslsmith_mult_u32(abs(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(0u, 2u)], u_input.b), vec4<u32>(4294967295u, 1u, 30795u, global0[_wgslsmith_index_u32(4294967295u, 2u)])) | u_input.e, 2u)]), countOneBits(u_input.d));
    return arg_3;
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    global4 = func_2();
    let var_0 = arg_2;
    global3 = arg_2;
    var var_1 = min(~countOneBits(_wgslsmith_mult_vec4_i32(~u_input.c, vec4<i32>(20978i, arg_0.x, -19716i, arg_0.x))), ~abs(vec4<i32>(-865i, ~(-2147483647i), 1523i, _wgslsmith_mult_i32(-43152i, arg_0.x))));
    var var_2 = vec4<i32>(abs(arg_0.x >> (4294967295u % 32u)), ~arg_0.x ^ -(~(-32328i)), countOneBits(var_1.x), 40237i);
    return abs(global2[_wgslsmith_index_u32(u_input.a, 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!global4.a);
    global2 = array<vec3<u32>, 15>();
    global1 = ~(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~3772u, 0u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 2u)], 2u)])), func_3(reverseBits(vec3<i32>(-1i, u_input.c.x, 0i)), _wgslsmith_f_op_f32(func_1(false, 337f, Struct_1(vec3<bool>(true, global4.a.x, false)), -1121f)), func_2())), 2u)]);
    var var_1 = 1f;
    global3 = Struct_1(!global3.a);
    let var_2 = abs(max(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(85133u, global0[_wgslsmith_index_u32(3011u, 2u)])), vec2<u32>(1u, 8833u)), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(global0[_wgslsmith_index_u32(34059u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)])))) | vec2<u32>(~734u, _wgslsmith_sub_u32(~u_input.d, ~20034u)));
    var_1 = -1163f;
    var var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1460f), _wgslsmith_f_op_f32(101f - 239f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(~u_input.c.zy, vec2<i32>(62873i, u_input.c.x)), reverseBits(~u_input.c.yy) >> (vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 2u)] ^ var_2.x, var_2.x) % vec2<u32>(32u))), reverseBits(firstLeadingBit(u_input.c)), u_input.c.x, -vec4<i32>(abs(abs(u_input.c.x)), abs(80882i), -1i, abs(1i | u_input.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1998f));
}

