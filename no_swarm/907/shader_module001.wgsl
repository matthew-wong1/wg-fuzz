struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<bool>(true, true, false), true, 2147483647i, true);

var<private> global1: Struct_1;

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global3: array<f32, 17>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = arg_1;
    global1 = Struct_1(arg_2.b.x, var_0.b, arg_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(~var_0.d, 13759i & var_0.d, firstTrailingBit(2147483647i), 1i), vec4<i32>(abs(1i), reverseBits(var_0.d), global1.d, 1375i | var_0.d)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(~51283u, _wgslsmith_dot_vec3_u32(u_input.b.wyx, vec3<u32>(1u, 1u, arg_3)), 1u), reverseBits(_wgslsmith_clamp_vec3_u32(u_input.b.wyw, u_input.b.xyw, vec3<u32>(8793u, 0u, u_input.a)))) % 32u), true);
    let var_1 = true;
    var var_2 = ~(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(abs(u_input.b), ~vec4<u32>(arg_3, 12038u, 4294967295u, 81296u)), vec4<u32>(u_input.a, firstLeadingBit(arg_3), ~1u, firstTrailingBit(arg_3))) & _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b << (u_input.b % vec4<u32>(32u)), u_input.b), vec4<u32>(_wgslsmith_clamp_u32(1u, 75440u, u_input.a), arg_3, arg_3, ~1u), vec4<u32>(u_input.a, 76318u, u_input.a, ~arg_3)));
    var var_3 = -(~(~(-2147483647i)));
    return 0i;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    global3 = array<f32, 17>();
    var var_0 = Struct_1(false, global0.b, false, min(4214i, ~(-global0.d)), true);
    var var_1 = u_input.b.xyw;
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.a, 17u)]));
    return Struct_1(true, select(select(vec3<bool>(global0.c, any(vec3<bool>(true, global1.a, var_0.e)), arg_0.a), vec3<bool>(arg_0.e, true, arg_0.b.x), !(!global2.xxw)), vec3<bool>(select(true, true, global1.c) || true, arg_0.b.x, !(-10600i <= var_0.d)), arg_0.b), var_0.e, ~countOneBits(firstLeadingBit(-31529i)), arg_0.c || var_0.b.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> vec2<bool> {
    global0 = func_3(Struct_1(true, global2.ywx, _wgslsmith_f_op_f32(sign(625f)) >= global3[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(1u, 21471u), ~18452u), 17u)], (max(-16111i, 1i) << (1u % 32u)) & _wgslsmith_div_i32(func_2(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 17u)], arg_0.x), Struct_1(global1.a, global0.b, global1.a, global0.d, global2.x), Struct_1(global0.c, vec3<bool>(global2.x, false, global2.x), global1.e, global1.d, global0.e), arg_1), global0.d | 39078i), global1.c));
    global2 = !select(vec4<bool>(all(vec3<bool>(true, global2.x, global1.c)), true, (global3[_wgslsmith_index_u32(arg_1, 17u)] != 1000f) && false, global2.x), vec4<bool>(false, global0.a, global2.x != global1.e, true), select(select(select(vec4<bool>(global0.b.x, global0.a, global1.a, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, global1.c, global2.x)), select(vec4<bool>(global0.e, false, false, global0.a), vec4<bool>(global1.a, true, global1.e, false), vec4<bool>(true, false, global0.a, true)), global1.a), select(vec4<bool>(true, true, true, true), !vec4<bool>(global1.b.x, false, global1.b.x, true), any(vec3<bool>(true, global1.b.x, global0.a))), global1.c));
    var var_0 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(29530u, 70369u, 4294967295u)), u_input.b.yzz);
    let var_1 = 13310u;
    let var_2 = ~abs(u_input.b.yxw);
    return !(!(!select(!global0.b.yx, select(vec2<bool>(true, false), global1.b.zx, false), !vec2<bool>(true, global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b.x | any(!select(func_1(vec3<f32>(global3[_wgslsmith_index_u32(3625u, 17u)], 768f, global3[_wgslsmith_index_u32(u_input.b.x, 17u)]), u_input.a), vec2<bool>(false, true), func_1(vec3<f32>(1202f, global3[_wgslsmith_index_u32(0u, 17u)], -1000f), u_input.a)));
    global0 = Struct_1(false, select(!vec3<bool>(true, !var_0, all(vec4<bool>(false, true, global1.e, var_0))), global1.b, global1.b), !global1.c, _wgslsmith_mult_i32(global1.d << (_wgslsmith_mult_u32(u_input.a, 6837u) % 32u), global1.d) << (0u % 32u), var_0);
    var var_1 = Struct_1(!(true | !(!var_0)), select(func_3(func_3(Struct_1(true, vec3<bool>(var_0, global1.c, true), false, global1.d, global1.b.x))).b, global0.b, !(!global1.b)), global1.e, ~_wgslsmith_mod_i32(~(~74992i), ~(i32(-1i) * -15506i)), global0.a);
    global3 = array<f32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(reverseBits(u_input.b.x), 17u)], 734f))), 3345f, vec2<f32>(1f, 1f));
}

