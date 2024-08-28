struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: vec2<i32> = vec2<i32>(0i, 0i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = -16547i;
    var var_1 = vec4<u32>(~select(u_input.a, u_input.a, any(vec4<bool>(global0[_wgslsmith_index_u32(23810u, 14u)], arg_1, true, true))), _wgslsmith_sub_u32(u_input.d, _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(u_input.a, 0u)), abs(min(vec2<u32>(0u, u_input.d), vec2<u32>(0u, 1u))))), _wgslsmith_sub_u32(21143u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4344u, u_input.b, 1u), vec3<u32>(1u, u_input.b, 0u))), 9760u);
    let var_2 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(countOneBits(-global1.x), u_input.c.x, u_input.c.x)), min(vec3<i32>(2147483647i, ~u_input.c.x, u_input.c.x) >> (vec3<u32>(var_1.x, ~var_1.x, u_input.a) % vec3<u32>(32u)), -_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-39i, -1i, u_input.c.x), vec3<i32>(8878i, global1.x, 0i)), reverseBits(vec3<i32>(global1.x, 21482i, 1i)), vec3<i32>(22967i, var_0, 39180i))));
    var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(~(vec4<u32>(u_input.a, 0u, 1u, 7914u) | vec4<u32>(u_input.d, u_input.b, 4294967295u, u_input.d))), vec4<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_1.xzw, vec3<u32>(var_1.x, 1u, 1u)), var_1.x), max(var_1.x, ~u_input.b), u_input.b)), ~(vec4<u32>(~4294967295u, 1u, u_input.b >> (u_input.d % 32u), var_1.x) ^ ~vec4<u32>(5078u, u_input.a, 4294967295u, var_1.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1390f * _wgslsmith_f_op_f32(-arg_0)), arg_0, -2317f)));
    return 1383f;
}

fn func_2() -> f32 {
    global1 = _wgslsmith_add_vec2_i32(u_input.c, select(~vec2<i32>(27067i, 16610i), -firstLeadingBit(vec2<i32>(-2147483647i, -1i)), vec2<bool>(true, !global0[_wgslsmith_index_u32(u_input.a, 14u)]))) & vec2<i32>(-2147483647i, ~7070i);
    global0 = array<bool, 14>();
    let var_0 = 4294967295u;
    let var_1 = ~firstTrailingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 17663u, u_input.d), vec3<u32>(var_0, 1u, var_0)) << (vec3<u32>(~0u, ~u_input.a, ~629u) % vec3<u32>(32u)));
    global1 = firstTrailingBit(vec2<i32>(reverseBits(global1.x) >> ((var_0 ^ 0u) % 32u), reverseBits(abs(u_input.c.x))) << (reverseBits(var_1.zx) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(183f, _wgslsmith_f_op_f32(-280f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(719f * 1373f), 212f)))), all(!vec3<bool>(!global0[_wgslsmith_index_u32(var_0, 14u)], true, false))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) - -1000f);
    return Struct_1(vec3<bool>(!global0[_wgslsmith_index_u32(abs(u_input.d), 14u)], false, false), ~abs(u_input.c), _wgslsmith_mod_u32(_wgslsmith_mod_u32(select(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(32849u, 0u, u_input.d), vec3<u32>(u_input.a, 76278u, 1u)), select(global0[_wgslsmith_index_u32(1u, 14u)], true, false)), select(37461u, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 14u)]) ^ u_input.a), 1u), false);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_4) -> Struct_4 {
    var var_0 = arg_3.b;
    let var_1 = Struct_2(arg_3.b.a, arg_0.b.x, Struct_1(vec3<bool>((-2147483647i | u_input.c.x) < _wgslsmith_sub_i32(u_input.c.x, arg_1), !(11351i <= arg_2), false), ~u_input.c, countOneBits(_wgslsmith_add_u32(1u, u_input.b)), false));
    var var_2 = var_1;
    global0 = array<bool, 14>();
    let var_3 = 198f;
    return arg_3;
}

fn func_5(arg_0: Struct_4) -> bool {
    let var_0 = countOneBits(max(min(~(vec4<i32>(u_input.c.x, global1.x, u_input.c.x, 1i) ^ vec4<i32>(u_input.c.x, -43115i, 1231i, 5922i)), ~(~vec4<i32>(global1.x, -237i, global1.x, global1.x))), vec4<i32>(21278i, 8730i, -1i, u_input.c.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1189f, _wgslsmith_f_op_f32(sign(1396f))), _wgslsmith_f_op_f32(step(-1055f, _wgslsmith_f_op_f32(f32(-1f) * -470f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(440f, 1000f) - vec2<f32>(1118f, -409f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(438f, -141f), vec2<f32>(1274f, 780f))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1467f, 2438f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-189f, -186f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-290f, 617f)))))));
    global1 = select((~u_input.c >> (firstTrailingBit(~vec2<u32>(4294967295u, arg_0.a)) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(u_input.c, ~var_0.zy), _wgslsmith_mod_vec2_i32(abs(var_0.xw), vec2<i32>(-max(5556i, u_input.c.x), select(var_0.x, select(u_input.c.x, 0i, false), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 14u)], global0[_wgslsmith_index_u32(arg_0.a, 14u)]))))), !vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.a, 14u)]));
    global0 = array<bool, 14>();
    global1 = u_input.c;
    return func_1().d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(u_input.c.x, 0i);
    global1 = vec2<i32>(0i, ~abs(-20366i));
    let var_1 = func_5(func_4(func_1(), 37949i, i32(-1i) * -2147483647i, Struct_4(0u, Struct_3(abs(u_input.b)))));
    let var_2 = ~_wgslsmith_mult_vec4_u32(~(~vec4<u32>(95918u, 1u, u_input.b, 1u)), vec4<u32>(abs(38989u), min(u_input.d, 44407u), func_4(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(13096u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], false), u_input.c, u_input.d, var_1), global1.x, -1i, Struct_4(0u, Struct_3(44737u))).b.a, _wgslsmith_sub_u32(4294967295u, u_input.b))) ^ _wgslsmith_add_vec4_u32(firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.b, 0u), vec4<u32>(1u, 102605u, u_input.a, u_input.d)))), reverseBits(select(vec4<u32>(u_input.d, u_input.d, 1u, 8423u), vec4<u32>(4294967295u, u_input.a, 75252u, 27433u), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)]))) << (~firstTrailingBit(vec4<u32>(45178u, 79437u, 0u, u_input.d)) % vec4<u32>(32u)));
    global0 = array<bool, 14>();
    global1 = reverseBits(vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(firstTrailingBit(reverseBits(u_input.c.x)), ~global1.x, global1.x)));
    global0 = array<bool, 14>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -126f), _wgslsmith_f_op_f32(sign(101f)))));
    global0 = array<bool, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(abs(min(vec3<i32>(var_0, 22649i, -18295i) << (vec3<u32>(u_input.d, 15920u, 48929u) % vec3<u32>(32u)), abs(vec3<i32>(global1.x, u_input.c.x, u_input.c.x)))), abs(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c.x, u_input.c.x, var_0), vec3<i32>(-1i, 12202i, -52056i)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_3.x)), var_3.x, _wgslsmith_f_op_f32(var_3.x + 790f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, -1630f))))), global1.x);
}

