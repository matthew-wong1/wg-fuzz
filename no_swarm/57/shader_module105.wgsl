struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
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

var<private> global0: array<Struct_1, 17>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 17>();
    global1 = select(select(!vec3<bool>(1u > u_input.b, global1.x, any(vec3<bool>(false, global1.x, global1.x))), !vec3<bool>(true, true, global1.x), select(vec3<bool>(true, global1.x, select(false, true, global1.x)), select(!vec3<bool>(global1.x, true, false), select(vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, true, global1.x)), vec3<bool>(true, true, true)), vec3<bool>(u_input.c.x > u_input.a.x, global1.x, global1.x))), select(vec3<bool>(any(select(vec2<bool>(true, global1.x), global1.xz, vec2<bool>(true, global1.x))), true | (u_input.a.x < u_input.a.x), true), select(vec3<bool>(false, false, true), vec3<bool>(true, any(vec4<bool>(global1.x, true, false, false)), global1.x), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true), true)), true), global1.x);
    let var_0 = -378f;
    var var_1 = Struct_1(_wgslsmith_div_f32(var_0, 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-894f, var_0, -291f, -493f), vec4<f32>(var_0, 487f, -334f, var_0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -1099f)))))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-736f)) - var_0)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0, 643f)))) + _wgslsmith_f_op_f32(ceil(342f)))), _wgslsmith_f_op_vec4_f32(max(var_1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1f, _wgslsmith_f_op_f32(var_0 - var_1.c), _wgslsmith_f_op_f32(219f * var_0)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_1.b.x, var_0, var_0), vec4<f32>(var_0, 882f, var_0, -335f))))), var_0);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(abs(-816f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3()), vec4<f32>(-1451f, _wgslsmith_div_f32(-713f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -660f)))), 799f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-504f * -588f), _wgslsmith_div_f32(-410f, _wgslsmith_f_op_f32(round(265f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2296f * -1616f), -148f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1235f, -1546f))))), 374f)));
    let var_1 = !(!select(vec3<bool>(true, any(vec2<bool>(false, true)), u_input.b < u_input.b), !vec3<bool>(global1.x, true, global1.x), !all(vec3<bool>(false, global1.x, global1.x))));
    var var_2 = arg_0.x;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.a)), _wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, _wgslsmith_div_f32(1050f, 453f), 714f, _wgslsmith_f_op_f32(floor(-620f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.b, vec4<f32>(var_0.b.x, -1000f, var_0.c, -413f), global1.x)) + vec4<f32>(var_0.a, var_0.b.x, var_0.c, var_0.b.x)), any(!vec4<bool>(global1.x, true, false, false))))), -835f);
    global0 = array<Struct_1, 17>();
    return Struct_1(var_0.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1367f, -1424f)), 1261f, _wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(sign(var_0.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1299f, var_0.c, var_0.c, var_0.a)))), var_0.c);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(select(~u_input.b, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(62569u, u_input.b, u_input.b, 4294967295u), select(vec4<u32>(1u, u_input.b, u_input.b, 1u), vec4<u32>(0u, u_input.b, u_input.b, 4564u), vec4<bool>(false, global1.x, global1.x, global1.x)), !vec4<bool>(global1.x, false, false, false)), firstTrailingBit(reverseBits(vec4<u32>(u_input.b, u_input.b, 30862u, u_input.b)))), false)), 17u)];
    var var_1 = !(!select(select(!vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x)), select(select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(false, false, global1.x, global1.x)), !vec4<bool>(true, global1.x, global1.x, false), !global1.x), global1.x));
    var var_2 = Struct_1(877f, vec4<f32>(var_0.b.x, func_2(min(u_input.c.zww, vec3<i32>(2147483647i, u_input.c.x, u_input.c.x) >> (vec3<u32>(4294967295u, 4294967295u, u_input.b) % vec3<u32>(32u))), vec2<u32>(abs(70480u), max(0u, u_input.b))).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(var_0.c * 1571f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - 1000f)), _wgslsmith_f_op_f32(154f - _wgslsmith_f_op_f32(select(-1370f, -648f, global1.x)))))), 1129f);
    global0 = array<Struct_1, 17>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(ceil(var_0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - -756f)), var_2.b.x))), vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1906f, 471f)), -1036f, global1.x)) + 247f), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-306f)))), arg_0.b.x);
    return 18047i;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = vec4<i32>(~arg_1, -abs(u_input.c.x), 2147483647i, -abs(func_4(func_2(vec3<i32>(1i, arg_1, u_input.c.x), vec2<u32>(4294967295u, 6754u)))));
    global1 = vec3<bool>(true, !any(vec2<bool>(global1.x, global1.x)), true);
    global1 = select(select(!select(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, false, global1.x), global1.x), !vec3<bool>(global1.x, false, false), select(vec3<bool>(global1.x, false, false), vec3<bool>(true, global1.x, global1.x), global1.x)), vec3<bool>(all(!global1.yz), all(vec4<bool>(true, global1.x, true, true)), !global1.x & true), vec3<bool>(all(!vec3<bool>(global1.x, true, true)), !any(vec4<bool>(global1.x, false, global1.x, global1.x)), select(true, global1.x, true))), !vec3<bool>(77116u != u_input.b, select(global1.x, !global1.x, any(vec3<bool>(global1.x, global1.x, global1.x))), select(!global1.x, true, global1.x)), vec3<bool>(arg_0.x != _wgslsmith_div_f32(-1424f, arg_0.x), !global1.x, u_input.c.x != firstTrailingBit(-31239i)));
    let var_1 = all(vec2<bool>(false, true)) || false;
    var var_2 = func_2(vec3<i32>(var_0.x, arg_1, _wgslsmith_div_i32(17356i, abs(var_0.x))) >> (~_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.b, 85746u, 31353u), vec3<u32>(0u, 4294967295u, u_input.b)), reverseBits(vec3<u32>(u_input.b, 0u, u_input.b))) % vec3<u32>(32u)), select(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(_wgslsmith_mult_u32(41896u, u_input.b), u_input.b), -44607i >= _wgslsmith_dot_vec2_i32(var_0.ww, vec2<i32>(1i, -1i))) & ~(~(~vec2<u32>(u_input.b, u_input.b))));
    return func_2(var_0.ywy, vec2<u32>(u_input.b, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.b, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 17u)];
    var_0 = func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.c) * vec2<f32>(1203f, _wgslsmith_f_op_f32(-858f + 1149f))))), ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, u_input.a.x), u_input.a.x << (0u % 32u)));
    var var_1 = vec3<bool>(max(firstTrailingBit(73871u), select(_wgslsmith_mult_u32(u_input.b, 1u), 22555u, any(global1.yx))) > firstLeadingBit(_wgslsmith_div_u32(u_input.b, ~58008u)), select(!global1.x, true, -u_input.c.x > func_4(Struct_1(var_0.c, vec4<f32>(1000f, 1415f, var_0.a, var_0.b.x), var_0.a))), global1.x);
    var var_2 = vec4<bool>(var_0.c != _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-723f - 713f) * -103f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a))), all(select(vec2<bool>(global1.x, true), var_1.yy, false)), any(vec3<bool>(all(vec3<bool>(global1.x, var_1.x, var_1.x)), max(u_input.b, u_input.b) > 0u, global1.x)), min(u_input.b, ~(~u_input.b)) < 14049u);
    var var_3 = u_input.c.x;
    var_3 = -2147483647i;
    let var_4 = func_2(vec3<i32>(i32(-1i) * -2843i, _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.c) ^ reverseBits(vec4<i32>(-38172i, 1i, u_input.c.x, -15614i)), vec4<i32>(-1i) * -u_input.c), -(27208i >> (firstTrailingBit(4294967295u) % 32u))), ~vec2<u32>(1u, ~u_input.b) & (~(~vec2<u32>(u_input.b, 4294967295u)) >> (_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(45304u, 1u), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u))));
    var var_5 = func_2(vec3<i32>(-(u_input.c.x >> (4294967295u % 32u)), u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, 9619i)) << (reverseBits(vec3<u32>(u_input.b, u_input.b, 1u)) % vec3<u32>(32u)), min(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 10852u), vec2<u32>(u_input.b, u_input.b))) ^ vec2<u32>(u_input.b & u_input.b, u_input.b), ~vec2<u32>(1u, reverseBits(1u))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a.x));
}

