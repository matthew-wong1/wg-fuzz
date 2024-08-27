struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(654f, 168f, -195f, 1378f);

var<private> global1: i32;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> bool {
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1040f)) - _wgslsmith_f_op_f32(-456f * -444f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1077f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x)))), -1100f, _wgslsmith_f_op_f32(-1207f * arg_0.x)));
    return arg_1;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>) -> vec4<f32> {
    global1 = firstTrailingBit(firstTrailingBit(u_input.d.x));
    let var_0 = vec4<bool>(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.zyw * global2.xyz)), true) && false, abs(select(-2792i, u_input.d.x, func_3(vec3<f32>(global2.x, 462f, 1276f), false))) <= _wgslsmith_mult_i32(arg_0.c, ~arg_2.x), false, !((41799i <= _wgslsmith_dot_vec3_i32(arg_2.wyw, arg_2.xxy)) || all(vec2<bool>(false, true))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(896f, 204f, global0.x, global0.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(424f, 1188f, -621f, 193f), vec4<f32>(global0.x, global0.x, -105f, -584f)))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global2.x, global0.x, global0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 647f, 322f, -1530f) - vec4<f32>(global2.x, -294f, -1000f, global2.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 231f, global2.x, global2.x)))));
    global2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -859f, -980f, 175f), vec4<f32>(global2.x, 1000f, -166f, global0.x)))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -694f), -1096f, -1601f)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_div_f32(global0.x, 1089f), _wgslsmith_f_op_f32(max(412f, global2.x)), _wgslsmith_f_op_f32(round(110f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, 349f, 1686f, global2.x), vec4<f32>(global2.x, global0.x, -1252f, -1502f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-210f, -467f, 810f, global2.x) - vec4<f32>(global2.x, -1433f, global2.x, -471f)))))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_mult_i32(u_input.d.x, 20080i);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_2(~u_input.d.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(42084u, 0u, 39791u, 4294967295u), vec4<u32>(u_input.a.x, 0u, u_input.c.x, 1u), vec4<u32>(1u, 76669u, 51120u, u_input.b)), select(u_input.d.x, 64844i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 1i, 0i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, 0i, u_input.d.x))), select(u_input.b, ~3648u, true), vec4<i32>(u_input.d.x, u_input.d.x, -28368i, u_input.d.x) << (~vec4<u32>(19999u, u_input.c.x, 65987u, u_input.b) % vec4<u32>(32u))))) * vec4<f32>(global0.x, 710f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-281f)) + _wgslsmith_f_op_f32(global0.x - global2.x)) * global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -164f), -342f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x - -1000f)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1195f - 1976f), _wgslsmith_f_op_f32(-global0.x), -1640f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(sign(342f)), _wgslsmith_f_op_f32(exp2(global0.x)))))));
    var var_1 = Struct_1(-111f, _wgslsmith_mult_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, 4866i), vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(3055i, 0i)), _wgslsmith_mult_vec2_i32(u_input.d.yx & u_input.d.yy, abs(vec2<i32>(-1i, -1i)))) >> (~firstTrailingBit(max(vec2<u32>(1u, 4294967295u), u_input.c)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), u_input.d << (~(max(vec4<u32>(1u, u_input.c.x, 4294967295u, 4294967295u), vec4<u32>(44009u, 4294967295u, u_input.b, u_input.a.x)) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 2736u, u_input.b, u_input.b), vec4<u32>(u_input.b, 6907u, u_input.a.x, u_input.b))) % vec4<u32>(32u)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global2.x)));
    let var_2 = _wgslsmith_sub_vec4_u32(max(~vec4<u32>(u_input.a.x & 4294967295u, 4294967295u, 1u, 2067u << (u_input.a.x % 32u)), vec4<u32>(~_wgslsmith_mod_u32(35328u, u_input.c.x), 10185u, _wgslsmith_mod_u32(abs(u_input.c.x), 1u), u_input.c.x)), abs(abs(~(~vec4<u32>(u_input.b, 4294967295u, 0u, 34024u)))));
    return Struct_2(~_wgslsmith_add_i32(var_1.d.x, u_input.d.x), ~select(vec4<u32>(58357u, u_input.c.x, u_input.a.x, u_input.c.x), ~vec4<u32>(4294967295u, 40650u, var_2.x, 113960u), vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(~(1i & var_1.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 1i) << (vec2<u32>(var_2.x, var_2.x) % vec2<u32>(32u)), -var_1.b), -1i), ~firstLeadingBit(var_1.d.zzz)), abs(var_1.d.x));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    global1 = u_input.d.x;
    global1 = ~(-u_input.d.x);
    return func_1();
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global1 = -1i;
    var var_0 = -1908f;
    var var_1 = func_1();
    var var_2 = arg_1;
    var var_3 = arg_0.a;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, global0.x, -2089f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -118f, global0.x, global2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, global2.x, -1425f, global0.x), vec4<f32>(global0.x, global0.x, 141f, -271f))) - vec4<f32>(880f, 918f, global0.x, global2.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(529f, 1298f) * _wgslsmith_f_op_f32(global2.x + var_0.x))), var_0.x, var_0.x, 393f));
    var var_1 = func_5(func_4(true, true, func_1(), 29150u), Struct_1(_wgslsmith_div_f32(-1000f, 632f), -firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.d.wz, vec2<i32>(0i, u_input.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -abs(u_input.d) << ((~vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 4294967295u) ^ ~vec4<u32>(66247u, u_input.a.x, u_input.a.x, u_input.c.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-global2.xx)), Struct_2(countOneBits(8951i), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, ~64892u, 1u, u_input.c.x), countOneBits(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.c.x))), u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-u_input.d.zzx, u_input.d.ywz), 42011i)));
    var var_2 = select(!vec4<bool>(true, false, true | all(vec2<bool>(false, true)), true), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(true, true, func_3(vec3<f32>(-1000f, -348f, 266f), false))), select(-1i, _wgslsmith_sub_i32(func_1().c, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.d.x, var_1.b.x), vec3<i32>(u_input.d.x, var_1.b.x, u_input.d.x))), true) >= (i32(-1i) * -1i));
    global1 = _wgslsmith_div_i32(u_input.d.x, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(func_4(false, 0i <= u_input.d.x, func_1(), u_input.b | u_input.c.x), ~select(1u, u_input.c.x, var_2.x), vec4<i32>(reverseBits(-3825i), ~u_input.d.x, -var_1.b.x, 11546i))).x), vec2<u32>(abs(abs(17861u)), u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(min(var_1.e.x, _wgslsmith_f_op_f32(sign(var_1.e.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1030f)), -732f), var_1.e.x) - var_0), ~1u & max(1u << (~u_input.c.x % 32u), u_input.b), firstTrailingBit(u_input.d.x));
}

