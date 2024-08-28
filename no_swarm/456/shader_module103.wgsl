struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 16576i);

var<private> global1: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_3(vec3<f32>(393f, -170f, -1000f), false, false)), Struct_4(Struct_3(vec3<f32>(291f, -786f, 466f), true, true)), Struct_4(Struct_3(vec3<f32>(793f, -267f, 2007f), false, false)), Struct_4(Struct_3(vec3<f32>(542f, 296f, -135f), true, false)), Struct_4(Struct_3(vec3<f32>(289f, 288f, 2216f), true, false)), Struct_4(Struct_3(vec3<f32>(-725f, -1466f, -1000f), true, true)), Struct_4(Struct_3(vec3<f32>(-419f, -337f, -262f), false, false)), Struct_4(Struct_3(vec3<f32>(-3125f, -1000f, 116f), false, false)), Struct_4(Struct_3(vec3<f32>(159f, -372f, -115f), false, true)), Struct_4(Struct_3(vec3<f32>(519f, -333f, -1318f), false, true)), Struct_4(Struct_3(vec3<f32>(-293f, -690f, -481f), false, false)), Struct_4(Struct_3(vec3<f32>(-157f, 1108f, 663f), true, true)), Struct_4(Struct_3(vec3<f32>(-864f, -2599f, 1000f), false, false)), Struct_4(Struct_3(vec3<f32>(1923f, 835f, 342f), false, true)), Struct_4(Struct_3(vec3<f32>(-1461f, 1590f, -1579f), false, true)), Struct_4(Struct_3(vec3<f32>(-804f, 1046f, 451f), true, true)), Struct_4(Struct_3(vec3<f32>(1000f, 1000f, 143f), true, false)), Struct_4(Struct_3(vec3<f32>(-1025f, 1000f, -413f), false, false)), Struct_4(Struct_3(vec3<f32>(-214f, 1380f, -1000f), true, false)), Struct_4(Struct_3(vec3<f32>(-1000f, -242f, -1390f), false, false)), Struct_4(Struct_3(vec3<f32>(-519f, -194f, 1665f), false, false)), Struct_4(Struct_3(vec3<f32>(-1356f, 360f, -199f), false, false)), Struct_4(Struct_3(vec3<f32>(1303f, 1000f, 1289f), true, true)), Struct_4(Struct_3(vec3<f32>(563f, 1084f, -380f), false, true)), Struct_4(Struct_3(vec3<f32>(-211f, 798f, -1133f), true, false)), Struct_4(Struct_3(vec3<f32>(-454f, -1467f, 1205f), true, true)), Struct_4(Struct_3(vec3<f32>(-782f, 482f, 580f), false, false)), Struct_4(Struct_3(vec3<f32>(-1107f, 465f, -312f), false, true)), Struct_4(Struct_3(vec3<f32>(311f, 1968f, -548f), true, true)), Struct_4(Struct_3(vec3<f32>(1639f, 732f, -210f), true, false)), Struct_4(Struct_3(vec3<f32>(-190f, 481f, 1349f), true, true)));

var<private> global2: u32;

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, -18723i, -8698i, -42396i);

var<private> global4: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = -835f;
    let var_1 = arg_0.a;
    var var_2 = -493f;
    let var_3 = u_input.c.x;
    global3 = countOneBits(-_wgslsmith_add_vec4_i32(vec4<i32>(-arg_2.c, ~u_input.b, u_input.b, _wgslsmith_div_i32(0i, 1i)), vec4<i32>(u_input.b, 55641i, max(arg_1.x, global0.x), ~global0.x)));
    return 1000f;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(212f, _wgslsmith_f_op_f32(select(786f, 762f, false)), _wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(vec3<f32>(-401f, -1000f, 511f), false, true)), global3.zwz, Struct_2(4294967295u, vec2<u32>(u_input.a.x, 65036u), global3.x, Struct_1(vec3<bool>(true, true, false), false, u_input.c.x, false))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(472f * 149f))))) <= 1134f, !(!(!(u_input.c.x > u_input.a.x))));
    var var_1 = 68177u;
    var var_2 = global1[_wgslsmith_index_u32(u_input.c.x, 31u)];
    global0 = global3.yx;
    let var_3 = global3.x;
    return StorageBuffer(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(u_input.c), vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, 4294967295u)), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = 1u;
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~29773u, 29464u, 46098u), u_input.c.x), 31u)];
    var var_1 = 1494f;
    var var_2 = var_0.a.c;
    var var_3 = false;
    global1 = array<Struct_4, 31>();
    let x = u_input.a;
    s_output = func_1();
}

