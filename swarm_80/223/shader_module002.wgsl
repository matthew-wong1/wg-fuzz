struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, i32(-2147483648), false, Struct_1(33227i, vec4<f32>(-1834f, -111f, 643f, 178f), true));

var<private> global1: array<Struct_4, 3>;

var<private> global2: Struct_3 = Struct_3(25998u, vec3<f32>(-638f, -262f, 412f), Struct_1(-16414i, vec4<f32>(-1000f, -1937f, 744f, 983f), false));

var<private> global3: vec4<i32> = vec4<i32>(28663i, -8546i, 1i, 2147483647i);

var<private> global4: vec3<u32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2) -> i32 {
    let var_0 = ~vec3<i32>(_wgslsmith_mult_i32(arg_2.b, global2.c.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b, global3.yzw), _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(arg_1.a, 0i, 30269i))), abs(u_input.a.x) & u_input.b.x), global3.x);
    let var_1 = true && select(!global0.c, global2.c.c, all(!select(vec3<bool>(global2.c.c, arg_2.c, true), vec3<bool>(false, arg_2.a, true), vec3<bool>(true, true, global2.c.c))));
    global4 = ~(~vec3<u32>(22004u, global2.a, _wgslsmith_mult_u32(26720u >> (global4.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(6284u, global2.a, 56685u), vec3<u32>(u_input.c, 4294967295u, 20070u)))));
    var var_2 = 0u;
    global0 = Struct_2(!arg_2.a, 1i, !all(select(select(vec3<bool>(true, global2.c.c, false), vec3<bool>(true, true, false), global0.a), vec3<bool>(true, false, true), true)), arg_2.d);
    return var_0.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> Struct_2 {
    global3 = -vec4<i32>(~(-2905i), _wgslsmith_dot_vec2_i32(vec2<i32>(-3830i, global0.b), -u_input.a.xy), _wgslsmith_div_i32(func_3(Struct_4(-2147483647i, 14332i), Struct_4(u_input.b.x, -35531i), Struct_2(false, global0.b, true, global0.d)), 13915i), firstTrailingBit(~_wgslsmith_add_i32(global2.c.a, global0.d.a)));
    let var_0 = vec4<bool>(all(select(select(!vec4<bool>(global0.d.c, global0.a, global2.c.c, global0.a), !vec4<bool>(arg_1, arg_2.x, false, global2.c.c), false), vec4<bool>(global4.x != 0u, !arg_2.x, any(vec4<bool>(true, false, arg_2.x, true)), arg_1 & arg_2.x), select(!vec4<bool>(true, true, global0.d.c, true), !vec4<bool>(arg_2.x, global0.c, false, arg_2.x), global0.a))), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2129f - _wgslsmith_f_op_f32(-231f - global0.d.b.x)), -340f) != -854f, global2.c.c);
    global4 = vec3<u32>(global2.a, ~47961u, ~global2.a);
    var var_1 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_add_i32(-_wgslsmith_mod_i32(5991i, global3.x), ~(~global0.b)), _wgslsmith_mult_i32(global0.d.a, countOneBits(2147483647i))), -2147483647i);
    global2 = Struct_3(~(~global2.a), vec3<f32>(153f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(452f)) * _wgslsmith_f_op_f32(global2.b.x - 1308f)))), 1024f), Struct_1(~1i ^ firstTrailingBit(~var_1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.b.x, global0.d.b.x, -286f, 166f))))), arg_1));
    return Struct_2(!any(var_0.zz), 1i, var_0.x, Struct_1(min(13635i, 1i) << (~global4.x % 32u), vec4<f32>(_wgslsmith_f_op_f32(global2.b.x * _wgslsmith_div_f32(-108f, global2.b.x)), global0.d.b.x, -1586f, global2.c.b.x), var_0.x));
}

fn func_1(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 3u)];
    let var_1 = func_2(i32(-1i) * -1i, global0.c, !(!(!vec3<bool>(arg_1, false, false))));
    var var_2 = vec3<bool>(arg_1, global0.a, true);
    let var_3 = vec2<u32>(global2.a, 11638u);
    var var_4 = select(select(!vec3<bool>(true, true, var_2.x), select(vec3<bool>(global0.d.c, arg_1, all(var_2.zz)), !vec3<bool>(global0.a, false, false), vec3<bool>(-610f != global0.d.b.x, func_2(global3.x, false, vec3<bool>(arg_1, var_1.c, true)).a, any(vec3<bool>(true, var_2.x, global2.c.c)))), vec3<bool>(true, true && all(vec4<bool>(global0.a, arg_1, var_1.c, true)), false)), vec3<bool>(global2.c.c, !func_2(select(4503i, 47219i, false), true, select(vec3<bool>(false, arg_1, var_1.a), vec3<bool>(true, false, false), vec3<bool>(var_2.x, arg_1, var_2.x))).a, !global2.c.c), vec3<bool>(true, all(!var_2.yy) && var_2.x, false));
    return global0.d.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(!global0.a, global0.b, false, Struct_1(global0.b, vec4<f32>(_wgslsmith_f_op_f32(-global2.c.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1618f) * -1082f), _wgslsmith_f_op_f32(func_1(48647u, true)), global2.c.b.x), global0.c));
    let var_0 = false;
    var var_1 = _wgslsmith_dot_vec4_u32(~(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 51762u, global2.a, u_input.c), vec4<u32>(31870u, u_input.c, 0u, global2.a)), global2.a & global4.x, global4.x ^ global2.a, ~56662u) ^ ~vec4<u32>(4294967295u, global4.x, 0u, u_input.c)), ~(~abs(firstLeadingBit(vec4<u32>(0u, 1u, global2.a, global4.x)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2.a << (0u % 32u), true)) + 1068f)));
    var var_3 = countOneBits(~min(~(~vec3<u32>(u_input.c, global2.a, global4.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 26968u, 4294967295u), vec3<u32>(u_input.c, 0u, 1u), vec3<u32>(1u, 39613u, global4.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, global2.a, 4294967295u), vec3<u32>(2189u, 91648u, 0u)))));
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_3.x, ~global4.x)) | abs(global4.yx), ~firstLeadingBit(select(global4.yy, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 19596u), var_3.xz), true))), 3u)];
    global3 = reverseBits(vec4<i32>(var_4.b, 2147483647i, -59435i << ((var_3.x ^ 0u) % 32u), global3.x));
    let var_5 = select(!vec2<bool>(all(!vec3<bool>(false, global0.a, global2.c.c)), true), !select(select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), global2.c.c | global2.c.c), !select(vec2<bool>(false, true), vec2<bool>(global2.c.c, var_0), vec2<bool>(global0.d.c, var_0)), ~1i != _wgslsmith_sub_i32(global0.b, global2.c.a)), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.b * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.c.b.x, global2.b.x, -116f))))))), -5251i, 12206i);
}

