struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(1167f, -1621f, 532f, -1062f), vec4<f32>(-1567f, 1619f, 363f, 1347f), vec4<f32>(-826f, -553f, -1301f, -620f), vec4<f32>(1260f, -423f, 132f, 749f), vec4<f32>(-1008f, 803f, -1000f, 413f), vec4<f32>(-1003f, -820f, 242f, 784f), vec4<f32>(989f, 217f, 133f, 842f), vec4<f32>(946f, 711f, -1000f, 2296f), vec4<f32>(-167f, 1000f, 2488f, -1000f), vec4<f32>(822f, -310f, 871f, 1008f), vec4<f32>(-423f, 542f, 973f, -2051f), vec4<f32>(-1157f, 1912f, -301f, -767f), vec4<f32>(247f, 810f, 543f, 344f), vec4<f32>(941f, -156f, 171f, 520f), vec4<f32>(1349f, 1816f, 1000f, 789f), vec4<f32>(1225f, -653f, 999f, 800f), vec4<f32>(-1277f, -1742f, -1072f, 120f), vec4<f32>(-169f, -1010f, 365f, -2226f), vec4<f32>(1000f, 945f, -778f, 547f), vec4<f32>(-343f, 1629f, -258f, 625f), vec4<f32>(2247f, -149f, 499f, 895f), vec4<f32>(-538f, -1503f, 1148f, 517f), vec4<f32>(-423f, 590f, -1102f, -173f), vec4<f32>(1000f, -147f, -237f, 205f), vec4<f32>(363f, 717f, 138f, 677f), vec4<f32>(-174f, -124f, -224f, 2214f), vec4<f32>(-1000f, 211f, -430f, -1311f), vec4<f32>(151f, -663f, 1238f, 245f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> bool {
    return true;
}

fn func_3(arg_0: vec4<f32>) -> vec3<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f) * _wgslsmith_f_op_f32(f32(-1f) * -320f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -536f))))), 1092f);
    return arg_0.zzx;
}

fn func_1() -> Struct_2 {
    var var_0 = true;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -283f)))) + 2188f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(279f)) + 318f);
    let var_1 = ~u_input.b.xz;
    let var_2 = vec4<i32>(~47645i, -22492i, -20637i, 1i << (1u % 32u));
    var_0 = func_2();
    return Struct_2(Struct_1(u_input.e, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e, u_input.d), 28u)])))), max(~u_input.d, 1u)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(max(1f, -1699f)), _wgslsmith_f_op_f32(min(-1431f, _wgslsmith_f_op_f32(sign(918f))))), _wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_f_op_f32(f32(-1f) * -1016f), -1127f, -1759f))).yz)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_div_vec3_i32(select(u_input.c, u_input.b.wxz, true == (arg_0.a.b.x < 775f)), firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.c.x), u_input.c.x, -u_input.a))), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(12528u, 0u), vec2<u32>(1u, u_input.e), true), vec2<u32>(u_input.e, 3566u)), reverseBits(max(vec2<u32>(13563u, arg_0.a.a), vec2<u32>(u_input.d, arg_0.a.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1582f, 1000f, 445f), arg_0.a.b, vec3<bool>(true, false, true))))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.e, 13292u, 21696u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.e, 9722u, arg_0.a.c), vec4<u32>(0u, u_input.d, 1199u, 0u))), 1u)));
    let var_1 = Struct_1(u_input.d, vec3<f32>(_wgslsmith_f_op_f32(var_0.b.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.a.b.x)))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(1u, 28u)])))).x, _wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.a.a);
    global0 = array<vec4<f32>, 28>();
    let var_2 = func_1().a;
    global0 = array<vec4<f32>, 28>();
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(func_1()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-170f, 344f))))))));
    global0 = array<vec4<f32>, 28>();
    global0 = array<vec4<f32>, 28>();
    var var_1 = ~u_input.e;
    var var_2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(floor(var_2.b.x))))));
}

