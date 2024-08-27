struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<f32>(-693f, 975f, 982f), Struct_1(1218f), Struct_3(vec3<u32>(4294967295u, 48689u, 1u), Struct_2(-1585f, 4294967295u, true, vec3<bool>(true, false, true), vec2<u32>(32815u, 159u)), 49872u));

var<private> global1: Struct_3;

var<private> global2: vec2<u32> = vec2<u32>(1u, 20623u);

var<private> global3: vec3<bool> = vec3<bool>(true, true, true);

var<private> global4: vec3<f32> = vec3<f32>(-346f, 1003f, -803f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    global4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(673f * global4.x) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -799f), _wgslsmith_f_op_f32(-782f + 535f)))) * _wgslsmith_f_op_f32(trunc(388f))), _wgslsmith_f_op_f32(max(-1163f, -1225f)), _wgslsmith_f_op_f32(abs(global4.x)));
    global2 = u_input.b;
    global3 = !select(select(vec3<bool>(global3.x, select(true, global3.x, false), all(vec4<bool>(false, false, global0.c.b.c, global1.b.c))), !select(global1.b.d, vec3<bool>(false, true, global1.b.d.x), global3.x), global1.b.d), global0.c.b.d, global1.b.d);
    let var_0 = _wgslsmith_mult_vec2_i32(u_input.d.yy, select(u_input.c.xz, u_input.c.zw, any(vec4<bool>(!global3.x, !global1.b.d.x, global0.c.b.b >= global2.x, any(vec2<bool>(true, global1.b.c))))));
    let var_1 = (select(_wgslsmith_clamp_u32(60617u, global1.c, 41016u) << (1u % 32u), 1u, global1.b.d.x) ^ abs(12355u)) != firstTrailingBit(38997u);
    return global2.x;
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    global1 = Struct_3(~global1.a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global4.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.b.a - -146f) - _wgslsmith_f_op_f32(sign(-2090f)))), 4294967295u | func_3(), global1.b.d.x, select(global1.b.d, vec3<bool>(true, false || global3.x, any(vec3<bool>(false, true, true))), 1f < arg_0.a), u_input.b), ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, u_input.b.x, global1.a.x), global0.c.a)));
    global4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.x))), arg_0.a));
    global0 = Struct_4(global0.a, arg_0, global0.c);
    var var_0 = select(global1.b.d.xz, !global0.c.b.d.yz, global1.b.d.yz);
    global2 = vec2<u32>(func_3(), firstTrailingBit(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global1.b.e.x, global1.c, 1u)), _wgslsmith_clamp_vec3_u32(select(global0.c.a, global1.a, vec3<bool>(global0.c.b.d.x, global0.c.b.c, var_0.x)), _wgslsmith_sub_vec3_u32(global1.a, vec3<u32>(global1.b.e.x, 17483u, global2.x)), vec3<u32>(41706u, u_input.b.x, global1.c) << (global0.c.a % vec3<u32>(32u))))));
    return Struct_3(firstTrailingBit(_wgslsmith_div_vec3_u32(global1.a, _wgslsmith_add_vec3_u32(global1.a, select(vec3<u32>(50433u, 26313u, 6855u), global1.a, global1.b.d)))), global1.b, _wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.b.x), ~1u), vec2<u32>(~14320u, 0u)));
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 550f, global1.b.a))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, global4.x) + _wgslsmith_f_op_f32(global0.b.a - global4.x)))), func_2(global0.b));
    global2 = _wgslsmith_mult_vec2_u32(func_2(Struct_1(var_0.b.a)).a.zz, u_input.b);
    let var_1 = global1.b;
    var var_2 = ~_wgslsmith_mult_vec2_u32(u_input.b, ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(37855u, var_0.c.c), u_input.b)));
    var var_3 = Struct_1(490f);
    return select(vec3<bool>(func_2(global0.b).b.d.x | any(var_1.d), true, false || global0.c.b.d.x), !var_1.d, true);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(232f, 2518f, 645f)));
    var var_0 = 1000f;
    global3 = !select(vec3<bool>(global0.c.b.d.x, global1.b.c, true), vec3<bool>(max(5385i, u_input.c.x) <= u_input.c.x, true, true), vec3<bool>(true, false, global0.c.b.c));
    var var_1 = (countOneBits(~4294967295u << (global1.c % 32u)) <= 59343u) != all(func_1());
    var_1 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(16627u, global0.c.c, 1u, global1.c), vec4<u32>(u_input.b.x, u_input.b.x, 11526u, 0u))) & (~vec4<u32>(global1.b.e.x, u_input.b.x, global1.b.b, global1.b.e.x) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.b, 3885u, 27457u, global2.x), vec4<u32>(u_input.b.x, global1.b.b, global1.a.x, global1.c)))) << (countOneBits(select(vec4<u32>(1u, u_input.b.x, 76814u, 1u) ^ vec4<u32>(global0.c.c, 16982u, 0u, global1.a.x), ~vec4<u32>(1u, global0.c.a.x, 0u, global2.x), true)) % vec4<u32>(32u)), vec2<i32>(0i, 2147483647i), global0.c.b.e.x);
}

