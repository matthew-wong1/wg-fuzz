struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: vec4<bool>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> vec3<i32> {
    var var_0 = ~u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-722f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-344f)) - -595f))));
    let var_2 = !global2.x;
    global1 = vec4<bool>(all(global1.wzw), false, !(!(_wgslsmith_f_op_f32(trunc(var_1)) == _wgslsmith_f_op_f32(var_1 - var_1))), !((var_1 < _wgslsmith_f_op_f32(1477f + -1000f)) || global2.x));
    let var_3 = vec4<bool>(var_2, !global2.x, global2.x, false);
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -abs(12344i), select(arg_0.x & -2147483647i, -4949i, true) << (1u % 32u), arg_0.x), countOneBits(_wgslsmith_sub_vec3_i32(arg_0, _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, -59649i, -16499i) >> (vec3<u32>(var_0.x, var_0.x, 33922u) % vec3<u32>(32u)), vec3<i32>(arg_0.x, 2147483647i, 0i) >> (u_input.b.zzx % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(arg_0, vec3<i32>(-22466i, arg_0.x, arg_0.x))))), -arg_0);
}

fn func_2() -> Struct_1 {
    global2 = global1.xy;
    let var_0 = Struct_2(countOneBits(vec4<i32>(1i, (0i >> (u_input.a % 32u)) | 1i, 0i, ~(~(-1i)))), _wgslsmith_sub_vec3_i32(~func_3(vec3<i32>(-32836i, 0i, -2147483647i)) >> (_wgslsmith_clamp_vec3_u32(u_input.b.ywx, vec3<u32>(9873u, u_input.a, u_input.a) >> (vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 116978u, u_input.a), vec3<u32>(1u, u_input.b.x, u_input.b.x))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(-(~vec3<i32>(8166i, 18246i, -1i)), firstLeadingBit(vec3<i32>(0i, 27131i, 1i)))), Struct_1(u_input.b.x, !select(!vec2<bool>(global2.x, false), global1.xx, select(global1.wy, vec2<bool>(true, global2.x), vec2<bool>(global1.x, global1.x)))));
    global2 = var_0.c.b;
    var var_1 = vec2<u32>(u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(select(u_input.b.zyw, u_input.b.yzy, true), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.a, var_0.c.a, u_input.a), u_input.b.wzw)), u_input.a) << (0u % 32u));
    let var_2 = Struct_2(vec4<i32>(var_0.b.x, -19030i ^ -min(var_0.b.x, -4795i), _wgslsmith_mod_i32(-firstLeadingBit(-2147483647i), _wgslsmith_add_i32(var_0.b.x, 5254i) << (~5801u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-2147483647i), -36717i), vec2<i32>(var_0.b.x, _wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(-1i, 2147483647i, -28190i, 1i))))), -var_0.b, var_0.c);
    return Struct_1(var_2.c.a, var_0.c.b);
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    global1 = !(!vec4<bool>(arg_0.b.x, any(vec4<bool>(arg_0.b.x, global1.x, false, global1.x)), global2.x, arg_0.b.x));
    return vec4<bool>(true, arg_0.b.x, any(arg_0.b) || true, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1280f * -1316f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1184f, -1104f)) - _wgslsmith_f_op_f32(f32(-1f) * -216f))) == (any(global1.wx) & all(vec3<bool>(global2.x, global2.x, true))));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec4<i32>) -> vec4<bool> {
    global1 = !select(vec4<bool>(false, true, global1.x, true | arg_1.a), select(vec4<bool>(true, global2.x && arg_1.a, false, false), vec4<bool>(any(vec2<bool>(false, global1.x)), all(vec4<bool>(global1.x, true, false, global1.x)), any(global1.xy), true), vec4<bool>(all(global1.xx), true, true, true)), max(~31461u, ~u_input.a) <= u_input.a);
    global1 = func_4(func_2());
    global1 = !vec4<bool>(false, global2.x, any(!(!global1.zwx)), true);
    let var_0 = Struct_2(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, max(-1i, arg_2.x), countOneBits(arg_2.x), firstLeadingBit(-2147483647i)), arg_2, ~arg_2 >> (u_input.b % vec4<u32>(32u)))), _wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(arg_2.x), -2147483647i, firstTrailingBit(min(-1i, 15556i))), arg_2.xzy), func_2());
    global0 = array<Struct_4, 28>();
    return select(select(vec4<bool>(true, global1.x, any(!vec2<bool>(var_0.c.b.x, var_0.c.b.x)), any(vec2<bool>(true, arg_1.a))), !(!vec4<bool>(global1.x, false, global1.x, var_0.c.b.x)), vec4<bool>(1u <= _wgslsmith_add_u32(arg_0, var_0.c.a), global2.x, _wgslsmith_f_op_f32(trunc(1928f)) > _wgslsmith_f_op_f32(230f + 1452f), _wgslsmith_f_op_f32(min(745f, -1406f)) == _wgslsmith_f_op_f32(floor(258f)))), select(vec4<bool>(global2.x, any(vec2<bool>(true, true)), false, func_2().b.x), !(!select(vec4<bool>(false, false, global1.x, false), vec4<bool>(arg_1.a, true, global2.x, false), vec4<bool>(false, var_0.c.b.x, global1.x, false))), vec4<bool>(true & (true && arg_1.a), arg_1.a, false, var_0.c.b.x)), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!(!select(vec4<bool>(global1.x, global1.x, global1.x, global2.x), vec4<bool>(true, false, global1.x, global2.x), !global1.x)), select(select(func_1(u_input.a, Struct_3(global2.x), ~vec4<i32>(-98292i, 39275i, 2147483647i, -2147483647i)), vec4<bool>(global2.x, any(vec4<bool>(true, global2.x, global2.x, global1.x)), global1.x, false), vec4<bool>(all(vec4<bool>(false, global1.x, global2.x, false)), func_2().b.x, true, global1.x)), vec4<bool>(!global2.x && false, func_2().b.x, !all(global1.xz), global1.x), vec4<bool>(true, false, false, true)), all(global1.xw));
    let var_0 = ~countOneBits(max(_wgslsmith_clamp_i32(1i, -85648i, -7166i) >> (30263u % 32u), _wgslsmith_mod_i32(0i << (1u % 32u), select(-1i, 2147483647i, true))));
    global2 = func_4(func_2()).wz;
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-376f, -234f), _wgslsmith_f_op_f32(-1277f + 535f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1215f, -499f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(584f, -472f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1643f, 259f), vec2<f32>(-801f, 1010f), global1.x)))))))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(223f)) - -1286f) + _wgslsmith_f_op_f32(810f - _wgslsmith_f_op_f32(select(var_1.x, 354f, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(u_input.a, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 3977u), abs(u_input.b.x)), !global2.x | false), vec2<i32>(~(var_0 ^ var_0) & var_0, _wgslsmith_div_i32(_wgslsmith_sub_i32(~2147483647i, _wgslsmith_clamp_i32(2147483647i, -24654i, 2147483647i)), countOneBits(_wgslsmith_mult_i32(var_0, -2147483647i)))), u_input.b.zw, vec2<f32>(_wgslsmith_f_op_f32(max(-805f, _wgslsmith_f_op_f32(-var_1.x))), -318f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1752f, 275f, false))), -712f));
}

