struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1456f, vec3<u32>(51333u, 1u, 10861u));

var<private> global1: array<f32, 12> = array<f32, 12>(-1679f, 315f, -124f, 2920f, 173f, 1218f, -187f, 546f, 3037f, 245f, -859f, -157f);

var<private> global2: array<i32, 9>;

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    var var_0 = 2147483647i;
    global1 = array<f32, 12>();
    let var_1 = Struct_3(global3.x);
    global1 = array<f32, 12>();
    var var_2 = -(u_input.d.xx >> (_wgslsmith_sub_vec2_u32(global0.b.zz, global0.b.zy) % vec2<u32>(32u)));
    return Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], vec3<u32>(global0.b.x, 16915u, firstTrailingBit(countOneBits(global0.b.x) << (~u_input.e % 32u))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_2.b.a)), _wgslsmith_f_op_f32(-1178f - _wgslsmith_f_op_f32(-global0.a)))), countOneBits(_wgslsmith_mod_vec3_u32(select(vec3<u32>(19113u, 1u, u_input.e) ^ vec3<u32>(u_input.b.x, global0.b.x, global0.b.x), vec3<u32>(30444u, 10451u, global0.b.x) & global0.b, vec3<bool>(true, true, false)), vec3<u32>(_wgslsmith_sub_u32(26744u, 1u), 0u, _wgslsmith_clamp_u32(arg_2.b.b.x, u_input.b.x, 17325u)))));
    global3 = vec4<bool>(true, true, global3.x, global3.x);
    global0 = func_2();
    var var_1 = Struct_3(true);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) - var_0.a))), _wgslsmith_f_op_f32(max(arg_2.c.a, 1f))));
    return ~(~3936u);
}

fn func_4(arg_0: f32) -> vec4<bool> {
    let var_0 = -119f;
    let var_1 = Struct_2(func_2(), func_2(), func_2());
    let var_2 = vec2<bool>(select(global3.x, true, 25189i <= u_input.d.x), select((_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(13321u, 9u)], -21686i, -27579i) < -2147483647i) & true, !global3.x, true));
    let var_3 = _wgslsmith_div_u32(0u, reverseBits(28904u ^ u_input.e));
    var var_4 = Struct_2(func_2(), Struct_1(_wgslsmith_f_op_f32(-1186f * _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~global0.b.x, 12u)], -1299f, true))), global0.b), func_2());
    return vec4<bool>(all(vec2<bool>(!var_2.x, true)), true, !(!var_2.x), true);
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 12>();
    let var_0 = u_input.a.x;
    global0 = func_2();
    global3 = func_4(global1[_wgslsmith_index_u32((func_3(vec3<i32>(-52684i, global2[_wgslsmith_index_u32(4294967295u, 9u)], -9835i) & u_input.a.xwz, u_input.c, Struct_2(Struct_1(1262f, u_input.b.xzx), Struct_1(744f, vec3<u32>(global0.b.x, 4294967295u, u_input.b.x)), Struct_1(global1[_wgslsmith_index_u32(14332u, 12u)], global0.b))) | (firstTrailingBit(u_input.b.x) << (7901u % 32u))) << (global0.b.x % 32u), 12u)]);
    global0 = func_2();
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(1u, 12u)])) - 1230f)), abs(vec3<u32>(~31228u, _wgslsmith_div_u32(global0.b.x, 1u), global0.b.x))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.b.x, 12u)])))), countOneBits(vec3<u32>(46764u, _wgslsmith_mult_u32(u_input.b.x, 0u), u_input.b.x))), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = ~(-2147483647i << (~var_0.a.b.x % 32u));
    var var_2 = Struct_3(~(func_3(u_input.d.yyw, global2[_wgslsmith_index_u32(1u, 9u)], Struct_2(var_0.c, var_0.a, var_0.a)) << (29240u % 32u)) >= ~max(_wgslsmith_mod_u32(17259u, 30067u), var_0.b.b.x | 20973u));
    var var_3 = Struct_2(func_2(), func_2(), Struct_1(global0.a, ~abs(u_input.b.zzz)));
    var var_4 = !global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(var_0.b.b.x, 1u) << (countOneBits(~6171u) % 32u), ~(~global0.b.x)), u_input.b.yy, -1i);
}

