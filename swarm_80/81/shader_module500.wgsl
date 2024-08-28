struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: vec3<u32>;

var<private> global2: f32;

var<private> global3: array<u32, 32> = array<u32, 32>(52497u, 26811u, 128198u, 0u, 0u, 0u, 0u, 23552u, 34346u, 36647u, 0u, 0u, 4294967295u, 4294967295u, 1u, 0u, 1u, 4294967295u, 4294967295u, 21600u, 1u, 34550u, 6296u, 1u, 0u, 20775u, 31513u, 4294967295u, 4294967295u, 0u, 62521u, 61845u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = select(u_input.a.zy, countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.d), global1.xz, ~vec2<u32>(global1.x, global3[_wgslsmith_index_u32(global1.x, 32u)]))), true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f - -917f))))) + _wgslsmith_f_op_f32(sign(574f)));
    let var_2 = Struct_3(vec3<i32>(-12495i, -u_input.b.x, 10492i), Struct_1(102682u < var_0.x, true, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, _wgslsmith_div_f32(176f, var_1), _wgslsmith_div_f32(var_1, var_1))))), 0u, _wgslsmith_mult_vec2_u32(global1.xy, ~vec2<u32>(u_input.a.x, 0u) | var_0) >> (vec2<u32>(0u, 2060u) % vec2<u32>(32u)));
    let var_3 = var_2;
    let var_4 = Struct_1(true, var_2.b.b, _wgslsmith_f_op_vec3_f32(var_2.b.c - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_2.b.c, vec3<f32>(1449f, 1276f, var_1)))), var_2.b.c, var_2.b.b))));
    return abs(var_2.d);
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec4<bool>) -> vec3<i32> {
    var var_0 = Struct_3(-u_input.b.wzx, arg_1.d, 4294967295u, func_3());
    var var_1 = Struct_3(_wgslsmith_mod_vec3_i32(~(~u_input.b.zxy) | (vec3<i32>(2147483647i, 21929i, var_0.a.x) & -vec3<i32>(24106i, u_input.b.x, 2147483647i)), vec3<i32>(abs(1268i), arg_2.x, u_input.b.x)), var_0.b, global3[_wgslsmith_index_u32(~arg_0, 32u)], func_3());
    var var_2 = max(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.x, 7036u, var_0.d.x, var_1.c) ^ (vec4<u32>(33834u, global3[_wgslsmith_index_u32(0u, 32u)], 0u, 1u) >> (vec4<u32>(global1.x, 61774u, 19790u, global1.x) % vec4<u32>(32u))), vec4<u32>(arg_0, 1u, _wgslsmith_div_u32(104384u, 4294967295u), ~65200u))), ~_wgslsmith_sub_u32(abs(var_1.d.x), ~(~var_1.d.x)));
    let var_3 = _wgslsmith_mod_u32(~reverseBits(arg_0), global1.x);
    let var_4 = ~(~var_0.d.x);
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global0 = array<Struct_3, 4>();
    global3 = array<u32, 32>();
    let var_0 = -1451f;
    var var_1 = false;
    var var_2 = vec4<u32>(~reverseBits((61247u | u_input.d) >> (min(u_input.d, arg_1.d.x) % 32u)), u_input.a.x, 45591u, firstLeadingBit(48746u));
    return arg_0;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = -796f;
    let var_1 = arg_0;
    let var_2 = func_4(var_1.c, Struct_3(-firstLeadingBit(func_2(global1.x, arg_0, arg_1.a.xy, vec4<bool>(var_1.b, arg_1.b.a, false, true))), var_1.c, arg_1.d.x, vec2<u32>(abs(global1.x), max(25383u, 1u) | reverseBits(global3[_wgslsmith_index_u32(u_input.d, 32u)]))), Struct_1(!arg_0.b, arg_1.b.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0.a.c))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-566f, 1111f, arg_1.b.c.x) * var_1.a.c))))), 917f);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    var var_3 = (vec4<u32>(u_input.c, ~63483u, ~1u, global1.x) ^ min(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 24730u, 0u, 76876u), vec4<u32>(u_input.d, arg_1.c, 4294967295u, 1u)), vec4<u32>(3096u, u_input.c, 1u, 1u) ^ vec4<u32>(1u, u_input.a.x, arg_1.d.x, 80881u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c, 15436u, u_input.c, 21558u), vec4<u32>(0u, global1.x, u_input.c, 35335u)))) & ~_wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(4294967295u), ~arg_1.d.x, 1u, ~u_input.a.x), max(vec4<u32>(arg_1.c, u_input.a.x, 1u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c, 0u, 97586u, 16797u), vec4<u32>(1u, 33391u, global1.x, u_input.c))));
    return var_1.c.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3167f + 234f) + _wgslsmith_f_op_f32(2403f * -607f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-834f, -213f) - _wgslsmith_f_op_f32(f32(-1f) * -1940f)), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1538f) + -231f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(false, true, vec3<f32>(515f, 574f, 282f)), true, Struct_1(false, false, vec3<f32>(-1008f, 911f, -598f)), Struct_1(false, true, vec3<f32>(-102f, 625f, 333f))), global0[_wgslsmith_index_u32(4294967295u, 4u)], false)), _wgslsmith_f_op_f32(-202f - 1188f), false))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))), u_input.a);
}

