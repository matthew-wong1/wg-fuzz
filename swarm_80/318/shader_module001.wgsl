struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = any(!(!vec4<bool>(all(vec2<bool>(false, arg_2.d)), true, true, arg_2.d)));
    var var_1 = ~(~vec3<u32>(1u, 1u, 1u));
    var var_2 = arg_2.e.x;
    var var_3 = select(i32(-1i) * -42293i, -14547i, true);
    var var_4 = arg_2;
    return var_4.c;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = ~(~vec3<u32>(~(~58898u), 4294967295u ^ min(arg_0.x, arg_0.x), max(~arg_0.x, 1u ^ arg_0.x)));
    var_0 = arg_0.wyx;
    let var_1 = countOneBits(vec4<i32>(min(_wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, 44123i), -32434i), u_input.a.x), 14712i, 0i, abs(_wgslsmith_add_i32(u_input.a.x, u_input.a.x << (9987u % 32u)))));
    let var_2 = reverseBits(~arg_0.x);
    var var_3 = arg_0.yxx;
    return Struct_3(Struct_2(vec2<i32>(-10703i, 295i)), Struct_1(vec2<i32>(u_input.a.x, 42958i)), ~func_3(Struct_3(Struct_2(u_input.a.yw), Struct_1(u_input.a.ww), vec3<i32>(var_1.x, u_input.a.x, u_input.a.x), all(vec3<bool>(false, true, true)), ~vec4<i32>(var_1.x, 20197i, u_input.a.x, u_input.a.x)), Struct_2(-vec2<i32>(u_input.a.x, 7892i)), Struct_3(Struct_2(var_1.zx), Struct_1(var_1.xy), vec3<i32>(23237i, 2147483647i, u_input.a.x), true, u_input.a >> (vec4<u32>(var_2, var_3.x, var_3.x, 4294967295u) % vec4<u32>(32u)))), all(vec2<bool>(all(vec3<bool>(true, false, false)), true)), _wgslsmith_clamp_vec4_i32(~(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, u_input.a.x), var_1) | -var_1), firstTrailingBit(~(~var_1)), u_input.a));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> Struct_4 {
    let var_0 = ~vec2<u32>(arg_0, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_3, 17433u), 70952u), _wgslsmith_sub_u32(abs(18600u), arg_0 | arg_3)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, -1000f, arg_1, arg_1)))))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, arg_1, arg_1, _wgslsmith_f_op_f32(-809f + 1024f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-449f, 1218f, -1636f, -689f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(397f, arg_1, -1000f, arg_1), vec4<f32>(arg_1, -583f, -280f, 1740f)))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-608f, 146f, _wgslsmith_f_op_f32(select(-687f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), arg_2.d)), 860f)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, var_1.x, var_1.x, -477f), vec4<f32>(var_1.x, -726f, 1000f, 629f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-308f, arg_1, -750f, arg_1)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -2871f, 105f, arg_1), vec4<f32>(arg_1, -319f, var_1.x, arg_1))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1494f)), _wgslsmith_div_f32(arg_1, 727f), _wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(sign(702f))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, arg_1, var_1.x, 860f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1129f, -766f, 136f) + vec4<f32>(arg_1, 1082f, 912f, -505f))))));
    var var_2 = _wgslsmith_mod_u32(arg_3, arg_0);
    return Struct_4(u_input.a.x);
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = func_2(min(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 0u, 1u, 17445u)), countOneBits(vec4<u32>(~79586u, 4294967295u, 101163u, firstLeadingBit(4294967295u)))));
    let var_1 = Struct_5(Struct_3(Struct_2(-abs(var_0.a.a)), Struct_1(_wgslsmith_clamp_vec2_i32(~arg_2.a, vec2<i32>(-17457i, arg_2.a.x), vec2<i32>(var_0.c.x, -30444i))), ~_wgslsmith_add_vec3_i32(var_0.e.zwy, func_2(vec4<u32>(18578u, 19160u, 35337u, 4294967295u)).e.xwz), true, -vec4<i32>(_wgslsmith_sub_i32(10837i, 0i), ~u_input.a.x, i32(-1i) * -21946i, _wgslsmith_dot_vec2_i32(u_input.a.yw, vec2<i32>(arg_0.a, -2147483647i)))), var_0.a);
    var_0 = func_2(vec4<u32>(1u, 1u, 1u, 1u) << (countOneBits(~firstTrailingBit(vec4<u32>(73186u, 40535u, 35673u, 1u))) % vec4<u32>(32u)));
    let var_2 = func_2(vec4<u32>(~_wgslsmith_mod_u32(~19449u, reverseBits(14875u)), 107787u, countOneBits(0u), max(firstTrailingBit(_wgslsmith_clamp_u32(0u, 1808u, 44638u)), firstLeadingBit(~24424u))));
    var var_3 = var_2;
    return func_2(countOneBits(vec4<u32>(1u, 1u, 1u, 1u))).a;
}

fn func_1() -> f32 {
    let var_0 = firstTrailingBit(vec2<i32>(u_input.a.x, 11829i));
    let var_1 = 0u;
    var var_2 = vec2<bool>(true, true);
    let var_3 = Struct_3(func_5(func_4(21386u, 493f, func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1, 16868u, var_1, 15295u), vec4<u32>(var_1, var_1, 60092u, 1u))), 1u), !any(select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), func_2(max(~vec4<u32>(4294967295u, 0u, var_1, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_1, 4294967295u, 1u), vec4<u32>(var_1, 4294967295u, var_1, 1u)))).b), Struct_1(_wgslsmith_mod_vec2_i32(var_0, u_input.a.yw)), vec3<i32>(-8662i, max(_wgslsmith_clamp_i32(6420i, 1362i, -var_0.x), select(5545i, ~(-2147483647i), false)), -1i), select(var_2.x, true, firstTrailingBit(~41744u) <= max(88483u, var_1)), ~(-u_input.a) & (-abs(vec4<i32>(15419i, u_input.a.x, 0i, u_input.a.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_1, 0u, var_1, var_1), ~vec4<u32>(1872u, 4294967295u, var_1, 71u)) % vec4<u32>(32u))));
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1624f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(679f + -154f)) + _wgslsmith_div_f32(1480f, -1222f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(134f, _wgslsmith_f_op_f32(1496f * _wgslsmith_f_op_f32(1288f + -573f)), var_2.x))), true));
    return _wgslsmith_f_op_f32(exp2(1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(730f, -264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-556f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    var var_1 = func_2(min(~abs(vec4<u32>(52776u, 0u, 0u, 16333u)), vec4<u32>(1u, 1u, 1u, 1u)) & ~select(abs(vec4<u32>(51284u, 70820u, 9005u, 4294967295u)), firstTrailingBit(vec4<u32>(21640u, 25519u, 67378u, 24247u)), vec4<bool>(true, false, false, true)));
    var_1 = func_2(select(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, 0u, 1u, 32208u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(60462u, 12841u, 15009u, 0u), vec4<u32>(25524u, 1u, 35334u, 50006u)), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(24900u, 23222u, 19597u), vec3<u32>(10544u, 4294967295u, 51411u)), select(0u, 1u, false), ~77260u)), vec4<u32>(~_wgslsmith_mult_u32(0u, 4084u), 1u, 6999u, abs(4294967295u)), func_2(vec4<u32>(1u, 1u, 1u, 1u)).d));
    var_1 = func_2(vec4<u32>(1u, abs(max(0u, 1u)), 25497u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 48270u, 0u, 0u), min(vec4<u32>(12509u, 53873u, 0u, 0u), vec4<u32>(6998u, 13325u, 0u, 4294967295u))) >> (1u % 32u)));
    var_1 = Struct_3(func_5(Struct_4(1i), true, func_2(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(7996u, 39768u, 4294967295u, 0u)), countOneBits(vec4<u32>(15273u, 72300u, 12536u, 96532u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(27110u, 0u, 18087u, 27810u), vec4<u32>(61031u, 45149u, 4294967295u, 45601u), vec4<u32>(1u, 0u, 109863u, 51273u)))).b), func_2(~vec4<u32>(1u, 1u, 1u, 1u)).b, u_input.a.xyy, var_1.d, ~select(var_1.e, -var_1.e, vec4<bool>(var_1.d, true, var_1.d, 976i < var_1.b.a.x)));
    var var_2 = func_2(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(24030u, 3791u, 58720u), vec3<u32>(0u, 1u, 1u)) ^ 81854u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(68903u, 41912u))), 69193u, max(1u, 1u)) >> (~(~vec4<u32>(0u, 4294967295u, 12221u, 4294967295u)) % vec4<u32>(32u))).b;
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, firstTrailingBit(1u)), _wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(max(1u, _wgslsmith_clamp_u32(4294967295u, 1u, 1u)), 3019u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(min(var_0.x, -110f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -623f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x * var_0.x))), -660f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -1235f)))))), -24013i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f) * _wgslsmith_f_op_f32(var_0.x - var_0.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(var_0.x + 1477f))))));
}

