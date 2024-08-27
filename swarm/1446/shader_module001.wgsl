struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(firstTrailingBit(~u_input.b.x) | abs(_wgslsmith_mod_u32(0u, u_input.c.x)), u_input.b.x), ~_wgslsmith_clamp_u32(1u, 43716u, firstTrailingBit(u_input.a.x)));
    let var_1 = 1142f;
    let var_2 = Struct_2(vec3<u32>(~((u_input.c.x | 1u) | 4075u), var_0 & _wgslsmith_add_u32(abs(21911u), u_input.b.x << (var_0 % 32u)), u_input.c.x), Struct_1(any(select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), 16241i, !select(vec2<bool>(true, true), vec2<bool>(true, true), true)), 1i);
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1994f, var_1, -277f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-484f, -1000f, var_1)), vec3<f32>(137f, var_1, -1575f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(532f, -415f, var_1), vec3<f32>(var_1, -234f, 1036f)))) * vec3<f32>(_wgslsmith_div_f32(1001f, var_1), 1000f, _wgslsmith_f_op_f32(var_1 - var_1)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-708f, _wgslsmith_f_op_f32(max(346f, -1263f)), 1130f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, 115f, 305f)))), vec3<bool>(true, false, var_2.b.a)))));
    let var_4 = Struct_4(var_2.b, Struct_3(var_2, Struct_2(var_2.a, var_2.b, max(-var_2.c, var_2.b.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1228f, var_1, 750f) - vec3<f32>(var_1, 1579f, var_1)))), 1u, Struct_1(var_2.a.x > 4294967295u, select(_wgslsmith_dot_vec3_i32(vec3<i32>(-15870i, var_2.b.b, 19745i), vec3<i32>(var_2.b.b, var_2.b.b, var_2.b.b)), var_2.b.b & var_2.b.b, var_2.b.b > var_2.c), !vec2<bool>(var_2.b.a, false))), 899f, Struct_2(var_2.a, Struct_1(var_2.b.c.x, var_2.c, !(!var_2.b.c)), -_wgslsmith_mult_i32(2147483647i, -var_2.c)), vec2<u32>(select(~17074u >> (1u % 32u), ~(70498u >> (var_0 % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_2.c), vec2<i32>(var_2.c, var_2.c)) > var_2.b.b), 10623u));
    return ~abs(~vec3<u32>(~23528u, ~12400u, ~var_0));
}

fn func_2(arg_0: vec3<bool>) -> vec2<f32> {
    var var_0 = Struct_4(Struct_1(any(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), ~_wgslsmith_clamp_i32(0i, 10429i, 16400i) | ~(~15019i), vec2<bool>(arg_0.x, true)), Struct_3(Struct_2(~vec3<u32>(51784u, 56049u, 50108u) ^ firstTrailingBit(vec3<u32>(0u, 36834u, 27892u)), Struct_1(arg_0.x, i32(-1i) * -8865i, select(vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, true))), select(abs(30436i), i32(-1i) * -1i, arg_0.x != arg_0.x)), Struct_2(reverseBits(func_3()), Struct_1(all(vec4<bool>(false, true, false, false)), firstLeadingBit(24991i), !vec2<bool>(arg_0.x, arg_0.x)), _wgslsmith_add_i32(firstLeadingBit(-11214i), 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-501f, -354f, -591f)) - vec3<f32>(910f, -364f, -658f))), abs(firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, 48440u))), Struct_1(!select(true, arg_0.x, arg_0.x), abs(i32(-1i) * -28403i), !select(vec2<bool>(arg_0.x, arg_0.x), arg_0.xy, arg_0.zy))), -2426f, Struct_2(abs(vec3<u32>(~0u, _wgslsmith_sub_u32(u_input.c.x, 4294967295u), ~0u)), Struct_1(true, -(~(-17794i)), vec2<bool>(false | arg_0.x, true)), 11889i), ~(~u_input.a.xy));
    let var_1 = 907f;
    let var_2 = Struct_2(vec3<u32>(1u, abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.d.a.x), vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, u_input.b.x))), u_input.c.x), var_0.b.b.b, -1i);
    var var_3 = Struct_4(var_2.b, Struct_3(Struct_2(vec3<u32>(u_input.b.x, 0u, 1u) << (~u_input.a.wxy % vec3<u32>(32u)), Struct_1(true, -var_0.b.a.c, var_2.b.c), 29571i), Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, 2587u), var_0.d.a, ~vec3<u32>(18096u, 0u, 70806u)), Struct_1(arg_0.x | false, var_0.b.b.b.b >> (var_0.b.b.a.x % 32u), !var_0.a.c), i32(-1i) * -41531i), var_0.b.c, var_0.e.x, Struct_1(var_2.b.a | false, _wgslsmith_clamp_i32(var_0.d.b.b | 6346i, countOneBits(-2147483647i), _wgslsmith_sub_i32(var_0.a.b, var_0.a.b)), arg_0.yx)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c.x * var_1) + _wgslsmith_f_op_f32(var_0.c - var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2848f)))), var_0.d, _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(var_2.a, vec3<u32>(var_2.a.x, 1u, u_input.b.x))), vec2<u32>(3839u, _wgslsmith_mult_u32(u_input.c.x << (2730u % 32u), 4294967295u))));
    var_3 = Struct_4(Struct_1(!(!var_2.b.c.x), max(reverseBits(_wgslsmith_add_i32(var_0.d.c, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.b, var_0.d.c, var_2.c), reverseBits(vec3<i32>(-35182i, -1i, var_0.a.b)))), vec2<bool>(any(!vec4<bool>(var_0.b.b.b.a, arg_0.x, true, true)), any(select(vec4<bool>(true, true, true, var_0.d.b.a), vec4<bool>(var_3.b.e.c.x, false, false, false), vec4<bool>(var_2.b.c.x, true, arg_0.x, var_0.a.c.x))))), var_3.b, _wgslsmith_div_f32(187f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), 992f)))), var_2, vec2<u32>(4294967295u, func_3().x));
    return vec2<f32>(_wgslsmith_f_op_f32(var_3.b.c.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1, 2185f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1, var_1), var_1, !arg_0.x)))), var_1)));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(261f, -1696f) + vec2<f32>(869f, -544f)))))) - _wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), true, !(u_input.b.x >= u_input.c.x)))));
    let var_1 = Struct_1(all(vec2<bool>(true, true)), 1i, vec2<bool>(true, true));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1446f, -214f) * var_0.x), var_0.x);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(var_1.c.x, false, true))).x)), var_0.x);
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_0.x, 1843f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(812f, var_0.x) * vec2<f32>(var_0.x, -1348f)))))));
    return _wgslsmith_mod_i32(_wgslsmith_add_i32(var_1.b, _wgslsmith_mod_i32(var_1.b, var_1.b)), -(var_1.b >> (reverseBits(u_input.c.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(vec2<bool>(true, true)), ~(-7279i), vec2<bool>(true, !all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), false))));
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(125f, 823f, _wgslsmith_f_op_f32(f32(-1f) * -459f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(478f, 1110f, -309f), vec3<f32>(403f, 398f, 164f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1899f, -997f, 206f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(703f, 1627f, -656f) - vec3<f32>(-1499f, -636f, -618f))), all(select(vec3<bool>(false, true, var_0.a), vec3<bool>(true, true, var_0.a), false)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f)), 1013f, 1869f)));
    var_1 = ~(var_0.b & -_wgslsmith_add_i32(min(54800i, -2147483647i), _wgslsmith_div_i32(var_0.b, 22144i)));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-922f, 1605f, var_2.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, -1000f, var_2.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1006f, 1177f, var_2.x) * vec3<f32>(var_2.x, var_2.x, 1931f)))))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(-var_2.x))))), -561f, var_2.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -687f, -1742f, var_2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1647f, var_2.x, var_2.x))))) - vec4<f32>(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-787f + var_2.x) * -1060f), var_2.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, var_2.x), var_2.x) + _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, -1559f))) - _wgslsmith_f_op_f32(step(var_2.x, 1159f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_i32(var_0.b, ~35549i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, var_0.b, var_0.b, 70630i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b, var_0.b, -54112i, -2147483647i), vec4<i32>(0i, var_0.b, -1i, 26671i)))), ~45471u, (max(min(u_input.a.zww, u_input.a.wzz), u_input.a.yxw << (u_input.a.zzz % vec3<u32>(32u))) << (vec3<u32>(1u, u_input.a.x, select(717u, u_input.c.x, var_0.a)) % vec3<u32>(32u))) << ((vec3<u32>(u_input.c.x, ~1u, 0u) << (u_input.a.wxw % vec3<u32>(32u))) % vec3<u32>(32u)), 672f);
}

