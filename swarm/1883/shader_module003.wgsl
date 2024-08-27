struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: Struct_1 = Struct_1(false, true, vec4<f32>(-1955f, -259f, -207f, -397f), 4294967295u);

var<private> global2: f32 = -412f;

var<private> global3: Struct_1 = Struct_1(true, false, vec4<f32>(-1000f, -1573f, -105f, 787f), 0u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, global3.c.x, global1.c.x) * global1.c.wxy)))));
    var var_1 = select(vec3<u32>(0u, abs(16754u), global3.d), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~max(vec3<u32>(u_input.a, global3.d, 4294967295u), vec3<u32>(u_input.a, 90520u, global3.d)), ~select(vec3<u32>(global1.d, 1u, 13381u), vec3<u32>(global3.d, u_input.a, 0u), vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)], true, global1.b))), select(~vec3<u32>(0u, 0u, 41861u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, global3.d), vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(global3.d, global1.d, u_input.a)), false) | vec3<u32>(_wgslsmith_div_u32(69837u, global3.d), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.d, u_input.a, 0u), vec4<u32>(4294967295u, 37798u, global3.d, 57308u)), reverseBits(global1.d))), any(!select(select(vec2<bool>(false, false), vec2<bool>(true, global3.a), false), select(vec2<bool>(true, global1.b), vec2<bool>(global0[_wgslsmith_index_u32(global1.d, 16u)], global1.a), vec2<bool>(true, true)), false)));
    var var_2 = 0u;
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    return _wgslsmith_mult_vec3_u32(~(_wgslsmith_mod_vec3_u32(vec3<u32>(global3.d, var_1.x, 27699u), vec3<u32>(4294967295u, 11615u, 4294967295u)) << (~vec3<u32>(global1.d, var_1.x, 1u) % vec3<u32>(32u))) << (~vec3<u32>(~var_1.x, 4294967295u, global1.d) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(102119u, 0u, 0u))), ~vec3<u32>(41250u, select(1u, 1u, true), u_input.a), abs(firstTrailingBit(vec3<u32>(global3.d, u_input.a, 12834u)) & vec3<u32>(global3.d, global1.d, 12740u))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    global2 = 366f;
    var var_0 = select(reverseBits(vec3<i32>(select(_wgslsmith_mult_i32(23958i, -30635i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -14667i, -2147483647i), vec3<i32>(25246i, -1i, -2147483647i)), true), -(~(-14177i)), -8354i)), select(vec3<i32>(min(-2147483647i, 0i), ~firstTrailingBit(0i), -_wgslsmith_add_i32(1i, -39777i)), select(-(~vec3<i32>(8504i, -2147483647i, -2147483647i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-55553i, -63945i), vec2<i32>(-1i, 2147483647i)), 2147483647i, _wgslsmith_mod_i32(-1i, -42395i)), arg_0.zyx), select(vec3<bool>(global0[_wgslsmith_index_u32(global3.d, 16u)] && arg_0.x, false, all(arg_0.wzw)), vec3<bool>(!global0[_wgslsmith_index_u32(41240u, 16u)], any(arg_0.wxz), global0[_wgslsmith_index_u32(33313u, 16u)] | global0[_wgslsmith_index_u32(55422u, 16u)]), select(!arg_0.wwz, select(arg_0.zwy, vec3<bool>(true, false, false), vec3<bool>(global1.a, global3.b, global3.a)), true))), !(!(!select(vec3<bool>(false, global3.b, global3.a), arg_0.wxz, arg_0.xxy))));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global3.c.x, _wgslsmith_f_op_f32(floor(-1641f)))), _wgslsmith_f_op_f32(-459f * global1.c.x)));
    var var_1 = ~max(arg_2.d, min(4294967295u, 26909u)) > ~abs(1u);
    global0 = array<bool, 16>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x - -1000f) - _wgslsmith_f_op_f32(trunc(global1.c.x))))), -327f);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> f32 {
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(!(!vec4<bool>(true, global3.b, false, arg_1.b)), func_3(), Struct_1(global0[_wgslsmith_index_u32(1u, 16u)], !arg_1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(337f, arg_1.c.x, arg_1.c.x, global1.c.x)), 54736u), countOneBits(vec3<u32>(61723u, global1.d, 51214u) << (vec3<u32>(123511u, u_input.a, arg_1.d) % vec3<u32>(32u))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-598f + -474f))));
    let var_0 = arg_1.a;
    var var_1 = select(vec3<bool>(arg_1.a, select(select(true, true, false) | all(vec4<bool>(false, false, arg_1.a, arg_1.a)), true, true), true), !vec3<bool>(!select(false, global0[_wgslsmith_index_u32(94601u, 16u)], global3.a), !global3.b, global3.b), global3.a);
    let var_2 = 0u;
    global1 = arg_1;
    return _wgslsmith_div_f32(global1.c.x, global1.c.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: i32) -> vec2<bool> {
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_clamp_u32(1u, u_input.a, 27609u)) == global3.d, true, global3.c, global1.d);
    let var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(abs(max(arg_0, arg_0 ^ vec2<i32>(0i, 10993i))), vec2<i32>(arg_0.x << (var_0.d % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(2614i, arg_2, arg_2), min(vec3<i32>(arg_0.x, -1i, arg_2), vec3<i32>(arg_0.x, arg_0.x, 0i))))), _wgslsmith_add_vec2_i32(firstLeadingBit(arg_0), arg_0), arg_0);
    var var_2 = Struct_1(all(select(vec2<bool>(!arg_1, !global1.a), vec2<bool>(4294967295u >= global3.d, all(vec3<bool>(var_0.a, global0[_wgslsmith_index_u32(var_0.d, 16u)], global1.b))), all(!vec2<bool>(global1.b, global3.a)))), arg_1, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -242f)) + 198f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(var_0.d, Struct_1(global3.a, global1.a, global3.c, 1u))), _wgslsmith_f_op_f32(-global1.c.x))), var_0.c.x, _wgslsmith_f_op_f32(step(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1397f * -704f))))), ~22758u);
    var var_3 = 1i;
    var var_4 = 286f;
    return vec2<bool>(!(!all(select(vec2<bool>(global1.b, false), vec2<bool>(true, var_2.b), global0[_wgslsmith_index_u32(var_0.d, 16u)]))), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(!vec2<bool>(false, global3.b), select(func_1(vec2<i32>(-5768i, -48141i), global1.a, abs(25617i)), !func_1(vec2<i32>(-16688i, 63341i), false, 60722i), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 16u)]))), ~_wgslsmith_add_u32(41767u, global1.d) > (func_3().x | global3.d)));
    var var_1 = Struct_1(all(select(select(select(vec3<bool>(global1.a, global3.b, global3.a), vec3<bool>(true, global1.b, var_0), vec3<bool>(false, global3.a, global0[_wgslsmith_index_u32(1u, 16u)])), vec3<bool>(true, var_0, false), false), select(!vec3<bool>(var_0, false, false), vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)], false, global0[_wgslsmith_index_u32(global3.d, 16u)]), true)), !(!vec3<bool>(false, true, global1.a)))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, global3.c.x, global3.c.x, 1011f)))), ~65646u);
    let var_2 = _wgslsmith_dot_vec3_i32(select(select(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(1i, 0i, 6655i), global3.b), vec3<i32>(i32(-1i) * -2147483647i, min(0i, -58718i), firstTrailingBit(-1i)) >> (vec3<u32>(~global1.d, countOneBits(34349u), _wgslsmith_add_u32(4532u, u_input.a)) % vec3<u32>(32u)), vec3<bool>(false, false, any(select(vec4<bool>(var_0, var_1.b, true, var_1.b), vec4<bool>(var_1.b, false, var_1.b, global3.a), vec4<bool>(true, global1.b, false, global1.b))))), vec3<i32>(-1i) * -abs(vec3<i32>(1i, -1197i, 16045i)));
    global1 = Struct_1(all(!select(vec4<bool>(global1.b, var_0, var_1.a, true), vec4<bool>(false, false, var_1.b, global0[_wgslsmith_index_u32(global3.d, 16u)]), vec4<bool>(false, false, false, true))), !(any(vec2<bool>(false, true)) || any(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-700f, 206f, 1334f, -897f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1932f, -352f, var_1.c.x, global3.c.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1783f, 1270f, 376f, -1317f))))), ~_wgslsmith_add_u32(~max(global3.d, 0u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, global3.d), true), _wgslsmith_add_vec2_u32(vec2<u32>(26695u, u_input.a), vec2<u32>(global1.d, var_1.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_4(!vec4<bool>(true, true, global3.a, global1.c.x >= -828f), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, global1.d, 4294967295u), min(vec3<u32>(global1.d, 4294967295u, global3.d), vec3<u32>(global1.d, 0u, global1.d))), Struct_1(any(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global1.a)), global3.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-420f, -1169f, 679f, -522f) + vec4<f32>(global3.c.x, 568f, -1000f, -192f)) * global3.c), min(max(var_1.d, global1.d), 50293u)), countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, global1.d, u_input.a), vec3<u32>(49991u, 12196u, var_1.d)), _wgslsmith_sub_vec3_u32(vec3<u32>(global3.d, 5801u, global1.d), vec3<u32>(u_input.a, u_input.a, var_1.d)), abs(vec3<u32>(u_input.a, 27854u, 62562u)))))));
}

