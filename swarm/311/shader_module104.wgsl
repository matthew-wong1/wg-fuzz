struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: Struct_1 = Struct_1(380f, vec2<bool>(true, false), true, vec3<i32>(2147483647i, 20308i, 2147483647i));

var<private> global2: array<u32, 15>;

var<private> global3: array<Struct_2, 11>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global3 = array<Struct_2, 11>();
    global0 = array<u32, 15>();
    var var_0 = ~66577i;
    var var_1 = 541f;
    let var_2 = !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.b.x, false, true, global1.b.x), vec4<bool>(arg_0.b.x, true, false, global1.c), !arg_0.c), vec4<bool>(true, all(vec3<bool>(false, true, false)), true, true)), vec4<bool>(true || global1.c, all(select(global1.b, global1.b, vec2<bool>(false, true))), all(vec4<bool>(true, true, true, true)), global1.b.x || all(arg_0.b)), !arg_0.b.x);
    return u_input.c << (62205u % 32u);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = arg_2.a;
    let var_1 = global1.d.zx;
    let var_2 = -11518i;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.a + 532f), _wgslsmith_f_op_f32(min(-2197f, 1427f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.a, global1.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.a) * vec2<f32>(var_0.a, -385f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-453f, var_0.a) * vec2<f32>(1308f, arg_2.a.a)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(298f, 925f) * vec2<f32>(arg_2.a.a, arg_2.a.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, 207f) + vec2<f32>(-102f, 1457f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-947f, 852f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a, -327f), vec2<f32>(arg_2.c.a, global1.a), true)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(178f, 1000f), vec2<f32>(-1636f, arg_2.c.a))))))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a), 532f))) - _wgslsmith_f_op_f32(arg_2.a.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + -3109f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(705f, 1085f)))))));
    return select(!(!select(arg_2.a.b, select(global1.b, arg_2.a.b, var_0.b.x), false)), global1.b, !(!any(vec3<bool>(true, false, var_0.c))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> i32 {
    global3 = array<Struct_2, 11>();
    let var_0 = arg_1;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.a))), func_4(~func_3(Struct_1(var_0.a.a, vec2<bool>(false, true), true, vec3<i32>(arg_1.c.d.x, global1.d.x, var_0.a.d.x))), firstLeadingBit(1u), Struct_2(arg_1.c, vec3<u32>(34354u, var_0.b.x, 0u) >> (vec3<u32>(var_0.b.x, 1u, 2769u) % vec3<u32>(32u)), Struct_1(global1.a, arg_1.a.b, true, global1.d))), false & !global1.c, ~vec3<i32>(reverseBits(1i), _wgslsmith_sub_i32(-23598i, u_input.c), 1i)), arg_1.b, arg_1.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.c.a)), _wgslsmith_f_op_f32(f32(-1f) * -937f)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.a, global1.a), vec2<f32>(822f, var_0.a.a)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_f_op_f32(step(296f, var_1.a.a))))))));
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(4090u, 15u)], max(var_1.b.x, global2[_wgslsmith_index_u32(1u, 15u)]) << (~global2[_wgslsmith_index_u32(111156u, 15u)] % 32u)), firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(29801u, 15u)], u_input.a), _wgslsmith_mod_u32(18961u, global2[_wgslsmith_index_u32(105531u, 15u)]))), _wgslsmith_mod_u32(var_0.b.x, var_0.b.x), min(global0[_wgslsmith_index_u32(max(12634u, 43690u), 15u)], 41063u) >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(21692u, global2[_wgslsmith_index_u32(71364u, 15u)]), ~5319u) % 32u)), vec4<u32>(~_wgslsmith_mult_u32(var_1.b.x << (var_1.b.x % 32u), u_input.a), ~(~firstLeadingBit(arg_1.b.x)), ~abs(~global0[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_mod_u32(u_input.a, firstTrailingBit(countOneBits(1u)))));
    return 16448i;
}

fn func_1() -> Struct_1 {
    let var_0 = ~func_2(vec2<bool>(all(vec2<bool>(global1.c, global1.b.x)) || (11996i < u_input.c), !any(vec3<bool>(global1.c, global1.b.x, global1.b.x))), Struct_2(Struct_1(global1.a, global1.b, global1.c, vec3<i32>(-2147483647i, 2147483647i, global1.d.x)), ~(vec3<u32>(5931u, 42502u, 0u) & vec3<u32>(20143u, 0u, global0[_wgslsmith_index_u32(77683u, 15u)])), Struct_1(1202f, global1.b, !global1.b.x, vec3<i32>(global1.d.x, -26170i, u_input.c))));
    global0 = array<u32, 15>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-481f + _wgslsmith_f_op_f32(min(-187f, global1.a))), global1.a, false))), -1000f));
    global1 = Struct_1(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(floor(-1163f))), select(global1.b, global1.b, !(!(!global1.b.x))), all(!vec4<bool>(any(vec3<bool>(global1.b.x, global1.c, global1.b.x)), u_input.a == u_input.b, all(vec4<bool>(false, global1.b.x, global1.b.x, true)), 1i <= u_input.c)), global1.d);
    let var_2 = _wgslsmith_mod_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 15u)], 0u, global2[_wgslsmith_index_u32(68548u, 15u)])) | select(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], u_input.b, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(63132u, 0u, 10053u), vec3<u32>(1u, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)])), var_0 >= global1.d.x)), select(vec3<u32>(abs(abs(1u)), 11231u, ~global0[_wgslsmith_index_u32(7874u, 15u)]), ~vec3<u32>(1u, abs(0u), 1u), true && (abs(1u) <= ~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67573u, 15u)], 15u)])));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1770f), func_4(~(-_wgslsmith_mult_i32(-29410i, 46602i)), global2[_wgslsmith_index_u32(var_2.x, 15u)], global3[_wgslsmith_index_u32(~1u, 11u)]), global1.a > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a))), global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -896f;
    let var_1 = !vec4<bool>(!((global1.b.x || global1.c) | false), _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 15u)], u_input.a, u_input.a, u_input.a), firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(224u, 15u)], 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)], 12642u, global0[_wgslsmith_index_u32(u_input.a, 15u)]))) <= global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)], !global1.c, true);
    var var_2 = func_1();
    global3 = array<Struct_2, 11>();
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_2.a, _wgslsmith_f_op_f32(floor(global1.a)), func_4(var_2.d.x, global2[_wgslsmith_index_u32(16048u, 15u)], global3[_wgslsmith_index_u32(u_input.a, 11u)]).x)))), vec2<bool>(var_2.c, var_1.x), func_1().b.x, select(-abs(global1.d), ~(-vec3<i32>(-1i, var_2.d.x, u_input.c)), var_1.wzy)), ~vec3<u32>(~(~global2[_wgslsmith_index_u32(u_input.a, 15u)]), 1609u, 1u), Struct_1(_wgslsmith_f_op_f32(step(-675f, _wgslsmith_f_op_f32(sign(-638f)))), var_2.b, !(169f <= _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_sub_vec3_i32(global1.d | vec3<i32>(-39132i, 39067i, var_2.d.x), _wgslsmith_mod_vec3_i32(var_2.d, global1.d))));
    let var_4 = func_1().b;
    var var_5 = _wgslsmith_sub_i32(var_2.d.x, global1.d.x);
    var var_6 = Struct_1(_wgslsmith_f_op_f32(ceil(-1471f)), !var_2.b, true || var_3.a.b.x, _wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -14636i, var_3.a.d.x, _wgslsmith_mod_i32(0i, -2696i)) | -var_3.a.d, countOneBits(var_2.d)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1090f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~global2[_wgslsmith_index_u32(0u, 15u)], u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(17504u, 17742u), vec2<u32>(1u, 44190u))), vec3<u32>(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 15u)]), 0u, 1u)) & global0[_wgslsmith_index_u32(0u, 15u)], ~global1.d.x, ~6565u, _wgslsmith_f_op_f32(sign(var_3.a.a)));
}

