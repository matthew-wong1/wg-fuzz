struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: f32, arg_3: vec4<i32>) -> vec2<u32> {
    var var_0 = -1229i;
    var var_1 = Struct_1(-_wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.b.x, arg_1), select(vec2<i32>(-2147483647i, 2147483647i), arg_3.xx, arg_0.c), arg_0.c), ~arg_0.e.xz));
    var_0 = ~0i;
    var_1 = Struct_1(vec2<i32>(arg_0.e.x, 1i));
    let var_2 = var_1.a.x;
    return firstTrailingBit(vec2<u32>((~arg_0.b | 2112u) << ((abs(u_input.d) ^ 1u) % 32u), u_input.d | _wgslsmith_add_u32(u_input.d >> (arg_0.b % 32u), arg_0.b)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: vec4<i32>) -> bool {
    var var_0 = -244f;
    var_0 = -1471f;
    return true;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(u_input.b.wz);
    let var_1 = Struct_3(!select(true, !any(vec3<bool>(true, true, true)), func_4(u_input.b, _wgslsmith_mult_vec2_i32(u_input.e.zy, u_input.b.yy), func_3(Struct_3(false, u_input.d, vec2<bool>(true, false), 536f, u_input.b.wyx), u_input.b.x, 2069f, vec4<i32>(var_0.a.x, -1i, var_0.a.x, var_0.a.x)), u_input.b)), 31013u, vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -169f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 472f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -902f)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.x, -621i, u_input.b.x), ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(-41772i, 38457i, 0i), vec3<i32>(35075i, var_0.a.x, -2147483647i))), _wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(u_input.b.wxw, vec3<i32>(var_0.a.x, u_input.b.x, var_0.a.x)), u_input.b.zxx)));
    var var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_f32(-var_1.d);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(2069f, -737f, true)), -851f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.d, var_1.d)) + _wgslsmith_f_op_f32(var_1.d + -512f)), -269f)) - vec3<f32>(_wgslsmith_f_op_f32(-var_1.d), var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))));
    return -422f;
}

fn func_5(arg_0: vec4<bool>, arg_1: f32) -> Struct_3 {
    var var_0 = Struct_2(max(firstLeadingBit(0u), firstLeadingBit(_wgslsmith_add_u32(u_input.c, u_input.d))) >> (14207u % 32u), 60277u, ~(firstTrailingBit(u_input.e) | -(~vec3<i32>(u_input.e.x, u_input.e.x, u_input.a))));
    var_0 = Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(62667u, var_0.b, 1u) & reverseBits(vec3<u32>(30161u, 17675u, 1u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 0u, var_0.a), vec3<u32>(1u, 0u, var_0.b)) >> (min(vec3<u32>(u_input.c, var_0.b, 0u), vec3<u32>(68806u, var_0.b, 4294967295u)) % vec3<u32>(32u)), firstTrailingBit(abs(vec3<u32>(1u, var_0.a, u_input.c))))), 16042u, -_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(-18234i, u_input.b.x, var_0.c.x), vec3<i32>(var_0.c.x, var_0.c.x, -30299i) | var_0.c), reverseBits(var_0.c) << ((vec3<u32>(u_input.d, u_input.c, var_0.b) & vec3<u32>(var_0.a, 46280u, 50751u)) % vec3<u32>(32u)), vec3<i32>(12565i, var_0.c.x, ~u_input.e.x)));
    let var_1 = 64345u;
    var var_2 = -_wgslsmith_mod_vec3_i32(var_0.c, ~((u_input.b.wxw << (vec3<u32>(4294967295u, 57320u, 4294967295u) % vec3<u32>(32u))) >> (vec3<u32>(u_input.c, 21106u, 52957u) % vec3<u32>(32u))));
    var_2 = u_input.b.zxx;
    return Struct_3(_wgslsmith_mod_u32(var_0.b, max(15123u, min(var_1, var_1))) < ~countOneBits(~var_1), ~(0u & (~var_0.b ^ (var_0.a >> (33855u % 32u)))), !vec2<bool>(!func_4(vec4<i32>(217i, -40541i, 1i, 16243i), u_input.e.xy, vec2<u32>(59162u, var_0.a), vec4<i32>(u_input.a, -27698i, -2398i, 2147483647i)), !arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(513f)) - _wgslsmith_f_op_f32(arg_1 + -1514f)))), var_0.c);
}

fn func_6(arg_0: Struct_3) -> bool {
    var var_0 = func_5(vec4<bool>(arg_0.c.x, 1866f == func_5(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0.a, true, arg_0.c.x, arg_0.a), true), arg_0.d).d, (arg_0.a == arg_0.c.x) == func_4(vec4<i32>(-1i, u_input.b.x, -16585i, 45354i), arg_0.e.zy, vec2<u32>(4294967295u, u_input.d) | vec2<u32>(51241u, arg_0.b), countOneBits(vec4<i32>(25485i, -2147483647i, 2147483647i, 16051i))), arg_0.c.x), -361f).d;
    var var_1 = -firstLeadingBit(u_input.b.x);
    var_0 = _wgslsmith_f_op_f32(-725f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.d))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1537f) + _wgslsmith_f_op_f32(f32(-1f) * -1339f))));
    let var_2 = Struct_1(vec2<i32>(-1i, _wgslsmith_div_i32(955i, 1943i)));
    var var_3 = var_2;
    return true;
}

fn func_1(arg_0: vec2<u32>) -> vec4<bool> {
    let var_0 = func_6(func_5(vec4<bool>(!all(vec2<bool>(true, true)), all(vec2<bool>(false, false)), false, all(vec2<bool>(false, true)) | (arg_0.x > 2903u)), _wgslsmith_f_op_f32(1696f * _wgslsmith_f_op_f32(-270f * _wgslsmith_f_op_f32(func_2())))));
    let var_1 = _wgslsmith_f_op_f32(ceil(-450f));
    var var_2 = arg_0.x;
    var_2 = u_input.d;
    var_2 = arg_0.x;
    return select(!vec4<bool>(false, !var_0, all(!vec3<bool>(true, var_0, true)), true), vec4<bool>(func_6(Struct_3(var_0 || var_0, ~u_input.c, func_5(vec4<bool>(false, var_0, true, true), var_1).c, var_1, u_input.b.yww)), !any(vec3<bool>(var_0, var_0, var_0)), (u_input.e.x <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), vec2<i32>(u_input.a, -9752i))) & true, func_5(select(select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(true, true, true, true), true), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(true, true, false, var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), -737f)).c.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-777f, 310f) * vec2<f32>(-1000f, 531f)), vec2<f32>(-1052f, -278f))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-593f, -1496f)), -261f), _wgslsmith_div_f32(-1011f, _wgslsmith_f_op_f32(666f + -983f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(285f, -1237f) * vec2<f32>(539f, 1873f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(388f, 646f)))))), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_1(vec2<u32>(4294967295u, 25580u))), vec4<bool>(false, true, true, true), select(true, true, func_6(Struct_3(true, 39551u, vec2<bool>(false, true), -1021f, vec3<i32>(27514i, u_input.a, 0i))))))));
    var var_1 = Struct_2(firstLeadingBit(~reverseBits(25222u)), 0u, min(vec3<i32>(~u_input.b.x, abs(_wgslsmith_sub_i32(u_input.e.x, u_input.a)), 0i), u_input.e));
    var var_2 = Struct_3(func_4(u_input.b, min(abs(func_5(vec4<bool>(true, true, true, true), -618f).e.yy), u_input.e.yz), ~(firstLeadingBit(vec2<u32>(0u, 0u)) >> (~vec2<u32>(1u, u_input.d) % vec2<u32>(32u))), abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 34328i, var_1.c.x, 11376i), u_input.b)) << (vec4<u32>(41288u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(43425u, 60394u)), 1u, _wgslsmith_add_u32(var_1.a, 1u)) % vec4<u32>(32u))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 0u, var_1.a) ^ vec3<u32>(0u, 24699u, 4294967295u), countOneBits(vec3<u32>(51221u, u_input.d, 0u))), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(var_1.a, 0u, 1u)), ~vec3<u32>(u_input.d, 4294967295u, 1u))) ^ func_3(func_5(func_1(vec2<u32>(u_input.c, u_input.d)), _wgslsmith_f_op_f32(812f * 2063f)), var_1.c.x, 452f, -select(u_input.b, u_input.b, true)).x, vec2<bool>(true, (~u_input.d | _wgslsmith_sub_u32(u_input.c, var_1.b)) <= ~(~var_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -1209f), u_input.e);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(var_0))))));
    var_1 = Struct_2(var_1.b, ~(~(~u_input.d)), ~u_input.e);
    var_2 = Struct_3(true, var_1.a, !func_5(vec4<bool>(!var_2.a, all(var_2.c), false, func_1(vec2<u32>(0u, var_2.b)).x), func_5(vec4<bool>(var_2.c.x, var_2.c.x, true, true), _wgslsmith_div_f32(var_0.x, var_2.d)).d).c, _wgslsmith_f_op_f32(f32(-1f) * -598f), _wgslsmith_sub_vec3_i32(vec3<i32>(36396i >> (u_input.c % 32u), var_2.e.x, 1i), vec3<i32>(~(-33834i), 2147483647i, -2147483647i)));
    var var_4 = ~_wgslsmith_mod_u32(0u, u_input.d >> (func_5(vec4<bool>(true, var_2.a, true, false), _wgslsmith_f_op_f32(f32(-1f) * -410f)).b % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(var_2.e.x ^ 1i, var_1.c.x, ~var_1.c.x, _wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.b.xw)), vec4<i32>(-34142i, 23641i | var_2.e.x, _wgslsmith_div_i32(var_1.c.x, var_1.c.x), 1i)) << (~(~(~vec4<u32>(var_2.b, var_2.b, 1u, 27175u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(131f * 1000f))));
}

