struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_3;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(64781u, 0u, 29375u, 0u), vec2<i32>(0i, i32(-2147483648)), vec3<bool>(true, false, false), vec2<u32>(4294967295u, 98495u), vec3<i32>(-1i, 18653i, -1i));

var<private> global3: array<f32, 27>;

var<private> global4: vec3<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: f32) -> f32 {
    return _wgslsmith_f_op_f32(ceil(global4.x));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = !global2.c.x;
    var var_1 = vec3<u32>(4294967295u, arg_0, ~(~(~(arg_3.x | 0u))));
    global3 = array<f32, 27>();
    global1 = Struct_3(~min(arg_3.zx, ~vec2<u32>(arg_0, 19571u) << (arg_3.zx % vec2<u32>(32u))));
    global3 = array<f32, 27>();
    return Struct_3(vec2<u32>(~var_1.x, 1u));
}

fn func_3() -> Struct_3 {
    global1 = Struct_3(vec2<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(global2.a, vec4<u32>(global1.a.x, global1.a.x, 0u, global2.a.x)), global2.a), ~min(global2.d.x, global1.a.x))));
    global1 = Struct_3(~abs(~abs(global1.a)));
    let var_0 = vec4<bool>(select(53727u >= ~(~global2.a.x), all(global2.c), false), !any(!vec4<bool>(true, true, false, global2.c.x)), any(select(vec3<bool>(610f < global3[_wgslsmith_index_u32(global1.a.x, 27u)], global2.c.x || false, true), !global2.c, false)), global2.c.x);
    let var_1 = ~abs(_wgslsmith_add_i32(~u_input.a.x, 1i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u) | global1.a, global2.a.yy) % 32u));
    let var_2 = vec3<bool>(var_0.x, false, all(select(vec3<bool>(false, !global2.c.x, all(global2.c.xz)), select(!vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(global2.c.x, true, true), true), select(!global2.c, select(vec3<bool>(global2.c.x, true, var_0.x), vec3<bool>(global2.c.x, false, true), false), !vec3<bool>(true, false, var_0.x)))));
    return Struct_3(global2.d);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = -430f;
    var var_1 = select(!(!global2.c.yx), global2.c.yy, any(select(select(!global2.c, select(vec3<bool>(arg_3.a, false, true), global2.c, arg_1), select(vec3<bool>(false, global2.c.x, arg_0.a), vec3<bool>(arg_1, global2.c.x, true), arg_1)), global2.c, vec3<bool>(global2.b.x != 2147483647i, select(false, false, true), all(vec3<bool>(arg_1, arg_0.a, false))))));
    let var_2 = Struct_1(global2.a, _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.d.x, -1i), ~max(global2.e.yy, vec2<i32>(2147483647i, u_input.c))), !global2.c, ~(~vec2<u32>(_wgslsmith_clamp_u32(global1.a.x, arg_2.a.x, 38392u), global1.a.x)), u_input.d.xyy);
    let var_3 = arg_3;
    global4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -446f)))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.d.x, arg_2.a.x), 27u)] + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_div_f32(global0.x, var_0), var_3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global3[_wgslsmith_index_u32(abs(arg_2.a.x), 27u)]) + _wgslsmith_f_op_f32(ceil(248f)))));
    return ~global2.d & vec2<u32>(~_wgslsmith_sub_u32(arg_2.a.x, ~19415u), _wgslsmith_sub_u32(arg_2.a.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(26130u, var_2.d.x, global1.a.x)), countOneBits(vec3<u32>(global2.d.x, global1.a.x, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, u_input.a.x, ~5195u, 2038f))), _wgslsmith_div_f32(-843f, 1000f))));
    var var_0 = func_2(0u, !vec3<bool>(true, global2.c.x, (global2.b.x << (22188u % 32u)) <= -1i), -984f, abs(global2.a) & max(~_wgslsmith_div_vec4_u32(global2.a, vec4<u32>(4294967295u, 10442u, 23034u, 4294967295u)), vec4<u32>(abs(1u), 36512u, 11390u << (global2.d.x % 32u), global1.a.x)));
    var_0 = Struct_3(_wgslsmith_sub_vec2_u32(select(vec2<u32>(21213u, ~0u), vec2<u32>(global2.a.x, var_0.a.x) | abs(global2.a.yx), select(global2.c.zy, !global2.c.xy, select(global2.c.xz, vec2<bool>(false, true), global2.c.yy))), func_4(Struct_2(all(global2.c)), true, func_3(), Struct_2(true))));
    let var_1 = vec3<bool>(true, global2.c.x, true);
    var var_2 = 58349i;
    global2 = Struct_1(~firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(1u, 1u), _wgslsmith_mod_u32(0u, var_0.a.x), global1.a.x, ~1u)), (_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.d.x), global2.e.xz), _wgslsmith_mult_vec2_i32(global2.e.xz, vec2<i32>(global2.b.x, 24167i))) & global2.b) ^ -abs(vec2<i32>(0i, -1i)), select(vec3<bool>(global2.c.x, abs(global1.a.x) > 1u, true), !(!var_1), vec3<bool>(!(!global2.c.x), var_1.x, !var_1.x)), _wgslsmith_div_vec2_u32(~(~vec2<u32>(global2.d.x, 197u) | _wgslsmith_sub_vec2_u32(vec2<u32>(global2.d.x, 52149u), vec2<u32>(1u, 4294967295u))), ~(~vec2<u32>(12170u, global2.d.x)) | func_2(global2.d.x, var_1, -512f, countOneBits(global2.a)).a), select(min(global2.e << (vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x) % vec3<u32>(32u)), u_input.d.ywy), vec3<i32>(_wgslsmith_sub_i32(~26398i, _wgslsmith_mod_i32(u_input.d.x, 0i)), 0i, -global2.e.x | 59707i), any(vec2<bool>(true, true))));
    var var_3 = Struct_1(countOneBits(_wgslsmith_mult_vec4_u32(global2.a, global2.a)), (u_input.a << ((vec2<u32>(global2.d.x, var_0.a.x) << (_wgslsmith_add_vec2_u32(var_0.a, vec2<u32>(global1.a.x, 20413u)) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (countOneBits(vec2<u32>(25841u | global2.a.x, ~var_0.a.x)) % vec2<u32>(32u)), global2.c, global1.a, global2.e);
    global2 = Struct_1(vec4<u32>(~_wgslsmith_dot_vec2_u32(global1.a, vec2<u32>(var_3.d.x, var_3.a.x) ^ vec2<u32>(global1.a.x, global2.d.x)), ~var_3.d.x, _wgslsmith_div_u32(global1.a.x, ~max(6488u, 36617u)), ~39514u), -select(var_3.b, abs(u_input.b.xw), var_3.c.xy), var_1, abs(abs(var_3.d)), global2.e);
    var var_4 = (select(vec3<i32>(-2147483647i, 1i, global2.b.x << (global1.a.x % 32u)), var_3.e, true) & vec3<i32>(abs(_wgslsmith_mult_i32(global2.e.x, u_input.b.x)), u_input.c, _wgslsmith_mod_i32(firstTrailingBit(50527i), firstTrailingBit(816i)))) << ((global2.a.yxx >> (var_3.a.zww % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.d), vec4<u32>(global2.d.x, firstLeadingBit(global1.a.x), 77048u, ~653u << (var_3.d.x % 32u)), _wgslsmith_div_i32(var_3.b.x, _wgslsmith_div_i32(var_4.x, var_4.x >> (~var_0.a.x % 32u))));
}

