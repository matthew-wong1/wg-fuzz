struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 184f;

var<private> global1: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false));

var<private> global2: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-26852i, 18872i), vec2<i32>(-4654i, i32(-2147483648)), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, -21257i), vec2<i32>(40862i, -12338i), vec2<i32>(1i, -1i), vec2<i32>(1i, -9899i), vec2<i32>(29670i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, -13978i), vec2<i32>(-1i, 20723i), vec2<i32>(-9307i, 49628i), vec2<i32>(0i, 0i), vec2<i32>(-3772i, 0i), vec2<i32>(13227i, 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(15453i, 1i), vec2<i32>(-28815i, 37064i), vec2<i32>(1i, 28642i), vec2<i32>(-20919i, 1i), vec2<i32>(-36335i, 2147483647i), vec2<i32>(0i, -1i), vec2<i32>(7134i, 41385i), vec2<i32>(-2632i, 2147483647i), vec2<i32>(-10607i, -18344i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(62017i, -8220i), vec2<i32>(2147483647i, 13117i));

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

var<private> global4: array<vec4<f32>, 27>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    let var_0 = Struct_1(arg_2.c, arg_3, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1302f)))))), true);
    var var_1 = u_input.b;
    var var_2 = var_0.c;
    var_1 = vec3<u32>(var_0.b, 0u ^ (u_input.b.x & 10362u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(var_1.x, 9901u, var_0.b, 58822u)), abs(53620u)));
    return global1[_wgslsmith_index_u32(var_1.x, 29u)];
}

fn func_2() -> vec3<bool> {
    var var_0 = 1u;
    global1 = array<vec3<bool>, 29>();
    global2 = array<vec2<i32>, 30>();
    var var_1 = false;
    global2 = array<vec2<i32>, 30>();
    return !select(select(!(!vec3<bool>(true, global3.x, global3.x)), select(select(global1[_wgslsmith_index_u32(0u, 29u)], vec3<bool>(false, false, false), global3.x), global1[_wgslsmith_index_u32(~u_input.b.x, 29u)], global3.x), !(!vec3<bool>(global3.x, false, true))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(~u_input.b.yy, u_input.a.yz)), 29u)], !(!func_3(vec4<bool>(true, true, true, global3.x), false, Struct_1(396f, u_input.a.x, 1047f, true), 0u)));
}

fn func_1() -> Struct_1 {
    global4 = array<vec4<f32>, 27>();
    global4 = array<vec4<f32>, 27>();
    global3 = func_2();
    global4 = array<vec4<f32>, 27>();
    var var_0 = ~_wgslsmith_sub_vec3_u32(u_input.a.xyw, vec3<u32>(~(~u_input.b.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 52430u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 71080u, 0u), vec3<u32>(u_input.b.x, u_input.b.x, 428u))), 4294967295u));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(449f * -1000f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1107f))))), 70318u, -775f, true);
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    global0 = arg_0.a;
    let var_0 = arg_0;
    let var_1 = vec4<u32>(~u_input.a.x, 0u, u_input.a.x, _wgslsmith_div_u32(~(0u & arg_0.b), reverseBits(u_input.a.x)) >> (_wgslsmith_dot_vec2_u32(abs(~u_input.b.zz), ~countOneBits(u_input.b.zz)) % 32u));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global4[_wgslsmith_index_u32(arg_0.b, 27u)]))), ~(~_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.c, 1i, 30390i), vec3<i32>(5679i, -10549i, u_input.d), global1[_wgslsmith_index_u32(var_0.b, 29u)]), abs(vec3<i32>(-22550i, u_input.c, u_input.d)))), func_1());
    global3 = !func_3(select(!(!vec4<bool>(false, arg_0.d, true, true)), vec4<bool>(arg_0.d, false & var_2.c.d, !arg_0.d, false), !(!vec4<bool>(var_2.c.d, var_2.c.d, true, global3.x))), !(global3.x & !arg_0.d), Struct_1(_wgslsmith_f_op_f32(abs(var_0.c)), ~(~3225u), arg_0.c, true), u_input.a.x);
    return select(global1[_wgslsmith_index_u32(var_2.c.b, 29u)], func_3(select(select(!vec4<bool>(global3.x, var_0.d, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, var_0.b != 0u, true, global3.x), vec4<bool>(true || var_2.c.d, false, var_0.d, global3.x)), true, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -209f), var_2.c.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1156f), _wgslsmith_f_op_f32(-var_0.a)), false), _wgslsmith_add_u32(reverseBits(var_2.c.b), 0u)), !arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~0u, u_input.a.x);
    var var_1 = 59318u;
    global3 = func_4(func_1());
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(var_0.x, 27u)]))))), vec3<i32>(-46505i, -u_input.d, _wgslsmith_mod_i32(u_input.c | u_input.d, u_input.c ^ -2147483647i)), func_1());
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1155f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.c.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(808f, _wgslsmith_f_op_f32(var_2.a.x - var_2.c.a)))))));
    var var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a)), _wgslsmith_f_op_f32(step(-368f, -1180f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.a) - 973f))), _wgslsmith_f_op_f32(step(func_1().c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.c))))), _wgslsmith_mult_vec3_i32(~var_2.b, firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(14844i, var_2.b.x, 0i), var_2.b, vec3<i32>(-17380i, u_input.c, -1873i))) << (reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(24109u, 0u, u_input.a.x), u_input.b)) % vec3<u32>(32u))), var_2.c);
    var var_4 = _wgslsmith_sub_i32(abs(u_input.d), u_input.d) >= _wgslsmith_clamp_i32(-9566i, select(~(var_3.b.x | var_2.b.x), ~var_3.b.x, all(global1[_wgslsmith_index_u32(firstTrailingBit(1u), 29u)])), u_input.c | var_3.b.x);
    var var_5 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -419f) - -2175f))), vec3<i32>(-1i, _wgslsmith_clamp_i32(var_3.b.x, firstLeadingBit(1i), var_3.b.x), var_3.b.x), firstTrailingBit(_wgslsmith_sub_vec3_u32(select(~u_input.b, u_input.a.yzx, global1[_wgslsmith_index_u32(var_0.x, 29u)]), _wgslsmith_mult_vec3_u32(u_input.a.xxx >> (u_input.a.xwx % vec3<u32>(32u)), ~vec3<u32>(57028u, var_0.x, 44559u)))));
}

