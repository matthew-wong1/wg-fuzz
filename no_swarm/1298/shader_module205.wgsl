struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    return Struct_1(u_input.b.ww, -1000f);
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1116f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(689f - -295f))), func_1(firstTrailingBit(~vec4<u32>(69932u, 0u, u_input.d, 4294967295u))), 14607i, 1u);
    var var_1 = Struct_1(var_0.b.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2917f + -544f), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1913f)))));
    var_1 = Struct_1(vec2<i32>(-(~1i) << (_wgslsmith_mult_u32(0u, var_0.d) % 32u), var_1.a.x), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1508f), -821f))));
    var_1 = Struct_1(-_wgslsmith_mult_vec2_i32(firstLeadingBit(~vec2<i32>(0i, 2147483647i)), var_1.a), _wgslsmith_f_op_f32(select(-341f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, 468f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -190f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) - _wgslsmith_f_op_f32(var_0.b.b + var_1.b)))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(round(arg_0.x)), var_0.b, 2147483647i, _wgslsmith_clamp_u32(53910u, var_0.d, abs(1u << (0u % 32u))));
    return var_0.c & var_1.a.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: bool, arg_3: vec2<bool>) -> i32 {
    var var_0 = ~u_input.a.x;
    var_0 = 5064u;
    var_0 = select(_wgslsmith_add_u32(u_input.d, 4294967295u), 10687u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c).b + 1000f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c).b + -1232f)));
    let var_1 = _wgslsmith_clamp_u32(~74550u, u_input.a.x, ~u_input.a.x << (select(~(~u_input.a.x), u_input.d, select(true, false & arg_1, any(vec3<bool>(true, true, arg_1)))) % 32u));
    var var_2 = !select(arg_3, vec2<bool>(true | arg_2, all(!vec4<bool>(true, arg_3.x, arg_2, true))), arg_3.x);
    return -func_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1090f, 1022f), vec2<f32>(-532f, -1472f)), vec2<f32>(-710f, -663f))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(-vec2<i32>(firstTrailingBit(60800i ^ u_input.b.x), u_input.b.x), -968f);
    let var_1 = reverseBits(_wgslsmith_div_vec2_u32(firstTrailingBit(u_input.a), _wgslsmith_mod_vec2_u32(~vec2<u32>(12006u, 0u), u_input.a)));
    var_0 = Struct_1(vec2<i32>(1i & firstTrailingBit(_wgslsmith_mult_i32(0i, arg_0.x)), -_wgslsmith_mult_i32(9806i, 10651i)), var_0.b);
    let var_2 = vec3<i32>(1i, arg_0.x, arg_1.c ^ _wgslsmith_add_i32(~(-u_input.b.x), _wgslsmith_sub_i32(30479i, u_input.b.x)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(round(arg_1.a)), arg_1.b, -2147483647i, max(var_1.x, ~31596u) << (arg_1.d % 32u));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1468f) + var_0.b))), func_1(~u_input.c), ~1i, _wgslsmith_mod_u32(abs(var_1.x), var_1.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec2_i32(arg_0.b.a, select(firstLeadingBit(vec2<i32>(2147483647i, reverseBits(arg_0.b.a.x))), abs(u_input.b.xw), all(vec4<bool>(any(vec4<bool>(true, true, true, true)), 997f < arg_3.b, true, true))));
    let var_1 = Struct_1(vec2<i32>(arg_1.b.a.x, u_input.b.x) >> (((u_input.c.zz | max(u_input.a, arg_2.zz)) << (abs(vec2<u32>(0u, arg_2.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1002f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b * -309f) * _wgslsmith_div_f32(arg_3.b, arg_3.b)))))));
    let var_2 = arg_0;
    let var_3 = !select(vec3<bool>(true, true, true), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), true || any(vec4<bool>(false, true, false, true))));
    var var_4 = func_4(~_wgslsmith_div_vec2_i32(arg_3.a, arg_3.a), Struct_2(-803f, Struct_1(-vec2<i32>(26641i, arg_0.b.a.x), 184f), arg_0.c, _wgslsmith_sub_u32(func_4(select(var_1.a, var_1.a, false), var_2).d, ~var_2.d)));
    return var_2;
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = true;
    var_0 = countOneBits(-(arg_2.c << (_wgslsmith_clamp_u32(u_input.a.x, arg_0, arg_1) % 32u))) == select(~1i, u_input.b.x, all(vec4<bool>(select(true, true, false), true, arg_2.b.b <= -1047f, true)));
    let var_1 = arg_2.b.b;
    let var_2 = vec2<u32>(select(arg_1, _wgslsmith_div_u32(6185u, u_input.a.x), false), reverseBits(abs((arg_1 & arg_0) | 1u)));
    let var_3 = arg_2;
    return StorageBuffer(~(~(~vec3<u32>(arg_2.d, 4294967295u, 25395u))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-613f, 1000f, arg_2.b.b) - vec3<f32>(var_1, -584f, 1062f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2688f, 1168f, arg_2.b.b) - vec3<f32>(-1000f, 593f, 224f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -730f, var_3.b.b) * vec3<f32>(var_3.a, var_3.a, -496f)), _wgslsmith_div_vec3_f32(vec3<f32>(604f, 1408f, 1263f), vec3<f32>(1000f, var_1, 2247f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -126f, var_3.b.b)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, var_1) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(2202f, -1416f), 583f)))), arg_2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1729f, _wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_f_op_f32(474f + 583f), _wgslsmith_f_op_f32(-var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let x = u_input.a;
    s_output = func_6(_wgslsmith_add_u32(~u_input.c.x, ~(_wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(u_input.c.x, 1u)) >> ((u_input.d << (u_input.a.x % 32u)) % 32u))), _wgslsmith_add_u32(u_input.d, ~u_input.c.x), func_5(func_4(-(~vec2<i32>(433i, 1i)), Struct_2(_wgslsmith_f_op_f32(722f - -1706f), func_1(u_input.c), func_2(u_input.b.wz, true, true, vec2<bool>(true, true)), _wgslsmith_sub_u32(u_input.d, 16127u))), func_4(func_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(u_input.b.x, 0i), vec2<i32>(u_input.b.x, u_input.b.x)), Struct_2(760f, Struct_1(u_input.b.xy, -1000f), -1i, u_input.c.x)).b.a, Struct_2(_wgslsmith_f_op_f32(ceil(-1310f)), func_1(u_input.c), max(u_input.b.x, u_input.b.x), countOneBits(41806u))), u_input.c, Struct_1(u_input.b.zw & (vec2<i32>(14887i, u_input.b.x) & u_input.b.xx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(401f - -1065f)))));
}

