struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<i32> = vec4<i32>(0i, 1i, 35303i, 27130i);

var<private> global2: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-1308f, 600f, -454f), vec3<f32>(134f, 260f, 1371f), vec3<f32>(458f, -727f, 282f), vec3<f32>(1316f, -604f, -1360f), vec3<f32>(-2008f, -1708f, 475f), vec3<f32>(1000f, -543f, -912f), vec3<f32>(2123f, -276f, 495f), vec3<f32>(-2005f, 1431f, -266f), vec3<f32>(168f, 998f, -207f), vec3<f32>(-1000f, -334f, 440f), vec3<f32>(798f, -750f, 963f), vec3<f32>(-1330f, 343f, 705f), vec3<f32>(469f, 536f, -189f), vec3<f32>(693f, -478f, 1425f), vec3<f32>(-600f, 972f, -1613f), vec3<f32>(-395f, 1556f, 1750f), vec3<f32>(-2067f, -103f, 984f), vec3<f32>(671f, 870f, -485f), vec3<f32>(-1059f, -820f, -1357f), vec3<f32>(1652f, 903f, -844f), vec3<f32>(1225f, -691f, -165f), vec3<f32>(-662f, 384f, 121f), vec3<f32>(-353f, 723f, -1000f), vec3<f32>(-269f, -127f, -512f), vec3<f32>(1854f, -524f, -393f), vec3<f32>(2220f, 370f, -1763f), vec3<f32>(-580f, 306f, 257f), vec3<f32>(-718f, 229f, 1057f));

var<private> global3: Struct_2 = Struct_2(Struct_1(21058u, false), true, 1u);

var<private> global4: array<bool, 9> = array<bool, 9>(true, true, true, true, false, false, true, false, true);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    global2 = array<vec3<f32>, 28>();
    let var_0 = Struct_2(Struct_1(20455u, !(-2144f <= _wgslsmith_f_op_f32(step(1251f, 971f)))), -2147483647i == u_input.a, u_input.c.x);
    let var_1 = 663f;
    global1 = -(vec4<i32>(-1i) * -(_wgslsmith_sub_vec4_i32(vec4<i32>(29432i, -2147483647i, u_input.a, -2147483647i), vec4<i32>(1i, u_input.d.x, -2147483647i, -10614i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, global1.x, u_input.a, -54989i), vec4<i32>(-1i, 1i, 16089i, global1.x))));
    var var_2 = u_input.d.yy;
    return !(!(!(!vec3<bool>(arg_0.b, true, arg_0.a.b))));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(global3.a, -56471i >= -global1.x, ~25792u);
    var var_1 = u_input.d & _wgslsmith_div_vec3_i32(~global1.yxy, global1.ywx);
    return var_0.c;
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(global0.a.a, !all(select(vec2<bool>(global3.a.b, global3.a.b), vec2<bool>(false, global4[_wgslsmith_index_u32(global0.c, 9u)]), false))), false, global0.c);
    global2 = array<vec3<f32>, 28>();
    global2 = array<vec3<f32>, 28>();
    var var_1 = vec4<i32>(select(global1.x, i32(-1i) * -global1.x, true), firstLeadingBit(firstLeadingBit(29250i)), 5083i, 33543i);
    var var_2 = global3.a;
    return ~_wgslsmith_add_u32(12435u, 43179u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(!func_1(Struct_2(global0.a, true, global0.c)), select(vec3<bool>(true, !global4[_wgslsmith_index_u32(1u, 9u)], true), vec3<bool>(global3.a.b, global0.b && global0.a.b, true), vec3<bool>(true, all(vec3<bool>(global4[_wgslsmith_index_u32(70529u, 9u)], global0.a.b, global4[_wgslsmith_index_u32(0u, 9u)])), func_1(Struct_2(global0.a, global0.a.b, 0u)).x)), any(!func_1(Struct_2(global3.a, true, u_input.b)).xy)));
    let var_1 = Struct_1(func_2(), global3.a.a == ~global3.a.a);
    var var_2 = vec2<bool>(997f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2071f, -710f)) * _wgslsmith_f_op_f32(443f - -1270f)))), global4[_wgslsmith_index_u32(~(~u_input.c.x), 9u)] && select(global3.b, var_0 || true, true || global0.a.b));
    var var_3 = _wgslsmith_mod_i32(u_input.d.x, _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -39914i, 1763i, -2147483647i), vec4<i32>(u_input.a, global1.x, u_input.a, -2147483647i))), 1i) >> (func_3() % 32u));
    var var_4 = global3.a;
    var var_5 = false;
    global4 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(5287u, u_input.a, -2147483647i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1334f, -1064f, -1671f, -2126f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1121f, 151f, -887f, 1676f)))))))));
}

