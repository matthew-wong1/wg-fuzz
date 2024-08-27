struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(32810u, 58313u, 34925u, 20735u, 0u, 1u, 4294967295u, 6244u, 4947u, 28697u, 42931u, 0u, 120123u, 4294967295u, 4294967295u, 14644u, 6201u, 4294967295u, 44232u, 1u, 1u, 77036u, 6264u, 29782u, 6552u, 1u, 106514u, 1u, 1u, 40061u);

var<private> global1: Struct_2;

var<private> global2: array<u32, 18> = array<u32, 18>(88148u, 4294967295u, 29984u, 4294967295u, 121970u, 1u, 4294967295u, 101371u, 4294967295u, 1u, 8228u, 4294967295u, 4294967295u, 4294967295u, 24015u, 0u, 49463u, 9342u);

var<private> global3: array<Struct_1, 18>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2() -> i32 {
    global3 = array<Struct_1, 18>();
    global3 = array<Struct_1, 18>();
    global0 = array<u32, 30>();
    global2 = array<u32, 18>();
    global2 = array<u32, 18>();
    return 2147483647i;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> vec2<u32> {
    global3 = array<Struct_1, 18>();
    global0 = array<u32, 30>();
    let var_0 = arg_3.b;
    var var_1 = Struct_1(!arg_3.b.x, arg_2.c, select(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_3.c, _wgslsmith_div_i32(2147483647i, arg_2.a.c.x)), vec2<i32>(i32(-1i) * -6321i, ~18753i), ~arg_0.c ^ _wgslsmith_mod_vec2_i32(arg_0.c, global1.a.c)), global1.a.c, vec2<bool>(false, all(select(var_0.yz, vec2<bool>(true, var_0.x), true)))), firstTrailingBit(_wgslsmith_div_vec4_u32(arg_2.a.d, vec4<u32>(~global2[_wgslsmith_index_u32(arg_0.d.x, 18u)], ~arg_2.a.d.x, ~arg_1, ~global2[_wgslsmith_index_u32(arg_0.d.x, 18u)]))));
    global2 = array<u32, 18>();
    return ~reverseBits(~(~(~global1.a.d.zy)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<f32>) -> i32 {
    let var_0 = max(_wgslsmith_div_vec2_i32(vec2<i32>(~(-1i), -_wgslsmith_dot_vec3_i32(u_input.a.xwz, vec3<i32>(global1.a.c.x, arg_1.c, -16735i))), ~abs(abs(u_input.a.zw))), vec2<i32>(arg_0.c, arg_0.c));
    var var_1 = ~vec4<i32>(u_input.a.x, -89147i, i32(-1i) * -13960i, 1i);
    let var_2 = global1.a.d.x;
    global0 = array<u32, 30>();
    global2 = array<u32, 18>();
    return max(~var_1.x, _wgslsmith_dot_vec3_i32(max(u_input.a.zxz, _wgslsmith_mod_vec3_i32(vec3<i32>(27425i, arg_0.c, arg_1.c) >> (global1.a.d.zwz % vec3<u32>(32u)), u_input.a.zxw)), _wgslsmith_add_vec3_i32(min(u_input.a.yzz, vec3<i32>(0i, -2147483647i, 32641i)), abs(vec3<i32>(2147483647i, 163i, u_input.d) << (vec3<u32>(13732u, global1.d.x, 23852u) % vec3<u32>(32u))))));
}

fn func_1() -> Struct_2 {
    var var_0 = firstLeadingBit(~countOneBits(_wgslsmith_add_i32(abs(-19701i), func_2())));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1097f * global1.b)) + _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-global1.b))))));
    var_0 = max(u_input.d, func_4(Struct_3(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(global1.d, vec2<u32>(47926u, global1.d.x), u_input.b.yx), reverseBits(vec2<u32>(global1.a.d.x, u_input.b.x))), !vec3<bool>(global1.a.a, global1.a.a, global1.c), _wgslsmith_dot_vec3_i32(-u_input.a.yxy, ~vec3<i32>(global1.a.c.x, 29545i, u_input.d))), Struct_3(~func_3(global3[_wgslsmith_index_u32(127004u, 18u)], 119192u, Struct_2(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35708u, 18u)], 18u)], global1.b, global1.a.a, vec2<u32>(0u, 1u)), Struct_3(vec2<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 18u)], 4294967295u), vec3<bool>(true, true, global1.c), -18596i)), !vec3<bool>(global1.a.b, global1.c, global1.c), firstTrailingBit(0i) ^ -63i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-238f, -205f) + vec2<f32>(-656f, -250f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.b, -2428f), vec2<f32>(-1000f, 644f))))));
    let var_2 = Struct_2(Struct_1(all(select(select(vec4<bool>(global1.a.b, global1.a.b, false, global1.c), vec4<bool>(global1.a.a, true, false, global1.c), global1.c), select(vec4<bool>(true, global1.a.b, true, true), vec4<bool>(global1.a.b, false, global1.c, false), true), vec4<bool>(global1.c, global1.c, global1.a.a, global1.c))), true, global1.a.c, ~((vec4<u32>(4294967295u, 40591u, 0u, 61016u) & global1.a.d) << (global1.a.d % vec4<u32>(32u)))), global1.b, global1.a.b && (select(global1.c & false, global1.a.b, global1.a.c.x >= 2147483647i) || any(!vec4<bool>(true, true, global1.c, true))), abs(u_input.b.xy));
    var_1 = _wgslsmith_f_op_f32(exp2(var_2.b));
    return Struct_2(Struct_1(!global1.c, true, vec2<i32>(var_2.a.c.x >> (global0[_wgslsmith_index_u32(70005u, 30u)] % 32u), global1.a.c.x << (4294967295u % 32u)) & (~global1.a.c >> (vec2<u32>(17385u, global2[_wgslsmith_index_u32(14712u, 18u)]) % vec2<u32>(32u))), global1.a.d), _wgslsmith_f_op_f32(trunc(var_2.b)), false, vec2<u32>(4022u, 36467u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    var var_0 = func_1();
    let var_1 = func_1();
    global3 = array<Struct_1, 18>();
    let var_2 = !(!(!vec2<bool>(true, !var_1.a.a)));
    let var_3 = ~var_1.a.d.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(313f)), _wgslsmith_f_op_f32(-var_0.b), 540f)) - vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(962f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -648f)))), select(_wgslsmith_mod_i32(u_input.d, ~(var_1.a.c.x & var_1.a.c.x)), -2675i, false));
}

