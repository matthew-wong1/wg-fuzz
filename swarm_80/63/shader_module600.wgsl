struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(0u, 0u), vec4<u32>(61215u, 0u, 0u, 4294967295u));

var<private> global2: vec3<u32>;

var<private> global3: array<i32, 15>;

var<private> global4: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    global3 = array<i32, 15>();
    let var_0 = arg_0;
    var var_1 = any(select(vec3<bool>(false, all(vec3<bool>(true, true, true)), true), !(!(!vec3<bool>(false, arg_0, var_0))), true));
    global2 = ~(~(~select(~global1.b.wyx, vec3<u32>(38537u, 89133u, u_input.a), true && var_0)));
    global2 = u_input.c.yyx;
    return u_input.c.yz;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-819f, -318f, arg_0)))))));
    let var_1 = _wgslsmith_f_op_f32(round(-2143f));
    var var_2 = Struct_1(firstLeadingBit(func_3(any(vec4<bool>(true, true, false, false)))), vec4<u32>(~(~global2.x) >> (arg_1.x % 32u), ~u_input.c.x, _wgslsmith_div_u32(~min(global2.x, u_input.a), global1.b.x), global2.x));
    let var_3 = Struct_2(517f, Struct_1(u_input.c.zx, ~(~(~u_input.c))), vec2<bool>(true, true), vec4<u32>(~0u, _wgslsmith_sub_u32(~(~18890u), _wgslsmith_add_u32(var_2.b.x, 14048u)), _wgslsmith_mod_u32(global2.x, 8143u), ~arg_1.x | 968u));
    global1 = Struct_1(~vec2<u32>(_wgslsmith_dot_vec4_u32(~var_2.b, vec4<u32>(var_2.b.x, u_input.a, global1.a.x, var_2.a.x)), var_2.b.x), ~var_3.b.b);
    return 1u;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_1 {
    global2 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.zw ^ vec2<u32>(u_input.c.x, global1.a.x), vec2<u32>(global1.b.x, 0u)) ^ func_2(_wgslsmith_f_op_f32(-455f - 1083f), vec3<u32>(0u, 0u, 5813u) & u_input.c.zyx), reverseBits(max(_wgslsmith_dot_vec2_u32(u_input.c.zw, vec2<u32>(24415u, global1.a.x)), 4294967295u))), 63360u, 38593u);
    let var_0 = Struct_1(~vec2<u32>(~1u, ~u_input.a) >> (vec2<u32>(_wgslsmith_sub_u32(~global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 37122u), vec2<u32>(1u, 1u))), abs(~4608u)) % vec2<u32>(32u)), vec4<u32>(11127u, u_input.a, 45072u, 4294967295u) & vec4<u32>(~1698u, 48668u, ~50151u, _wgslsmith_clamp_u32(147598u, firstLeadingBit(global2.x), 1u)));
    global4 = -2147483647i;
    var var_1 = Struct_3(!(!arg_0.a));
    global3 = array<i32, 15>();
    return Struct_1(vec2<u32>(~global2.x, 1u) ^ ~_wgslsmith_div_vec2_u32(vec2<u32>(global2.x, global1.a.x) | var_0.a, min(vec2<u32>(0u, u_input.a), vec2<u32>(global1.a.x, global2.x))), var_0.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_div_i32(-(~u_input.b), global0.x);
    var var_1 = global0.x;
    var var_2 = Struct_3(vec3<bool>(!(!(!arg_1.c.x)), arg_1.c.x, !any(arg_1.c)));
    var_2 = Struct_3(vec3<bool>(var_2.a.x, !arg_1.c.x, 4880u < ~(~u_input.a)));
    var var_3 = Struct_3(vec3<bool>(arg_1.c.x, all(!select(vec3<bool>(arg_1.c.x, arg_1.c.x, true), var_2.a, vec3<bool>(false, arg_1.c.x, true))), !arg_1.c.x));
    return !select(vec2<bool>(false, true), select(var_2.a.xz, var_3.a.zy, select(var_2.a.zz, select(vec2<bool>(arg_1.c.x, var_2.a.x), vec2<bool>(var_3.a.x, true), arg_1.c.x), arg_1.c)), select(vec2<bool>(true, true), arg_1.c, !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(var_3.a.x, true))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1734f, 1275f) + 416f)));
    var var_1 = Struct_3(vec3<bool>(all(select(!arg_0, vec2<bool>(true, true), !arg_0)), global3[_wgslsmith_index_u32(func_1(Struct_3(vec3<bool>(arg_0.x, true, true)), ~arg_2).a.x, 15u)] >= 0i, (arg_0.x | true) || (arg_0.x & true)));
    var var_2 = Struct_2(851f, arg_1, func_4(func_1(Struct_3(select(var_1.a, vec3<bool>(false, true, false), arg_0.x)), arg_2), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(400f, 201f, false))), arg_1, !(!arg_0), ~vec4<u32>(1u, 4294967295u, 5140u, u_input.a))), ~vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.x, global1.a.x), global1.b.yyx), arg_1.b.x, _wgslsmith_sub_u32(~global1.a.x, _wgslsmith_mult_u32(u_input.a, 28239u)), max(_wgslsmith_add_u32(global2.x, global1.a.x), firstTrailingBit(global1.b.x))));
    var var_3 = ~global0.x;
    var_3 = 1i;
    return -_wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(34266i, i32(-1i) * -7733i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(global0.x, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(global1.b.x, 15u)], u_input.b), i32(-1i) * -(_wgslsmith_mult_i32(global0.x, -28814i) | global0.x));
    var var_1 = global1.b;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1231f);
    global2 = vec3<u32>(_wgslsmith_sub_u32(~(global1.b.x & global2.x), global1.b.x), 20820u, var_1.x);
    global4 = func_5(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true))), func_4(func_1(Struct_3(vec3<bool>(true, false, true)), vec3<i32>(-1i, -11693i, global0.x)), Struct_2(-749f, Struct_1(var_1.zx, global1.b), vec2<bool>(true, true), vec4<u32>(global1.b.x, 0u, var_1.x, global2.x))), true), Struct_1(~global2.xy, u_input.c), vec3<i32>(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(global2.x, 15u)] << (global1.a.x % 32u), -9174i, -2147483647i), ~firstTrailingBit(-30979i), _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(0u, 15u)], -36556i, global0.x), vec3<i32>(5261i, global3[_wgslsmith_index_u32(2961u, 15u)], global0.x) << (vec3<u32>(global2.x, 41214u, 0u) % vec3<u32>(32u)))) & vec3<i32>(global0.x, abs(u_input.b), global0.x));
    let var_3 = func_1(Struct_3(vec3<bool>(true, true, !any(vec2<bool>(true, true)))), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(58045i, 38251i, u_input.b), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -1i, global0.x), vec3<i32>(global3[_wgslsmith_index_u32(var_1.x, 15u)], u_input.b, global3[_wgslsmith_index_u32(var_1.x, 15u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_add_i32(18230i, u_input.b) >> (global1.b.x % 32u)), global1.b.wzw, firstTrailingBit(_wgslsmith_clamp_u32(~select(0u, var_3.a.x, true), var_3.a.x, global2.x)), global1.b.zwx);
}

