struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: u32;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<bool>(false, true, false)), 29353u, 4294967295u, Struct_1(vec3<bool>(false, false, false))), true);

var<private> global3: Struct_4 = Struct_4(Struct_2(Struct_1(vec3<bool>(true, false, false)), 0u, 0u, Struct_1(vec3<bool>(false, true, false))), Struct_3(Struct_1(vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<bool>(true, false, false)), 78280u, 0u, Struct_1(vec3<bool>(false, true, false))), true), Struct_1(vec3<bool>(false, true, true)));

var<private> global4: vec3<i32> = vec3<i32>(2147483647i, 0i, 1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_2) -> bool {
    let var_0 = u_input.a.zy;
    let var_1 = Struct_3(arg_0.b.a, Struct_2(global3.c, select(countOneBits(reverseBits(13152u)), abs(u_input.b.x), any(vec4<bool>(arg_1.a.x, true, true, false))), firstTrailingBit(~arg_3.c) << (~global0[_wgslsmith_index_u32(u_input.b.x, 8u)] % 32u), global3.b.b.a), (11124u & ~u_input.b.x) > _wgslsmith_sub_u32(0u, ~(~0u)));
    var var_2 = !(!arg_1.a);
    let var_3 = vec4<i32>(-19403i, firstTrailingBit(global4.x), _wgslsmith_dot_vec3_i32(-max(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, global4.x, 46030i)), ~u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(select(global4.x, var_0.x, true), 48323i, _wgslsmith_add_i32(-1i, -46917i)), u_input.a)), 1i);
    let var_4 = arg_1.a.zy;
    return select(!any(!vec4<bool>(var_1.a.a.x, arg_0.a.d.a.x, arg_1.a.x, var_4.x)), (all(vec4<bool>(true, false, false, false)) || true) == all(select(vec4<bool>(arg_1.a.x, false, true, true), !vec4<bool>(true, true, true, arg_0.b.b.a.a.x), !vec4<bool>(false, global2.b.d.a.x, true, false))), global3.a.d.a.x);
}

fn func_2() -> Struct_2 {
    let var_0 = global2.b.d;
    let var_1 = Struct_3(Struct_1(vec3<bool>(false, any(vec2<bool>(false, false)), all(vec4<bool>(true, var_0.a.x, true, false)))), global3.b.b, select(true, true, select(var_0.a.x, global3.a.d.a.x, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, var_0.a.x, true, false), global2.a.a.x)))));
    var var_2 = Struct_1(select(vec3<bool>(!global2.a.a.x & true, !all(vec4<bool>(var_1.c, global2.c, true, global3.c.a.x)), var_0.a.x), !vec3<bool>(var_0.a.x, global3.a.a.a.x, func_3(Struct_4(var_1.b, Struct_3(global2.a, Struct_2(global2.b.a, global2.b.c, global0[_wgslsmith_index_u32(1u, 8u)], global3.c), var_1.a.a.x), var_1.b.a), Struct_1(var_0.a), vec2<i32>(2147483647i, u_input.a.x), var_1.b)), !(!any(var_1.a.a.yx))));
    var var_3 = vec2<bool>(!all(vec3<bool>(false, global3.a.a.a.x, false)) | true, true);
    let var_4 = 1f;
    return Struct_2(var_1.a, select(1u, 0u, true), ~global2.b.b, Struct_1(vec3<bool>(false, all(vec3<bool>(true, true, global2.a.a.x)), global2.b.d.a.x)));
}

fn func_1(arg_0: vec2<u32>) -> vec4<bool> {
    var var_0 = Struct_4(func_2(), global3.b, global2.b.a);
    var var_1 = _wgslsmith_div_u32(4294967295u, ~func_2().c);
    var var_2 = func_2();
    var var_3 = ~select(select(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(27206u, 1u, global2.b.b, 4294967295u), vec4<u32>(1u, 25611u, var_0.a.b, 1u))), vec4<u32>(~global0[_wgslsmith_index_u32(53694u, 8u)], _wgslsmith_sub_u32(4294967295u, 0u), 4294967295u, ~21549u), !(var_0.c.a.x || false)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 0u), u_input.b.xy), _wgslsmith_mod_u32(arg_0.x, 107339u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.b.b, 0u, 62148u, 1u), vec4<u32>(var_0.a.b, global2.b.b, 0u, 33947u)), select(1u, global2.b.b, global3.a.a.a.x)), func_3(Struct_4(global3.a, global3.b, Struct_1(vec3<bool>(var_2.a.a.x, true, false))), var_0.c, select(~vec2<i32>(0i, 27664i), vec2<i32>(-12062i, global4.x), false), global2.b));
    var var_4 = Struct_4(global2.b, var_0.b, var_0.a.d);
    return select(select(!select(vec4<bool>(global3.b.a.a.x, false, false, var_2.a.a.x), !vec4<bool>(global3.a.a.a.x, var_0.a.a.a.x, false, false), var_0.c.a.x), select(select(!vec4<bool>(true, global3.c.a.x, var_4.b.b.a.a.x, var_4.b.c), vec4<bool>(false, true, global2.a.a.x, var_2.a.a.x), !vec4<bool>(global2.b.a.a.x, var_4.a.a.a.x, global3.b.a.a.x, global2.c)), vec4<bool>(!global2.c, global2.c, true, !global2.c), !vec4<bool>(var_4.a.a.a.x, true, true, true)), !func_2().a.a.x), select(!(!vec4<bool>(true, var_4.c.a.x, global2.c, var_4.a.d.a.x)), !vec4<bool>(true, func_2().d.a.x, true, any(var_2.d.a.xz)), !(!select(vec4<bool>(false, var_2.d.a.x, var_4.a.a.a.x, var_0.c.a.x), vec4<bool>(var_4.a.a.a.x, false, var_4.b.a.a.x, false), true))), !any(select(select(vec4<bool>(false, false, global3.b.c, global2.a.a.x), vec4<bool>(true, global2.c, global2.b.a.a.x, var_2.d.a.x), var_0.c.a.x), !vec4<bool>(global2.c, true, true, false), !vec4<bool>(true, var_2.d.a.x, true, global3.a.d.a.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_2 {
    global3 = Struct_4(global3.a, Struct_3(Struct_1(!select(vec3<bool>(global3.b.b.d.a.x, true, arg_3.a.x), arg_3.a, false)), Struct_2(global2.a, 0u, ~90257u, func_2().a), !global3.c.a.x), global2.a);
    var var_0 = select(abs(~abs(vec4<u32>(70889u, 0u, 33406u, global2.b.c))), vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global0[_wgslsmith_index_u32(22173u, 8u)], 18073u)), ~max(u_input.b.xy, vec2<u32>(4294967295u, global3.b.b.b))), global0[_wgslsmith_index_u32(arg_1, 8u)], 0u, _wgslsmith_mult_u32(global3.a.b, 4294967295u)), vec4<bool>(true, false, global2.c, true));
    global0 = array<u32, 8>();
    var var_1 = arg_3;
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1186f, 1398f)))), -1010f), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(select(-943f, _wgslsmith_f_op_f32(floor(1850f)), true)), _wgslsmith_f_op_f32(-492f - _wgslsmith_f_op_f32(min(-138f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(210f)))))), -246f);
    return global2.b;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = global4.x;
    global4 = u_input.a;
    let var_1 = ~4294967295u;
    let var_2 = !all(global3.a.a.a) & (true || (true && all(select(vec3<bool>(false, false, true), vec3<bool>(arg_0.a.a.x, global3.a.d.a.x, true), global2.b.d.a.x))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_div_i32(-62615i, -(~u_input.a.x | _wgslsmith_sub_i32(global4.x, u_input.a.x)));
    var var_1 = 1u;
    global0 = array<u32, 8>();
    let var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~(~firstLeadingBit(vec3<u32>(global2.b.c, 7970u, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]))), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(60060u, global3.b.b.b, 4294967295u), vec3<u32>(0u, global2.b.b, u_input.b.x)), vec3<u32>(global3.b.b.c >> (global0[_wgslsmith_index_u32(19688u, 8u)] % 32u), abs(4294967295u), select(81418u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], false)), u_input.b)), vec3<u32>(u_input.b.x, 74281u, 21180u));
    let var_3 = Struct_2(func_5(func_4(func_1(~var_2.zy), global0[_wgslsmith_index_u32(~global2.b.c, 8u)], ~vec2<i32>(-14107i, -1i), func_2().d), _wgslsmith_f_op_f32(938f + 311f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-363f, 493f)))) * _wgslsmith_div_vec2_f32(vec2<f32>(523f, -913f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-948f, 688f))))), _wgslsmith_div_u32(u_input.b.x, _wgslsmith_div_u32(~u_input.b.x, min(u_input.b.x & 1u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1650u, 8u)], 8u)]))), var_2.x, global3.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, vec4<f32>(1320f, 720f, _wgslsmith_div_f32(-1287f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(159f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - 429f)))));
}

