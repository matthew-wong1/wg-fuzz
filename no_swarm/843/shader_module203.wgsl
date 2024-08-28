struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(-50380i, 14354i, 25698i, 59391i, 2147483647i, 2147483647i, 0i, 0i, -1i, -51514i, 2147483647i, 61096i, i32(-2147483648));

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, false, true)), vec3<f32>(-110f, -1148f, -1190f), Struct_1(vec4<bool>(false, false, false, true)), 880f), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, true, true, false)), vec3<f32>(1000f, 2277f, 1782f), Struct_1(vec4<bool>(true, true, true, false)), -441f));

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<bool>(false, true, true, true)), true, Struct_2(Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, false, false)), vec3<f32>(935f, 1079f, 1117f), Struct_1(vec4<bool>(true, false, false, false)), -425f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    var var_0 = (u_input.b | max(~(~(-37949i)), -(~global0[_wgslsmith_index_u32(u_input.a, 13u)]))) & -13697i;
    var var_1 = -2147483647i;
    var var_2 = global0[_wgslsmith_index_u32(0u, 13u)];
    let var_3 = Struct_1(select(select(!global2.a.a, global2.a.a, true), vec4<bool>(_wgslsmith_mod_u32(u_input.a, 4294967295u) != _wgslsmith_dot_vec2_u32(vec2<u32>(44672u, u_input.a), vec2<u32>(u_input.a, u_input.a)), !global2.b, false, false), true));
    global1 = array<Struct_2, 2>();
    return Struct_1(var_3.a);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_add_i32(-global0[_wgslsmith_index_u32(firstLeadingBit(0u), 13u)], firstTrailingBit(abs(arg_2.x)));
    let var_1 = vec4<u32>(u_input.a, 68871u, 1u, u_input.a);
    global0 = array<i32, 13>();
    let var_2 = reverseBits(1i);
    let var_3 = global2.c.b.a.yzx;
    return func_2().a;
}

fn func_1(arg_0: f32) -> Struct_2 {
    global1 = array<Struct_2, 2>();
    let var_0 = any(global2.a.a.xz);
    let var_1 = vec2<i32>(-1i) * -countOneBits(_wgslsmith_sub_vec2_i32(-vec2<i32>(-13087i, u_input.b), vec2<i32>(-32125i, u_input.b)));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(1350f, global2.c.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) - _wgslsmith_f_op_f32(min(751f, 792f))), _wgslsmith_f_op_f32(select(-292f, -420f, -21938i <= var_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(334f, -1888f), 1448f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(733f, global2.c.c.x, global2.c.e, -1227f) + vec4<f32>(674f, -720f, -1000f, 1000f)))) + vec4<f32>(-980f, _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(arg_0 - 1159f), -710f)))), func_2());
    var var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], 12970i, global0[_wgslsmith_index_u32(16267u, 13u)]), u_input.c.yww, vec3<i32>(-22240i, var_1.x, 1i) >> (vec3<u32>(u_input.a, 38810u, 1u) % vec3<u32>(32u))), ~vec3<i32>(-35291i, global0[_wgslsmith_index_u32(u_input.a, 13u)], 1i)), -vec3<i32>(19865i, i32(-1i) * -14655i, var_1.x)), vec3<i32>(firstLeadingBit(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 48201i, global0[_wgslsmith_index_u32(u_input.a, 13u)], 1i), u_input.c))), ~_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c.x, 29604i), global0[_wgslsmith_index_u32(1u, 13u)]), global0[_wgslsmith_index_u32(~1u, 13u)]));
    return Struct_2(Struct_1(func_3(Struct_1(select(var_2.b.a, vec4<bool>(var_0, false, var_2.b.a.x, var_0), vec4<bool>(false, global2.a.a.x, global2.a.a.x, global2.c.d.a.x))), ~vec3<u32>(4294967295u, 1310u, u_input.a), _wgslsmith_mult_vec4_i32(u_input.c, u_input.c))), func_2(), _wgslsmith_f_op_vec3_f32(var_2.a.zzx * vec3<f32>(-1611f, global2.c.c.x, 461f)), Struct_1(global2.c.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.x, _wgslsmith_f_op_f32(abs(-420f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(max(-(~u_input.b), select(-37737i, _wgslsmith_sub_i32(-28564i, global0[_wgslsmith_index_u32(u_input.d, 13u)]), global2.c.d.a.x))) << (~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(9067u, u_input.d, u_input.d)) & ~vec3<u32>(u_input.d, u_input.d, 64744u), ~(~vec3<u32>(14274u, 53584u, u_input.a))) % 32u);
    var var_1 = Struct_2(Struct_1(global2.c.a.a), global2.c.a, global2.c.c, global2.c.a, 228f);
    var_0 = 2147483647i;
    var_1 = func_1(-967f);
    global2 = Struct_3(func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-401f - -392f) + 459f)))).a, global2.c.a.a.x, Struct_2(Struct_1(vec4<bool>(global2.b, global0[_wgslsmith_index_u32(1u, 13u)] >= 102366i, any(vec3<bool>(false, false, true)), false)), var_1.d, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)), global2.c.c.x, -1307f), global2.a, -327f));
    var var_2 = vec4<u32>(3150u, ~u_input.a, 24771u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.d, 4294967295u, 66897u, 6961u)) >> ((vec4<u32>(4294967295u, 20445u, 4294967295u, 43376u) | vec4<u32>(40432u, 4294967295u, u_input.a, u_input.d)) % vec4<u32>(32u)), vec4<u32>(countOneBits(4294967295u), 7034u, ~0u, _wgslsmith_mult_u32(13751u, 18521u)))) << (reverseBits(select(min(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(51078u, 102728u, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 28154u, u_input.a, u_input.d))), ~(~vec4<u32>(u_input.d, 37072u, 4294967295u, 1u)), true)) % vec4<u32>(32u));
    let var_3 = 964f;
    let var_4 = Struct_3(var_1.a, true, global1[_wgslsmith_index_u32(countOneBits(var_2.x), 2u)]);
    var var_5 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1165f, -1154f, 425f, global2.c.c.x))), vec4<f32>(var_3, _wgslsmith_f_op_f32(step(-1561f, global2.c.c.x)), -356f, 1000f)), vec4<f32>(-363f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3, var_1.e)) + _wgslsmith_f_op_f32(-var_3)), -2068f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-993f, -1300f)))))), Struct_1(var_4.c.d.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_5.a.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(var_2.wyy), vec3<u32>(0u, var_2.x, ~u_input.a)), var_2.xwy, select(~(vec3<u32>(4294967295u, 4294967295u, u_input.a) >> (vec3<u32>(4294967295u, 1u, u_input.a) % vec3<u32>(32u))), firstLeadingBit(~var_2.ywx), global2.b)), abs(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(98398u, 13u)], _wgslsmith_div_i32(reverseBits(global0[_wgslsmith_index_u32(u_input.a, 13u)]), u_input.c.x))), max(min(_wgslsmith_mult_vec3_u32(var_2.wzz, var_2.zwx), ~_wgslsmith_mult_vec3_u32(var_2.xyx, var_2.zwz)), ~(~var_2.xyy)));
}

