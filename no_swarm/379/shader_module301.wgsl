struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<f32>(-1263f, -1222f, 1681f), vec2<i32>(-16865i, -10943i), 4294967295u, 23259i), Struct_1(vec3<f32>(1761f, -1381f, 1268f), vec2<i32>(1i, -1057i), 1u, 37712i), Struct_1(vec3<f32>(-199f, -239f, 1018f), vec2<i32>(-33070i, i32(-2147483648)), 4294967295u, -19022i), Struct_1(vec3<f32>(2139f, 1000f, 1477f), vec2<i32>(-34747i, 1i), 99711u, i32(-2147483648)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> vec3<bool> {
    global0 = array<Struct_1, 4>();
    var var_0 = global0[_wgslsmith_index_u32(~7000u, 4u)];
    let var_1 = var_0.a.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_div_vec3_f32(var_0.a, var_0.a)));
    global0 = array<Struct_1, 4>();
    return !vec3<bool>(true, 1150f < _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(var_0.a.x - 1000f)), select(any(vec3<bool>(false, true, true)), true, false));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    global0 = array<Struct_1, 4>();
    let var_0 = arg_1;
    global0 = array<Struct_1, 4>();
    var var_1 = vec3<bool>(arg_1.c, all(func_2()), false);
    global0 = array<Struct_1, 4>();
    return var_0;
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = select(u_input.a.xy, countOneBits(~select(u_input.a.yz, vec2<u32>(8705u, arg_0.a.c), all(vec4<bool>(arg_1, true, arg_1, true)))), true);
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    return func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(126f)) + _wgslsmith_f_op_f32(round(arg_0.b.a.x)))))), arg_0).a;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> vec4<u32> {
    var var_0 = !vec3<bool>(any(func_2()), func_1(arg_0.a.x, func_1(_wgslsmith_f_op_f32(max(-580f, arg_0.a.x)), Struct_2(Struct_1(vec3<f32>(arg_0.a.x, -1305f, 114f), u_input.c, 46096u, 41402i), Struct_1(vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), u_input.c, arg_0.c, u_input.c.x), false))).c, all(vec4<bool>(true, true, true, true)));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.e, ~_wgslsmith_add_vec4_u32(~u_input.e, ~u_input.e)) | ~u_input.a.x, 4u)];
    global0 = array<Struct_1, 4>();
    var_0 = vec3<bool>(var_0.x, func_1(_wgslsmith_f_op_f32(-905f + -145f), func_1(_wgslsmith_f_op_f32(-867f - _wgslsmith_f_op_f32(trunc(2094f))), func_1(_wgslsmith_f_op_f32(min(arg_0.a.x, -1563f)), Struct_2(arg_0, arg_0, var_0.x)))).c, false);
    return firstTrailingBit(~max(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_0.c, var_1.c, arg_0.c), ~u_input.e), _wgslsmith_mod_vec4_u32(firstLeadingBit(u_input.e), vec4<u32>(40636u, var_1.c, u_input.d, 40518u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(u_input.e, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.e, u_input.e), ~(~u_input.e)), vec4<bool>(all(vec3<bool>(true, false, true)) || true, all(vec2<bool>(true, true)), !all(vec2<bool>(false, false)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true)))), u_input.e, vec4<bool>(true, all(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), true, true)), true, !any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true))));
    global0 = array<Struct_1, 4>();
    var_0 = abs(func_4(func_3(func_1(-398f, Struct_2(Struct_1(vec3<f32>(201f, 500f, 1000f), vec2<i32>(1i, u_input.c.x), var_0.x, -1i), Struct_1(vec3<f32>(267f, 1038f, 444f), vec2<i32>(u_input.c.x, u_input.c.x), 36611u, 0i), false)), true), ~var_0.x, firstLeadingBit(abs(var_0.x))));
    let var_1 = Struct_1(vec3<f32>(1f, 1f, 1f), countOneBits(select(-u_input.c, ~(~u_input.c), any(vec4<bool>(false, true, true, false)))), ~(~(~_wgslsmith_sub_u32(u_input.a.x, 4294967295u))), i32(-1i) * -68186i);
    var_0 = (vec4<u32>(_wgslsmith_div_u32(u_input.b, var_1.c >> (u_input.b % 32u)), (u_input.e.x & 5101u) << (func_3(Struct_2(var_1, Struct_1(var_1.a, vec2<i32>(-1i, 2501i), 1u, -19865i), false), true).c % 32u), u_input.e.x, max(~1u, 10057u)) & vec4<u32>(reverseBits(1u), abs(var_1.c) & (u_input.a.x >> (u_input.b % 32u)), ~(~var_1.c), var_0.x)) << (~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_1.c, var_0.x, 1u), u_input.e, vec4<u32>(var_1.c, 1u, var_1.c, 0u)) ^ firstTrailingBit(u_input.e), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.c, 77047u, u_input.e.x, 0u), vec4<u32>(u_input.e.x, var_0.x, var_1.c, var_1.c))) % vec4<u32>(32u));
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_3(Struct_2(Struct_1(var_1.a, vec2<i32>(-2147483647i, var_1.d), 28445u, -19429i), func_1(var_2.a.x, Struct_2(var_1, global0[_wgslsmith_index_u32(4294967295u, 4u)], true)).b, true), true).c, _wgslsmith_dot_vec2_u32(u_input.a.zz, ~(~vec2<u32>(0u, 56335u))), 42162u | var_1.c, 1u), vec2<i32>(var_1.d, _wgslsmith_div_i32(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_2.d), u_input.c)), -var_1.d)), _wgslsmith_sub_vec4_u32(~(vec4<u32>(var_2.c, var_0.x, 1u, var_2.c) << (vec4<u32>(var_0.x, 3863u, var_1.c, 0u) % vec4<u32>(32u))), u_input.e));
}

