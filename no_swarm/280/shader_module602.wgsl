struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(1397f, -1421f, -191f, -1309f, -1094f, 1000f, -118f, -168f, 812f, 1121f, 1000f, 431f, 187f, -1507f, -2101f, -203f, -1569f, 1000f, -1316f, -1000f, -296f, 315f, -1000f, 1061f, -872f, -698f, 1085f);

var<private> global1: array<u32, 13> = array<u32, 13>(1u, 4294967295u, 4294967295u, 1u, 1u, 4294967295u, 0u, 7578u, 3531u, 4294967295u, 101990u, 4294967295u, 8563u);

var<private> global2: array<Struct_1, 32>;

var<private> global3: array<vec2<i32>, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: u32) -> u32 {
    global3 = array<vec2<i32>, 17>();
    global2 = array<Struct_1, 32>();
    var var_0 = true;
    let var_1 = true;
    let var_2 = global2[_wgslsmith_index_u32(1u, 32u)];
    return u_input.a.x >> (u_input.a.x % 32u);
}

fn func_2(arg_0: Struct_5, arg_1: u32, arg_2: Struct_2) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.x, 8868u, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(arg_0.b.x, 13u)], arg_2.a.a.x, arg_1)), _wgslsmith_sub_vec3_u32(vec3<u32>(24003u, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec3<u32>(arg_2.b.a.x, 8415u, u_input.a.x))), _wgslsmith_add_vec3_u32(arg_0.a.b.a.yww, ~vec3<u32>(arg_1, arg_2.b.a.x, arg_2.d.a.x))) | (arg_0.b.x ^ ~(arg_2.d.a.x << (arg_0.b.x % 32u))), 16994u), 13u)], 27u)];
    var var_1 = ~select(~vec2<u32>(1u, 1u), ~(vec2<u32>(arg_2.d.a.x, 56820u) >> (vec2<u32>(arg_0.b.x, arg_2.d.a.x) % vec2<u32>(32u))) & u_input.a.zx, arg_2.a.b.zy);
    var var_2 = Struct_3(arg_2, arg_0.a.b);
    global0 = array<f32, 27>();
    let var_3 = var_2.a;
    return ~var_3.a.a.x;
}

fn func_3() -> vec3<bool> {
    let var_0 = select(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.a.x), firstTrailingBit(_wgslsmith_div_vec2_u32(u_input.a.yz, vec2<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], ~u_input.a.x))), select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), true), vec2<bool>(any(vec2<bool>(true, true)), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(53205u, 13u)], 5593u) <= global1[_wgslsmith_index_u32(1u, 13u)]), !any(vec2<bool>(true, true))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 28632u, u_input.a.x, 1u), ~vec4<u32>(0u, var_0.x, var_0.x, var_0.x)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 53313u, u_input.a.x, u_input.a.x), vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 8973u), vec4<u32>(u_input.a.x, var_0.x, 0u, 21117u)), ~vec4<u32>(17146u, 57151u, u_input.a.x, var_0.x))), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), true)), global2[_wgslsmith_index_u32(~(33155u ^ ~u_input.a.x), 32u)], select(vec3<bool>(true, true, true), vec3<bool>(~var_0.x < 1u, true, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 27u)]) != _wgslsmith_f_op_f32(step(-172f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 27u)]))), !all(vec3<bool>(true, true, true))), global2[_wgslsmith_index_u32(48779u & _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(8911u, u_input.a.x), vec2<u32>(21315u, 1u)), ~0u), 32u)]);
    var var_2 = var_1.d.a.x >> (~_wgslsmith_sub_u32(~_wgslsmith_sub_u32(var_1.a.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), abs(abs(4294967295u))) % 32u);
    global0 = array<f32, 27>();
    let var_3 = Struct_1(select(var_1.a.a | vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, 1893u, 11021u), u_input.a.x, min(var_0.x, 2890u), firstLeadingBit(50324u)), var_1.a.a, (all(vec2<bool>(true, var_1.c.x)) & true) || true), !(!var_1.c));
    return select(vec3<bool>(true, any(!vec3<bool>(false, var_3.b.x, var_3.b.x)), false), vec3<bool>(true && var_3.b.x, true, true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(min(vec4<u32>(abs(reverseBits(u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 13u)])), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(func_1(18255u), ~u_input.a.x), 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), _wgslsmith_add_vec4_u32(vec4<u32>(func_2(Struct_5(Struct_4(vec4<u32>(72606u, 4294967295u, 50866u, 4294967295u), Struct_1(vec4<u32>(0u, 29476u, global1[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a.x), vec3<bool>(false, false, true))), u_input.a.yx), global1[_wgslsmith_index_u32(11919u, 13u)], Struct_2(Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(27646u, 13u)], 12787u, 27910u, 7912u), vec3<bool>(false, true, false)), Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(49297u, 13u)], 30249u, u_input.a.x, 1u), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(u_input.a.x, 32u)])), u_input.a.x >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)] % 32u), global1[_wgslsmith_index_u32(119531u, 13u)] & 0u, reverseBits(1u)), ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 1u, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 47818u))));
    var var_1 = Struct_2(Struct_1(abs(~(vec4<u32>(u_input.a.x, var_0.x, 13830u, var_0.x) | vec4<u32>(var_0.x, 45493u, 69756u, 4294967295u))), !func_3()), global2[_wgslsmith_index_u32(u_input.a.x, 32u)], vec3<bool>(true, true, true), Struct_1(max(vec4<u32>(var_0.x, 22834u, 89763u, 33520u) << (vec4<u32>(var_0.x, 0u, global1[_wgslsmith_index_u32(var_0.x, 13u)], 1u) % vec4<u32>(32u)), select(vec4<u32>(var_0.x, var_0.x, u_input.a.x, global1[_wgslsmith_index_u32(var_0.x, 13u)]), vec4<u32>(global1[_wgslsmith_index_u32(8074u, 13u)], u_input.a.x, 4294967295u, 1u), false)) << (firstTrailingBit(vec4<u32>(46178u, 12698u, 1u, 0u)) % vec4<u32>(32u)), select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), func_3())));
    var_0 = vec4<u32>(min(22316u, 0u), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(min(~4294967295u, 1u), 13u)], 1u), _wgslsmith_dot_vec4_u32(~var_1.d.a, var_1.b.a), var_0.x);
    var var_2 = Struct_3(Struct_2(var_1.b, var_1.d, !select(select(vec3<bool>(true, false, true), vec3<bool>(true, var_1.d.b.x, var_1.c.x), true), var_1.b.b, true), global2[_wgslsmith_index_u32(var_0.x, 32u)]), var_1.a);
    var var_3 = Struct_3(Struct_2(Struct_1(~var_2.b.a, func_3()), global2[_wgslsmith_index_u32(var_0.x, 32u)], select(vec3<bool>(!var_1.b.b.x, false, true), var_1.b.b, all(func_3())), var_1.b), var_1.a);
    let var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~select(_wgslsmith_sub_u32(var_2.b.a.x, 1u), 52481u, true), -972f, ~select((u_input.a.yz | vec2<u32>(4294967295u, 64004u)) | firstLeadingBit(vec2<u32>(23283u, var_2.a.b.a.x)), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, 24612u), ~var_2.a.b.a.yy), select(func_3().yy, var_4.d.b.xz, select(vec2<bool>(false, var_1.c.x), vec2<bool>(var_3.b.b.x, var_4.b.b.x), vec2<bool>(false, false)))));
}

