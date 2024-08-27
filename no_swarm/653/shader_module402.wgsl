struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(4294967295u, 80u, 0u, 1u), vec4<u32>(28579u, 1u, 1u, 1u), vec4<u32>(18948u, 0u, 0u, 6633u), vec4<u32>(0u, 0u, 54991u, 1u), vec4<u32>(0u, 4294967295u, 4994u, 4294967295u), vec4<u32>(28477u, 37703u, 19225u, 4294967295u), vec4<u32>(35092u, 4941u, 72705u, 86309u), vec4<u32>(0u, 23453u, 0u, 39520u), vec4<u32>(18395u, 1u, 35607u, 1u), vec4<u32>(4294967295u, 25908u, 1u, 54084u), vec4<u32>(4294967295u, 103692u, 4294967295u, 0u), vec4<u32>(4294967295u, 91162u, 4294967295u, 0u), vec4<u32>(4294967295u, 62855u, 1u, 49691u), vec4<u32>(16625u, 19438u, 3961u, 55781u), vec4<u32>(13301u, 0u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, 13667u), vec4<u32>(4294967295u, 24466u, 4575u, 874u), vec4<u32>(0u, 63508u, 0u, 1935u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 18226u, 4294967295u, 1u), vec4<u32>(12021u, 0u, 55663u, 34679u), vec4<u32>(46387u, 39482u, 18643u, 13837u), vec4<u32>(12320u, 8321u, 0u, 1u), vec4<u32>(7406u, 4294967295u, 25570u, 31978u), vec4<u32>(10413u, 4294967295u, 16763u, 46436u), vec4<u32>(3506u, 4294967295u, 30634u, 46337u), vec4<u32>(1u, 0u, 0u, 26769u), vec4<u32>(47255u, 0u, 4294967295u, 1u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = array<vec4<u32>, 28>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.b.x, arg_0.a.b.x, u_input.d.x), _wgslsmith_mod_vec4_u32(arg_0.a.b, vec4<u32>(u_input.b.x, global0.b.x, 1u, 85014u))) ^ ~vec4<u32>(arg_0.b.b.x, 75884u, u_input.d.x, 20522u), true, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.a.x, -2354f))) >= _wgslsmith_f_op_f32(-arg_0.c)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a.x) + _wgslsmith_f_op_f32(abs(arg_0.a.a.x))), _wgslsmith_f_op_f32(ceil(global0.a.x))), global0.b, any(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0.a.d | false)), any(vec4<bool>(any(vec3<bool>(false, false, true)), all(vec3<bool>(global0.d, global0.c, arg_0.a.d)), all(vec4<bool>(false, true, true, true)), false))), 241f, max(firstTrailingBit(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, arg_0.d.x, 2147483647i, arg_0.d.x)), vec4<i32>(2147483647i, arg_0.d.x, 1i, u_input.c) ^ vec4<i32>(53298i, -51106i, u_input.a.x, arg_0.d.x))), vec4<i32>(arg_0.d.x, 0i, arg_0.d.x, 2147483647i)));
    var var_1 = ~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(24103u, u_input.b.x), vec2<u32>(arg_0.b.b.x, 15655u)) & ~_wgslsmith_clamp_u32(47730u, arg_0.b.b.x, global0.b.x)));
    var_1 = ~(~countOneBits(firstLeadingBit(var_0.a.b.x)) >> (_wgslsmith_mod_u32(~1u, arg_0.a.b.x) % 32u));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(698f)) * _wgslsmith_f_op_f32(-491f + -467f))))));
    return _wgslsmith_f_op_f32(min(550f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1784f) - 216f))))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: u32) -> vec3<bool> {
    let var_0 = -min(firstTrailingBit(21234i), u_input.c);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<f32>(-876f, global0.a.x, global0.a.x), vec4<u32>(45901u, 41016u, global0.b.x, 0u), false, false), Struct_1(global0.a, global1[_wgslsmith_index_u32(1u, 28u)], global0.c, global0.d), 1120f, vec4<i32>(arg_1.x, arg_1.x, u_input.a.x, -43537i)))))), global1[_wgslsmith_index_u32(reverseBits(~62076u), 28u)], global0.c, true), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-514f - global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1386f))), (~vec4<u32>(4294967295u, u_input.b.x, 4294967295u, u_input.b.x) >> ((global0.b << (global0.b % vec4<u32>(32u))) % vec4<u32>(32u))) | global1[_wgslsmith_index_u32(1u, 28u)], true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f * global0.a.x))))), -firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(53365i, 2147483647i)), var_0, _wgslsmith_add_i32(-44206i, u_input.c), ~var_0)));
    global1 = array<vec4<u32>, 28>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))));
    let var_3 = vec3<bool>(true, all(!(!vec3<bool>(false, global0.d, global0.c))), all(vec4<bool>(var_1.a.d & !global0.c, global0.c, !(global0.c | true), true)));
    return vec3<bool>(var_1.a.c, all(select(!select(vec3<bool>(var_1.b.d, var_1.a.d, true), var_3, true), var_3, select(vec3<bool>(true, false, true), select(vec3<bool>(var_1.b.d, global0.c, var_3.x), vec3<bool>(false, var_1.b.d, true), false), false))), all(!vec4<bool>(true, !global0.c, true, var_2 == -1247f)));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec3<bool>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = ~global0.b.x;
    var var_1 = global0.b.yzz;
    let var_2 = true;
    return Struct_1(vec3<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -483f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * _wgslsmith_f_op_f32(global0.a.x + global0.a.x)) - 1000f)), vec4<u32>(_wgslsmith_dot_vec2_u32(global0.b.xy, u_input.b), countOneBits(global0.b.x >> (4294967295u % 32u)) << (max(arg_1, ~var_1.x) % 32u), _wgslsmith_clamp_u32(var_1.x, u_input.b.x >> (_wgslsmith_add_u32(u_input.d.x, 1u) % 32u), _wgslsmith_mod_u32(26463u, 24499u)), ~min(global0.b.x, ~4294967295u)), true & (false == arg_2.x), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_1.x, 91722u, u_input.d.x)) | vec3<u32>(var_1.x, u_input.d.x, var_1.x), vec3<u32>(var_1.x, 19479u, 4294967295u) & min(u_input.d, vec3<u32>(16750u, 23928u, 25256u))) >= var_1.x);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    global0 = arg_0;
    global0 = arg_0;
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.a.zx)) * global0.a.xx)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), 603f);
    var var_1 = ~abs(arg_3);
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32) -> Struct_2 {
    global1 = array<vec4<u32>, 28>();
    let var_0 = Struct_2(func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_mult_u32(global0.b.x, global0.b.x), func_2(global0.b.x >> (global0.b.x % 32u), vec4<i32>(-2147483647i, -6038i, 53106i, -2147483647i), 4294967295u), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.a.x, arg_2, global0.a.x, 1744f)))), all(vec3<bool>(true, true, true)), true, -(vec4<i32>(-1i) * -vec4<i32>(39004i, u_input.c, -24272i, arg_0))), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a.x, global0.a.x, -714f), global0.a)), _wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(arg_2, arg_2, global0.a.x), global0.d)))))), max(max(vec4<u32>(1u, 0u, 51960u, 0u), global0.b), vec4<u32>(u_input.d.x, 25201u, 1u, ~u_input.b.x)), !all(select(vec4<bool>(global0.c, global0.d, false, true), vec4<bool>(global0.d, false, true, global0.c), global0.d)), false), func_4(func_4(_wgslsmith_f_op_f32(-174f * _wgslsmith_f_op_f32(-global0.a.x)), 36847u, vec3<bool>(!global0.c, global0.d, global0.b.x >= 0u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(193f, global0.a.x, -223f, -1108f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-945f, global0.a.x, arg_2, -1000f)), !global0.d))).a.x, 50622u, vec3<bool>(select(!global0.d, any(vec4<bool>(false, global0.c, global0.c, global0.d)), any(vec3<bool>(global0.d, false, global0.d))), global0.d, !global0.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1390f, arg_2, 695f, -1539f), vec4<f32>(415f, -552f, arg_2, global0.a.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_2, global0.a.x, global0.a.x), vec4<f32>(global0.a.x, -1000f, global0.a.x, arg_2))))).a.x, abs(abs(~(~vec4<i32>(2510i, 36066i, u_input.a.x, -2147483647i)))));
    let var_1 = Struct_3(Struct_2(var_0.a, Struct_1(global0.a, vec4<u32>(~61415u, var_0.a.b.x & 0u, 4294967295u, ~arg_1), all(func_2(20509u, var_0.d, 1u)), global0.c), -233f, vec4<i32>(-var_0.d.x, 1i, ~var_0.d.x, arg_0)));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-955f, var_1.a.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2131f, -409f) + 515f))), firstTrailingBit(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(17672u, var_0.b.b.x, 4294967295u, 91847u)), vec4<u32>(_wgslsmith_clamp_u32(global0.b.x, 4294967295u, 60837u), global0.b.x, ~29667u, _wgslsmith_mult_u32(0u, u_input.d.x)))), any(vec2<bool>(var_1.a.b.d, all(vec3<bool>(false, var_1.a.b.c, false)))), _wgslsmith_f_op_f32(min(-221f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.a.a.a.x)))))) <= _wgslsmith_f_op_f32(global0.a.x + 367f));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, arg_2, _wgslsmith_f_op_f32(exp2(arg_2))))), _wgslsmith_mult_vec4_u32(vec4<u32>(~var_1.a.a.b.x, _wgslsmith_clamp_u32(global0.b.x, var_0.b.b.x, var_0.b.b.x), 4294967295u, 4294967295u) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.a.b, vec4<u32>(0u, 4294967295u, 57385u, 4294967295u)), 0u >> (global0.b.x % 32u), select(arg_1, 26599u, var_0.b.d), global0.b.x) % vec4<u32>(32u)), var_1.a.b.b), 35541i > (-2147483647i << (~_wgslsmith_add_u32(17245u, var_1.a.a.b.x) % 32u)), true);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(u_input.c, _wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, global0.b.x), 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-584f + global0.a.x) - _wgslsmith_f_op_f32(1350f * -815f)))));
    let var_1 = abs(var_0.a.d.x);
    let var_2 = var_0.a.b.b;
    let var_3 = var_0.a.b;
    let var_4 = countOneBits(((-u_input.a ^ (var_0.a.d.zzy | var_0.a.d.yzz)) ^ -u_input.a) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 4294967295u, u_input.b.x), _wgslsmith_mod_vec3_u32(var_3.b.zyy, vec3<u32>(28794u, 1u, 28500u)) >> (max(vec3<u32>(4294967295u, global0.b.x, 0u), vec3<u32>(0u, global0.b.x, u_input.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(func_5(func_4(_wgslsmith_f_op_f32(1000f * var_3.a.x), 1u, vec3<bool>(true, true, false), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.a.x, -749f, global0.a.x, -1334f), vec4<f32>(-584f, var_0.a.c, var_3.a.x, var_0.a.b.a.x)))), false, true, select(-var_0.a.d, vec4<i32>(-1i, var_1, -28095i, var_0.a.d.x), !vec4<bool>(var_0.a.a.d, false, global0.d, global0.d))).a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(405f))), 937f)), _wgslsmith_add_i32(-1i, 1i), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.x, global0.b.x, 0u, u_input.b.x), _wgslsmith_mult_vec4_u32(var_3.b, vec4<u32>(var_3.b.x, u_input.d.x, 0u, 3059u))), firstLeadingBit(global0.b.x), var_3.b.x ^ firstLeadingBit(9087u)), u_input.b.x);
}

