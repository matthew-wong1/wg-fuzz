struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(2147483647i, false), Struct_5(1i, true), Struct_5(-12375i, true), Struct_5(-26974i, false), Struct_5(2147483647i, false));

var<private> global2: array<Struct_1, 20>;

var<private> global3: array<u32, 6> = array<u32, 6>(39199u, 1u, 4294967295u, 13497u, 935u, 36772u);

var<private> global4: array<f32, 32> = array<f32, 32>(-1719f, 329f, 580f, -655f, 160f, 815f, -678f, 2021f, -1000f, -1000f, 1157f, -544f, -556f, -2399f, -941f, 575f, 268f, 1000f, 234f, 2330f, -1267f, 597f, -658f, -2152f, 952f, -437f, 433f, 651f, 1474f, 451f, -491f, -783f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_5) -> i32 {
    let var_0 = Struct_3(arg_2.x, global2[_wgslsmith_index_u32(u_input.b.x, 20u)]);
    global2 = array<Struct_1, 20>();
    global1 = array<Struct_5, 5>();
    return 48771i;
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 6>();
    var var_0 = u_input.b.xz;
    global3 = array<u32, 6>();
    var var_1 = global4[_wgslsmith_index_u32(~0u, 32u)];
    let var_2 = -vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-4548i, -1i, 1i, 18337i)), ~vec4<i32>(22520i, 52303i, 3757i, 5572i)) >> (var_0.x % 32u), ~2147483647i, countOneBits(1i));
    return global3[_wgslsmith_index_u32(1u, 6u)];
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_4(_wgslsmith_add_vec2_i32(vec2<i32>(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-486f, -746f)), ~4294967295u, ~u_input.b, Struct_5(9512i, arg_0.x)), 1i), vec2<i32>(select(2691i, -2147483647i, false), firstLeadingBit(-2147483647i)) >> ((u_input.a.zw << (_wgslsmith_div_vec2_u32(u_input.a.zy, vec2<u32>(17050u, u_input.d)) % vec2<u32>(32u))) % vec2<u32>(32u))), u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(arg_1))))));
    var var_1 = _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_3(), 6u)], 32u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -216f), 181f)), arg_0.x));
    var_1 = arg_1.x;
    let var_2 = Struct_4(var_0.a, 67395u, arg_1);
    global0 = array<Struct_2, 6>();
    return ~max(~4294967295u << (select(1u, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, 1u, 15325u), 6u)], arg_0.x) % 32u), _wgslsmith_dot_vec3_u32(u_input.a.xyw, ~vec3<u32>(1u, 629u, var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(func_1(select(vec4<bool>(true, true, any(vec2<bool>(false, false)), true), vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.d, 32u)] >= global4[_wgslsmith_index_u32(0u, 32u)], true, true), true), vec3<f32>(752f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 32u)]) - 1f), _wgslsmith_f_op_f32(floor(-728f)))), global3[_wgslsmith_index_u32(reverseBits(abs(global3[_wgslsmith_index_u32(reverseBits(func_1(vec4<bool>(true, false, false, false), vec3<f32>(global4[_wgslsmith_index_u32(u_input.c, 32u)], -171f, 618f))), 6u)])), 6u)]), 5u)];
    var var_1 = vec4<bool>(select(var_0.b, true, any(vec3<bool>(all(vec3<bool>(false, false, true)), true, !var_0.b))), true, all(!(!select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, var_0.b)))), any(select(!vec3<bool>(true, var_0.b, false), vec3<bool>(true, var_0.b, true), all(select(vec4<bool>(var_0.b, var_0.b, false, false), vec4<bool>(true, false, true, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b))))));
    global1 = array<Struct_5, 5>();
    let var_2 = Struct_2(Struct_1(~u_input.a.zzz, -1186f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2375f, global4[_wgslsmith_index_u32(u_input.a.x, 32u)], 1272f) * vec3<f32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11210u, 6u)], 32u)], global4[_wgslsmith_index_u32(12569u, 32u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 6u)], 6u)], 32u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 32u)], global4[_wgslsmith_index_u32(1u, 32u)], 227f) + vec3<f32>(-1547f, 614f, global4[_wgslsmith_index_u32(0u, 32u)]))), any(vec4<bool>(var_1.x, var_0.b, true, true)))), ~vec4<u32>(select(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], var_0.b), 0u, ~12863u, global3[_wgslsmith_index_u32(24609u, 6u)]), !(!select(vec4<bool>(false, var_1.x, true, var_0.b), vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(true, var_0.b, var_0.b, var_0.b)))));
    let var_3 = !vec3<bool>(all(!vec3<bool>(false, true, var_0.b)), var_2.a.e.x != any(select(vec3<bool>(false, var_1.x, true), var_2.a.e.zzx, var_0.b)), !any(vec4<bool>(true, true, true, true)));
    var var_4 = -2272i >> (select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(7429u, ~74365u & _wgslsmith_dot_vec3_u32(var_2.a.a, var_2.a.d.yxw)), 6u)], 6u)], func_3(), true) % 32u);
    let var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(582f * -284f))));
    let var_6 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_dot_vec4_u32(var_2.a.d, ~u_input.a)), vec2<i32>(2147483647i, firstLeadingBit(-11546i)));
}

