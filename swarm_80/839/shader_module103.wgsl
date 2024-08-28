struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2;

var<private> global2: bool = true;

var<private> global3: Struct_2 = Struct_2(vec2<i32>(1i, 34935i), vec4<i32>(1i, -34664i, -54984i, i32(-2147483648)), Struct_1(vec3<u32>(1u, 4236u, 4294967295u)), vec2<i32>(i32(-2147483648), 20757i), 0i);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    var var_0 = min(-3613i, ~abs(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b, global3.d.x), u_input.b)));
    return global3.c;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    global3 = Struct_2(~_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, global3.e)), -vec2<i32>(2147483647i, 0i)) ^ vec2<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.b, 3811i), global3.b)), vec4<i32>(_wgslsmith_mod_i32(-global1.e | -2147483647i, _wgslsmith_clamp_i32(arg_1.a.x, select(u_input.b, -2147483647i, false), 0i)), abs(select(-39483i, -32316i, false)) | _wgslsmith_mod_i32(countOneBits(arg_1.b.x), arg_0.e >> (4294967295u % 32u)), u_input.b, -firstLeadingBit(1i)), global3.c, _wgslsmith_div_vec2_i32(max(_wgslsmith_div_vec2_i32(~vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(global1.b.x, 1i)), vec2<i32>(1i, _wgslsmith_sub_i32(-42549i, -2147483647i))), global1.d), -29525i);
    global1 = arg_0;
    var var_0 = select(vec3<bool>(1181f < _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(736f, 385f))), any(vec4<bool>(true, true, true, true)), !(!all(vec3<bool>(false, false, true)))), !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), true), !vec3<bool>(true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false)), true));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(reverseBits(arg_1.b.x) | u_input.b, 53375i), 2147483647i);
    var var_2 = global1.c;
    return arg_0.c.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -497f))), -326f, -691f, 1f) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1262f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 599f), _wgslsmith_f_op_f32(ceil(-1502f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1358f)))))));
    let var_1 = ~(~(~_wgslsmith_mult_u32(firstTrailingBit(538u), 9845u)));
    let var_2 = global3.c;
    let var_3 = Struct_1(_wgslsmith_add_vec3_u32(var_2.a ^ vec3<u32>(firstTrailingBit(var_2.a.x), countOneBits(var_2.a.x), ~4294967295u), ~select(vec3<u32>(51116u, 37632u, 0u), ~vec3<u32>(arg_3.x, arg_1.a.x, 43555u), !vec3<bool>(false, true, arg_2.x))));
    var var_4 = Struct_1(firstLeadingBit(_wgslsmith_div_vec3_u32(~(~arg_3), ~(~arg_0.a))));
    return select(global1.b, countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, global1.a.x, global1.e, global3.b.x), global1.b)), vec4<bool>(all(arg_2), arg_2.x, true, all(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), arg_2)))) | _wgslsmith_div_vec4_i32(firstTrailingBit(~global3.b << (abs(vec4<u32>(4294967295u, 21620u, arg_0.a.x, var_3.a.x)) % vec4<u32>(32u))), ~vec4<i32>(i32(-1i) * -1i, global1.a.x, min(global1.b.x, 32971i), -u_input.b));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global3 = Struct_2(~vec2<i32>(~(~53507i), u_input.b), func_4(func_1(), global3.c, vec4<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), ~1i != global3.b.x, false), _wgslsmith_mod_vec3_u32(~func_3(Struct_2(vec2<i32>(-7130i, -1i), global1.b, global3.c, vec2<i32>(global1.b.x, global3.b.x), 1i), Struct_2(vec2<i32>(0i, global1.b.x), global1.b, Struct_1(global3.c.a), vec2<i32>(2147483647i, 13721i), 2147483647i)), ~global3.c.a & vec3<u32>(18267u, 23427u, 1u))), Struct_1(global3.c.a), ~vec2<i32>(0i, global3.a.x), ~u_input.b);
    let var_0 = Struct_2(-(vec2<i32>(-1i) * -reverseBits(vec2<i32>(global3.e, global1.b.x))), reverseBits(_wgslsmith_add_vec4_i32(min(_wgslsmith_mod_vec4_i32(global1.b, global1.b), global1.b & vec4<i32>(global3.d.x, global1.b.x, global1.e, 0i)), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(93614i, global3.a.x, u_input.b, global1.d.x), vec4<i32>(global1.d.x, u_input.b, -1i, u_input.b)), firstLeadingBit(global1.b)))), Struct_1(global1.c.a), _wgslsmith_mod_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(global1.a.x, global3.b.x), global3.a) << (min(global1.c.a.xz, arg_1.a.zy) % vec2<u32>(32u))), vec2<i32>(u_input.b, global3.e) | _wgslsmith_mod_vec2_i32(global1.d, ~vec2<i32>(0i, -17093i))), -(~_wgslsmith_mult_i32(abs(1i), _wgslsmith_add_i32(-9753i, 26888i))));
    var var_1 = var_0;
    global0 = true;
    let var_2 = _wgslsmith_clamp_vec2_u32(global1.c.a.zy, vec2<u32>(20972u, func_3(var_0, Struct_2(_wgslsmith_sub_vec2_i32(global3.b.xz, global3.d), max(vec4<i32>(-2147483647i, 22086i, -8613i, u_input.b), vec4<i32>(global3.b.x, global3.d.x, 0i, 2147483647i)), func_1(), -var_1.a, global3.d.x)).x), vec2<u32>(4294967295u & arg_1.a.x, min(global3.c.a.x, ~(~global3.c.a.x))));
    return func_1();
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = all(vec3<bool>(true, true, true));
    var var_1 = ~_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-17558i, u_input.b, u_input.b, global1.e) & vec4<i32>(0i, -1567i, global3.a.x, global3.b.x), ~vec4<i32>(-12i, global1.e, 1i, 1i)), -global1.e), countOneBits(firstLeadingBit(~(-46780i))));
    global1 = Struct_2(_wgslsmith_mult_vec2_i32(abs(_wgslsmith_div_vec2_i32(global3.a, vec2<i32>(global3.b.x, u_input.b))), ~min(-vec2<i32>(-8630i, global3.b.x), firstTrailingBit(global3.a))), vec4<i32>(select(2147483647i, 1i, false), _wgslsmith_add_i32(0i, 1i << (~arg_0.x % 32u)), _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(global3.b, global3.b)), 0i), abs(1i)), func_2(~0u, Struct_1(~select(vec3<u32>(arg_0.x, global3.c.a.x, 2377u), vec3<u32>(arg_0.x, 0u, arg_0.x), false))), global1.d, _wgslsmith_mult_i32(-global3.e, 1i));
    let var_2 = global1.a;
    global2 = all(vec2<bool>(true, false));
    return i32(-1i) * -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global3.d, global1.b.yy, func_4(global1.c, Struct_1(vec3<u32>(0u, 1230u, global3.c.a.x)), vec4<bool>(false, true, true, false), vec3<u32>(u_input.a, 1u, 0u)).zw), vec2<i32>(var_2.x, global3.b.x) >> (arg_1.a.yz % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~global1.c.a, func_2(4294967295u, func_1()), _wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.a ^ func_2(23367u, Struct_1(vec3<u32>(global1.c.a.x, 70625u, u_input.a))).a.x, global3.c.a.x), 1u << (1u % 32u)));
    global2 = _wgslsmith_div_f32(1478f, _wgslsmith_div_f32(-163f, 800f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -471f))) * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -760f)))));
    global3 = Struct_2(func_4(Struct_1(vec3<u32>(~global1.c.a.x, ~0u, global1.c.a.x)), func_2(u_input.a, func_2(~0u, Struct_1(global3.c.a))), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), true), ~select(~vec3<u32>(9239u, u_input.a, 4294967295u), ~global3.c.a, true)).xw, _wgslsmith_clamp_vec4_i32(global1.b, vec4<i32>(min(~u_input.b, ~(-1i)), -global3.d.x & abs(-40254i), ~15467i, -2147483647i), firstTrailingBit(_wgslsmith_div_vec4_i32(global1.b, -vec4<i32>(global3.b.x, -36927i, global1.b.x, 2147483647i)))), func_2(_wgslsmith_dot_vec2_u32(global1.c.a.yy, vec2<u32>(1u, ~u_input.a)), func_1()), global3.a, 17309i);
    global2 = true;
    var var_1 = global3.c;
    global2 = true;
    let var_2 = ~select(func_2(u_input.a, Struct_1(vec3<u32>(48988u, global1.c.a.x, global1.c.a.x))).a.x, ~42267u, select(false, 2147483647i > u_input.b, false)) == ~global1.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(12950u, 79958u, u_input.a, var_1.a.x)), vec4<u32>(firstTrailingBit(var_1.a.x), ~14973u, 4294967295u, ~2126u)), vec4<u32>(44376u, firstLeadingBit(firstTrailingBit(u_input.a)), ~global3.c.a.x, abs(1u))));
}

