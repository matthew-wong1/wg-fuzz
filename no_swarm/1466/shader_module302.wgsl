struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<i32>;

var<private> global2: Struct_3 = Struct_3(Struct_2(68400u, Struct_1(false, vec4<f32>(-1185f, -798f, 584f, -263f), vec3<u32>(0u, 89591u, 29650u), vec4<u32>(1230u, 30840u, 1u, 1u))), vec2<u32>(1u, 20167u));

var<private> global3: array<i32, 20>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    let var_0 = arg_1;
    global3 = array<i32, 20>();
    let var_1 = (vec3<i32>(-4990i, firstLeadingBit(global1.x), -23360i) << (u_input.a.zyw % vec3<u32>(32u))) & u_input.c.wxx;
    global0 = arg_0.b.x != 214f;
    let var_2 = Struct_3(global2.a, ~vec2<u32>(u_input.a.x, global2.b.x));
    return 31499u;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>) -> vec3<u32> {
    var var_0 = Struct_3(Struct_2(~_wgslsmith_div_u32(4294967295u & u_input.a.x, ~53366u), Struct_1(!(!global2.a.b.a), global2.a.b.b, global2.a.b.c, u_input.a)), vec2<u32>(4294967295u, u_input.a.x));
    global0 = !(!(!(~global1.x != ~11981i)));
    let var_1 = _wgslsmith_sub_vec3_u32(~global2.a.b.d.xzw, arg_1);
    let var_2 = Struct_3(Struct_2(arg_0.x, global2.a.b), vec2<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 62767u, arg_1.x, 8336u), vec4<u32>(0u, u_input.a.x, var_0.a.a, arg_0.x))), 1u));
    return var_0.a.b.d.xwz;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = Struct_1(true, vec4<f32>(arg_1.a.b.b.x, -897f, arg_1.a.b.b.x, _wgslsmith_f_op_f32(arg_1.a.b.b.x - _wgslsmith_f_op_f32(step(-796f, 672f)))), vec3<u32>(reverseBits(~0u), arg_0.a.b.d.x, _wgslsmith_mult_u32(arg_0.b.x, func_2(Struct_1(false, vec4<f32>(-1142f, -1123f, global2.a.b.b.x, 712f), vec3<u32>(13560u, arg_0.b.x, 5171u), vec4<u32>(1u, global2.a.b.d.x, 56090u, arg_0.b.x)), select(vec2<bool>(false, true), vec2<bool>(false, false), false)))), ~_wgslsmith_add_vec4_u32(max(select(vec4<u32>(5399u, global2.a.b.c.x, u_input.a.x, 0u), vec4<u32>(arg_0.b.x, 4234u, 57087u, 1u), vec4<bool>(false, arg_0.a.b.a, arg_1.a.b.a, global2.a.b.a)), vec4<u32>(0u, 4294967295u, arg_1.a.b.c.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a.a, 0u, 63382u, global2.a.b.d.x), vec4<u32>(u_input.a.x, 4294967295u, arg_0.a.b.c.x, 24175u) << (u_input.a % vec4<u32>(32u)))));
    let var_1 = vec3<u32>(4294967295u, abs(u_input.a.x), global2.a.a) | ~func_3(arg_0.a.b.d.zz, ~arg_1.a.b.d.zwy);
    let var_2 = _wgslsmith_f_op_f32(sign(2282f));
    var var_3 = arg_0.a.b.a;
    global2 = arg_1;
    return vec4<bool>(all(vec2<bool>(!all(vec4<bool>(var_0.a, arg_0.a.b.a, arg_1.a.b.a, global2.a.b.a)), var_0.a)), !arg_0.a.b.a, (u_input.c.x | 7303i) < ~reverseBits(u_input.c.x), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.c.zxz;
    var var_0 = Struct_1(false, global2.a.b.b, ~(~countOneBits(global2.a.b.d.wzz)), global2.a.b.d);
    let var_1 = select(u_input.c, _wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(~u_input.c, -vec4<i32>(u_input.c.x, global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(var_0.d.x, 20u)], 0i)), abs(vec4<i32>(1i, u_input.c.x, firstLeadingBit(u_input.c.x), u_input.c.x))), !select(!vec4<bool>(false, true, false, global2.a.b.a), !func_1(Struct_3(Struct_2(0u, Struct_1(var_0.a, vec4<f32>(var_0.b.x, 332f, global2.a.b.b.x, -178f), vec3<u32>(var_0.d.x, 13337u, global2.a.a), vec4<u32>(global2.b.x, 7875u, 4294967295u, 35792u))), vec2<u32>(40002u, u_input.a.x)), Struct_3(Struct_2(58306u, global2.a.b), var_0.d.xw)), !(!vec4<bool>(var_0.a, true, global2.a.b.a, true))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(var_0.d.x, ~(~1u), var_0.c.x, firstLeadingBit(u_input.a.x))), ~(~var_0.d ^ var_0.d));
}

