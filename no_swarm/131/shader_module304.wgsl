struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_0 = any(!select(vec4<bool>(all(vec3<bool>(false, arg_0.c, false)), true, arg_0.a, true), !(!vec4<bool>(true, true, false, arg_0.c)), true));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-13743i, 6784i, 1i), vec3<i32>(-76799i, -1880i, 2147483647i)), 4099i), ~(~vec2<i32>(-2147483647i, -1i))), 3411i) & ~_wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(-30173i, -27844i, 63496i, -1i)), select(vec4<i32>(0i, 0i, -1i, -4088i), -vec4<i32>(-45829i, -2147483647i, -1i, 23738i), true));
    let var_2 = Struct_4(arg_0.b, min(_wgslsmith_add_i32(-3526i, _wgslsmith_mult_i32(30691i, 20653i)), 13366i) >> ((~arg_0.b.c.x >> ((max(arg_0.e.x, 0u) ^ (50046u & u_input.b.x)) % 32u)) % 32u), ~max(firstTrailingBit(-14431i), -50434i) & reverseBits(_wgslsmith_div_i32(-2147483647i, i32(-1i) * -31973i)), Struct_2(arg_0.c, global0[_wgslsmith_index_u32(20631u, 19u)], arg_0.a, ~vec3<u32>(_wgslsmith_add_u32(u_input.c, 111557u), ~arg_0.e.x, select(u_input.a, u_input.b.x, arg_0.c)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, arg_0.e.x, arg_0.d.x), arg_0.d, vec3<u32>(u_input.a, 79349u, 1u)), vec3<u32>(u_input.c, u_input.c, arg_0.e.x))), _wgslsmith_f_op_f32(f32(-1f) * -921f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b + 376f));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    global0 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(false, global0[_wgslsmith_index_u32(u_input.c, 19u)], arg_0.x, u_input.b.yzy, vec3<u32>(1u, 16649u, 1u))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-459f + 1866f) - 146f)), -950f)), _wgslsmith_f_op_f32(2419f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1006f - -732f), -1710f)), 508f)))));
    var var_1 = vec3<bool>(false, true | arg_0.x, var_0 < _wgslsmith_f_op_f32(max(811f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(var_0 - var_0)))), var_0);
    let var_3 = var_0;
    return select(arg_0.yzw, !vec3<bool>(all(!var_1.zy), true, true), arg_0.yxx);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    let var_0 = Struct_3(arg_2, Struct_2(arg_1.x, arg_2.b, true, select(arg_3.e, u_input.b.yzy, vec3<bool>(9296u <= arg_2.e.x, arg_2.b.d.x > 0u, true)), _wgslsmith_div_vec3_u32(arg_2.b.c, ~(~vec3<u32>(arg_2.e.x, 1u, 96229u)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, 1u), 19u)]);
    var var_1 = var_0;
    var_1 = Struct_3(Struct_2(true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(429f, arg_3.b.e.x) * _wgslsmith_f_op_f32(-851f + arg_3.b.b)), _wgslsmith_f_op_f32(step(arg_3.b.a, _wgslsmith_f_op_f32(-arg_2.b.a))), vec3<u32>(~13830u, _wgslsmith_sub_u32(4294967295u, arg_3.e.x), 1u), min(vec4<u32>(62319u, var_0.a.b.c.x, arg_3.b.c.x, var_1.a.b.c.x), var_0.a.b.d), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.b.a, -423f), vec2<f32>(-159f, 1089f), arg_1.yz)), vec2<f32>(var_1.c.a, -2310f), arg_3.a))), true, u_input.b.wzx, vec3<u32>(abs(arg_2.b.c.x), ~u_input.c, 1u)), arg_2, arg_3.b);
    var var_2 = !(!(!func_2(!vec4<bool>(arg_2.c, true, false, false)).x));
    var_1 = var_0;
    return _wgslsmith_dot_vec3_i32(~(~(-vec3<i32>(2147483647i, -1i, 44218i))), vec3<i32>(min(~14441i, max(-55856i, 13173i)), countOneBits(min(-10369i, -1i)), min(-1i, _wgslsmith_add_i32(-28425i, 17953i)))) <= (1i & _wgslsmith_clamp_i32(2147483647i, _wgslsmith_clamp_i32(1i, abs(1i), firstLeadingBit(1i)), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-66378i, -2147483647i, 0i, -1i), vec4<i32>(1i, -1i, -1151i, 0i)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> f32 {
    var var_0 = !func_4(arg_1.c, select(!vec3<bool>(true, arg_1.c, false), vec3<bool>(arg_1.c & arg_1.c, true, true), func_2(select(vec4<bool>(arg_1.a, arg_1.c, arg_1.c, arg_1.a), vec4<bool>(false, arg_1.c, true, arg_1.a), vec4<bool>(arg_1.a, arg_1.c, arg_1.a, true)))), Struct_2(any(!vec2<bool>(false, arg_1.a)), arg_1.b, true, reverseBits(vec3<u32>(arg_0.x, 0u, u_input.b.x)), vec3<u32>(15746u, _wgslsmith_clamp_u32(u_input.c, u_input.b.x, 4294967295u), 42141u >> (1u % 32u))), arg_1);
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    let var_1 = true;
    var_0 = (((~arg_2.x & ~arg_2.x) | ~(-arg_2.x)) ^ arg_2.x) <= -9557i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-348f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!vec4<bool>(true, true, true, any(vec3<bool>(true, true, true)))), !(!vec4<bool>(false, true, all(vec2<bool>(true, true)), true)), true);
    global0 = array<Struct_1, 19>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_div_u32(u_input.a, reverseBits(4294967295u))), u_input.b.x), 19u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(var_1.d, Struct_2(var_0.x, global0[_wgslsmith_index_u32(1u, 19u)], true, u_input.b.xwy, u_input.b.wwy), vec4<i32>(2147483647i, -5406i, 0i, 0i))), var_1.b), _wgslsmith_f_op_f32(abs(-199f))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.e.x)) + _wgslsmith_f_op_f32(f32(-1f) * -653f)), var_1.b, -2046f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * var_1.e.x) - 1791f), _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-344f, var_1.b, -2071f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, -2032f, 620f), vec3<f32>(var_1.e.x, var_1.b, 1189f)))))))));
    var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(var_1.c.x ^ var_1.c.x), 19u)];
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-416f * var_1.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.e.x), var_1.b)) + var_1.e.x), _wgslsmith_clamp_vec3_u32(u_input.b.xyz & (vec3<u32>(var_1.c.x, u_input.b.x, var_1.d.x) & _wgslsmith_mult_vec3_u32(var_1.c, vec3<u32>(var_1.d.x, u_input.b.x, 39745u))), firstTrailingBit(firstLeadingBit(var_1.c)), firstLeadingBit(vec3<u32>(~u_input.a, 38440u, var_1.d.x))), ~(~vec4<u32>(26958u, 17891u, ~3538u, 1u)), var_1.e);
    let var_3 = global0[_wgslsmith_index_u32(~(u_input.a >> (7824u % 32u)), 19u)];
    let var_4 = ~(~(~select(var_3.d.x, _wgslsmith_mult_u32(u_input.c, var_1.c.x), false)));
    let var_5 = Struct_4(Struct_1(-432f, _wgslsmith_f_op_f32(f32(-1f) * -1224f), ~min(min(var_1.c, u_input.b.www), ~vec3<u32>(10802u, 0u, 24240u)), vec4<u32>(max(21910u, var_1.c.x >> (3372u % 32u)), countOneBits(~63342u), ~var_4 ^ ~1u, ~var_4), vec2<f32>(-1150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1770f))))), ~0i, 1i, Struct_2(any(var_0.xyw), global0[_wgslsmith_index_u32(~countOneBits(var_1.c.x), 19u)], false, max(~(u_input.b.wzy << (var_3.c % vec3<u32>(32u))), u_input.b.wzw), var_3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(false, global0[_wgslsmith_index_u32(var_1.d.x, 19u)], var_0.x, vec3<u32>(1u, 1u, 0u), u_input.b.yxz))) + 1138f) - var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(14532u, -44002i, firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_5.b, -9487i), 1i), min(max(vec2<i32>(var_5.c, var_5.c), vec2<i32>(var_5.b, 0i)), ~vec2<i32>(var_5.c, var_5.c)))), ~0u ^ _wgslsmith_mod_u32(1u, countOneBits(36439u) & var_3.c.x), 204f);
}

