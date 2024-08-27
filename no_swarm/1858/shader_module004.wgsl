struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(2147483647i, 13333i, -9940i), vec2<f32>(761f, -1764f));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(1i, 6165i, 0i), vec2<f32>(682f, -1000f));

var<private> global2: vec3<u32> = vec3<u32>(60356u, 0u, 38828u);

var<private> global3: i32 = 0i;

var<private> global4: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> u32 {
    global2 = ~vec3<u32>(u_input.e.x, reverseBits(_wgslsmith_mod_u32(_wgslsmith_add_u32(15272u, 1u), u_input.c)), 1u);
    var var_0 = 250f;
    let var_1 = reverseBits(~vec2<u32>(31769u, ~(~70845u)));
    var var_2 = ~vec2<i32>(firstTrailingBit(-105773i), _wgslsmith_dot_vec2_i32(global0.a.zy, -(~global1.a.zy)));
    var var_3 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-60912i, _wgslsmith_dot_vec3_i32(u_input.a.zwy, u_input.a.zxy), _wgslsmith_mult_i32(global0.a.x, u_input.d)) & -(~vec3<i32>(global1.a.x, -42276i, -2147483647i)), u_input.a.yxy), vec2<f32>(641f, 670f));
    return ~27091u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = min(u_input.b, ~func_3(-global0.a.x));
    var var_1 = ~var_0;
    var_1 = 1u;
    let var_2 = vec4<bool>(true, false, true, true & global4.x);
    var var_3 = vec3<bool>(~_wgslsmith_mod_i32(~2147483647i, arg_1.a.x) < -27685i, global4.x, global4.x);
    return Struct_1(vec3<i32>(1i, arg_1.a.x, 2147483647i >> ((63346u ^ _wgslsmith_mod_u32(var_0, 65041u)) % 32u)), global0.b);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> u32 {
    global1 = Struct_1(vec3<i32>(func_2(Struct_1(global0.a << (vec3<u32>(global2.x, 18225u, global2.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, arg_1) - arg_0.b)), func_2(func_2(arg_0, arg_0), Struct_1(vec3<i32>(-20256i, global0.a.x, arg_0.a.x), arg_0.b))).a.x, -10005i, 0i), vec2<f32>(-606f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-2358f * arg_1)))));
    var var_0 = u_input.e.x;
    global0 = arg_0;
    let var_1 = ~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(~global2.x, 1u, 7937u, u_input.c)), vec4<u32>(_wgslsmith_mod_u32(4294967295u, global2.x), 4294967295u, ~(~4294967295u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(44855u, 0u, 78367u, 55193u), vec4<u32>(0u, u_input.c, u_input.b, 4294967295u), vec4<bool>(global4.x, global4.x, false, global4.x)), vec4<u32>(global2.x, u_input.c, u_input.e.x, global2.x))));
    let var_2 = func_2(arg_0, Struct_1(vec3<i32>(_wgslsmith_add_i32(global1.a.x, -1i) | -32749i, ~global0.a.x, ~u_input.d), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, -225f))))))));
    return min(32724u, ~_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_add_u32(4294967295u, 0u)), 89620u | (0u & var_1.x)));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    global3 = ~_wgslsmith_div_i32(-3833i, -1i);
    global2 = _wgslsmith_mult_vec3_u32(u_input.e, vec3<u32>(func_4(func_2(Struct_1(global1.a, global1.b), Struct_1(vec3<i32>(2147483647i, 38053i, -1i), global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f) * global0.b.x)), ~4294967295u, abs(4294967295u)));
    let var_0 = Struct_1(global1.a, _wgslsmith_div_vec2_f32(vec2<f32>(1054f, 522f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b + vec2<f32>(global0.b.x, 1291f)))));
    let var_1 = vec4<bool>(!(!global4.x), !arg_0.x, ~var_0.a.x <= ((global0.a.x | firstTrailingBit(global1.a.x)) >> (_wgslsmith_mult_u32(1u & global2.x, abs(u_input.e.x)) % 32u)), global4.x);
    var var_2 = any(var_1.yzw);
    return Struct_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(~global1.a.x, -global0.a.x, -1i), ~(~vec3<i32>(var_0.a.x, 7641i, global1.a.x))), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(!(!select(vec3<bool>(true, false, false), !vec3<bool>(global4.x, true, global4.x), vec3<bool>(false, global4.x, false))), _wgslsmith_f_op_f32(-global1.b.x), select(select(!(!global4.zwy), global4.zzz, global4.x), global4.wzw, !vec3<bool>(true, !global4.x, u_input.c == 0u)));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(849f, _wgslsmith_f_op_f32(f32(-1f) * -1315f), _wgslsmith_f_op_f32(110f + global0.b.x), global0.b.x));
    let var_1 = _wgslsmith_mult_u32(0u, 57622u);
    var var_2 = -620f;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -1281f, _wgslsmith_f_op_f32(722f - _wgslsmith_f_op_f32(369f - _wgslsmith_f_op_f32(exp2(global0.b.x)))));
}

