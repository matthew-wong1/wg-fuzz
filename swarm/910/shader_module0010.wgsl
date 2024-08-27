struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
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

var<private> global0: bool = true;

var<private> global1: Struct_2;

var<private> global2: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(9419u, 4294967295u, 12205u), vec3<u32>(44941u, 43544u, 13339u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(3063u, 19762u, 4294967295u), vec3<u32>(99762u, 1u, 1u), vec3<u32>(4294967295u, 74346u, 5618u), vec3<u32>(7771u, 4294967295u, 4294967295u), vec3<u32>(75768u, 0u, 13805u), vec3<u32>(25503u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 7264u), vec3<u32>(92847u, 53443u, 1u), vec3<u32>(89756u, 1u, 75959u), vec3<u32>(4294967295u, 91118u, 4294967295u), vec3<u32>(66480u, 4294967295u, 1u), vec3<u32>(42565u, 1u, 52472u), vec3<u32>(48815u, 1u, 1u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    let var_0 = global1.b.c.xy;
    var var_1 = -58251i;
    let var_2 = global1.a;
    return u_input.c.x == (firstLeadingBit(abs(1i)) & ~max(~u_input.c.x, u_input.c.x));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(global1.a, global1.b, global1.c);
    let var_1 = global1.c.c.x;
    global0 = any(vec4<bool>(func_3(), true, var_0.c.a, any(!vec4<bool>(global1.c.c.x, var_0.b.c.x, true, false)))) == global1.b.c.x;
    let var_2 = Struct_2(global1.b, Struct_1(true, min(abs(vec3<u32>(47969u, u_input.b.x, 0u)), ~select(vec3<u32>(1u, 62397u, 1u), vec3<u32>(35838u, 51444u, var_0.c.b.x), vec3<bool>(var_0.b.c.x, var_0.c.a, global1.a.a))), !vec3<bool>(!global1.c.c.x, false, global1.c.a)), Struct_1(true, ~(~global1.c.b), vec3<bool>(!global1.b.c.x, !var_0.c.c.x, !(20423u > u_input.a))));
    let var_3 = _wgslsmith_f_op_f32(sign(-321f));
    return 1i;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec3<i32>) -> Struct_2 {
    global2 = array<vec3<u32>, 18>();
    global0 = true;
    let var_0 = vec3<i32>(arg_0.x, -(~(arg_2.x | u_input.c.x) & ~(2147483647i ^ arg_0.x)), -arg_2.x << (5718u % 32u));
    let var_1 = ~(-max(_wgslsmith_mod_i32(-arg_0.x, arg_2.x), func_2()));
    var var_2 = 0u;
    return Struct_2(Struct_1(!global1.a.a, ~abs(vec3<u32>(33134u, 56697u, global1.a.b.x)), !(!(!vec3<bool>(true, global1.b.a, false)))), Struct_1(true, (vec3<u32>(u_input.a, u_input.a, 43959u) >> (vec3<u32>(61368u, 111759u, global1.c.b.x) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_u32(global2[_wgslsmith_index_u32(1u, 18u)], min(u_input.b.wyw, global1.a.b), vec3<u32>(4294967295u, u_input.a, u_input.a)), select(vec3<bool>(arg_1.x, true, arg_1.x), select(select(arg_1, arg_1, arg_1), arg_1, vec3<bool>(global1.c.c.x, global1.a.c.x, arg_1.x)), func_3())), Struct_1(true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(reverseBits(vec2<u32>(global1.a.b.x, 73099u))), global1.c.b.zz), 18u)], !vec3<bool>(true, global1.a.a, arg_1.x & global1.c.c.x)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = global1.a.c;
    let var_1 = _wgslsmith_dot_vec4_i32(u_input.c, ~(~_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.c.x, -7101i, 29278i, 2147483647i)), firstTrailingBit(u_input.c))));
    var var_2 = vec3<bool>(global1.a.a, true, false);
    var var_3 = -828f;
    var_2 = select(!vec3<bool>(_wgslsmith_dot_vec3_u32(u_input.b.zyz, arg_0.a.b) > u_input.a, select(true, !arg_0.b.a, true), true), !global1.b.c, true);
    return Struct_1(all(func_1(vec2<i32>(u_input.c.x, ~30697i), global1.c.c, u_input.c.wwy).c.c.zy), max(vec3<u32>(~(~1u), ~1u, 28570u), u_input.b.yzw), select(vec3<bool>(true | var_2.x, func_3(), any(arg_0.a.c)), !global1.b.c, global1.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1292f, 689f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 149f)), _wgslsmith_f_op_f32(sign(1f)))))));
    global0 = global1.b.a;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-113f - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) - var_0.x))), var_0.x);
    let var_2 = Struct_2(Struct_1(!(!global1.c.c.x), vec3<u32>(global1.b.b.x, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b) | global1.a.b.x, 4294967295u), global1.a.c), func_4(func_1(u_input.c.zz, global1.c.c, -u_input.c.zyx)), global1.c);
    var var_3 = var_2;
    var_1 = _wgslsmith_f_op_f32(step(var_0.x, 1219f));
    global1 = var_2;
    var_3 = Struct_2(Struct_1(true, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(12905u, 0u, 49342u), u_input.b.zyz, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 18u)]), !global1.a.c), var_3.c, func_4(var_2));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

