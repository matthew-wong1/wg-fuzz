struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: vec4<u32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: i32, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1613f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2067f - _wgslsmith_f_op_f32(826f + -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(355f, 569f), _wgslsmith_div_f32(715f, -356f)))))));
    return select(!vec4<bool>(any(select(global0.xzw, global0.wzz, global0.wwz)), firstTrailingBit(-57682i) < arg_2, !any(vec4<bool>(global0.x, arg_0.x, false, arg_1)), true), !select(select(select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(false, arg_1, arg_0.x, false)), vec4<bool>(true, global0.x, false, false), select(vec4<bool>(false, false, arg_1, true), vec4<bool>(false, global0.x, global0.x, true), arg_1)), select(select(vec4<bool>(global0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_1, false), global0.x), !vec4<bool>(false, arg_1, false, true), false), any(vec4<bool>(true, true, true, true))), any(global0.xwz));
}

fn func_3(arg_0: vec3<u32>) -> vec4<bool> {
    global0 = vec4<bool>(select(global0.x, !all(global0.yz), true), ((all(global0.yzz) & (global0.x && global0.x)) && any(func_2(global0.zz, true, 2147483647i, Struct_4(Struct_3(vec4<i32>(9554i, 2147483647i, 19581i, u_input.a)))))) || !global0.x, global0.x, true);
    global0 = func_2(select(func_2(select(global0.zy, global0.xz, select(global0.xw, global0.xz, global0.x)), _wgslsmith_f_op_f32(ceil(-608f)) > -741f, 0i, Struct_4(Struct_3(vec4<i32>(u_input.a, 45336i, u_input.a, 1i)))).zz, !select(!vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), false), global0.wx), false && global0.x, min(u_input.a, _wgslsmith_div_i32(abs(~1i), -51845i)), Struct_4(Struct_3(select(vec4<i32>(2147483647i, u_input.a, 2147483647i, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-50141i, u_input.a, 2147483647i, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), select(vec4<bool>(true, false, global0.x, false), vec4<bool>(true, false, false, global0.x), vec4<bool>(false, false, global0.x, false))))));
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -437f) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-834f)) + -277f), 536f), !all(select(func_2(global0.xw, true, u_input.a, Struct_4(Struct_3(vec4<i32>(u_input.a, u_input.a, u_input.a, 65253i)))).zxw, global0.xzy, true)));
    let var_1 = Struct_1(true);
    var var_2 = select(vec4<bool>(false, true, all(vec4<bool>(any(global0.zyw), false, var_1.a, !var_0.x)), false), !vec4<bool>(var_0.x, var_0.x, any(func_2(vec2<bool>(true, var_0.x), true, 38971i, Struct_4(Struct_3(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)))).zx), any(!vec2<bool>(var_1.a, true))), any(select(vec3<bool>(var_0.x, var_1.a, !var_1.a), vec3<bool>(any(global0.yw), true, any(vec4<bool>(var_1.a, false, true, var_0.x))), true)));
    return vec4<bool>(var_2.x, true, any(vec4<bool>(global0.x, var_2.x, true, true)), any(vec3<bool>(func_2(!var_2.xw, all(vec4<bool>(true, var_1.a, var_0.x, true)), u_input.a >> (50379u % 32u), Struct_4(Struct_3(vec4<i32>(4575i, -2147483647i, 2147483647i, u_input.a)))).x, func_2(vec2<bool>(var_2.x, var_2.x), all(vec4<bool>(var_0.x, var_1.a, var_1.a, var_1.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_4(Struct_3(vec4<i32>(23131i, 19782i, u_input.a, u_input.a)))).x, _wgslsmith_f_op_f32(trunc(2797f)) > 940f)));
}

fn func_1() -> bool {
    let var_0 = global0.x & !((~u_input.a & 23453i) >= u_input.a);
    global1 = ~(~abs(vec4<u32>(global1.x, ~4294967295u, 27020u, 0u)));
    global0 = !select(!vec4<bool>(any(vec2<bool>(global0.x, global0.x)), var_0 | var_0, var_0, global0.x), select(select(select(vec4<bool>(false, var_0, global0.x, true), vec4<bool>(global0.x, global0.x, var_0, global0.x), true), select(vec4<bool>(var_0, var_0, global0.x, true), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, global0.x, false, true)), select(global0.x, global0.x, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(global0.x, false, var_0, var_0), false), func_2(global0.wy, var_0, u_input.a, Struct_4(Struct_3(vec4<i32>(u_input.a, u_input.a, u_input.a, 13539i)))), !vec4<bool>(global0.x, false, false, global0.x)), func_2(!vec2<bool>(var_0, var_0), global0.x, u_input.a, Struct_4(Struct_3(vec4<i32>(u_input.a, 41136i, u_input.a, 16271i))))), !func_3(global1.zxy));
    global1 = ~(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global1.x, global1.x, global1.x), vec4<u32>(global1.x, 11745u, global1.x, 54425u) & vec4<u32>(global1.x, 0u, 4294967295u, global1.x)) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, global1.x, 33691u, 52698u), vec4<u32>(global1.x, 1u, 5828u, global1.x))) & vec4<u32>(_wgslsmith_clamp_u32(countOneBits(global1.x), 3840u, 22542u | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, global1.x), vec4<u32>(global1.x, 61200u, global1.x, 4294967295u))), 44418u, 0u, ~_wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec3_u32(global1.xyz, vec3<u32>(12601u, 46909u, 4294967295u)), 24294u));
    var var_1 = global1.x;
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_sub_i32(u_input.a, 1i)), -15253i), u_input.a) <= 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(true, func_1(), true));
    let var_1 = Struct_2(Struct_1(var_0.a), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-981f - -272f) - -1564f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(733f, 1000f))))))), ~(~_wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-14949i, u_input.a, u_input.a, -1764i), vec4<i32>(-1i, u_input.a, 72160i, 34237i)))), Struct_1(true));
    global0 = vec4<bool>(!(!(-var_1.d >= 2265i)), false, var_1.b.a, true || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + 1000f)) == _wgslsmith_f_op_f32(abs(var_1.c))));
    global0 = func_3(vec3<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, global1.x, 0u), global1.xxx), _wgslsmith_mult_vec3_u32(vec3<u32>(10848u, global1.x, 37176u), vec3<u32>(global1.x, global1.x, global1.x))), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(global1.x, global1.x, 4294967295u), global1.x), _wgslsmith_mod_u32(0u, 1u)));
    var var_2 = select(_wgslsmith_clamp_vec2_i32(~vec2<i32>(var_1.d, u_input.a) << (global1.zy % vec2<u32>(32u)), -(~vec2<i32>(var_1.d, -39509i) >> (~global1.wy % vec2<u32>(32u))), vec2<i32>(var_1.d, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d, var_1.d, var_1.d), vec3<i32>(2147483647i, -1i, 14347i))) << (global1.yw % vec2<u32>(32u))), abs(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_1.d), vec2<i32>(u_input.a, var_1.d)))) & vec2<i32>(u_input.a, _wgslsmith_clamp_i32(var_1.d << (30011u % 32u), min(0i, 9752i), u_input.a)), vec2<bool>(true, global0.x));
    global1 = countOneBits(select(vec4<u32>(~1u, 0u, _wgslsmith_mult_u32(global1.x, global1.x ^ global1.x), reverseBits(_wgslsmith_clamp_u32(global1.x, 4849u, global1.x))), vec4<u32>(~global1.x << (~global1.x % 32u), global1.x, 4294967295u, ~global1.x), vec4<bool>(false, var_1.a.a | true, !var_0.a, _wgslsmith_f_op_f32(step(-1750f, 197f)) >= _wgslsmith_f_op_f32(trunc(var_1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_add_i32(var_1.d, var_2.x)) ^ 41781i, var_1.d, _wgslsmith_f_op_f32(round(var_1.c)), ~(~1u));
}

