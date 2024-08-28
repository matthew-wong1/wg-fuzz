struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(170f, -1216f, 2147483647i, 0u, 4260u), Struct_3(1440f, -1946f, -1i, 51034u, 4294967295u), Struct_3(-519f, 1000f, -16934i, 103054u, 71896u), Struct_3(1000f, -1320f, i32(-2147483648), 25782u, 0u), Struct_3(-893f, -674f, 17392i, 0u, 4294967295u), Struct_3(682f, -741f, -46575i, 0u, 4294967295u), Struct_3(603f, 1606f, -64095i, 12033u, 0u), Struct_3(1745f, -1212f, -23583i, 50164u, 0u));

var<private> global1: vec2<i32> = vec2<i32>(1i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    global1 = vec2<i32>(~firstTrailingBit(u_input.b.x), _wgslsmith_clamp_i32(1i, global1.x, global1.x));
    let var_0 = arg_0.yx;
    global1 = vec2<i32>(firstTrailingBit(~2147483647i), global1.x);
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(-160f, 324f, 331f))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), select(~vec2<u32>(4294967295u, u_input.c), vec2<u32>(0u, 25736u), vec2<bool>(var_0.x, var_0.x)), ~vec2<u32>(u_input.a.x, u_input.c))), Struct_2(vec3<f32>(1f, 1f, 1f), u_input.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(554f + -792f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1182f * -1099f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-347f, _wgslsmith_f_op_f32(round(146f)))))), -1247f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1283f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(785f)), _wgslsmith_f_op_f32(ceil(655f))))));
    global1 = vec2<i32>(-(i32(-1i) * -4209i), _wgslsmith_div_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 1i, global1.x, global1.x), vec4<i32>(-1i, u_input.b.x, -2147483647i, 0i))), _wgslsmith_div_i32(0i, ~global1.x))) << (~vec2<u32>(var_1.a.b.x, 4294967295u) % vec2<u32>(32u));
    return 1f;
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-463f, -426f, -909f, -1209f))), vec4<f32>(-532f, 679f, 1629f, -835f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-585f, 3030f, 663f, -1417f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1413f, -468f, -806f, 1679f))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-167f, -134f))), _wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(f32(-1f) * -536f), 1000f)));
    global0 = array<Struct_3, 8>();
    var var_1 = !select(!vec2<bool>(true, select(false, false, true)), vec2<bool>(true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), ((-2147483647i == u_input.b.x) || any(vec2<bool>(false, false))) || true);
    var_1 = !(!(!vec2<bool>(!var_1.x, any(vec2<bool>(true, false)))));
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.x, 924f) - _wgslsmith_f_op_vec3_f32(-var_0.yxw)))), ~(vec2<u32>(0u, arg_0) | vec2<u32>(arg_0, 0u)) ^ vec2<u32>(~arg_0, ~1674u)), Struct_2(vec3<f32>(1901f, var_0.x, -343f), ~firstTrailingBit(u_input.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-469f, _wgslsmith_f_op_f32(abs(var_0.x)), var_0.x, var_0.x))))));
    return Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(var_0.zxz + _wgslsmith_f_op_vec3_f32(vec3<f32>(1483f, -2976f, var_2.b.a.x) * var_0.wwy)), vec2<u32>(max(_wgslsmith_sub_u32(3583u, u_input.a.x), arg_0 & var_2.a.b.x), firstLeadingBit(countOneBits(61309u)))), var_2.b, var_2.c);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: bool) -> vec2<i32> {
    let var_0 = false;
    let var_1 = func_2(u_input.a.x);
    global1 = select(-vec2<i32>(-1i, global1.x) & reverseBits(u_input.b.yw), arg_2.yx, vec2<bool>(~_wgslsmith_mult_u32(arg_1.a.x, u_input.c) < countOneBits(arg_1.a.x), any(vec2<bool>(true, !arg_3))));
    let var_2 = var_1.b;
    var var_3 = select(vec2<bool>(arg_3 == true, var_0), select(select(!vec2<bool>(var_0, arg_3), vec2<bool>(true, any(vec3<bool>(false, false, arg_3))), all(select(vec3<bool>(true, false, false), vec3<bool>(arg_3, true, true), vec3<bool>(false, var_0, var_0)))), select(vec2<bool>(true, true), !vec2<bool>(true, var_0), select(!vec2<bool>(var_0, arg_3), !vec2<bool>(true, var_0), vec2<bool>(true, false))), select(vec2<bool>(var_0, arg_3), select(vec2<bool>(var_0, true), vec2<bool>(arg_3, var_0), !vec2<bool>(true, arg_3)), select(!vec2<bool>(var_0, false), vec2<bool>(true, var_0), false))), !select(!(!vec2<bool>(false, arg_3)), vec2<bool>(arg_3, true), vec2<bool>(true, true)));
    return ~(-arg_2.xx);
}

fn func_1() -> f32 {
    global1 = _wgslsmith_sub_vec2_i32(u_input.b.wz, func_4(func_2(firstLeadingBit(firstTrailingBit(u_input.a.x))), Struct_1(vec2<u32>(max(u_input.a.x, 1u), u_input.c), vec4<u32>(29876u, 112382u, 1u, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-843f * 1350f))), vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(2147483647i, u_input.b.x), _wgslsmith_div_i32(u_input.b.x, -32202i)), !(!any(vec3<bool>(false, true, true)))));
    let var_0 = global0[_wgslsmith_index_u32(~0u, 8u)];
    global0 = array<Struct_3, 8>();
    let var_1 = ~select(u_input.b.yxy, u_input.b.zyx, !(!select(false, false, true)));
    var var_2 = func_2(abs(~1u));
    return -850f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(718f + -337f), _wgslsmith_f_op_f32(f32(-1f) * -124f)))))));
    var var_1 = select(_wgslsmith_add_vec4_u32(select(~(~vec4<u32>(11162u, 8729u, 11524u, u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 1u, 50940u, 4294967295u), vec4<u32>(u_input.a.x, 32950u, u_input.a.x, 4294967295u) & vec4<u32>(u_input.a.x, 4294967295u, u_input.c, u_input.a.x), ~vec4<u32>(39559u, 1u, 33630u, 41019u)), !all(vec3<bool>(true, false, true))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(0u, 38065u, u_input.a.x, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.a.x), vec4<bool>(true, false, false, false)), min(vec4<u32>(1u, 0u, u_input.a.x, u_input.c), vec4<u32>(0u, u_input.a.x, 0u, 51002u))), _wgslsmith_div_vec4_u32(vec4<u32>(78117u, 1u, u_input.c, u_input.c) >> (vec4<u32>(u_input.a.x, u_input.a.x, 48013u, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(4294967295u, 0u, u_input.c, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(18640u, u_input.c, u_input.c, 62789u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c, 1u, u_input.a.x), vec4<u32>(4294967295u, u_input.c, 33317u, u_input.a.x))))), ~_wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.a.x, 51504u, 12842u, u_input.c) & vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.a.x)), countOneBits(~vec4<u32>(50885u, 2529u, 4294967295u, u_input.c)), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.c)), false);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -845f))))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-489f, var_0.x)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(452f, 1000f), vec2<f32>(var_0.x, 233f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1370f, -1021f)))))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-987f, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1084f, var_0.x)))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(floor(1000f)))))));
    var var_2 = (_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(var_1.x, var_1.x, 13304u), 0u), ~u_input.a) << (~(~vec2<u32>(u_input.c, 18207u) | select(vec2<u32>(8528u, 0u), u_input.a, vec2<bool>(true, false))) % vec2<u32>(32u))) & (~select(min(vec2<u32>(6116u, var_1.x), u_input.a), vec2<u32>(31122u, u_input.a.x), select(vec2<bool>(true, false), vec2<bool>(true, true), true)) ^ ~_wgslsmith_add_vec2_u32(~vec2<u32>(var_1.x, u_input.c), firstLeadingBit(vec2<u32>(var_1.x, var_1.x))));
    var_1 = ~vec4<u32>(var_2.x, ((u_input.a.x & 1u) << (23370u % 32u)) >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(8398u, u_input.c, 4294967295u), 1u) % 32u), firstTrailingBit(7029u), reverseBits(_wgslsmith_clamp_u32(~30550u, u_input.a.x, abs(1u))));
    global1 = u_input.b.zx;
    global0 = array<Struct_3, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, var_0.x, u_input.b);
}

