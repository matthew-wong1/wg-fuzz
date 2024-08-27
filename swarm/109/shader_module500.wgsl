struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: bool = false;

var<private> global2: vec4<i32> = vec4<i32>(16899i, i32(-2147483648), 0i, 39280i);

var<private> global3: vec2<i32> = vec2<i32>(-33580i, i32(-2147483648));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    let var_0 = ~vec3<u32>(12319u, reverseBits(~select(0u, u_input.a, global0.x)), 5691u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(471f, _wgslsmith_f_op_f32(784f - _wgslsmith_f_op_f32(673f + -575f)))));
    global0 = select(!vec2<bool>(!select(false, global0.x, global0.x), false), select(vec2<bool>(global0.x, all(vec2<bool>(global0.x, global0.x))), !select(!vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, global0.x), u_input.a > u_input.a), select(!select(vec2<bool>(global0.x, true), vec2<bool>(false, false), vec2<bool>(true, global0.x)), select(select(vec2<bool>(false, global0.x), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, global0.x), vec2<bool>(false, false), global0.x), global0.x), !(global0.x & global0.x))), select(!select(select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), false), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false)), vec2<bool>(true, true), 4294967295u <= var_0.x));
    let var_2 = Struct_1(vec4<i32>(2147483647i, ~(~(-4300i)) & _wgslsmith_dot_vec2_i32(global2.wz, global2.wy & global2.wy), -global3.x | ~0i, ~global3.x), true, vec2<i32>(~(2147483647i | global2.x) & -2147483647i, _wgslsmith_sub_i32(global3.x, -_wgslsmith_div_i32(41445i, global3.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, 558f) - _wgslsmith_f_op_f32(-1153f * 981f)));
    var var_3 = max(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 60211u), select(vec2<u32>(7201u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(var_2.b, false)), var_0.xy)), vec2<u32>(var_0.x, reverseBits(_wgslsmith_sub_u32(1u, 0u))));
    return ~((countOneBits(~var_2.a) ^ var_2.a) >> (reverseBits(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 37983u, 71132u), vec4<u32>(41496u, var_3.x, 11240u, 41819u))) % vec4<u32>(32u)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_dot_vec2_i32(arg_2.d.a.a.zx, vec2<i32>((i32(-1i) * -15525i) >> (0u % 32u), _wgslsmith_dot_vec2_i32(select(global2.zz, arg_2.d.c.c, vec2<bool>(arg_2.d.a.b, true)), global2.zz))) & 26577i;
    let var_1 = Struct_1(func_3(), true, arg_2.d.e.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(127f * 2068f), _wgslsmith_f_op_f32(sign(-1222f)))))));
    var var_2 = vec4<u32>(~(~13501u), 1u, arg_1.x, reverseBits(~_wgslsmith_mod_u32(arg_1.x, 42632u) | _wgslsmith_sub_u32(_wgslsmith_sub_u32(53242u, 2404u), abs(27554u))));
    let var_3 = arg_2;
    let var_4 = arg_2.d.c.c;
    return var_4.x;
}

fn func_1() -> Struct_4 {
    global2 = max(vec4<i32>(-1i) * -vec4<i32>(global3.x, -28256i, _wgslsmith_mult_i32(global2.x, global2.x), func_2(1u, vec3<u32>(0u, u_input.a, 4294967295u), Struct_4(vec3<f32>(-726f, 331f, 592f), -736f, true, Struct_2(Struct_1(vec4<i32>(-7423i, global2.x, global2.x, global2.x), global0.x, vec2<i32>(global3.x, global3.x), 1315f), global3.x, Struct_1(vec4<i32>(1i, -1i, -966i, -2147483647i), false, vec2<i32>(global2.x, global3.x), -238f), vec4<f32>(260f, -584f, 639f, -488f), Struct_1(vec4<i32>(global2.x, global3.x, 33714i, 67440i), true, global2.xx, -222f))), -434f)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(global2.x << (u_input.a % 32u), -13850i, ~global2.x, global2.x)), countOneBits(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global3.x, -8787i, global3.x), vec4<i32>(-1i, -2147483647i, 0i, global3.x)), firstTrailingBit(vec4<i32>(20699i, -26419i, global2.x, 0i))))));
    var var_0 = Struct_1(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(global3.x, global2.x, -2147483647i, global3.x)), select(vec4<i32>(-31522i, global3.x, global3.x, -1263i), vec4<i32>(global2.x, global2.x, -2147483647i, global3.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), -min(vec4<i32>(46166i, global3.x, -13668i, global2.x), vec4<i32>(global3.x, 1i, global2.x, 2147483647i))), !(global0.x || global0.x) && select(global0.x, global0.x, global0.x), -vec2<i32>(global3.x, global3.x), -1951f);
    global2 = vec4<i32>(firstLeadingBit(var_0.c.x), _wgslsmith_clamp_i32(abs(var_0.c.x), 29275i, global3.x), 1i, -min(-9528i, -22838i));
    global0 = vec2<bool>(-2147483647i > -(i32(-1i) * -var_0.a.x), -global3.x < global3.x);
    var var_1 = select(~vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 6656i, global3.x, -2147483647i), var_0.a), _wgslsmith_mod_i32(40928i, -1i)), ~(vec2<i32>(_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(-32291i, 2010i, -2147483647i, -38211i)), 5276i) >> (vec2<u32>(_wgslsmith_add_u32(0u, u_input.a), u_input.a) % vec2<u32>(32u))), !select(select(vec2<bool>(true, global0.x), vec2<bool>(true, true), any(vec3<bool>(false, true, true))), select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, true), true), !(!vec2<bool>(global0.x, true))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1155f, var_0.d, 2093f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1150f, var_0.d, 1238f))) - vec3<f32>(var_0.d, var_0.d, var_0.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), !(_wgslsmith_div_f32(1289f, -1220f) >= var_0.d), Struct_2(Struct_1(func_3(), true, max(-vec2<i32>(53991i, 0i), firstTrailingBit(vec2<i32>(global3.x, 19675i))), 1000f), -(~(i32(-1i) * -1i)), Struct_1(vec4<i32>(-1i) * -vec4<i32>(global2.x, global3.x, global2.x, -35124i), global0.x, global2.zy, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1562f, -1169f) - var_0.d)), vec4<f32>(_wgslsmith_f_op_f32(select(-441f, 1459f, -228f < var_0.d)), _wgslsmith_f_op_f32(-831f + _wgslsmith_f_op_f32(1038f * var_0.d)), 137f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-112f, var_0.d))), Struct_1(vec4<i32>(var_1.x, var_0.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 1i, global3.x, var_1.x), var_0.a), i32(-1i) * -19728i), false, var_0.c, var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = global0.x;
    var var_2 = func_1();
    let var_3 = max(~_wgslsmith_clamp_u32(countOneBits(var_0), _wgslsmith_clamp_u32(1u, reverseBits(1u), u_input.a ^ u_input.a), _wgslsmith_mod_u32(var_0, var_0)), 36883u);
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(194f, var_2.d.c.d), var_2.d.d.yw)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.a.yy)) * var_4.a.xz))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_2.d.d.zy))))), 46660u, 1090f, (_wgslsmith_mult_u32(1u, 1u) | u_input.a) << (~4294967295u % 32u));
}

