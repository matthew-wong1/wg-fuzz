struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2>;

var<private> global1: array<vec4<f32>, 1>;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(-39785i, vec2<bool>(false, false), vec4<f32>(1286f, 1000f, -119f, -1742f)), Struct_1(2147483647i, vec2<bool>(false, false), vec4<f32>(-740f, -1364f, -402f, 666f)), Struct_1(-11734i, vec2<bool>(true, false), vec4<f32>(1000f, -412f, -1673f, 300f)), Struct_1(32490i, vec2<bool>(false, true), vec4<f32>(202f, -265f, -671f, -382f)), Struct_1(1i, vec2<bool>(false, true), vec4<f32>(-775f, 189f, 324f, 704f)), Struct_1(-931i, vec2<bool>(true, true), vec4<f32>(546f, -357f, 1258f, 511f)), Struct_1(28815i, vec2<bool>(false, false), vec4<f32>(1000f, -1614f, -994f, -313f)), Struct_1(2132i, vec2<bool>(true, true), vec4<f32>(2393f, 530f, 325f, -732f)), Struct_1(1i, vec2<bool>(false, false), vec4<f32>(223f, -393f, 1899f, -901f)), Struct_1(60062i, vec2<bool>(false, false), vec4<f32>(1000f, 741f, -159f, -1117f)), Struct_1(-18371i, vec2<bool>(true, false), vec4<f32>(-574f, -1036f, -736f, 1105f)), Struct_1(-1i, vec2<bool>(true, true), vec4<f32>(-1181f, 1118f, -350f, -408f)), Struct_1(0i, vec2<bool>(false, true), vec4<f32>(-857f, 1062f, 637f, 933f)), Struct_1(-22261i, vec2<bool>(true, false), vec4<f32>(-2618f, -728f, -667f, 1293f)), Struct_1(2742i, vec2<bool>(true, true), vec4<f32>(-1000f, 856f, -675f, -1036f)), Struct_1(13384i, vec2<bool>(true, false), vec4<f32>(-2265f, 745f, 1868f, 636f)), Struct_1(1i, vec2<bool>(false, false), vec4<f32>(507f, 1133f, -640f, 973f)), Struct_1(1i, vec2<bool>(false, true), vec4<f32>(-237f, -571f, 227f, -189f)), Struct_1(-1i, vec2<bool>(true, true), vec4<f32>(786f, -594f, -285f, 813f)));

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -1i);

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<u32>) -> i32 {
    var var_0 = arg_0;
    var_0 = Struct_1(global4.a >> (~_wgslsmith_clamp_u32(1u, u_input.e << (4294967295u % 32u), arg_2.x << (51079u % 32u)) % 32u), !global4.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(108f, arg_0.c.x)))));
    let var_1 = Struct_1(-_wgslsmith_div_i32(-1i, ~(~global4.a)), !vec2<bool>(false, !arg_0.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global4.c, vec4<f32>(arg_0.c.x, -321f, global4.c.x, var_0.c.x)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.x, 202f, 861f, var_0.c.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, arg_0.c.x, -1314f, arg_0.c.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1618f, arg_0.c.x, arg_0.c.x, 1103f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(863f, var_0.c.x, arg_0.c.x, -815f) - arg_0.c))));
    global2 = array<Struct_1, 19>();
    let var_2 = var_0.b.x;
    return -1i;
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    global1 = array<vec4<f32>, 1>();
    global0 = array<vec4<i32>, 2>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.e >> (reverseBits(8411u) % 32u), 19u)];
    global2 = array<Struct_1, 19>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(1u, ~firstTrailingBit(1u)) >> (u_input.b.x % 32u), ~(~u_input.b.x)), 19u)];
    return _wgslsmith_sub_i32(-49800i, -1i << (0u % 32u));
}

fn func_2() -> i32 {
    let var_0 = -1i;
    var var_1 = Struct_1(23596i | func_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1060f, global4.c.x, -475f, global4.c.x) + vec4<f32>(global4.c.x, 1440f, -651f, global4.c.x))))), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1153f, -565f, -1710f, global4.c.x))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.c.x, -319f, global4.c.x, -973f), global4.c))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.e & u_input.d.x, 1u)]), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.c.x, -328f, 570f, global4.c.x), _wgslsmith_div_vec4_f32(vec4<f32>(-700f, global4.c.x, global4.c.x, global4.c.x), vec4<f32>(global4.c.x, 896f, global4.c.x, -1632f))))))));
    let var_2 = select(vec3<bool>(all(select(global4.b, global4.b, select(vec2<bool>(global4.b.x, true), global4.b, vec2<bool>(false, var_1.b.x)))), var_1.b.x & !(false || global4.b.x), (global4.b.x || var_1.b.x) & true), vec3<bool>(all(vec4<bool>(global4.b.x, 0i == var_1.a, false, u_input.a.x == global4.a)), var_1.b.x, !(!all(vec4<bool>(var_1.b.x, global4.b.x, var_1.b.x, var_1.b.x)))), var_1.c.x <= _wgslsmith_f_op_f32(-var_1.c.x));
    var var_3 = _wgslsmith_f_op_f32(max(-328f, -1707f));
    var_1 = global2[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec3_u32(~(~u_input.d), select(~u_input.d, ~vec3<u32>(u_input.e, 5769u, 0u), vec3<bool>(global4.b.x, false, true)))), 19u)];
    return 67967i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-20720i, func_1(Struct_1(45560i, vec2<bool>(false, true), vec4<f32>(global4.c.x, -585f, global4.c.x, global4.c.x)), u_input.a.zxz, ~vec4<u32>(44007u, u_input.c.x, 1u, u_input.b.x))), -_wgslsmith_sub_i32(53i, u_input.a.x)), ~func_2(), global3.x);
    var var_1 = Struct_1(global4.a, !vec2<bool>(!global4.b.x, global4.b.x), global4.c);
    var var_2 = vec4<f32>(1399f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_1.c.x)) + global4.c.x))), -399f, _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(max(var_1.c.x, 382f))));
    var var_3 = u_input.a.x;
    global1 = array<vec4<f32>, 1>();
    global3 = global0[_wgslsmith_index_u32(u_input.d.x, 2u)];
    var var_4 = Struct_1(1i, global4.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(282f, 704f, var_1.b.x)))), 260f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - 597f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) - -1000f))));
    let var_5 = false;
    var var_6 = _wgslsmith_add_vec3_u32(select(~abs(u_input.d ^ vec3<u32>(59888u, 23449u, 4294967295u)), vec3<u32>(21713u, ~9733u, ~firstLeadingBit(u_input.c.x)), select(vec3<bool>(var_4.b.x, false, all(vec3<bool>(var_4.b.x, global4.b.x, var_1.b.x))), select(vec3<bool>(var_1.b.x, false, false), vec3<bool>(false, var_4.b.x, var_1.b.x), !vec3<bool>(true, true, var_1.b.x)), var_5)), vec3<u32>(u_input.e, 542u, _wgslsmith_mod_u32(u_input.e, 25292u)) << (u_input.b % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_4.c, global4.c)), var_4.c)))), _wgslsmith_div_i32(u_input.a.x, -45912i), 1u >> (~max(u_input.e, 1u) % 32u), select(firstTrailingBit(~(~vec4<u32>(98384u, 40898u, 0u, var_6.x))), ~(~vec4<u32>(0u, 1u, u_input.d.x, u_input.e)), vec4<bool>(_wgslsmith_f_op_f32(var_2.x - 704f) != _wgslsmith_f_op_f32(-var_4.c.x), all(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_5)), true, all(select(vec3<bool>(true, global4.b.x, global4.b.x), vec3<bool>(var_5, true, true), vec3<bool>(true, false, var_4.b.x))))), var_4.c.yyx);
}

