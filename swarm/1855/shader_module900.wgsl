struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(i32(-2147483648), -31721i, 19421i), vec3<i32>(-18486i, 33820i, -691i), vec3<i32>(1i, -12973i, 42794i), vec3<i32>(-16784i, -1i, 0i), vec3<i32>(-24127i, 20441i, 25113i));

var<private> global1: array<Struct_2, 9>;

var<private> global2: Struct_3 = Struct_3(Struct_1(true, vec3<u32>(1u, 39809u, 33689u)));

var<private> global3: bool;

var<private> global4: array<Struct_3, 26>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = global2.a.b.zz;
    let var_1 = vec4<i32>(u_input.a.x, -12263i, 1i, u_input.a.x) & vec4<i32>(-2147483647i & u_input.a.x, -2147483647i, (_wgslsmith_div_i32(u_input.a.x, u_input.a.x) ^ u_input.a.x) >> (min(var_0.x ^ 32924u, ~4294967295u) % 32u), abs(u_input.a.x) >> (~(var_0.x & arg_0) % 32u));
    var var_2 = 1000f;
    var_0 = vec2<u32>(54872u, 1u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(561f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(750f * -337f) - _wgslsmith_f_op_f32(-586f * 464f)))));
    return any(select(select(vec2<bool>(global2.a.a, global2.a.a), vec2<bool>(!global2.a.a, !global2.a.a), !global2.a.a), select(select(vec2<bool>(true, true), !vec2<bool>(global2.a.a, true), vec2<bool>(true, true)), vec2<bool>(global2.a.a, global2.a.a), true), select((false && global2.a.a) || true, true, (u_input.a.x >= -2147483647i) || global2.a.a)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = abs(vec4<u32>(select(731u, 1u, true), global2.a.b.x | (~arg_0.c.b.x >> (4294967295u % 32u)), 4294967295u, max(global2.a.b.x, ~global2.a.b.x)));
    global1 = array<Struct_2, 9>();
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f - _wgslsmith_f_op_f32(select(695f, 258f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1303f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(440f))))))));
    let var_3 = !(all(select(select(vec3<bool>(arg_0.c.a, var_0.a, arg_2.a), vec3<bool>(true, false, var_0.b.a), false), vec3<bool>(var_0.c.a, false, var_0.b.a), true)) && true);
    return -(i32(-1i) * -2147483647i);
}

fn func_2(arg_0: Struct_3) -> vec3<u32> {
    global1 = array<Struct_2, 9>();
    var var_0 = func_4(Struct_2(true == global2.a.a, Struct_1(true, arg_0.a.b), Struct_1(true, vec3<u32>(global2.a.b.x, global2.a.b.x, global2.a.b.x)), vec4<i32>(-2147483647i, 12290i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), -1i), u_input.a.x), !(!arg_0.a.a), Struct_1(!func_3(global2.a.b.x), ~arg_0.a.b)) < max(u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(13116i, 27289i, 2147483647i, -183i), vec4<i32>(-1i, -42705i, 1i, u_input.a.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x)), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i)));
    var var_1 = Struct_2(any(select(select(select(vec3<bool>(true, global2.a.a, false), vec3<bool>(false, false, arg_0.a.a), vec3<bool>(arg_0.a.a, global2.a.a, arg_0.a.a)), select(vec3<bool>(false, false, global2.a.a), vec3<bool>(true, arg_0.a.a, false), arg_0.a.a), select(vec3<bool>(false, false, true), vec3<bool>(arg_0.a.a, false, arg_0.a.a), global2.a.a)), vec3<bool>(true, global2.a.a, true), !(!vec3<bool>(arg_0.a.a, false, true)))), Struct_1(false, ~_wgslsmith_add_vec3_u32(global2.a.b, global2.a.b)), global2.a, _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, ~u_input.a.x, 1i, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a))), _wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -98115i, 2900i, u_input.a.x), true), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -8363i)) << (firstLeadingBit(vec4<u32>(35402u, 4294967295u, arg_0.a.b.x, 74536u) >> (vec4<u32>(4294967295u, 6063u, 22041u, global2.a.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))), 2147483647i);
    global4 = array<Struct_3, 26>();
    global1 = array<Struct_2, 9>();
    return ~vec3<u32>(abs(~var_1.b.b.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x, 0u), vec4<u32>(var_1.b.b.x, 1u, global2.a.b.x, 5071u)) | ~arg_0.a.b.x, ~(global2.a.b.x ^ 0u)), 42613u);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec2<bool>) -> f32 {
    var var_0 = Struct_1(all(!select(!vec4<bool>(arg_2.x, true, true, global2.a.a), select(vec4<bool>(false, global2.a.a, arg_2.x, true), vec4<bool>(false, arg_1.a.a, arg_2.x, false), false), select(vec4<bool>(arg_1.a.a, true, global2.a.a, true), vec4<bool>(global2.a.a, global2.a.a, arg_2.x, arg_2.x), false))), select(min(global2.a.b & vec3<u32>(arg_1.a.b.x, 10456u, global2.a.b.x), abs(arg_1.a.b)) << (arg_1.a.b % vec3<u32>(32u)), arg_1.a.b, vec3<bool>(!arg_2.x, (29536i > u_input.a.x) & true, !any(vec2<bool>(false, arg_1.a.a)))));
    var var_1 = -1805f;
    var var_2 = Struct_1(!any(!(!vec3<bool>(true, true, arg_1.a.a))), func_2(arg_1) & select(vec3<u32>(0u, arg_1.a.b.x, arg_1.a.b.x) << (vec3<u32>(49286u, 0u, 110708u) % vec3<u32>(32u)), ~abs(vec3<u32>(53789u, 111468u, var_0.b.x)), !vec3<bool>(arg_1.a.a, global2.a.a, true)));
    let var_3 = Struct_2(!all(select(arg_2, vec2<bool>(true, false), true)) || ((false || !var_0.a) != global2.a.a), Struct_1(global2.a.a, vec3<u32>(_wgslsmith_mult_u32(var_2.b.x & 0u, ~34504u), max(_wgslsmith_sub_u32(1u, 0u), 4294967295u), abs(min(14424u, 101720u)))), Struct_1(true, vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(69093u, var_0.b.x, 0u), vec3<u32>(11652u, global2.a.b.x, arg_1.a.b.x)), firstLeadingBit(global2.a.b)), 24145u, arg_1.a.b.x)), _wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -35961i, -2147483647i, 2147483647i), ~vec4<i32>(-39177i, u_input.a.x, -23626i, u_input.a.x)), select(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(1i, 0i, abs(-2147483647i), u_input.a.x), (u_input.a.x > 2147483647i) | true)), abs(u_input.a.x));
    global3 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-518f)) * -677f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(711f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec2<f32>(275f, -340f), global4[_wgslsmith_index_u32(33224u, 26u)], vec2<bool>(true, global2.a.a))), _wgslsmith_f_op_f32(f32(-1f) * -1708f), global2.a.a == true)))));
    let var_1 = !(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(85812u, global2.a.b.x, global2.a.b.x), global2.a.b), ~abs(1u)) >= 0u);
    let var_2 = global4[_wgslsmith_index_u32(global2.a.b.x, 26u)];
    let var_3 = var_2.a;
    global2 = Struct_3(Struct_1(!(var_2.a.b.x >= (12905u << (var_2.a.b.x % 32u))), global2.a.b >> (max(vec3<u32>(global2.a.b.x, global2.a.b.x, 1u), var_3.b) % vec3<u32>(32u))));
    global0 = array<vec3<i32>, 5>();
    var var_4 = ~reverseBits(global2.a.b.xy) | ~(~(global2.a.b.zy << (var_3.b.yz % vec2<u32>(32u))));
    let var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(31843u, global2.a.b.x), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -295f), -1594f, false)))), firstTrailingBit(_wgslsmith_add_vec4_i32(-(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)), -vec4<i32>(1i, 0i, u_input.a.x, u_input.a.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(14563u, global2.a.b.x, var_3.b.x, var_4.x), vec4<u32>(4294967295u, var_4.x, 4294967295u, global2.a.b.x)) % vec4<u32>(32u)))), -2147483647i, vec3<f32>(270f, var_0.x, var_0.x));
}

