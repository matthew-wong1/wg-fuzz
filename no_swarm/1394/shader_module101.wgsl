struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1072f;

var<private> global1: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(199f, 887f, -918f, 396f), vec4<f32>(-1000f, 1652f, 201f, -118f), vec4<f32>(-237f, -727f, 1000f, -462f), vec4<f32>(-1000f, -388f, 330f, 1000f), vec4<f32>(-1000f, 1132f, 1586f, -1000f), vec4<f32>(1668f, -1113f, 1030f, 191f), vec4<f32>(-682f, 144f, 191f, -2412f), vec4<f32>(809f, 110f, -405f, 671f), vec4<f32>(-2034f, -1000f, -650f, -620f), vec4<f32>(2539f, 724f, -438f, 695f), vec4<f32>(209f, 364f, 1957f, 105f), vec4<f32>(1899f, -987f, -984f, -696f), vec4<f32>(648f, 293f, -453f, -1882f), vec4<f32>(-1120f, -1447f, -1000f, -100f), vec4<f32>(274f, -1000f, -1073f, -2490f), vec4<f32>(-1390f, 1322f, 221f, -1615f), vec4<f32>(-1000f, 1022f, 1218f, 1250f), vec4<f32>(-339f, 440f, 248f, 272f), vec4<f32>(-295f, -963f, -453f, 1628f), vec4<f32>(-875f, 1153f, -676f, -499f), vec4<f32>(277f, -643f, 543f, 2969f));

var<private> global2: array<u32, 8> = array<u32, 8>(49536u, 0u, 33297u, 0u, 32783u, 4294967295u, 3497u, 0u);

var<private> global3: Struct_2 = Struct_2(vec3<u32>(0u, 25174u, 4294967295u), vec4<i32>(-7190i, 51824i, 38559i, 0i), Struct_1(vec3<f32>(558f, 286f, 106f)));

var<private> global4: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec3<i32> {
    return vec3<i32>(_wgslsmith_mult_i32(global3.b.x, _wgslsmith_mult_i32(u_input.c, abs(1i) << (global2[_wgslsmith_index_u32(2161u, 8u)] % 32u))), u_input.c & countOneBits(_wgslsmith_clamp_i32(min(u_input.c, u_input.c), -1i, -global3.b.x)), _wgslsmith_dot_vec3_i32(global3.b.wzw, vec3<i32>(_wgslsmith_add_i32(0i, u_input.c), u_input.c, select(-45652i, 1i, arg_2)) & abs(~global3.b.xyy)));
}

fn func_2() -> Struct_2 {
    global3 = Struct_2(firstTrailingBit(global3.a), global3.b, Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(global3.c.a.x)), _wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_f_op_f32(-997f + 1106f)), global3.c.a, !all(vec2<bool>(true, true))))));
    var var_0 = Struct_2(~vec3<u32>(~_wgslsmith_add_u32(50365u, u_input.d.x), 32309u, abs(global2[_wgslsmith_index_u32(0u, 8u)]) >> (min(1u, global3.a.x) % 32u)), vec4<i32>(1i, 39074i, -29541i, 2147483647i), global3.c);
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(~1u, var_0.a.x), 4294967295u, var_0.a.x, 1u);
    var var_2 = _wgslsmith_f_op_f32(ceil(global3.c.a.x));
    let var_3 = 2530u;
    return Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(max(~var_0.a.x, global2[_wgslsmith_index_u32(22132u, 8u)] & 12439u), global2[_wgslsmith_index_u32(0u, 8u)], var_3), _wgslsmith_sub_vec3_u32(~min(vec3<u32>(u_input.a.x, 1u, 68482u), var_1.xzx), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(global3.a, vec3<u32>(4294967295u, var_0.a.x, global2[_wgslsmith_index_u32(38267u, 8u)])), _wgslsmith_mod_vec3_u32(vec3<u32>(25317u, global2[_wgslsmith_index_u32(var_3, 8u)], var_3), vec3<u32>(global2[_wgslsmith_index_u32(var_3, 8u)], 37358u, var_3))))), vec4<i32>(_wgslsmith_mod_i32(u_input.c ^ var_0.b.x, 1i), _wgslsmith_dot_vec3_i32(func_3(var_0.c, var_0.c, true), vec3<i32>(countOneBits(global3.b.x), 29351i, var_0.b.x)), var_0.b.x, _wgslsmith_add_i32(1i, _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(var_0.b.yw, vec2<i32>(15218i, var_0.b.x))))), Struct_1(var_0.c.a));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(222f, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-global3.c.a.x)))));
    let var_1 = vec3<f32>(1037f, -457f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-375f)), var_0.x, true)), arg_0));
    let var_2 = min(arg_1.a.x, ~arg_1.a.x << (_wgslsmith_mult_u32(~arg_1.a.x >> (select(u_input.b.x, global3.a.x, true) % 32u), u_input.a.x) % 32u));
    var var_3 = !arg_3;
    var_3 = true;
    return true;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: vec3<f32>) -> vec3<bool> {
    var var_0 = global3.c.a.xx;
    return vec3<bool>(!arg_1, true, false || any(select(!vec4<bool>(arg_1, arg_2, false, true), vec4<bool>(arg_1, true, false, false), true && arg_2)));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 4294967295u;
    return func_2().c;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    global4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.a.x) - -969f), 1f);
    let var_0 = 4294967295u;
    global4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global3.c.a.yy)), global3.c.a.yx);
    let var_1 = func_6(select(func_5(~global2[_wgslsmith_index_u32(1u, 8u)] | 4731u, func_4(_wgslsmith_f_op_f32(global4.x - 623f), func_2(), arg_0.x | arg_0.x, !arg_0.x), arg_0.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(407f, -2186f, -554f) * global3.c.a))), !arg_0.wzw, any(select(func_5(global3.a.x, true, false, global3.c.a).yz, vec2<bool>(false, true), func_5(4760u, arg_0.x, false, global3.c.a).zy))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.c.a)))), func_2().c, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global3.c.a.x, global3.c.a.x)) * vec3<f32>(-745f, 617f, func_2().c.a.x))));
    let var_2 = 43631u;
    return all(arg_0);
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = u_input.d;
    global3 = arg_3;
    var var_1 = arg_2.zww;
    let var_2 = true != (arg_2.x || all(!(!var_1.zz)));
    var var_3 = 4294967295u;
    return StorageBuffer(var_0.x, arg_3.c.a.x, -1i, ~(abs(vec3<u32>(u_input.d.x, arg_3.a.x, global2[_wgslsmith_index_u32(29770u, 8u)])) ^ arg_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(24838u, _wgslsmith_add_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], global3.a.x) << (global2[_wgslsmith_index_u32(37206u, 8u)] % 32u), u_input.b.x), ~(29379u >> (u_input.b.x % 32u)), global3.a.x), vec4<u32>(4294967295u, ~45020u, global3.a.x, 0u));
    let x = u_input.a;
    s_output = func_7(vec3<u32>(~global2[_wgslsmith_index_u32(55173u, 8u)], 36078u << (reverseBits(select(global3.a.x, var_0.x, false)) % 32u), global3.a.x), global3.c, !vec4<bool>(true, false, any(vec3<bool>(true, true, true)), func_1(vec4<bool>(true, true, true, true))), Struct_2(~firstTrailingBit(vec3<u32>(46172u, 1u, global2[_wgslsmith_index_u32(1u, 8u)]) >> (u_input.b.wzz % vec3<u32>(32u))), -(global3.b << (firstTrailingBit(var_0) % vec4<u32>(32u))), func_2().c));
}

