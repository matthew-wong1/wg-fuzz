struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = min(u_input.e.x, ~(-6176i) | _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.e.x), vec4<i32>(6761i, 1i, u_input.a, u_input.c))) << ((countOneBits(_wgslsmith_div_u32(u_input.b, 0u)) & 1u) % 32u);
    global0 = select(select(select(vec2<bool>(any(vec2<bool>(global0.x, true)), true), vec2<bool>(false, global0.x || true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(global0.x, false))), vec2<bool>(!(!global0.x), all(vec4<bool>(global0.x, global0.x, true, global0.x))), any(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x))) || true), select(select(vec2<bool>(true, global0.x), select(!vec2<bool>(global0.x, true), vec2<bool>(global0.x, true), any(vec3<bool>(global0.x, global0.x, false))), !(!vec2<bool>(false, global0.x))), select(select(!vec2<bool>(global0.x, global0.x), select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), vec2<bool>(global0.x, false)), 4294967295u != u_input.d.x), vec2<bool>(all(vec3<bool>(global0.x, true, true)), any(vec2<bool>(false, false))), false), any(vec3<bool>(global0.x != global0.x, any(vec3<bool>(false, false, global0.x)), true))), vec2<bool>(true, global0.x));
    let var_1 = any(vec2<bool>(any(select(!vec3<bool>(false, global0.x, true), !vec3<bool>(false, false, global0.x), true)), select((u_input.d.x >= u_input.d.x) & any(vec3<bool>(false, global0.x, false)), global0.x, false | global0.x)));
    global0 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(var_1, true), vec2<bool>(true, true), vec2<bool>(var_1, var_1)), global0.x & var_1), select(vec2<bool>(global0.x, var_1), select(vec2<bool>(true, global0.x), vec2<bool>(var_1, true), vec2<bool>(false, var_1)), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), vec2<bool>(true, true))), var_1 | true), !vec2<bool>(true, any(vec4<bool>(false, true, var_1, false))), !select(select(vec2<bool>(global0.x, false), vec2<bool>(var_1, true), false), select(vec2<bool>(false, global0.x), vec2<bool>(var_1, global0.x), global0.x), any(vec3<bool>(global0.x, var_1, var_1))));
    global0 = select(!(!select(vec2<bool>(var_1, var_1), !vec2<bool>(global0.x, var_1), select(vec2<bool>(true, global0.x), vec2<bool>(false, var_1), var_1))), vec2<bool>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 19126u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 29884u))) < u_input.b, all(select(!vec2<bool>(global0.x, false), vec2<bool>(false, true), var_1 | true))), !var_1);
    return vec3<bool>(1i >= var_0, true, !(!(global0.x && any(vec3<bool>(false, var_1, var_1)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec3<bool>) -> u32 {
    var var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_f32(1599f - 1404f);
    global0 = arg_2.xx;
    var var_2 = vec2<bool>(arg_2.x, false);
    var var_3 = vec3<u32>(~(~u_input.b), 5835u, ~max(u_input.d.x, ~0u));
    return ~(~abs(arg_0.c.x));
}

fn func_2() -> bool {
    var var_0 = countOneBits(u_input.d.x);
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-945f, -1589f)) * vec2<f32>(829f, 936f)), 816f), global0.x), all(!vec3<bool>(any(vec4<bool>(true, global0.x, global0.x, true)), global0.x, true)), vec4<u32>(func_4(Struct_4(Struct_3(-2416f, Struct_1(vec2<f32>(-2016f, -502f), -1616f), global0.x), true, vec4<u32>(1u, 4294967295u, u_input.b, 4294967295u) >> (vec4<u32>(u_input.d.x, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), reverseBits(u_input.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(563f, -459f, 1000f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1948f, 571f, 321f)))), func_3()), u_input.b, u_input.b ^ firstTrailingBit(~u_input.b), 16833u << (u_input.d.x % 32u)), ~105650u);
    let var_2 = ~26674u;
    global0 = !vec2<bool>(any(select(vec3<bool>(var_1.b, global0.x, var_1.a.c), vec3<bool>(var_1.b, false, global0.x), !vec3<bool>(global0.x, false, true))), all(!select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), global0.x)));
    let var_3 = any(select(vec3<bool>(false, false, func_3().x), vec3<bool>(var_1.a.b.a.x > var_1.a.a, var_1.b, !global0.x), select(!vec3<bool>(var_1.b, var_1.b, global0.x), !vec3<bool>(false, global0.x, false), true))) || global0.x;
    return any(!vec2<bool>(global0.x, true == global0.x));
}

fn func_1() -> u32 {
    var var_0 = all(vec2<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(global0.x, global0.x, false), global0.x)), global0.x));
    var_0 = !(16831u <= ~(~u_input.b));
    global0 = vec2<bool>(!global0.x, !(!global0.x));
    var var_1 = u_input.c;
    let var_2 = vec4<bool>(false, false, (_wgslsmith_div_i32(countOneBits(-1557i), -85960i) ^ (1i | u_input.e.x)) > 0i, func_2());
    return countOneBits(14205u);
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_4 {
    global0 = !vec2<bool>(global0.x, all(vec3<bool>(u_input.a != u_input.a, true, any(vec3<bool>(true, global0.x, global0.x)))));
    let var_0 = true;
    let var_1 = Struct_4(Struct_3(1203f, Struct_1(vec2<f32>(489f, _wgslsmith_f_op_f32(f32(-1f) * -968f)), _wgslsmith_f_op_f32(-366f - 1000f)), false), global0.x, vec4<u32>(func_1(), 26007u, 0u, ~(26231u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, arg_0), vec3<u32>(arg_0, 4294967295u, 1u)) % 32u))), u_input.b);
    let var_2 = 1u;
    var var_3 = var_1.a.b;
    return Struct_4(Struct_3(_wgslsmith_f_op_f32(473f * _wgslsmith_f_op_f32(floor(-1000f))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_3.a))), _wgslsmith_f_op_f32(select(-307f, _wgslsmith_f_op_f32(max(-318f, arg_1.a)), false == var_0))), global0.x), func_2(), vec4<u32>((var_2 ^ u_input.d.x) | _wgslsmith_add_u32(41070u, ~4294967295u), var_2, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.c.yww, var_1.c.xxx), _wgslsmith_clamp_vec3_u32(var_1.c.xxw, var_1.c.yww, var_1.c.zxy)) << (min(arg_0 >> (115638u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, var_1.c.x, 4294967295u), var_1.c.zyx)) % 32u), _wgslsmith_dot_vec3_u32(select(var_1.c.wyw, var_1.c.yxx, vec3<bool>(true, true, var_0)) << (_wgslsmith_mult_vec3_u32(var_1.c.ywx, vec3<u32>(57113u, 5079u, 1u)) % vec3<u32>(32u)), ~(~var_1.c.zxz))), _wgslsmith_add_u32(~u_input.b, var_1.c.x) >> (firstLeadingBit(~(~u_input.d.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(select(!vec2<bool>(!global0.x, false), vec2<bool>(global0.x, global0.x), true), select(select(!select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(true, global0.x)), select(!vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), true), false), select(vec2<bool>(true, true), select(vec2<bool>(global0.x, false), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), true), all(vec4<bool>(false, global0.x, global0.x, false))), vec2<bool>(true, global0.x || false)), global0.x), !(!((2147483647i != u_input.e.x) == global0.x)));
    global0 = !select(select(select(vec2<bool>(true, false), !vec2<bool>(true, global0.x), !vec2<bool>(false, global0.x)), select(vec2<bool>(global0.x, true), vec2<bool>(false, true), true), !global0.x), vec2<bool>(all(select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(false, global0.x, false, global0.x))), all(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), global0.x))), (!global0.x && false) | false);
    let var_0 = func_5(func_1(), Struct_2(-1000f));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(max(vec3<i32>(-16293i, 1i, _wgslsmith_dot_vec2_i32(u_input.e, u_input.e)), ~(~vec3<i32>(u_input.c, u_input.c, -28985i)))), abs(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.e.x, u_input.c), vec3<i32>(0i, -6608i, u_input.e.x)) ^ ~(-13585i), 40802i, -u_input.e.x, 12278i)), -3274f, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.a, _wgslsmith_f_op_f32(max(749f, _wgslsmith_f_op_f32(select(-2458f, var_0.a.b.b, false))))))), vec2<f32>(1081f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f))));
}

