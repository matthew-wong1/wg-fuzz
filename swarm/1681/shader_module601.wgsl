struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: vec3<f32>;

var<private> global2: vec3<bool>;

var<private> global3: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(4294967295u, 0u, 32352u, 38839u), vec4<u32>(4294967295u, 14196u, 0u, 0u), vec4<u32>(0u, 1u, 71940u, 16820u), vec4<u32>(1u, 23628u, 1u, 43677u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(8162u, 4294967295u, 22407u, 27750u), vec4<u32>(0u, 0u, 5968u, 0u), vec4<u32>(1u, 20805u, 0u, 31970u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(34547u, 35649u, 22026u, 41771u), vec4<u32>(1u, 49184u, 3261u, 87568u), vec4<u32>(0u, 63968u, 8421u, 33040u), vec4<u32>(0u, 14662u, 12200u, 0u), vec4<u32>(1u, 15835u, 38164u, 1724u), vec4<u32>(2345u, 1u, 4294967295u, 0u), vec4<u32>(20812u, 10134u, 28427u, 74508u), vec4<u32>(4294967295u, 153889u, 0u, 1u), vec4<u32>(1u, 7587u, 2499u, 18995u), vec4<u32>(1u, 20780u, 3713u, 4294967295u), vec4<u32>(1u, 0u, 66226u, 24525u), vec4<u32>(0u, 4294967295u, 37417u, 4294967295u), vec4<u32>(104784u, 7620u, 69960u, 2354u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: vec4<i32>, arg_3: vec2<u32>) -> vec3<f32> {
    global0 = vec2<bool>(all(!global2.zz), true);
    global3 = array<vec4<u32>, 22>();
    global2 = select(!select(!(!vec3<bool>(global2.x, global2.x, false)), vec3<bool>(false, u_input.c != arg_1.a.a.x, true), true), vec3<bool>(true, all(vec4<bool>(arg_1.b.a, arg_2.x <= arg_2.x, !arg_1.b.a, any(vec3<bool>(false, global2.x, global0.x)))), global2.x), !any(global2.xx));
    let var_0 = Struct_4(Struct_2(vec3<u32>(~(~562u), firstTrailingBit(abs(1u)), select(arg_1.a.a.x >> (arg_1.a.a.x % 32u), u_input.a.x, global0.x)), -u_input.b), Struct_2(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(14293u, arg_3.x, arg_3.x), vec3<u32>(arg_1.a.a.x, 80928u, 85798u), arg_1.a.a), arg_1.a.a) | (~arg_1.a.a >> (vec3<u32>(20930u, arg_1.a.a.x, u_input.d.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(arg_2.zzy, u_input.b), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(u_input.b.x, -8341i, arg_1.c)), arg_1.a.b << (vec3<u32>(u_input.d.x, 4294967295u, 0u) % vec3<u32>(32u))))), Struct_1(arg_1.d.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))), arg_2);
    var var_1 = arg_1.b;
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-480f, -1014f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1597f, global1.x, global1.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 132f)), global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global1.x, 517f)), _wgslsmith_f_op_f32(arg_1.d.x - arg_0)))), vec3<bool>(any(global2.yy), all(vec3<bool>(global0.x, global2.x, true)), arg_1.b.a)))));
}

fn func_2() -> u32 {
    global1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(global1.x, Struct_5(Struct_2(u_input.d, vec3<i32>(5632i, u_input.b.x, -37052i)), Struct_1(global2.x), -1i, vec2<f32>(-318f, 1306f)), vec4<i32>(21467i, u_input.e, 0i, 1256i), u_input.d.zz)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 1300f) - vec3<f32>(global1.x, -1000f, global1.x))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1012f, _wgslsmith_f_op_f32(f32(-1f) * -1003f), _wgslsmith_f_op_f32(f32(-1f) * -342f)) + vec3<f32>(_wgslsmith_f_op_f32(min(310f, global1.x)), -1996f, _wgslsmith_f_op_f32(global1.x - 1420f))))));
    var var_0 = ~u_input.e;
    return abs(u_input.a.x);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = abs(select(firstLeadingBit(~u_input.d.xz ^ u_input.a), vec2<u32>(u_input.a.x, func_2()), false));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(110f * _wgslsmith_f_op_f32(-arg_0)))) >= -1723f);
    var var_2 = Struct_5(Struct_2(~vec3<u32>(u_input.a.x >> (10532u % 32u), var_0.x >> (0u % 32u), u_input.d.x & 7333u), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, -1i, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(21576i, 1i, u_input.e), u_input.b, vec3<i32>(u_input.e, u_input.b.x, -17705i))), vec3<i32>(1i, 2147483647i ^ u_input.e, _wgslsmith_sub_i32(0i, u_input.e)), u_input.b)), Struct_1(true), firstTrailingBit(-(~_wgslsmith_div_i32(u_input.b.x, u_input.b.x))), global1.zx);
    var var_3 = _wgslsmith_clamp_i32(~(-(~(u_input.b.x << (u_input.d.x % 32u)))), ~_wgslsmith_add_i32(firstLeadingBit(i32(-1i) * -1i), 1i), select(-1i << (1u % 32u), 2147483647i, true));
    var var_4 = var_2.a.b.yz;
    return Struct_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.x, var_2.a.a.x, 22767u), ~var_2.a.a >> (var_2.a.a % vec3<u32>(32u))), vec3<u32>(firstTrailingBit(~var_2.a.a.x), 4294967295u, ~32657u), abs(_wgslsmith_div_vec3_u32(u_input.d, var_2.a.a))), _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(-1i) * -var_2.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(!any(vec3<bool>(global0.x, global0.x, false)), global0.x, (u_input.c ^ 32665u) == ~u_input.d.x, 0i < u_input.e), !(!select(vec4<bool>(global2.x, global2.x, global0.x, global2.x), vec4<bool>(false, global0.x, global0.x, false), global2.x)), vec4<bool>(any(vec3<bool>(global0.x, true, true)) & true, global2.x, true, any(vec4<bool>(true, true, false, global2.x)) || global2.x));
    var var_1 = Struct_5(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1242f - _wgslsmith_f_op_f32(global1.x - global1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(true), ~(~select(1i, _wgslsmith_sub_i32(0i, 60995i), any(vec4<bool>(global0.x, false, global0.x, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-630f, 171f) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1481f, -534f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(308f, 1303f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1.yx)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, global1.x), global1.xz)))))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, var_1.d.x)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, global1.x, var_1.d.x)))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 166f, -742f) * vec3<f32>(-1669f, var_1.d.x, var_1.d.x))) + vec3<f32>(-406f, _wgslsmith_f_op_f32(abs(690f)), var_1.d.x)));
    var var_2 = Struct_5(Struct_2(vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.a.x, 0u, 12772u, var_1.a.a.x), global3[_wgslsmith_index_u32(u_input.c, 22u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_1.a.a.x, 0u, u_input.c), vec4<u32>(1u, 32275u, var_1.a.a.x, u_input.a.x))), reverseBits(~3439u)), u_input.b), var_1.b, var_1.a.b.x, global1.xz);
    var var_3 = ~var_1.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, global1.yy);
}

