struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(0u, 4294967295u), vec3<bool>(false, true, true), 22002i);

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec2<u32>(1u, 103232u), vec3<bool>(false, true, true), 2147483647i), Struct_3(vec2<u32>(4294967295u, 95314u), vec3<bool>(false, false, false), -34928i), Struct_3(vec2<u32>(82862u, 1u), vec3<bool>(true, true, true), 110685i), Struct_3(vec2<u32>(21800u, 1u), vec3<bool>(true, false, false), -32624i), Struct_3(vec2<u32>(21358u, 4294967295u), vec3<bool>(true, true, false), -26807i), Struct_3(vec2<u32>(0u, 14719u), vec3<bool>(false, true, true), i32(-2147483648)), Struct_3(vec2<u32>(33711u, 4294967295u), vec3<bool>(true, true, false), 2147483647i), Struct_3(vec2<u32>(99985u, 1u), vec3<bool>(true, false, true), 5918i), Struct_3(vec2<u32>(0u, 39884u), vec3<bool>(false, true, true), 0i), Struct_3(vec2<u32>(112439u, 74449u), vec3<bool>(true, false, false), 12423i), Struct_3(vec2<u32>(6450u, 1u), vec3<bool>(false, false, false), 2147483647i));

var<private> global2: array<u32, 8> = array<u32, 8>(1u, 0u, 6699u, 1u, 55512u, 1u, 12869u, 26846u);

var<private> global3: array<u32, 12>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<i32>) -> i32 {
    global1 = array<Struct_3, 11>();
    return -7296i;
}

fn func_3(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(-665f, 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(637f - 634f))), -1287f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(1479f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1243f) - -108f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-157f)))), -1427f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-237f)) - _wgslsmith_div_f32(1430f, -421f)), 450f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-313f))), _wgslsmith_f_op_f32(step(1114f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), select(select(select(vec4<bool>(false, arg_0.b.x, true, global0.b.x), vec4<bool>(global0.b.x, true, true, global0.b.x), vec4<bool>(arg_0.b.x, true, true, global0.b.x)), !vec4<bool>(true, false, arg_0.b.x, arg_0.b.x), select(vec4<bool>(arg_0.b.x, true, true, false), vec4<bool>(arg_0.b.x, global0.b.x, global0.b.x, false), vec4<bool>(true, arg_0.b.x, global0.b.x, false))), !(!vec4<bool>(global0.b.x, false, global0.b.x, arg_0.b.x)), arg_0.b.x))));
    global1 = array<Struct_3, 11>();
    let var_1 = abs(~global0.a);
    var var_2 = -2147483647i;
    let var_3 = select(any(arg_0.b.zy), true | any(!vec4<bool>(global0.b.x, arg_0.b.x, false, global0.b.x)), true);
    return arg_0;
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    global0 = Struct_3(reverseBits(global0.a), func_3(func_3(Struct_3(~vec2<u32>(0u, u_input.d.x), select(arg_0.b, vec3<bool>(true, false, arg_0.b.x), false), 566i))).b, 6082i);
    var var_0 = ((select(all(vec2<bool>(arg_0.b.x, true)), true, select(arg_0.b.x, true, true)) || (1i > -arg_0.c)) | global0.b.x) && global0.b.x;
    global0 = func_3(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(39638u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 12u)])), vec2<u32>(global2[_wgslsmith_index_u32(global0.a.x, 8u)], 26579u) ^ ~u_input.d.yx), 11u)]);
    let var_1 = Struct_1(_wgslsmith_div_u32(4294967295u, ~(~14898u << (0u % 32u))), arg_0.b.xz);
    global3 = array<u32, 12>();
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(140f, -659f)) - _wgslsmith_f_op_f32(239f - 1265f)))), -933f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-437f)))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global3 = array<u32, 12>();
    var var_0 = select(select(global0.b.zy, select(select(global0.b.yy, vec2<bool>(true, false), !global0.b.x), select(select(global0.b.xx, vec2<bool>(false, global0.b.x), vec2<bool>(global0.b.x, false)), vec2<bool>(true, true), global0.b.x), global0.b.yy), select(select(global0.b.xx, select(vec2<bool>(global0.b.x, global0.b.x), global0.b.xz, true), true), select(!global0.b.yy, global0.b.yy, false), all(select(vec2<bool>(global0.b.x, global0.b.x), vec2<bool>(false, global0.b.x), true)))), !global0.b.zx, global0.b.x);
    var var_1 = func_4(func_3(Struct_3(vec2<u32>(~4294967295u, 4294967295u), global0.b, func_2(Struct_2(arg_0.a), Struct_1(14451u, vec2<bool>(var_0.x, true)), abs(global0.a), ~vec2<i32>(47353i, global0.c)))));
    let var_2 = arg_0;
    let var_3 = global0.c;
    return var_2;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    let var_0 = func_1(func_4(func_3(Struct_3(_wgslsmith_add_vec2_u32(u_input.d.xy, arg_2.zx), !vec3<bool>(true, global0.b.x, global0.b.x), ~u_input.b.x))));
    let var_1 = select(~vec3<i32>(reverseBits(func_2(var_0, Struct_1(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6234u, 12u)], 8u)], global0.b.zy), vec2<u32>(114926u, global3[_wgslsmith_index_u32(arg_2.x, 12u)]), vec2<i32>(u_input.a.x, u_input.a.x))), -66797i, -10020i), ~min(abs(firstTrailingBit(vec3<i32>(-25753i, global0.c, global0.c))), vec3<i32>(u_input.a.x, 3036i, u_input.a.x)), true);
    var var_2 = abs(global0.c);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(func_5(func_1(Struct_2(vec3<f32>(_wgslsmith_div_f32(-463f, 370f), -1986f, _wgslsmith_f_op_f32(-518f + -236f)))), 118f, _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, u_input.c, ~u_input.d.x, 12501u), countOneBits(reverseBits(u_input.d ^ u_input.d)))), 11u)];
    global3 = array<u32, 12>();
    var var_1 = Struct_3(_wgslsmith_mult_vec2_u32(reverseBits(u_input.d.yx), vec2<u32>(abs(~u_input.d.x), countOneBits(0u))), select(vec3<bool>(func_3(global1[_wgslsmith_index_u32(abs(global0.a.x), 11u)]).b.x, true, false), !var_0.b, false), func_2(Struct_2(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -372f), 791f)), Struct_1(countOneBits(global0.a.x), !vec2<bool>(var_0.b.x, true)), ~_wgslsmith_clamp_vec2_u32(countOneBits(var_0.a), vec2<u32>(25551u, global0.a.x), var_0.a), u_input.a));
    global3 = array<u32, 12>();
    var var_2 = _wgslsmith_mult_i32(-global0.c, _wgslsmith_mult_i32(u_input.b.x, var_1.c));
    var_1 = Struct_3(abs(var_1.a), global0.b, _wgslsmith_add_i32(abs(_wgslsmith_mult_i32(var_1.c, 1i) << (1u % 32u)), firstTrailingBit(17756i) & -61211i));
    let var_3 = Struct_1(_wgslsmith_add_u32(func_5(Struct_2(vec3<f32>(869f, 292f, 1553f)), _wgslsmith_f_op_f32(ceil(795f)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(global0.a.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a.x, 8u)], 12u)], var_0.a.x, global3[_wgslsmith_index_u32(var_1.a.x, 12u)])), u_input.d)), abs(u_input.d.x)), var_1.b.yx);
    var var_4 = vec2<f32>(1461f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1234f) - -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~1u), ~u_input.a, -1301f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(~3326u, 11u)]).a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x * 1179f))) * var_4.x));
}

