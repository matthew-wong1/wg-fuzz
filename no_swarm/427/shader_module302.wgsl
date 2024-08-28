struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4102u, 0u, 81162u);

var<private> global1: array<u32, 25>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 17>;

var<private> global4: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(50917u, 0u, 6133u, 11226u), vec4<u32>(8077u, 102913u, 10364u, 92165u), vec4<u32>(69476u, 32842u, 28915u, 1u), vec4<u32>(36012u, 0u, 14069u, 1u), vec4<u32>(4294967295u, 155660u, 0u, 25089u), vec4<u32>(0u, 9811u, 4294967295u, 56722u), vec4<u32>(4294967295u, 32025u, 4294967295u, 24378u), vec4<u32>(0u, 1u, 0u, 13954u), vec4<u32>(0u, 0u, 1u, 57731u), vec4<u32>(39790u, 46805u, 61454u, 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(0u, 17u)];
    global1 = array<u32, 25>();
    global2 = Struct_2(Struct_1(global2.a.e.zx, ~(~global0.x), -(~var_0.c), ~vec3<u32>(global2.a.b, abs(1u), select(1u, 1u, true)), vec3<u32>(global2.b.d.x, var_0.e.x, _wgslsmith_div_u32(var_0.b, ~global2.a.b))), Struct_1(~firstLeadingBit(vec2<u32>(1u, 5423u)), ~((global2.b.b >> (global2.b.a.x % 32u)) << (22620u % 32u)), vec2<i32>(~1i, _wgslsmith_mod_i32(~47778i, global2.a.c.x)), ~var_0.d, var_0.e));
    global4 = array<vec4<u32>, 10>();
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(797f, -700f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(319f, 990f))))))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x - var_1.x)));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = 1i;
    let var_1 = Struct_2(Struct_1(global2.b.a, global2.a.d.x, global2.a.c, firstTrailingBit(vec3<u32>(4294967295u, global2.b.b, global0.x) << (global2.a.e % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(global2.a.d, global2.a.d)), global3[_wgslsmith_index_u32(min(abs(_wgslsmith_add_u32(4294967295u, arg_0)), global2.a.b) ^ 31871u, 17u)]);
    global3 = array<Struct_1, 17>();
    var var_2 = _wgslsmith_div_f32(arg_1.x, arg_1.x);
    var var_3 = var_1;
    return !arg_2.zz;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = func_4(65433u, vec4<f32>(_wgslsmith_f_op_f32(-576f * _wgslsmith_f_op_f32(-130f + 1076f)), _wgslsmith_f_op_f32(-1000f - 501f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + 367f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_3()))), !(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, false, true))));
    global1 = array<u32, 25>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-1158f, 950f, 258f), vec3<f32>(-908f, -2667f, 609f))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2145f), -2304f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * 1903f), -1286f)))), !(!(!(!vec3<bool>(true, true, var_0.x))))));
    var var_2 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.d.x, global2.b.b, global2.a.d.x) | vec3<u32>(arg_0.a.a.x, arg_0.b.d.x, arg_0.b.e.x), _wgslsmith_sub_vec3_u32(arg_0.a.d, vec3<u32>(4294967295u, global2.a.a.x, 31870u))), arg_0.a.a.x), ~select(~arg_0.b.e.x, ~global1[_wgslsmith_index_u32(global0.x, 25u)], var_0.x)), 17u)], global3[_wgslsmith_index_u32(arg_0.a.b, 17u)]);
    global0 = _wgslsmith_mult_vec3_u32(var_2.a.d ^ vec3<u32>(_wgslsmith_clamp_u32(var_2.a.b, ~global0.x, 0u), ~_wgslsmith_dot_vec2_u32(global0.zy, vec2<u32>(global1[_wgslsmith_index_u32(113541u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)])), select(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1225u, var_2.b.a.x), global0.xx), false)), min(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.a.x, firstTrailingBit(global1[_wgslsmith_index_u32(global2.b.d.x, 25u)]), 1u), var_2.a.e), var_2.b.d >> (vec3<u32>(firstTrailingBit(global0.x), reverseBits(global1[_wgslsmith_index_u32(arg_0.b.e.x, 25u)]), _wgslsmith_mult_u32(var_2.b.e.x, 0u)) % vec3<u32>(32u))));
    return arg_0.a;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    var var_0 = func_2(arg_3);
    var var_1 = arg_0;
    global0 = _wgslsmith_mod_vec3_u32(~(var_0.d << (var_0.e % vec3<u32>(32u))), select(~_wgslsmith_add_vec3_u32(var_1.a.e, _wgslsmith_mod_vec3_u32(vec3<u32>(37409u, global1[_wgslsmith_index_u32(global0.x, 25u)], arg_0.a.b), vec3<u32>(4294967295u, arg_0.b.a.x, global1[_wgslsmith_index_u32(32903u, 25u)]))), global2.a.d, !(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, true), true))));
    let var_2 = 0i;
    global3 = array<Struct_1, 17>();
    return ~arg_3.b.b;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global4 = array<vec4<u32>, 10>();
    var var_0 = global2.b.e.x;
    let var_1 = ~vec4<u32>(func_5(Struct_2(Struct_1(global0.xy, 42355u, global2.a.c, vec3<u32>(arg_0, global1[_wgslsmith_index_u32(global2.a.b, 25u)], global0.x), vec3<u32>(global1[_wgslsmith_index_u32(1u, 25u)], 32109u, arg_0)), func_2(Struct_2(Struct_1(vec2<u32>(global2.b.e.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]), 0u, global2.a.c, vec3<u32>(arg_0, arg_0, 58603u), vec3<u32>(1u, arg_0, global0.x)), global3[_wgslsmith_index_u32(arg_0, 17u)]))), !(1u <= arg_0), -_wgslsmith_sub_vec2_i32(global2.a.c, global2.a.c), Struct_2(func_2(Struct_2(Struct_1(vec2<u32>(global0.x, global0.x), 7494u, vec2<i32>(-37316i, global2.b.c.x), global2.a.d, vec3<u32>(4294967295u, arg_0, 7589u)), Struct_1(global0.zz, 0u, global2.b.c, global2.a.e, vec3<u32>(arg_0, 1u, 8515u)))), Struct_1(vec2<u32>(117823u, 0u), global1[_wgslsmith_index_u32(29589u, 25u)], global2.b.c, vec3<u32>(4294967295u, 1u, 66132u), vec3<u32>(global1[_wgslsmith_index_u32(8034u, 25u)], global0.x, arg_0)))), global2.a.b, ~global0.x, 0u);
    global0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global2.a.d.x, 25u)], var_1.x), var_1.x, func_5(Struct_2(global3[_wgslsmith_index_u32(0u, 17u)], global2.b), all(vec3<bool>(false, false, true)), global2.a.c ^ vec2<i32>(global2.a.c.x, -1i), Struct_2(Struct_1(global2.a.e.yz, arg_0, global2.a.c, vec3<u32>(global0.x, global0.x, global1[_wgslsmith_index_u32(6834u, 25u)]), vec3<u32>(arg_0, 9642u, global0.x)), Struct_1(global2.a.e.xx, var_1.x, global2.b.c, vec3<u32>(global1[_wgslsmith_index_u32(88350u, 25u)], global0.x, var_1.x), vec3<u32>(global0.x, global1[_wgslsmith_index_u32(42779u, 25u)], 1u))))), vec3<u32>(arg_0, arg_0, 1u));
    var var_2 = Struct_2(Struct_1(global2.a.a, global1[_wgslsmith_index_u32(~(~0u), 25u)], vec2<i32>(_wgslsmith_dot_vec2_i32(abs(global2.a.c), vec2<i32>(-24799i, global2.b.c.x)), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, -1i, global2.b.c.x, -1i)), ~vec4<i32>(global2.a.c.x, 39998i, global2.a.c.x, 6703i))), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 9815u, global0.x), ~vec3<u32>(global0.x, var_1.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 25u)], 25u)])), vec3<u32>(arg_0, global1[_wgslsmith_index_u32(arg_0, 25u)], ~4294967295u)), global3[_wgslsmith_index_u32(~global2.b.b, 17u)]);
    return func_2(Struct_2(Struct_1(reverseBits(~var_1.xy), 4294967295u, -vec2<i32>(global2.a.c.x, 25094i), ~countOneBits(global2.b.e), ~(vec3<u32>(14956u, 1820u, global0.x) << (vec3<u32>(global2.b.d.x, 1u, arg_0) % vec3<u32>(32u)))), var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(0u);
    global4 = array<vec4<u32>, 10>();
    let var_1 = vec2<u32>(var_0.a.x, _wgslsmith_clamp_u32(var_0.a.x, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(139880u, 0u ^ global2.a.d.x), 25u)] | (4294967295u & ~global1[_wgslsmith_index_u32(21135u, 25u)]), global1[_wgslsmith_index_u32(0u, 25u)] | 5821u));
    let var_2 = global2.b.e;
    let var_3 = false;
    global3 = array<Struct_1, 17>();
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1520f, -1765f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1309f, -1310f)))), vec2<bool>(var_3, 0u == var_1.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-576f, 714f)))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(984f, _wgslsmith_f_op_f32(f32(-1f) * -1129f))))));
    var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, -987f)), vec2<f32>(-1228f, var_4.x), (any(vec3<bool>(false, false, false)) && any(!vec3<bool>(var_3, false, var_3))) & false));
    let var_5 = _wgslsmith_clamp_vec2_u32(func_1(~select(var_0.b, 132552u, var_3)).d.yx ^ func_2(Struct_2(Struct_1(var_2.yx, var_1.x, vec2<i32>(-1i, u_input.a), global2.a.e, global2.b.e), global3[_wgslsmith_index_u32(~var_0.e.x, 17u)])).e.zz, var_2.yy, var_2.yy);
    let x = u_input.a;
    s_output = StorageBuffer(~(-firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, global2.a.c.x, 1i), vec3<i32>(-1i, 0i, -1i)))));
}

