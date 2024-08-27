struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<i32>(28691i, -5442i, -30007i), true, 1000f, vec2<u32>(4294967295u, 33529u)), Struct_1(vec3<i32>(-22664i, -75009i, -15933i), true, 310f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<i32>(1i, 1i, 2147483647i), false, -2287f, vec2<u32>(36702u, 4294967295u)), Struct_1(vec3<i32>(-1i, -7443i, 1i), false, -750f, vec2<u32>(3629u, 55934u)), Struct_1(vec3<i32>(2147483647i, -25995i, 0i), false, 519f, vec2<u32>(105120u, 73787u)), Struct_1(vec3<i32>(47855i, -1i, i32(-2147483648)), true, 1792f, vec2<u32>(40024u, 50373u)));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>) -> vec2<u32> {
    var var_0 = ~vec2<u32>(4294967295u, global1.d.x);
    let var_1 = max(min(-(~(-vec4<i32>(0i, u_input.a, 36976i, 0i))), ~firstLeadingBit(vec4<i32>(-17839i, 0i, arg_1.x, arg_1.x) & vec4<i32>(55519i, 1i, u_input.a, u_input.a))), select(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, 60429i, global1.a.x, 2147483647i), vec4<i32>(2147483647i, global1.a.x, arg_1.x, global1.a.x)) | -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, 13159i, global1.a.x, 1i), vec4<i32>(u_input.a, global1.a.x, u_input.a, -54744i), vec4<i32>(12634i, global1.a.x, -2147483647i, 2147483647i)), vec4<i32>(29420i, ~1i, 10614i, arg_1.x), true));
    global1 = global0[_wgslsmith_index_u32(1u, 6u)];
    let var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32((_wgslsmith_sub_u32(u_input.d.x, global1.d.x) << (abs(41846u) % 32u)) ^ 81575u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(max(var_0.x, 4294967295u), 0u, u_input.d.x | 1u)))), 6u)];
    global0 = array<Struct_1, 6>();
    return global1.d;
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    global0 = array<Struct_1, 6>();
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(13174u, ((1u >> (arg_0.d.x % 32u)) ^ _wgslsmith_mod_u32(u_input.c.x, global1.d.x)) >> (4294967295u % 32u)), 6u)];
    let var_0 = ~(~vec4<u32>(reverseBits(1u), 4294967295u, ~abs(global1.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.d.x, global1.d.x, global1.d.x), countOneBits(vec4<u32>(global1.d.x, 3473u, 0u, arg_0.d.x)))));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.d.x, global1.d.x), 6u)];
    global1 = Struct_1(reverseBits(-arg_0.a), global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -399f), false))), _wgslsmith_f_op_f32(-1097f - 1249f)), var_0.ww);
    return ~select(_wgslsmith_add_vec2_u32(u_input.b.yy, abs(arg_0.d)), _wgslsmith_mod_vec2_u32(vec2<u32>(global1.d.x, u_input.d.x), func_3(vec3<bool>(arg_0.b, true, arg_0.b), vec3<i32>(arg_0.a.x, 340i, arg_0.a.x))), !vec2<bool>(global1.b, true)) >> (~vec2<u32>(firstLeadingBit(select(arg_0.d.x, u_input.b.x, global1.b)), ~arg_0.d.x) % vec2<u32>(32u));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(-global1.a, 2147483647i < arg_1.a.x, global1.c, _wgslsmith_mod_vec2_u32(~global1.d, abs(func_2(arg_1))));
    global1 = global0[_wgslsmith_index_u32(abs(~(~_wgslsmith_div_u32(abs(global1.d.x), ~var_0.d.x))), 6u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(432f + -2457f)));
    let var_2 = !all(!(!vec3<bool>(var_0.b, global1.b, false)));
    global0 = array<Struct_1, 6>();
    return Struct_1(~(~select(vec3<i32>(42368i, -12319i, var_0.a.x), abs(arg_1.a), select(vec3<bool>(var_0.b, arg_1.b, true), vec3<bool>(false, var_2, var_2), vec3<bool>(false, true, arg_1.b)))), false, 1f, abs(~reverseBits(select(arg_1.d, vec2<u32>(arg_0.x, arg_0.x), vec2<bool>(global1.b, arg_1.b)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> vec3<i32> {
    var var_0 = Struct_1(countOneBits(reverseBits(arg_1.a)), false, global1.c, _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.d, arg_1.d) >> (firstLeadingBit(u_input.d.xx << (u_input.b.ww % vec2<u32>(32u))) % vec2<u32>(32u)), global1.d));
    let var_1 = func_1(u_input.d, Struct_1(vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-34681i, u_input.a, -27949i, 1i), vec4<i32>(arg_1.a.x, arg_1.a.x, -5251i, 0i)), func_1(vec3<u32>(arg_1.d.x, var_0.d.x, 0u), global0[_wgslsmith_index_u32(4294967295u, 6u)]).a.x), !func_1(vec3<u32>(4294967295u, arg_1.d.x, global1.d.x), Struct_1(arg_1.a, global1.b, var_0.c, arg_1.d)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-692f))), arg_1.d)).b & var_0.b;
    var_0 = func_1(u_input.d, Struct_1(arg_1.a, true, -1000f, ~(vec2<u32>(global1.d.x, u_input.c.x) & u_input.d.yz) << (func_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(9185u, arg_2, 56546u), 6u)]) % vec2<u32>(32u))));
    var var_2 = abs(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(arg_1.a.x, ~2147483647i), func_1(_wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(4294967295u, 30021u, 0u), vec3<u32>(13186u, 4294967295u, var_0.d.x)), func_1(vec3<u32>(39276u, u_input.d.x, 4612u), Struct_1(var_0.a, false, var_0.c, vec2<u32>(11466u, arg_2)))).a.x), var_0.a.xz));
    var var_3 = arg_1.d;
    return abs(vec3<i32>(func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.d.x, 51595u, 64350u), vec3<u32>(1u, var_0.d.x, global1.d.x)), arg_1).a.x >> (arg_1.d.x % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -31169i, arg_1.a.x, global1.a.x), ~vec4<i32>(u_input.a, 2147483647i, 1i, -40081i)), _wgslsmith_mod_i32(reverseBits(u_input.a), u_input.a ^ arg_1.a.x)), -countOneBits(2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-_wgslsmith_dot_vec4_i32(~(~vec4<i32>(39856i, global1.a.x, 1i, u_input.a)), ~countOneBits(vec4<i32>(60809i, 27733i, 62503i, 4757i))));
    let var_1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_vec3_i32(func_4(select(vec3<bool>(true, global1.b, false), vec3<bool>(global1.b, false, true), vec3<bool>(false, false, global1.b)), func_1(u_input.c, global0[_wgslsmith_index_u32(global1.d.x, 6u)]), firstTrailingBit(var_1.x)), global1.a)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-317f, -213f, -138f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-187f, -623f, global1.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(global1.c)), global1.c, _wgslsmith_f_op_f32(f32(-1f) * -122f))))));
}

