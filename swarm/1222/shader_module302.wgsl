struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool>;

var<private> global2: u32 = 89816u;

var<private> global3: array<bool, 27> = array<bool, 27>(false, false, true, true, false, false, false, false, true, true, true, false, false, false, true, false, true, true, true, false, true, false, true, false, true, true, false);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> vec2<bool> {
    return select(select(!vec2<bool>(true, any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 27u)], false, global3[_wgslsmith_index_u32(26656u, 27u)], false))), select(!vec2<bool>(arg_0.b.b.x, global0.b.x), select(!arg_0.a, vec2<bool>(global3[_wgslsmith_index_u32(1u, 27u)], false), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 27u)], false)), select(global0.b.xw, select(global0.b.xx, vec2<bool>(global0.b.x, global0.b.x), false), vec2<bool>(true, true))), true), global1.xw, vec2<bool>(!any(!arg_0.b.b), !(arg_1.x < ~arg_0.b.d.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_3(func_3(Struct_3(global0.b.xx, Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1132f, arg_1.b), vec2<f32>(1000f, -1000f), arg_1.a.zz)), vec4<bool>(global3[_wgslsmith_index_u32(0u, 27u)], true, global1.x, arg_2), vec3<i32>(42024i, 47844i, -12377i), vec2<i32>(arg_0.x, arg_0.x))), vec4<i32>(-1i) * -vec4<i32>(-1i, 13013i, 0i, arg_0.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(163f, arg_1.b), _wgslsmith_f_op_vec2_f32(ceil(global0.a)))), vec4<bool>(true, arg_1.a.x, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, ~24241u), 27u)], (global0.b.x | global0.b.x) && any(vec3<bool>(arg_1.a.x, true, false))), firstLeadingBit(global0.c), -arg_0));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, -1000f)), _wgslsmith_f_op_vec2_f32(-var_0.b.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.b.a, var_0.b.a))))), !select(!global0.b, vec4<bool>(var_0.b.b.x, global0.b.x, false, true), vec4<bool>(true, false, true, arg_1.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global0.c.x, global0.c.x) & reverseBits(var_0.b.c), firstTrailingBit(select(global0.c, var_0.b.c, vec3<bool>(true, true, global1.x)))), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global0.d.x, -33949i, -1i), min(vec3<i32>(37536i, global0.d.x, 63196i), global0.c)))), max(firstTrailingBit(min(u_input.a, u_input.a)), u_input.a) | ~u_input.a, max(select(min(~vec4<u32>(0u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(4294967295u, 1u, u_input.a, 44368u)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), arg_1.a), min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 11255u, 1u, 42022u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 42075u, 17689u, u_input.a), vec4<u32>(82901u, 1u, u_input.a, 28771u)), ~(~vec4<u32>(u_input.a, 4294967295u, 53595u, 4294967295u)))), 14580i, Struct_1(global0.a, var_0.b.b, -(vec3<i32>(arg_0.x, -71470i, var_0.b.c.x) | (vec3<i32>(19651i, 1i, global0.c.x) & var_0.b.c)), firstLeadingBit(~arg_0 >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(33840u, 34292u), vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)))));
    let var_2 = vec4<bool>(_wgslsmith_div_i32(-287i, ~(-var_0.b.c.x)) == ~(-var_0.b.d.x), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.b, u_input.a), 27u)], true, any(vec4<bool>(!(!arg_1.a.x), true, func_3(Struct_3(vec2<bool>(true, true), var_0.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_0.b.c.x, 37497i, var_1.a.c.x), vec4<i32>(var_1.d, var_0.b.d.x, arg_0.x, global0.c.x), vec4<i32>(2147483647i, 2147483647i, global0.d.x, arg_0.x))).x, true)));
    let var_3 = all(select(var_1.e.b, select(var_0.b.b, select(arg_1.a, vec4<bool>(var_2.x, global0.b.x, false, arg_1.a.x), global1.x), global1.x), _wgslsmith_f_op_f32(ceil(122f)) < -1813f)) && true;
    global1 = !global0.b;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b)) - var_1.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.e.a.x))))), vec4<bool>(!(firstLeadingBit(0i) != var_0.b.d.x), all(select(vec4<bool>(arg_1.a.x, var_0.a.x, true, false), !global0.b, arg_1.a)), var_3, true), -global0.c >> (var_1.c.wxw % vec3<u32>(32u)), -(~var_1.e.d));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = func_2(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(1i, global0.d.x), vec2<i32>(1i, 1i)), global0.c.yx, global0.d), Struct_4(!select(global0.b, vec4<bool>(arg_0, false, global0.b.x, false), true), -2120f), global0.a.x <= global0.a.x);
    var var_0 = vec4<u32>(u_input.a, ~1u, ~16878u, 1u);
    global1 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(988f, _wgslsmith_f_op_f32(floor(global0.a.x)))) + _wgslsmith_f_op_f32(abs(global0.a.x))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1141f)), global1.x, func_3(Struct_3(!global1.zy, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(390f, -694f) + global0.a), !vec4<bool>(arg_0, false, false, true), global0.c >> (var_0.yzz % vec3<u32>(32u)), reverseBits(global0.c.yz))), abs(firstTrailingBit(vec4<i32>(global0.d.x, global0.c.x, global0.d.x, global0.c.x) >> (vec4<u32>(u_input.a, var_0.x, u_input.a, u_input.a) % vec4<u32>(32u))))).x, false);
    var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~0u, 3718u, firstTrailingBit(_wgslsmith_dot_vec2_u32(var_0.zx, var_0.ww)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 23903u, var_0.x), vec4<u32>(u_input.a, var_0.x, var_0.x, u_input.a)))), _wgslsmith_add_vec4_u32(abs(vec4<u32>(var_0.x, 43163u, 59177u, var_0.x) | vec4<u32>(u_input.a, u_input.a, var_0.x, 4294967295u)), ~vec4<u32>(586u, var_0.x, var_0.x, 28071u) & firstLeadingBit(vec4<u32>(1u, 48472u, 0u, var_0.x))));
    var var_1 = Struct_2(func_2(vec2<i32>(countOneBits(-1i >> (0u % 32u)), firstLeadingBit(~2147483647i)), Struct_4(global0.b, _wgslsmith_f_op_f32(-1065f * _wgslsmith_f_op_f32(global0.a.x * 519f))), true), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.a, var_0.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 49502u, 4294967295u, 77359u), vec4<u32>(u_input.a, 43107u, u_input.a, u_input.a))) | ~min(firstLeadingBit(u_input.a), u_input.a), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(57901u, ~var_0.x), abs(max(4294967295u, 0u))), u_input.a, 84679u, u_input.a ^ u_input.a), -2147483647i, func_2(vec2<i32>(_wgslsmith_mult_i32(global0.d.x | global0.d.x, _wgslsmith_div_i32(global0.d.x, 40637i)), -_wgslsmith_add_i32(global0.c.x, global0.d.x)), Struct_4(!global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), true));
    return func_2((vec2<i32>(-1i) * -(vec2<i32>(-14625i, var_1.d) ^ var_1.e.d)) & ~(-var_1.a.d), Struct_4(global0.b, global0.a.x), true);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec2<i32> {
    global3 = array<bool, 27>();
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(max(~1u, 0u), u_input.a), max(u_input.a, 22198u)), vec2<u32>(u_input.a, _wgslsmith_mod_u32(~u_input.a, _wgslsmith_mod_u32(0u, 10895u)) | ~1u));
    let var_1 = firstLeadingBit(vec2<i32>(_wgslsmith_add_i32(global0.c.x, global0.c.x), func_1(arg_1.b.x).d.x) | _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.c.x, global0.c.x >> (0u % 32u)), _wgslsmith_clamp_vec2_i32(~arg_1.c.yy, min(global0.c.xy, global0.c.zx), ~vec2<i32>(16647i, global0.c.x)), firstLeadingBit(vec2<i32>(arg_1.d.x, global0.d.x))));
    let var_2 = global0.b.x & !(global0.b.x && func_1(global3[_wgslsmith_index_u32(u_input.a, 27u)]).b.x);
    let var_3 = arg_1.b.yyy;
    return vec2<i32>(var_1.x, -36973i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(~func_4(-104f != global0.a.x, func_1(true), !global0.b.x)));
    let var_1 = Struct_2(Struct_1(vec2<f32>(global0.a.x, 363f), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 27u)], true, global0.b.x, true || global1.x), vec3<i32>(global0.d.x >> (9560u % 32u), global0.d.x, 31483i), vec2<i32>(func_4(true, func_2(vec2<i32>(-55733i, var_0.x), Struct_4(vec4<bool>(false, true, global0.b.x, global0.b.x), global0.a.x), global3[_wgslsmith_index_u32(u_input.a, 27u)]), func_3(Struct_3(global1.xw, Struct_1(vec2<f32>(-424f, global0.a.x), global0.b, vec3<i32>(-24488i, var_0.x, 28697i), var_0)), vec4<i32>(0i, -1i, 0i, 3804i)).x).x, var_0.x)), firstTrailingBit(~abs(6033u)) ^ 55189u, select(abs(~(vec4<u32>(u_input.a, u_input.a, u_input.a, 70111u) | vec4<u32>(15878u, 17345u, u_input.a, u_input.a))), vec4<u32>(~u_input.a, ~u_input.a, u_input.a & 4294967295u, _wgslsmith_mod_u32(4294967295u, 27931u)) & abs(min(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(31497u, u_input.a, 1u, 1u))), vec4<bool>(all(vec4<bool>(false, true, true, global1.x)), true, true, _wgslsmith_add_i32(1i, var_0.x) > 1i)), global0.c.x, func_2(vec2<i32>(~(~var_0.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.x, -8069i, -2147483647i, 1i), vec4<i32>(1i, 1i, -1i, global0.c.x), vec4<bool>(false, global3[_wgslsmith_index_u32(23738u, 27u)], true, global0.b.x)), select(vec4<i32>(59604i, global0.c.x, global0.d.x, 62555i), vec4<i32>(var_0.x, var_0.x, 39974i, 1i), true))), Struct_4(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - global0.a.x))), any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 27u)] | global0.b.x, func_2(vec2<i32>(2147483647i, var_0.x), Struct_4(vec4<bool>(global0.b.x, global0.b.x, global3[_wgslsmith_index_u32(u_input.a, 27u)], false), -262f), global3[_wgslsmith_index_u32(4294967295u, 27u)]).b.x))));
    let var_2 = Struct_3(select(select(global1.yz, !(!vec2<bool>(false, var_1.a.b.x)), all(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 27u)], true))), vec2<bool>(false, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(40290u, 1u) << (~u_input.a % 32u), 27u)]), var_1.a.b.x || any(vec3<bool>(true, var_1.e.b.x, false))), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(var_1.e.a)), vec4<bool>(global0.b.x, all(vec4<bool>(global1.x, true, true, true)) && true, false, true), vec3<i32>(var_0.x, 1i, ~var_1.e.c.x) & vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.e.d, var_1.a.c.zx), _wgslsmith_dot_vec3_i32(var_1.a.c, vec3<i32>(var_0.x, var_0.x, 2147483647i)), var_1.e.d.x), vec2<i32>(var_0.x >> (var_1.c.x % 32u), _wgslsmith_add_i32(var_0.x, 1i))));
    let var_3 = global0.a.x;
    global2 = ~u_input.a;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), !(!(!func_1(true).b)), _wgslsmith_add_vec3_i32(vec3<i32>(global0.c.x << (11738u % 32u), 2147483647i, 65081i) & _wgslsmith_mod_vec3_i32(select(var_1.a.c, global0.c, global1.xxy), _wgslsmith_clamp_vec3_i32(var_2.b.c, global0.c, var_1.e.c)), var_1.e.c), _wgslsmith_add_vec2_i32(vec2<i32>(~27324i, func_1(all(global0.b)).c.x), global0.d));
    var var_4 = 40259u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-38763i), var_2.b.a.x, vec2<i32>(1i, ~48293i), _wgslsmith_div_i32(-20609i, -var_0.x));
}

