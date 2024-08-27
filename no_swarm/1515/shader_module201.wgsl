struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 1i, 27141i), 49208u, vec2<u32>(0u, 56174u), false);

var<private> global1: array<bool, 8>;

var<private> global2: array<Struct_4, 7>;

var<private> global3: array<vec4<bool>, 28>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = firstLeadingBit(_wgslsmith_add_vec2_i32(global0.a.yy & min(u_input.b.zy, vec2<i32>(52568i, -1i)), vec2<i32>(14830i, _wgslsmith_add_i32(-2147483647i, 2147483647i)))) | abs(_wgslsmith_mult_vec2_i32(u_input.b.yx, ~max(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(global0.a.x, global0.a.x))));
    global1 = array<bool, 8>();
    let var_1 = vec2<bool>(!global0.d, ~_wgslsmith_div_u32(global0.c.x, u_input.d) <= ~(~u_input.d));
    let var_2 = Struct_2(countOneBits(vec4<i32>(-var_0.x, u_input.c, _wgslsmith_sub_i32(u_input.a, 0i), abs(_wgslsmith_add_i32(global0.a.x, var_0.x)))), global0.c.x, global0.c, false);
    global1 = array<bool, 8>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -193f) * -479f) + 1300f));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32) -> vec3<bool> {
    global0 = Struct_2(min(min(firstTrailingBit(~vec4<i32>(u_input.a, arg_2, global0.a.x, 56486i)), _wgslsmith_add_vec4_i32(vec4<i32>(25576i, 8084i, -34611i, global0.a.x) & vec4<i32>(2147483647i, -1i, global0.a.x, -13489i), -global0.a)), global0.a), 1u, arg_1.a.c.xw, arg_1.a.b.x);
    global1 = array<bool, 8>();
    global1 = array<bool, 8>();
    global2 = array<Struct_4, 7>();
    var var_0 = vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(round(arg_1.b.x)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-877f)), 1151f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))), true, false & select(global0.d, true, arg_1.a.b.x));
    return arg_1.a.b.zxy;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_4) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(global0.c.x, 8u)];
    global0 = Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global0.a, global0.a), -global0.a), u_input.c, global0.a.x, 3474i & ((-2147483647i << (arg_1 % 32u)) | ~global0.a.x)), u_input.d, global0.c, all(func_3(arg_2, Struct_3(Struct_1(vec3<bool>(global0.d, false, true), vec4<bool>(true, false, global0.d, global1[_wgslsmith_index_u32(0u, 8u)]), vec4<u32>(4294967295u, 1u, 60818u, arg_1), 68295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1000f, arg_0))), abs(global0.a.x)).xx));
    let var_1 = 4294967295u ^ firstLeadingBit(u_input.d);
    var var_2 = _wgslsmith_div_i32(1i, abs(~abs(_wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(global0.a.x, u_input.c)))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0))) - 732f)), _wgslsmith_f_op_f32(-arg_0)));
    return Struct_1(!vec3<bool>(!any(vec4<bool>(global0.d, true, global0.d, global1[_wgslsmith_index_u32(39179u, 8u)])), (global1[_wgslsmith_index_u32(arg_2.a.x, 8u)] != global1[_wgslsmith_index_u32(global0.c.x, 8u)]) && global1[_wgslsmith_index_u32(firstTrailingBit(0u), 8u)], false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 8u)], true, true, all(vec2<bool>(false | global1[_wgslsmith_index_u32(arg_1, 8u)], true))), _wgslsmith_sub_vec4_u32(abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 0u, 1u, 2432u), vec4<u32>(global0.b, 4294967295u, 26567u, global0.c.x), vec4<u32>(global0.b, 0u, 48619u, 66564u))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.d, 0u, var_1, 0u)), ~vec4<u32>(5423u, u_input.d, global0.b, arg_1))), reverseBits(~(~_wgslsmith_mult_u32(var_1, u_input.d))));
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = func_4(_wgslsmith_f_op_f32(select(-236f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-472f * _wgslsmith_f_op_f32(func_2())) - 1f), arg_0.x && all(func_3(Struct_4(vec3<u32>(2704u, u_input.d, 6700u)), Struct_3(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(11053u, 8u)], global0.d, arg_0.x), vec4<bool>(global1[_wgslsmith_index_u32(84889u, 8u)], false, false, global1[_wgslsmith_index_u32(u_input.d, 8u)]), vec4<u32>(4294967295u, 0u, 19879u, global0.b), u_input.d), vec3<f32>(885f, -118f, 954f)), 0i)))), countOneBits(~0u), Struct_4(~vec3<u32>(1u, _wgslsmith_mod_u32(global0.b, 81034u), ~4294967295u)));
    global3 = array<vec4<bool>, 28>();
    var var_1 = 244f;
    let var_2 = -30631i;
    let var_3 = _wgslsmith_add_u32(var_0.c.x, func_4(1053f, abs(max(u_input.d, 71170u)), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 7u)]).c.x) <= 1u;
    return max(54859i, firstTrailingBit(~global0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -1416f, -813f)))))))));
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.c.x, ~global0.b) >> (67710u % 32u), 1827u, u_input.d), 7u)];
    let var_2 = abs(vec4<i32>(0i, countOneBits(5190i), 0i, _wgslsmith_clamp_i32(select(u_input.c, u_input.b.x, global0.d), u_input.a, -global0.a.x)));
    global0 = Struct_2(vec4<i32>(35720i, func_1(vec2<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(55496u, 8u)], global1[_wgslsmith_index_u32(u_input.d, 8u)], global1[_wgslsmith_index_u32(u_input.d, 8u)], true)), all(vec4<bool>(true, false, global0.d, false)))), ~(u_input.c & -2147483647i), _wgslsmith_mult_i32(-26068i, ~18057i)), reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global0.c.x, var_1.a.x, global0.b), abs(var_1.a)), _wgslsmith_div_vec3_u32(~var_1.a, firstLeadingBit(vec3<u32>(global0.c.x, 55580u, global0.c.x))))), (select(reverseBits(vec2<u32>(global0.c.x, u_input.d)), select(vec2<u32>(var_1.a.x, u_input.d), global0.c, true), func_3(global2[_wgslsmith_index_u32(global0.c.x, 7u)], Struct_3(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(7236u, 8u)], false, false), global3[_wgslsmith_index_u32(var_1.a.x, 28u)], vec4<u32>(var_1.a.x, 0u, u_input.d, global0.b), 4294967295u), vec3<f32>(-1126f, -1152f, var_0.x)), 42477i).zx) | select(~var_1.a.xz, vec2<u32>(22325u, 10944u) | var_1.a.zz, global0.d)) & vec2<u32>(_wgslsmith_mult_u32(~12049u, _wgslsmith_mod_u32(0u, u_input.d)), 1u), all(vec4<bool>(global1[_wgslsmith_index_u32((u_input.d & u_input.d) & (var_1.a.x << (global0.c.x % 32u)), 8u)], global0.d, !(global1[_wgslsmith_index_u32(0u, 8u)] | global0.d), ~var_1.a.x != _wgslsmith_clamp_u32(global0.c.x, u_input.d, u_input.d))));
    global3 = array<vec4<bool>, 28>();
    let var_3 = 73742u;
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec3_u32(var_1.a, _wgslsmith_mult_vec3_u32(min(vec3<u32>(var_1.a.x, u_input.d, var_1.a.x), abs(var_1.a)), ~(~var_1.a)))), 7u)];
    let var_4 = Struct_4(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -544f) + vec4<f32>(var_0.x, var_0.x, var_0.x, -396f)) * vec4<f32>(-577f, var_0.x, var_0.x, 1082f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(406f, -1886f, var_0.x, var_0.x))))))));
}

