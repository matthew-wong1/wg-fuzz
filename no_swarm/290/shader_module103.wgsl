struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1698f, -786f);

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_1(18696u, vec3<bool>(true, true, true))), 0u, Struct_2(vec4<u32>(11525u, 41032u, 0u, 4294967295u), Struct_1(6066u, vec3<bool>(true, true, true)), 4294967295u));

var<private> global2: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(Struct_1(24560u, vec3<bool>(false, false, false))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> vec4<u32> {
    let var_0 = ~vec2<u32>(~11582u, 0u);
    global1 = Struct_4(Struct_3(Struct_1(0u, !vec3<bool>(arg_2.a.b.x, arg_3, global1.a.a.b.x))), 21219u, Struct_2(select(_wgslsmith_mod_vec4_u32(vec4<u32>(28638u, 16196u, 37061u, arg_2.a.a) & vec4<u32>(arg_2.a.a, 32689u, 27625u, 25826u), global1.c.a), global1.c.a, !vec4<bool>(true, true, arg_1.a.b.x, arg_1.a.b.x)), Struct_1(~var_0.x, select(select(vec3<bool>(false, arg_3, global1.c.b.b.x), global1.a.a.b, arg_3), select(vec3<bool>(global1.a.a.b.x, false, true), vec3<bool>(arg_2.a.b.x, false, global1.a.a.b.x), global1.a.a.b.x), !arg_2.a.b.x)), global1.a.a.a));
    global1 = Struct_4(global1.a, _wgslsmith_mod_u32(min(max(global1.a.a.a, var_0.x) | 11827u, ~arg_2.a.a << (u_input.b.x % 32u)), 1u), Struct_2(~firstTrailingBit(min(vec4<u32>(arg_2.a.a, 21657u, 14729u, 1u), global1.c.a)), arg_2.a, arg_0.x));
    let var_1 = global0.x;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(209f)))));
    return global1.c.a;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = 0i;
    global2 = array<Struct_3, 1>();
    let var_1 = ~99984u;
    global1 = Struct_4(global2[_wgslsmith_index_u32(4294967295u, 1u)], _wgslsmith_dot_vec3_u32(~(~arg_2.a.zww), global1.c.a.ywz), arg_2);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) - -1116f);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(func_4(~2147483647i, global1.c.b, Struct_2(func_3(vec2<u32>(26280u, 10343u), global2[_wgslsmith_index_u32(u_input.b.x, 1u)], global2[_wgslsmith_index_u32(u_input.b.x, 1u)], global1.a.a.b.x), global1.a.a, ~u_input.b.x))), global0.x, _wgslsmith_f_op_f32(373f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -907f) - global0.x)))));
    let var_1 = _wgslsmith_add_i32(0i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~u_input.a, _wgslsmith_dot_vec2_i32(arg_0.xy, reverseBits(arg_0.zz)), 2147483647i), u_input.a));
    let var_2 = _wgslsmith_f_op_f32(-823f + arg_1);
    global2 = array<Struct_3, 1>();
    global1 = Struct_4(global1.a, abs(min(arg_2, ~u_input.b.x)), global1.c);
    return Struct_1(21793u, !global1.a.a.b);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3, arg_3: u32) -> Struct_2 {
    global1 = arg_1;
    var var_0 = false;
    var var_1 = func_2(-(~select(firstTrailingBit(vec3<i32>(u_input.a, -47314i, 2147483647i)), vec3<i32>(-20988i, -6058i, -30808i), !arg_0.b.b)), 434f, ~arg_1.a.a.a | arg_3);
    let var_2 = ~firstTrailingBit(vec2<i32>(-2147483647i, u_input.a & (0i >> (arg_3 % 32u))));
    var_0 = true;
    return Struct_2(vec4<u32>(~u_input.b.x, global1.b, ~22716u, abs(~abs(arg_2.a.a))), Struct_1(~37538u, !vec3<bool>(arg_2.a.b.x, false, func_2(vec3<i32>(0i, -2147483647i, -44837i), global0.x, 0u).b.x)), select(arg_3, ~0u, any(select(select(vec4<bool>(global1.c.b.b.x, var_1.b.x, arg_1.a.a.b.x, true), vec4<bool>(arg_2.a.b.x, true, global1.c.b.b.x, var_1.b.x), arg_0.b.b.x), !vec4<bool>(arg_2.a.b.x, arg_2.a.b.x, true, var_1.b.x), select(vec4<bool>(false, arg_0.b.b.x, false, true), vec4<bool>(global1.a.a.b.x, true, arg_1.a.a.b.x, arg_1.c.b.b.x), false)))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(845f, global0.x)))))));
    let var_0 = _wgslsmith_f_op_f32(-556f + global0.x);
    global1 = Struct_4(global2[_wgslsmith_index_u32(~49744u, 1u)], ~func_3(~(~vec2<u32>(arg_0.b.a, 9994u)), global1.a, Struct_3(global1.a.a), global1.a.a.b.x).x, Struct_2(countOneBits(vec4<u32>(50271u, ~46096u, global1.a.a.a, u_input.b.x)), func_2(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(-1i, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-1354f - -1991f), 1u), _wgslsmith_div_u32(0u, ~u_input.b.x)));
    let var_1 = vec2<f32>(var_0, 2237f);
    let var_2 = 87797u;
    return global1.c;
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = Struct_4(Struct_3(func_2(-vec3<i32>(u_input.a, u_input.a, -53029i) | -vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_f32(-134f - _wgslsmith_f_op_f32(ceil(-538f))), ~(u_input.b.x ^ arg_3.a.a))), abs(3046u), global1.c);
    global1 = Struct_4(Struct_3(func_1(var_0.c, Struct_4(Struct_3(global1.a.a), 1u, arg_1), Struct_3(func_1(global1.c, Struct_4(Struct_3(arg_3.a), var_0.a.a.a, Struct_2(arg_1.a, var_0.c.b, arg_2.x)), global2[_wgslsmith_index_u32(1u, 1u)], 0u).b), 63009u).b), arg_2.x, func_5(global1.c));
    var var_1 = Struct_3(global1.c.b);
    global1 = Struct_4(Struct_3(global1.a.a), 1u, Struct_2(arg_1.a, func_1(arg_1, Struct_4(Struct_3(global1.a.a), arg_1.b.a, arg_1), var_0.a, reverseBits(1u)).b, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(4294967295u, var_1.a.a)), ~10471u | var_1.a.a)));
    var_1 = Struct_3(var_1.a);
    return var_0.c;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_4) -> vec4<i32> {
    global2 = array<Struct_3, 1>();
    let var_0 = arg_0.b.b.yz;
    let var_1 = var_0;
    global1 = arg_3;
    global1 = arg_3;
    return ~vec4<i32>(2509i, arg_2.x, _wgslsmith_div_i32(-u_input.a, -arg_2.x), arg_2.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4523u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 1203u, arg_3.a.a.a), arg_1.a.zww) | min(arg_0.c, arg_1.c), firstLeadingBit(global1.a.a.a ^ 4294967295u), min(arg_3.b, ~arg_1.b.a)), abs(vec4<u32>(~61243u, 1u, select(43380u, 30884u, true), ~global1.c.c))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c;
    global2 = array<Struct_3, 1>();
    var var_1 = Struct_3(global1.a.a);
    var_1 = global2[_wgslsmith_index_u32(48440u, 1u)];
    var var_2 = select(vec2<bool>(any(!vec2<bool>(var_0.b.b.x, var_0.b.b.x)), u_input.a > -(~26944i)), var_0.b.b.zx, select(select(vec2<bool>(396f > global0.x, true), !(!vec2<bool>(var_0.b.b.x, true)), var_0.b.b.x), select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(global1.c.b.b.x, global1.a.a.b.x, var_1.a.b.x, global1.c.b.b.x))), vec2<bool>(any(vec4<bool>(true, false, global1.a.a.b.x, var_1.a.b.x)), false)), vec2<bool>(var_0.b.b.x, !(!var_1.a.b.x))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 2177f))), 1042f);
    var_0 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(func_7(Struct_2(_wgslsmith_div_vec4_u32(global1.c.a, var_0.a), Struct_1(u_input.b.x, !var_0.b.b), ~_wgslsmith_sub_u32(var_1.a.a, 33623u)), func_6(any(select(var_0.b.b.xx, vec2<bool>(false, global1.a.a.b.x), vec2<bool>(var_2.x, var_2.x))), func_5(func_1(global1.c, Struct_4(global1.a, 4294967295u, global1.c), Struct_3(Struct_1(var_0.c, vec3<bool>(var_2.x, var_1.a.b.x, global1.c.b.b.x))), var_0.c)), var_0.a.xx, Struct_3(func_5(Struct_2(vec4<u32>(var_0.c, 38861u, 0u, 1u), var_0.b, 4294967295u)).b)), vec2<i32>(u_input.a, _wgslsmith_mult_i32(1i, u_input.a & 0i)), Struct_4(global1.a, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b.x, 25168u), ~33351u), Struct_2(var_0.a, var_1.a, u_input.b.x))), abs(_wgslsmith_add_i32(u_input.a, 2147483647i)));
}

