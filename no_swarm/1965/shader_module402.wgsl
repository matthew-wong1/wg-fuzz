struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1387f, -157f, 331f);

var<private> global1: f32;

var<private> global2: array<Struct_4, 12>;

var<private> global3: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(0u, 39148u), vec2<u32>(63261u, 27720u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 43453u), vec2<u32>(1u, 59554u), vec2<u32>(1181u, 4691u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 12766u), vec2<u32>(0u, 1u), vec2<u32>(0u, 11359u), vec2<u32>(4294967295u, 76004u), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_4) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(arg_3.b.a, 12u)];
    let var_1 = Struct_2(_wgslsmith_clamp_u32(abs(1u) & var_0.b.a, ~arg_2, ~u_input.c), arg_3.b, var_0.b);
    let var_2 = true;
    var var_3 = !vec2<bool>(false, var_2);
    return countOneBits(2988u);
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -744f);
    let var_1 = reverseBits(~countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, arg_0.a, 4294967295u)) | vec4<u32>(abs(1u), 4294967295u, 29883u | u_input.b.x, arg_0.a)) ^ vec4<u32>(~(~(~arg_0.a)), _wgslsmith_mod_u32(firstTrailingBit(arg_0.a), func_3(select(-2147483647i, 13532i, false), vec3<bool>(true, true, true), 0u, Struct_4(vec3<i32>(2147483647i, 2147483647i, 0i), Struct_1(32370u, global0.x), vec2<i32>(61764i, -44758i)))), ~(3911u | min(arg_0.a, 4294967295u)), 1u);
    let var_2 = vec3<bool>(true, all(vec2<bool>(false, true)) | any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), !(true | (_wgslsmith_f_op_f32(-arg_0.b) <= arg_0.b)));
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a, ~(~1u)), 12u)];
    global2 = array<Struct_4, 12>();
    return var_2.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_2) -> vec2<bool> {
    return vec2<bool>(func_2(Struct_1(min(~4294967295u, ~0u), _wgslsmith_f_op_f32(-global0.x))), !(!arg_1.x & (false & any(vec3<bool>(true, true, arg_0.x)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>) -> vec2<i32> {
    global0 = vec3<f32>(-1760f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-arg_1.x)), -942f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x)))));
    let var_0 = vec4<u32>(u_input.b.x, ~_wgslsmith_mult_u32(13597u, ~u_input.b.x), reverseBits(_wgslsmith_mod_u32(select(40826u, _wgslsmith_div_u32(u_input.c, u_input.b.x), all(vec2<bool>(true, true))), _wgslsmith_mod_u32(u_input.b.x >> (4294967295u % 32u), ~4294967295u))), ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(~u_input.c, _wgslsmith_mod_u32(0u, 4294967295u)), u_input.c));
    let var_1 = _wgslsmith_mod_vec4_u32(var_0, vec4<u32>(~(~var_0.x), 0u, 53824u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 85332u, 1u), u_input.b)) | (~(~vec4<u32>(var_0.x, 7928u, var_0.x, var_0.x)) ^ vec4<u32>(~10745u, ~var_0.x, ~67548u, ~35467u)));
    let var_2 = 866f;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1597f - _wgslsmith_f_op_f32(round(1778f))) + 105f)), arg_1.x, global0.x);
    return vec2<i32>(-1i >> (var_0.x % 32u), max(~1i, countOneBits(0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<bool>(any(func_1(vec2<bool>(true, true), vec3<bool>(true, true, false), Struct_2(u_input.c, Struct_1(1u, 309f), Struct_1(79044u, global0.x)))), false, global0.x <= -1815f, false), vec3<f32>(244f, 1268f, global0.x)) << (vec2<u32>(4294967295u, ~(~(u_input.a.x & 7119u))) % vec2<u32>(32u));
    let var_1 = Struct_3(true, _wgslsmith_f_op_f32(f32(-1f) * -853f));
    var var_2 = !func_1(!(!vec2<bool>(var_1.a, var_1.a)), select(vec3<bool>(var_1.a, true, true), vec3<bool>(var_1.a, var_1.a, all(vec2<bool>(var_1.a, var_1.a))), true), Struct_2(~(u_input.a.x & u_input.a.x), Struct_1(~u_input.c, _wgslsmith_f_op_f32(-global0.x)), Struct_1(1u, _wgslsmith_f_op_f32(-var_1.b)))).x;
    let var_3 = global2[_wgslsmith_index_u32((u_input.c >> ((_wgslsmith_mod_u32(select(u_input.a.x, 0u, true), 4294967295u | u_input.b.x) | ~(~u_input.a.x)) % 32u)) & u_input.a.x, 12u)];
    let var_4 = Struct_1(min(min(28000u, _wgslsmith_sub_u32(4294967295u, select(var_3.b.a, 89029u, var_1.a))), countOneBits(func_3(var_0.x | -1i, vec3<bool>(var_1.a, var_1.a, false), _wgslsmith_sub_u32(4294967295u, 49059u), Struct_4(var_3.a, var_3.b, var_3.c)))), _wgslsmith_f_op_f32(-var_3.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_vec4_u32(abs(vec4<u32>(59810u, var_4.a, var_4.a, 43925u)), vec4<u32>(var_4.a, _wgslsmith_clamp_u32(u_input.c, var_4.a, 7762u), u_input.c, countOneBits(var_3.b.a)))), min(~(~global3[_wgslsmith_index_u32(~23615u, 12u)]), vec2<u32>(u_input.b.x, var_4.a)), countOneBits(vec3<u32>(max(4294967295u, _wgslsmith_div_u32(var_3.b.a, var_4.a)), 83633u, min(~4294967295u, 4294967295u))), var_0.x, var_3.a.xx);
}

