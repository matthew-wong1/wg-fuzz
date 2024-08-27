struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(i32(-2147483648), 1i), true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>) -> vec2<i32> {
    global1 = Struct_2(u_input.b.yx, true);
    global0 = array<f32, 32>();
    let var_0 = 9836i;
    global1 = Struct_2(vec2<i32>(0i << (1u % 32u), _wgslsmith_div_i32((i32(-1i) * -40309i) << (u_input.a % 32u), _wgslsmith_sub_i32(i32(-1i) * -23475i, var_0))), true);
    let var_1 = _wgslsmith_clamp_i32(2147483647i & (-_wgslsmith_clamp_i32(-16109i, global1.a.x, u_input.d.x) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) ^ u_input.a) % 32u)), -select(i32(-1i) * -45649i, arg_1.x, true), _wgslsmith_dot_vec2_i32(u_input.d.xy, u_input.b.xy));
    return select(vec2<i32>(_wgslsmith_mult_i32(1i, -1i) & (firstLeadingBit(var_0) ^ firstLeadingBit(-1i)), u_input.b.x), global1.a, select(arg_0.x, !global1.b, !any(!arg_0)));
}

fn func_2() -> Struct_2 {
    global0 = array<f32, 32>();
    let var_0 = Struct_2(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.a.x, u_input.b.x), func_3(vec3<bool>(global1.b, false, global1.b), global1.a)) << (vec2<u32>(_wgslsmith_add_u32(u_input.a, 49479u), firstLeadingBit(u_input.a)) % vec2<u32>(32u)), func_3(!vec3<bool>(true, global1.b, false), -u_input.d.yw) ^ _wgslsmith_mod_vec2_i32(firstLeadingBit(global1.a), ~vec2<i32>(1i, u_input.b.x))), true);
    global1 = Struct_2(vec2<i32>(var_0.a.x, (global1.a.x ^ _wgslsmith_add_i32(12559i, global1.a.x)) & 4667i), false);
    global0 = array<f32, 32>();
    var var_1 = u_input.a;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    var var_0 = u_input.c != select(func_3(vec3<bool>(true, u_input.c > global1.a.x, any(vec2<bool>(global1.b, false))), vec2<i32>(1i, 1i) | vec2<i32>(arg_0.a.x, arg_0.a.x)).x, ~u_input.b.x, all(vec3<bool>(arg_0.b, u_input.a < 4294967295u, 0u != u_input.a)));
    let var_1 = Struct_3(Struct_1(arg_1, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-2007f, 416f), _wgslsmith_f_op_f32(933f - global0[_wgslsmith_index_u32(0u, 32u)])), vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)]), global0[_wgslsmith_index_u32(~4294967295u, 32u)])), -2147483647i), 4294967295u);
    let var_2 = -_wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, arg_0.a.x), _wgslsmith_sub_i32(-(var_1.a.c ^ u_input.c), ~var_1.a.c));
    var_0 = global1.b;
    let var_3 = arg_0;
    return var_1;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = !select(true, true, !any(vec3<bool>(false, arg_1.b, arg_1.b)));
    global0 = array<f32, 32>();
    var var_1 = func_4(func_2(), global1.b);
    global0 = array<f32, 32>();
    let var_2 = min(u_input.d.wzz, firstTrailingBit(~select(u_input.d.xxw, arg_3, false)) ^ abs(_wgslsmith_mult_vec3_i32(u_input.d.yxx, arg_3)));
    return func_4(func_2(), (!any(vec4<bool>(false, true, arg_1.b, var_1.a.a)) || func_2().b) && true);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<u32>) -> vec2<i32> {
    var var_0 = select(vec4<bool>(arg_1.a.a, func_1(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.b.x * 950f), 1000f, arg_1.a.b.x), arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(55249u, 32u)], 525f, 760f), vec4<f32>(-1923f, global0[_wgslsmith_index_u32(4294967295u, 32u)], -489f, global0[_wgslsmith_index_u32(3427u, 32u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1413f, -1530f, global0[_wgslsmith_index_u32(arg_3.x, 32u)], -926f) * vec4<f32>(658f, global0[_wgslsmith_index_u32(u_input.a, 32u)], arg_1.a.b.x, -257f))), ~(u_input.d.yxy << (vec3<u32>(0u, arg_1.b, arg_1.b) % vec3<u32>(32u)))).a.a, arg_2.b, true), vec4<bool>(func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a.b.x, arg_1.a.b.x, -1113f), vec3<f32>(arg_1.a.b.x, -1207f, global0[_wgslsmith_index_u32(44635u, 32u)]))), vec3<f32>(1005f, arg_1.a.b.x, global0[_wgslsmith_index_u32(arg_3.x, 32u)]), vec3<bool>(false, false, arg_0.x))), arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(22337u, 32u)], global0[_wgslsmith_index_u32(42913u, 32u)], global0[_wgslsmith_index_u32(28527u, 32u)]))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(350f, arg_1.a.b.x, 155f, arg_1.a.b.x) * vec4<f32>(-694f, arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x))), min(vec3<i32>(global1.a.x, u_input.b.x, global1.a.x), vec3<i32>(global1.a.x, global1.a.x, 0i)) >> (vec3<u32>(u_input.a, arg_1.b, 1u) % vec3<u32>(32u))).a.a, all(!(!vec4<bool>(false, false, true, arg_2.b))), any(!vec4<bool>(true, true, global1.b, true)), false), select(vec4<bool>(!any(vec2<bool>(true, arg_0.x)), global1.b, false, all(!vec2<bool>(true, global1.b))), !(!(!vec4<bool>(true, true, global1.b, arg_1.a.a))), select(select(select(vec4<bool>(arg_0.x, arg_2.b, arg_2.b, true), vec4<bool>(false, global1.b, global1.b, arg_1.a.a), arg_0.x), !vec4<bool>(false, false, false, arg_2.b), any(vec3<bool>(arg_0.x, global1.b, false))), !select(vec4<bool>(arg_2.b, true, false, true), vec4<bool>(arg_0.x, false, global1.b, true), false), !(!vec4<bool>(true, global1.b, false, arg_1.a.a)))));
    var_0 = select(!(!select(select(vec4<bool>(true, arg_1.a.a, false, arg_2.b), vec4<bool>(true, false, true, global1.b), vec4<bool>(arg_1.a.a, arg_0.x, false, false)), vec4<bool>(var_0.x, arg_1.a.a, true, arg_0.x), !vec4<bool>(var_0.x, arg_2.b, true, var_0.x))), !select(vec4<bool>(true, true, arg_0.x, all(var_0.wyx)), vec4<bool>(u_input.a >= 4294967295u, arg_1.a.a, arg_1.a.a, func_1(vec3<f32>(-219f, -1743f, 1450f), Struct_2(vec2<i32>(-80783i, arg_1.a.c), false), vec4<f32>(arg_1.a.b.x, -1689f, global0[_wgslsmith_index_u32(1u, 32u)], -376f), u_input.d.zyz).a.a), true), false);
    let var_1 = Struct_3(Struct_1(true, arg_1.a.b, 1i), _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.a, 111041u, arg_3.x))), vec3<u32>(63761u, arg_3.x, 16300u)));
    var var_2 = u_input.d.zzz;
    let var_3 = max(~abs(~firstTrailingBit(vec4<u32>(arg_3.x, 1u, arg_3.x, 14693u))), max(vec4<u32>(var_1.b, 0u, _wgslsmith_dot_vec2_u32(abs(arg_3), arg_3), 20924u), min(vec4<u32>(1u, ~arg_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.b, 4294967295u, u_input.a), vec4<u32>(var_1.b, 14361u, arg_3.x, var_1.b)), _wgslsmith_sub_u32(u_input.a, arg_3.x)), max(firstTrailingBit(vec4<u32>(u_input.a, 0u, 0u, u_input.a)), vec4<u32>(0u, arg_1.b, 14699u, arg_3.x)))));
    return _wgslsmith_mod_vec2_i32(vec2<i32>(global1.a.x | (-1i << (countOneBits(arg_1.b) % 32u)), select(arg_1.a.c, _wgslsmith_add_i32(-2147483647i, arg_2.a.x), global1.b)), -vec2<i32>(_wgslsmith_sub_i32(1i, u_input.b.x), var_2.x) ^ reverseBits(arg_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(_wgslsmith_div_vec2_i32(abs(func_5(vec3<bool>(global1.b, false, global1.b), func_1(vec3<f32>(989f, -365f, 360f), Struct_2(u_input.d.zx, false), vec4<f32>(global0[_wgslsmith_index_u32(0u, 32u)], 658f, 608f, global0[_wgslsmith_index_u32(u_input.a, 32u)]), vec3<i32>(global1.a.x, u_input.d.x, u_input.b.x)), Struct_2(vec2<i32>(-1i, -40211i), true), select(vec2<u32>(14374u, u_input.a), vec2<u32>(u_input.a, 4954u), vec2<bool>(global1.b, true)))), ~u_input.d.xx), global1.b);
    var var_0 = firstTrailingBit(vec3<i32>(global1.a.x, 2147483647i, _wgslsmith_clamp_i32(-2147483647i, reverseBits(0i), -(u_input.c >> (u_input.a % 32u)))));
    global0 = array<f32, 32>();
    global1 = func_2();
    var_0 = min(~min(max(vec3<i32>(5875i, global1.a.x, u_input.b.x), u_input.b), ~(-u_input.b)), u_input.b);
    var_0 = abs(~(~vec3<i32>(u_input.b.x, var_0.x, 0i)) | _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(global1.a.x, var_0.x, u_input.b.x))) ^ vec3<i32>(14913i, u_input.c, ~global1.a.x);
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1564f)), 2499f), _wgslsmith_f_op_f32(trunc(-264f)), _wgslsmith_f_op_f32(f32(-1f) * -507f));
    let var_2 = Struct_2(func_5(!select(select(vec3<bool>(global1.b, true, false), vec3<bool>(false, true, global1.b), vec3<bool>(false, global1.b, false)), vec3<bool>(true, global1.b, global1.b), false | global1.b), Struct_3(Struct_1(select(global1.b, true, global1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1288f, -1233f)), i32(-1i) * -54131i), u_input.a), Struct_2((u_input.b.xz << (vec2<u32>(1u, 0u) % vec2<u32>(32u))) >> (max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 17357u)) % vec2<u32>(32u)), false), select(~vec2<u32>(4294967295u, u_input.a) & vec2<u32>(4294967295u, 0u), vec2<u32>(2290u, min(u_input.a, 4294967295u)), false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1299f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(countOneBits(28918u), 32u)])), func_4(Struct_2(abs(var_2.a), global1.b), true).a.b.x, global0[_wgslsmith_index_u32(u_input.a, 32u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(-1125f, var_1.x))) + 1297f), u_input.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(444f)))));
}

