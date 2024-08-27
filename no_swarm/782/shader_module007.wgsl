struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: u32;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec4<i32>(27469i, -53907i, 2147483647i, 4118i), vec3<i32>(-1i, -62317i, 1i), 84231u, true), Struct_2(vec4<i32>(-1i, -50866i, -53662i, 51571i), vec3<i32>(-49459i, i32(-2147483648), 54068i), 0u, false), Struct_2(vec4<i32>(i32(-2147483648), -1i, -1i, -20646i), vec3<i32>(-1i, 0i, 1i), 0u, true), Struct_2(vec4<i32>(-6665i, -20882i, 28821i, 0i), vec3<i32>(-50748i, 0i, 2147483647i), 0u, true), Struct_2(vec4<i32>(-34532i, i32(-2147483648), 1i, 16820i), vec3<i32>(1i, 0i, -3370i), 21755u, true), Struct_2(vec4<i32>(i32(-2147483648), -87299i, 58059i, i32(-2147483648)), vec3<i32>(0i, 20677i, i32(-2147483648)), 0u, false), Struct_2(vec4<i32>(i32(-2147483648), -7003i, 1i, 56013i), vec3<i32>(2147483647i, i32(-2147483648), -42862i), 4294967295u, true), Struct_2(vec4<i32>(2147483647i, 1i, -7395i, 23465i), vec3<i32>(-2024i, -1i, -20323i), 15769u, true), Struct_2(vec4<i32>(1i, -39690i, 2147483647i, 1i), vec3<i32>(0i, 43137i, 16071i), 113104u, false), Struct_2(vec4<i32>(9431i, 1i, 1i, 1i), vec3<i32>(-1i, -1i, 0i), 1u, true), Struct_2(vec4<i32>(-40929i, 9046i, 1405i, 320i), vec3<i32>(0i, i32(-2147483648), -26135i), 1u, true), Struct_2(vec4<i32>(i32(-2147483648), -27901i, i32(-2147483648), 1i), vec3<i32>(-1484i, i32(-2147483648), -4862i), 1u, false), Struct_2(vec4<i32>(i32(-2147483648), 16465i, 19930i, 2147483647i), vec3<i32>(-14760i, 18504i, 1i), 1u, true), Struct_2(vec4<i32>(0i, -59174i, i32(-2147483648), 2147483647i), vec3<i32>(-4186i, 0i, 42656i), 4294967295u, true), Struct_2(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -30185i), vec3<i32>(24804i, -15513i, 1i), 21842u, false), Struct_2(vec4<i32>(-5989i, 2147483647i, -8155i, 1i), vec3<i32>(2147483647i, 2147483647i, 3029i), 0u, false), Struct_2(vec4<i32>(2147483647i, 1i, -43949i, 1i), vec3<i32>(5881i, 2147483647i, 0i), 4732u, true), Struct_2(vec4<i32>(-1i, i32(-2147483648), 1i, -20011i), vec3<i32>(0i, 23940i, 1i), 4294967295u, false), Struct_2(vec4<i32>(1i, 15935i, 57216i, 10490i), vec3<i32>(-1818i, -32076i, 2147483647i), 10420u, true), Struct_2(vec4<i32>(-1i, -25888i, -1i, -5729i), vec3<i32>(i32(-2147483648), 0i, 29111i), 21117u, true), Struct_2(vec4<i32>(2147483647i, -44603i, i32(-2147483648), 0i), vec3<i32>(20248i, 16675i, 21388i), 0u, false), Struct_2(vec4<i32>(8882i, 1i, -3570i, i32(-2147483648)), vec3<i32>(78443i, 0i, 0i), 15435u, false), Struct_2(vec4<i32>(-16938i, -12330i, 31665i, -11818i), vec3<i32>(31384i, 59543i, 1i), 74159u, true), Struct_2(vec4<i32>(34648i, -1i, 0i, 20264i), vec3<i32>(0i, -1i, -1i), 0u, false), Struct_2(vec4<i32>(-1i, -1637i, 0i, -20198i), vec3<i32>(2147483647i, 55967i, -20593i), 40283u, true), Struct_2(vec4<i32>(0i, 73498i, -22701i, 2147483647i), vec3<i32>(1i, 19683i, 7438i), 1u, true), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 23386i), vec3<i32>(-43684i, -1i, i32(-2147483648)), 4294967295u, true), Struct_2(vec4<i32>(0i, -1i, 1i, -1i), vec3<i32>(-62811i, 24053i, -5241i), 0u, false), Struct_2(vec4<i32>(42970i, -1i, -758i, 1i), vec3<i32>(9913i, 0i, 2147483647i), 61522u, false), Struct_2(vec4<i32>(-39264i, 27273i, 23813i, i32(-2147483648)), vec3<i32>(-1i, -1i, -1i), 108116u, true), Struct_2(vec4<i32>(2147483647i, -10453i, -1i, 32238i), vec3<i32>(-1i, 0i, -1i), 0u, false));

var<private> global4: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> u32 {
    global1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~arg_0.x, abs(33024u), arg_1.a.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(37102u, 4294967295u, 66767u), firstLeadingBit(u_input.b))), ~vec4<u32>(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(12801u, 1u), ~vec2<u32>(65566u, global4.a.c.x)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(16467u, global0.x, global0.x), arg_0), 14068u), ~global0.x));
    let var_0 = abs(6221i);
    var var_1 = arg_1.d.d;
    global4 = arg_1;
    let var_2 = vec3<bool>(!(true != !select(global4.d.d, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1192f) - -720f) <= arg_1.c.x, false);
    return 4294967295u;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: u32, arg_3: vec4<bool>) -> vec4<bool> {
    var var_0 = true;
    var var_1 = arg_3.yzw;
    global0 = firstLeadingBit(vec2<u32>(u_input.c, 1u ^ reverseBits(func_3(vec3<u32>(arg_2, global4.d.c, 14595u), arg_1))));
    return select(!select(select(arg_3, arg_3, select(vec4<bool>(true, false, false, true), arg_3, global2.x)), vec4<bool>(true, any(vec3<bool>(var_1.x, false, arg_1.a.b)), arg_3.x, false), select(arg_3, arg_3, vec4<bool>(arg_1.a.b, var_1.x, true, true))), select(arg_3, select(!vec4<bool>(arg_1.d.d, true, false, global2.x), vec4<bool>(true, true, select(true, false, false), any(global4.a.a)), arg_3.x), !select(vec4<bool>(arg_1.d.d, global4.a.a.x, false, arg_3.x), vec4<bool>(true, true, false, arg_1.d.d), arg_3)), !all(arg_3.wwz));
}

fn func_1() -> vec2<f32> {
    global3 = array<Struct_2, 31>();
    global2 = !(!vec3<bool>(all(func_2(vec2<i32>(-1i, 9794i), Struct_3(Struct_1(vec3<bool>(false, global4.a.a.x, true), true, vec4<u32>(global0.x, global0.x, u_input.a.x, u_input.a.x), global4.d.c, global4.a.e), global4.d.a, global4.c, Struct_2(vec4<i32>(global4.d.b.x, global4.b.x, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, 1i, 89333i), 10738u, global2.x)), global0.x, vec4<bool>(true, global4.d.d, global2.x, true))), true, global2.x));
    var var_0 = firstLeadingBit(4294967295u);
    global4 = Struct_3(Struct_1(vec3<bool>(_wgslsmith_clamp_i32(global4.b.x, 1i, 11848i) <= global4.d.a.x, !any(vec4<bool>(global2.x, true, global2.x, global4.d.d)), global4.a.b && true), u_input.d.x != countOneBits(u_input.d.x), u_input.a, 9120u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(step(global4.a.e.x, global4.a.e.x)), -830f, -1716f))), global4.b, global4.c, global3[_wgslsmith_index_u32(global4.d.c, 31u)]);
    global3 = array<Struct_2, 31>();
    return global4.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_1()), vec2<f32>(151f, 1381f)));
    let var_2 = 1u;
    let var_3 = Struct_3(Struct_1(!global4.a.a, global4.a.b, vec4<u32>(global0.x, firstLeadingBit(1u), ~(~global0.x), u_input.a.x), ~1u, vec4<f32>(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_div_f32(-329f, var_1.x), true)), -410f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, -431f))), -378f)), vec4<i32>(-(~(i32(-1i) * -5560i)), global4.b.x, global4.b.x, _wgslsmith_mod_i32(~min(-49329i, u_input.d.x), -(-2147483647i << (var_2 % 32u)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f + 579f))), _wgslsmith_f_op_f32(global4.a.e.x + -1564f)), Struct_2(global4.b, global4.b.zyz, ~firstLeadingBit(u_input.a.x >> (1u % 32u)), !global2.x));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.a.e.x))))) - 1137f));
    var var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(global4.d.a.x);
}

