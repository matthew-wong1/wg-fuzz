struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<f32>(156f, 1559f, 929f, -1640f), vec2<i32>(i32(-2147483648), i32(-2147483648)), 41252u));

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-319f, 1758f, 946f, -184f), vec2<i32>(-63143i, 0i), 4294967295u);

var<private> global2: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-159f, 469f, -1685f, -1678f), vec4<f32>(-560f, -1000f, 1195f, -724f), vec4<f32>(-929f, 656f, -1000f, 162f), vec4<f32>(143f, 584f, -1547f, -681f), vec4<f32>(1131f, -271f, -450f, -449f), vec4<f32>(-597f, 671f, -1703f, 745f), vec4<f32>(-471f, -1219f, 776f, 311f), vec4<f32>(-1360f, -695f, -1109f, 1617f), vec4<f32>(2242f, -350f, 680f, 1169f), vec4<f32>(-1000f, -891f, -1157f, 1076f), vec4<f32>(965f, 1146f, 1025f, 333f), vec4<f32>(-207f, 552f, -1069f, -1264f), vec4<f32>(-729f, 739f, -100f, -636f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> u32 {
    global0 = array<Struct_1, 1>();
    let var_0 = select(!arg_1.yyy, vec3<bool>(!(!all(arg_1)), true, arg_1.x), any(select(select(!vec3<bool>(false, arg_1.x, false), select(arg_1.yzz, vec3<bool>(arg_1.x, arg_1.x, true), arg_1.x), arg_1.zyy), arg_1.zzx, false)));
    let var_1 = Struct_3(arg_0, arg_1.x, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global1.a, vec4<f32>(-735f, global1.a.x, arg_2.x, 429f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, -742f, global1.a.x))), abs(reverseBits(arg_3.zx)), u_input.c.x), global0[_wgslsmith_index_u32(17552u, 1u)], global1.c, vec4<u32>(~u_input.c.x, ~arg_0, ~25293u, 43480u)), vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global1.a.x))))), arg_2.x));
    let var_2 = reverseBits(reverseBits(max(~global1.b, ~vec2<i32>(1i, -21655i))) << (countOneBits(select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_1.c.c), var_1.c.d.zw), var_1.c.d.yz, var_0.zy)) % vec2<u32>(32u)));
    let var_3 = true;
    return global1.c;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: i32) -> Struct_3 {
    var var_0 = Struct_5(Struct_1(global1.a, global1.b, 0u), global0[_wgslsmith_index_u32(1u, 1u)], Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, func_3(global1.c, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1250f, global1.a.x, global1.a.x) + global1.a.wxx), vec3<i32>(-32763i, arg_2, 0i))), 1u)], Struct_1(global1.a, min(reverseBits(global1.b), global1.b), arg_0.x), ~(~firstLeadingBit(u_input.c.x)), abs(~firstTrailingBit(vec4<u32>(109249u, 0u, 72596u, global1.c)))), select(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, true)), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(global1.a, _wgslsmith_f_op_vec4_f32(min(var_0.b.a, vec4<f32>(global1.a.x, 809f, -305f, -1000f)))), _wgslsmith_sub_vec2_i32(-global1.b, min(var_0.c.b.b, global1.b)) & (~vec2<i32>(u_input.b, -22277i) ^ (vec2<i32>(arg_1, global1.b.x) << (var_0.c.d.zw % vec2<u32>(32u)))), ~0u), Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 13u)], vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(3302i, var_0.c.b.b.x, var_0.c.a.b.x), reverseBits(vec3<i32>(-1i, arg_1, arg_2))), -40412i), arg_0.x | 4294967295u), 21709u, ~vec4<u32>(select(4294967295u, var_0.a.c, true), _wgslsmith_add_u32(var_0.b.c, 19163u), var_0.c.d.x, _wgslsmith_add_u32(60691u, u_input.c.x)) & vec4<u32>(global1.c, 4294967295u, ~var_0.c.a.c, 15751u));
    let var_2 = ~vec3<i32>(50324i, var_0.c.a.b.x | ~min(u_input.a, global1.b.x), -9114i);
    var_1 = var_0.c;
    global0 = array<Struct_1, 1>();
    return Struct_3(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(var_1.d, vec4<u32>(0u, global1.c, arg_0.x, global1.c)), _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, global1.c), 1u), select(vec3<u32>(1u, 21173u, var_0.a.c), var_0.c.d.zyz, false)), any(vec3<bool>(all(var_0.d.yx), all(vec2<bool>(var_0.d.x, false)), var_0.d.x & var_0.d.x)) || any(select(var_0.d, select(vec3<bool>(true, false, var_0.d.x), var_0.d, var_0.d), all(vec2<bool>(false, true)))), var_0.c, var_0.c.b.a.www);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_sub_u32(41728u | abs(global1.c), 1u), 0u == ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, u_input.c.x), 1u, _wgslsmith_sub_u32(global1.c, u_input.c.x)), Struct_2(global0[_wgslsmith_index_u32(64869u, 1u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(2037u, u_input.c.x, 0u, 6032u)), vec4<u32>(_wgslsmith_add_u32(u_input.c.x, global1.c), 0u, 38260u << (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 51498u, 99027u), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 0u)))), 1u)], global1.c, vec4<u32>(~(~9809u), abs(~45931u), 3394u, _wgslsmith_add_u32(~u_input.c.x, global1.c >> (90192u % 32u)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1591f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1419f + -1199f) + _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-766f * -860f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(362f, global1.a.x, global1.a.x))) + _wgslsmith_f_op_vec3_f32(exp2(global1.a.wzx))))))));
    var_0 = func_2(~var_0.c.d.wy, u_input.b, -u_input.a);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, -976f, var_0.d.x) - _wgslsmith_f_op_vec3_f32(select(var_0.d, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.d.x, 439f, var_0.c.b.a.x))), any(vec4<bool>(arg_0, false, false, false))))), _wgslsmith_f_op_vec3_f32(sign(global1.a.xww)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a.x, global1.a.x, -523f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 1138f, var_0.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.d.x, -519f))))));
    global0 = array<Struct_1, 1>();
    var var_2 = global1.c;
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, global1.c & ~53671u), 1u)];
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_4 {
    var var_0 = false;
    global2 = array<vec4<f32>, 13>();
    global0 = array<Struct_1, 1>();
    var_0 = any(vec4<bool>(!((2147483647i & arg_1.c.a.b.x) < arg_1.c.b.b.x), arg_1.b, arg_1.b, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(47984u, global1.c), 0u, 4294967295u) != _wgslsmith_sub_u32(arg_0.x, 1u)));
    global1 = func_2(~select(u_input.c, max(arg_0 & vec2<u32>(arg_1.a, u_input.c.x), u_input.c), arg_1.b), _wgslsmith_dot_vec3_i32(max(_wgslsmith_mod_vec3_i32(select(vec3<i32>(1i, arg_1.c.b.b.x, -22320i), vec3<i32>(global1.b.x, 2147483647i, global1.b.x), true), vec3<i32>(global1.b.x, -10852i, arg_1.c.b.b.x)), vec3<i32>(func_1(arg_1.b).b.x, 1i, arg_1.c.a.b.x)), select(_wgslsmith_div_vec3_i32(~vec3<i32>(arg_1.c.a.b.x, 1i, arg_1.c.b.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 36334i, arg_1.c.a.b.x), vec3<i32>(-15628i, 1i, u_input.b))), -select(vec3<i32>(-15803i, -13037i, global1.b.x), vec3<i32>(-2147483647i, 17629i, 0i), arg_1.b), all(vec4<bool>(true, false, arg_1.b, arg_1.b)))), i32(-1i) * -_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(21716i, u_input.a, -56897i), vec3<i32>(-7522i, 29460i, arg_1.c.a.b.x)), firstTrailingBit(vec3<i32>(1i, global1.b.x, -1i)))).c.b;
    return Struct_4(~(~(~_wgslsmith_sub_u32(arg_1.c.a.c, 4294967295u))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5, arg_2: f32, arg_3: bool) -> Struct_2 {
    let var_0 = arg_1.c;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.b.a.x)), var_0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(758f - arg_1.a.a.x))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), -819f, arg_1.d.x)))), _wgslsmith_f_op_f32(round(266f)))));
    var var_3 = vec4<u32>(max(4294967295u, firstTrailingBit(func_2(~var_0.d.wy, firstTrailingBit(1i), -1i).a)), u_input.c.x, var_0.d.x ^ 1u, ~73825u);
    let var_4 = Struct_5(arg_1.c.b, func_1(arg_3), arg_1.c, select(!(!arg_1.d), select(vec3<bool>(false, all(vec3<bool>(arg_1.d.x, arg_3, arg_3)), 595f <= global1.a.x), select(!vec3<bool>(arg_1.d.x, true, true), vec3<bool>(true, true, true), !arg_1.d), vec3<bool>(true, true, true)), arg_1.d.x));
    return Struct_2(func_2(~vec2<u32>(4294967295u, ~global1.c), arg_1.a.b.x, -15189i << (1u % 32u)).c.b, func_1(false), 4294967295u, (arg_1.c.d & vec4<u32>(_wgslsmith_div_u32(0u, arg_1.c.b.c), ~global1.c, arg_1.a.c, arg_1.c.b.c)) ^ firstLeadingBit(abs(_wgslsmith_clamp_vec4_u32(arg_1.c.d, var_4.c.d, vec4<u32>(1u, 22463u, 69557u, 1978u)))));
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_4(u_input.c, func_2(arg_0.d.yz, func_2(_wgslsmith_sub_vec2_u32(u_input.c, arg_0.d.zw), 7363i >> (0u % 32u), -140i).c.b.b.x, 1i), arg_0.a.a.zyx, func_5(Struct_4(~global1.c), Struct_5(func_2(vec2<u32>(global1.c, u_input.c.x), u_input.b, u_input.b).c.a, func_1(false), arg_0, select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1072f))), _wgslsmith_div_f32(arg_0.a.a.x, arg_0.b.a.x) == _wgslsmith_f_op_f32(f32(-1f) * -1627f)).a).a < u_input.c.x;
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-399f, -894f, global1.a.x, 934f))), global2[_wgslsmith_index_u32(~arg_0.a.c, 13u)])))), -_wgslsmith_add_vec2_i32(vec2<i32>(-22368i, max(arg_0.a.b.x, 0i)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 14056i), _wgslsmith_sub_vec2_i32(global1.b, vec2<i32>(1i, u_input.b)))), 1u);
    global0 = array<Struct_1, 1>();
    var var_1 = ~_wgslsmith_mod_u32(1u, func_5(Struct_4(~121716u), Struct_5(arg_0.b, func_2(arg_0.d.yx, 2147483647i, u_input.b).c.b, func_2(u_input.c, arg_0.a.b.x, global1.b.x).c, vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(231f))), true).a.c);
    var_0 = all(!vec4<bool>(select(true, global1.b.x != u_input.a, true), any(vec2<bool>(false, true)), all(vec3<bool>(false, true, true)), !all(vec2<bool>(true, false))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_6(func_5(func_4(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, global1.c)), Struct_3(102164u, true, Struct_2(global0[_wgslsmith_index_u32(39010u, 1u)], Struct_1(global2[_wgslsmith_index_u32(14534u, 13u)], vec2<i32>(-9458i, 1i), u_input.c.x), global1.c, vec4<u32>(u_input.c.x, 4294967295u, 1u, 4294967295u)), vec3<f32>(global1.a.x, -1000f, -1005f)), global1.a.wyx, func_1(true)), Struct_5(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1.c), u_input.c), 1u)], Struct_2(Struct_1(vec4<f32>(1531f, 769f, global1.a.x, global1.a.x), global1.b, 0u), global0[_wgslsmith_index_u32(global1.c, 1u)], 4294967295u, vec4<u32>(global1.c, u_input.c.x, global1.c, 19327u)), vec3<bool>(true, true, true)), -221f, false)), func_2(vec2<u32>(~(~0u), _wgslsmith_dot_vec3_u32(func_5(Struct_4(43702u), Struct_5(Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 13u)], vec2<i32>(global1.b.x, u_input.b), 109989u), Struct_1(vec4<f32>(-1000f, global1.a.x, -879f, 1000f), vec2<i32>(-4843i, u_input.a), 31060u), Struct_2(global0[_wgslsmith_index_u32(global1.c, 1u)], global0[_wgslsmith_index_u32(108893u, 1u)], u_input.c.x, vec4<u32>(4294967295u, 49664u, 1u, 38670u)), vec3<bool>(true, true, false)), global1.a.x, true).d.yxz, vec3<u32>(u_input.c.x, global1.c, u_input.c.x) & vec3<u32>(68657u, 4294967295u, 0u))), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, 13310i, 31995i)) >> ((vec3<u32>(4294967295u, global1.c, global1.c) ^ vec3<u32>(13056u, global1.c, 63305u)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.b.x, u_input.b, 2147483647i), vec3<i32>(u_input.a, 35526i, global1.b.x), vec3<i32>(u_input.b, global1.b.x, global1.b.x)) >> (max(vec3<u32>(117283u, global1.c, u_input.c.x), vec3<u32>(4294967295u, global1.c, u_input.c.x)) % vec3<u32>(32u))), ~(-5239i)).c.b, _wgslsmith_div_u32(func_6(func_2(u_input.c ^ vec2<u32>(4294967295u, global1.c), ~global1.b.x, 9388i).c).c, _wgslsmith_add_u32(~1u, global1.c)), abs(countOneBits(vec4<u32>(~11353u, 1u, 0u, 1u))));
    let var_1 = !vec3<bool>(false, global1.c < 65714u, any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true)));
    var var_2 = select(vec3<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~global1.c, countOneBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 24100u, u_input.c.x, 0u), vec4<u32>(103711u, 33061u, var_0.d.x, var_0.a.c)), var_0.b.c), min(var_0.d, vec4<u32>(58430u, global1.c, 1u, 72637u) | var_0.d)), u_input.c.x & 4294967295u), vec3<u32>(u_input.c.x | (_wgslsmith_add_u32(global1.c, var_0.c) ^ _wgslsmith_dot_vec3_u32(var_0.d.zxw, var_0.d.zzz)), abs(48628u), func_1(var_1.x).c), vec3<bool>(var_1.x, var_1.x, !func_2(vec2<u32>(18098u, var_0.a.c), -34005i & var_0.b.b.x, 40975i).b));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.d, var_0.d), 1u)];
    let var_3 = global0[_wgslsmith_index_u32(var_0.d.x, 1u)];
    var var_4 = _wgslsmith_mod_u32(4294967295u, var_3.c);
    let var_5 = vec2<u32>(~select((4294967295u << (u_input.c.x % 32u)) ^ _wgslsmith_mod_u32(global1.c, var_2.x), 0u, var_1.x), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(897f + var_0.b.a.x) - -648f) * 315f), var_0.a.a.x), select(min(_wgslsmith_div_vec3_i32(select(vec3<i32>(-26352i, 0i, 43041i), vec3<i32>(u_input.a, 55678i, 2147483647i), false), reverseBits(vec3<i32>(u_input.b, -9246i, var_3.b.x))), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(global1.b.x, var_0.a.b.x, var_3.b.x), vec3<i32>(-41484i, global1.b.x, 0i), var_1), reverseBits(vec3<i32>(var_3.b.x, 31252i, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 13322i, -40136i), vec3<i32>(var_0.a.b.x, 0i, -1i)))), firstTrailingBit(abs(vec3<i32>(-2147483647i, u_input.a, -69569i))), any(vec2<bool>(!var_1.x, true))), _wgslsmith_sub_vec3_i32(-abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.b.x, u_input.b, -1i), vec3<i32>(2147483647i, global1.b.x, -1i))), vec3<i32>(-u_input.a, ~_wgslsmith_div_i32(var_0.a.b.x, -2147483647i), _wgslsmith_dot_vec2_i32(var_0.b.b, var_3.b))));
}

