struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    let var_0 = vec4<i32>(-1i) * -(~_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, 1031i, -11301i), vec4<i32>(arg_1.x, arg_1.x, -27206i, -232i)), max(vec4<i32>(arg_1.x, 1322i, arg_1.x, 0i), vec4<i32>(u_input.b.x, u_input.b.x, arg_1.x, -2147483647i))));
    let var_1 = Struct_2(arg_0, Struct_1(true), -2147483647i);
    var var_2 = Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(53721u, 1u) & (vec2<u32>(1u, var_1.a) | u_input.a.xy), ~(~vec2<u32>(18948u, var_1.a))), var_1.b, arg_1.x), -574f, (-1365f <= _wgslsmith_f_op_f32(min(676f, _wgslsmith_f_op_f32(-arg_2)))) & false, u_input.a.xyw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1799f, arg_2))))));
    let var_3 = Struct_2(~(~(~99053u)), Struct_1(var_2.c), abs(3313i));
    var_2 = Struct_3(var_3, _wgslsmith_f_op_f32(var_2.b * arg_2), true, _wgslsmith_sub_vec3_u32(firstLeadingBit(abs(var_2.d)), _wgslsmith_add_vec3_u32(vec3<u32>(~arg_0, u_input.a.x, 1u), var_2.d)), -212f);
    return _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(619f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(451f * 224f), var_2.b, true))))));
}

fn func_4(arg_0: Struct_3) -> u32 {
    let var_0 = arg_0.a.b;
    let var_1 = -1115f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) * 1134f);
    let var_2 = arg_0.a.c;
    var var_3 = Struct_2((abs(~37680u) ^ min(min(u_input.a.x, 47519u), 21487u)) << (56398u % 32u), Struct_1(any(vec4<bool>(var_0.a, var_1, false & arg_0.c, true))), ~(-16324i));
    let var_4 = 140f;
    return firstLeadingBit(arg_0.a.a);
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_1(false);
    var var_1 = arg_0;
    let var_2 = vec4<i32>(-1i, arg_0, 77037i, _wgslsmith_div_i32(u_input.b.x, -_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(arg_0, arg_0, u_input.b.x)), vec3<i32>(1i, -10307i, arg_0))));
    var_1 = _wgslsmith_add_i32(_wgslsmith_div_i32(-33412i, u_input.b.x), -1i) ^ ~(-18390i);
    var_0 = Struct_1(var_0.a);
    return Struct_2(func_4(Struct_3(Struct_2(43438u, Struct_1(var_0.a), 0i), _wgslsmith_f_op_f32(-1284f * _wgslsmith_f_op_f32(func_3(133595u, var_2.xx, -2561f, vec4<bool>(var_0.a, var_0.a, var_0.a, true)))), var_0.a || var_0.a, (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) << (vec3<u32>(u_input.a.x, 1u, 5240u) % vec3<u32>(32u))) << (vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1582f + 326f)))), Struct_1(all(select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(true, var_0.a, false), var_0.a)) && (-arg_0 >= (-6799i | var_2.x))), 11315i);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-640f, 1137f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(1068u, vec2<i32>(u_input.b.x, arg_0.x), arg_2, select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, arg_1.b.a), arg_1.b.a))), arg_2)))), _wgslsmith_f_op_f32(func_3(101360u, reverseBits(vec2<i32>(arg_0.x, func_2(-1i).c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), vec4<bool>(arg_1.b.a, arg_1.b.a, all(!vec4<bool>(false, true, true, arg_1.b.a)), true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0))));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_div_i32(60121i, u_input.b.x), _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(-1i, u_input.b.x, _wgslsmith_mod_i32(-45261i, arg_0.x)), -2147483647i));
    var var_3 = select(select(!(!select(vec3<bool>(arg_1.b.a, false, arg_1.b.a), vec3<bool>(arg_1.b.a, true, arg_1.b.a), vec3<bool>(true, false, arg_1.b.a))), select(vec3<bool>(any(vec3<bool>(false, arg_1.b.a, true)), true, arg_1.b.a), vec3<bool>(any(vec4<bool>(arg_1.b.a, false, arg_1.b.a, arg_1.b.a)), var_1.x >= -433f, any(vec3<bool>(arg_1.b.a, false, arg_1.b.a))), select(select(vec3<bool>(true, arg_1.b.a, arg_1.b.a), vec3<bool>(false, true, true), vec3<bool>(arg_1.b.a, arg_1.b.a, arg_1.b.a)), vec3<bool>(arg_1.b.a, arg_1.b.a, false), true)), true), select(select(!vec3<bool>(true, arg_1.b.a, false), vec3<bool>(true, arg_1.b.a == true, arg_1.b.a), vec3<bool>(arg_1.b.a, false, true)), select(!select(vec3<bool>(arg_1.b.a, arg_1.b.a, false), vec3<bool>(false, false, arg_1.b.a), vec3<bool>(true, false, true)), vec3<bool>(true, true, arg_1.b.a && arg_1.b.a), true), all(select(select(vec2<bool>(arg_1.b.a, true), vec2<bool>(arg_1.b.a, arg_1.b.a), vec2<bool>(arg_1.b.a, arg_1.b.a)), vec2<bool>(arg_1.b.a, arg_1.b.a), select(vec2<bool>(arg_1.b.a, arg_1.b.a), vec2<bool>(arg_1.b.a, true), arg_1.b.a)))), vec3<bool>(firstTrailingBit(1i) != _wgslsmith_add_i32(firstTrailingBit(var_2), _wgslsmith_dot_vec3_i32(u_input.b, arg_0.zyx)), select(any(!vec4<bool>(arg_1.b.a, arg_1.b.a, arg_1.b.a, false)), arg_0.x <= min(arg_0.x, var_2), any(select(vec3<bool>(arg_1.b.a, arg_1.b.a, arg_1.b.a), vec3<bool>(false, arg_1.b.a, arg_1.b.a), arg_1.b.a))), all(!(!vec4<bool>(arg_1.b.a, true, true, arg_1.b.a)))));
    var var_4 = select(!vec3<bool>(true, true, _wgslsmith_mult_u32(arg_3, 0u) >= 83229u), !(!vec3<bool>(select(arg_1.b.a, false, var_3.x), var_3.x, !arg_1.b.a)), !select(arg_1.b.a | !var_3.x, _wgslsmith_f_op_f32(min(var_1.x, -386f)) <= _wgslsmith_f_op_f32(round(arg_2)), any(vec2<bool>(true, var_3.x))));
    return _wgslsmith_div_i32(arg_1.c, _wgslsmith_dot_vec3_i32(arg_0.ywy, _wgslsmith_sub_vec3_i32(vec3<i32>(var_2, var_2, select(var_2, -24902i, var_3.x)), vec3<i32>(firstLeadingBit(2147483647i), -2147483647i, ~var_2))));
}

fn func_6(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_3(func_2(-firstLeadingBit(firstLeadingBit(u_input.b.x))), 513f, arg_0, u_input.a.xyz, _wgslsmith_f_op_f32(f32(-1f) * -657f));
    var var_1 = _wgslsmith_mod_i32(var_0.a.c, arg_1 | select(-52698i, arg_1, all(vec4<bool>(false, arg_0, true, arg_0))));
    var var_2 = var_0;
    var_2 = var_0;
    var var_3 = Struct_3(var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), 535f)), all(vec2<bool>(true, !(!var_2.a.b.a))), abs(var_0.d | firstTrailingBit(var_0.d)) & ~(~(vec3<u32>(8192u, 15732u, var_2.a.a) >> (vec3<u32>(48111u, u_input.a.x, var_2.d.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f))));
    return func_2(14967i).b;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = func_6(func_5(~(~vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 1i)), func_2(_wgslsmith_add_i32(-2147483647i, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(532f, -1523f)), ~countOneBits(u_input.a.x)) == ~(-2147483647i), u_input.b.x ^ 22247i);
    let var_1 = 30222u;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~_wgslsmith_sub_vec4_u32(~func_1(vec3<f32>(1095f, 2341f, 355f), 80308u, u_input.a.zx), vec4<u32>(u_input.a.x, 10961u, ~u_input.a.x, _wgslsmith_clamp_u32(1250u, 41579u, u_input.a.x))));
    var var_1 = vec3<bool>(_wgslsmith_sub_u32(~1u, var_0.x) != max(~countOneBits(var_0.x), 13975u), true, true);
    let var_2 = 1f;
    var var_3 = func_2(20717i).b;
    let var_4 = func_2(-1462i).b;
    let var_5 = vec3<bool>(!var_3.a, any(vec4<bool>(true, true, (true & var_3.a) && !var_1.x, true)), var_1.x);
    var_1 = !select(vec3<bool>(true, true, var_5.x), !var_5, true);
    var_1 = var_5;
    let var_6 = vec3<f32>(-2300f, _wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_2)), _wgslsmith_f_op_f32(floor(var_2)), -16606i >= u_input.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(u_input.b.x, firstTrailingBit(_wgslsmith_clamp_i32(0i, u_input.b.x, u_input.b.x)), -1i), -vec3<i32>(22299i, u_input.b.x, ~u_input.b.x), abs(_wgslsmith_clamp_u32(15339u, firstLeadingBit(var_0.x ^ u_input.a.x), _wgslsmith_add_u32(u_input.a.x, abs(4294967295u)))), var_0.xx, u_input.b.x);
}

