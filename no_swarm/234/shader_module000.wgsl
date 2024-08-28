struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: Struct_2 = Struct_2(0u, vec4<f32>(651f, -571f, -466f, -1117f), Struct_1(598f, vec4<u32>(0u, 55899u, 0u, 0u), vec3<bool>(false, true, false), 1u, vec4<u32>(1u, 1u, 4294967295u, 17667u)), Struct_1(-563f, vec4<u32>(0u, 32935u, 63410u, 58494u), vec3<bool>(false, false, false), 4294967295u, vec4<u32>(1u, 1u, 4294967295u, 29344u)), vec4<f32>(2212f, -586f, 1460f, 1000f));

var<private> global2: vec3<u32>;

var<private> global3: Struct_2 = Struct_2(4294967295u, vec4<f32>(1233f, 760f, -399f, -1379f), Struct_1(-1025f, vec4<u32>(0u, 93768u, 113u, 1u), vec3<bool>(true, false, false), 0u, vec4<u32>(16866u, 10582u, 110910u, 1u)), Struct_1(-390f, vec4<u32>(3508u, 9517u, 4294967295u, 53881u), vec3<bool>(false, true, false), 4294967295u, vec4<u32>(0u, 0u, 0u, 18704u)), vec4<f32>(789f, 143f, -1000f, 1578f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = global0[_wgslsmith_index_u32(global2.x, 22u)];
    var var_1 = select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.a.x), abs(u_input.a.xy) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -1i), ~u_input.a.zx)), ~vec2<i32>(0i, _wgslsmith_dot_vec3_i32(u_input.a.yyx << (vec3<u32>(var_0.d, 0u, 43507u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, u_input.a.x), u_input.a.wzz, vec3<i32>(44231i, u_input.b, -2147483647i)))), !all(!select(global1.c.c.zy, vec2<bool>(var_0.c.x, global3.c.c.x), vec2<bool>(global3.c.c.x, false))));
    global2 = vec3<u32>(global2.x, ~2892u, 70187u);
    var var_2 = global2.xx;
    var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(var_1.x, -2147483647i), -1i), vec2<i32>(var_1.x, 2147483647i));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -760f), global3.c.a, _wgslsmith_f_op_f32(-global1.c.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global1.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1926f, -633f, global1.b.x, var_0.a))), _wgslsmith_f_op_vec4_f32(-global3.b)))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = select(!arg_0.d.c, vec3<bool>(arg_0.d.c.x, arg_0.d.c.x, any(select(!vec4<bool>(true, false, true, arg_1.c.c.x), select(vec4<bool>(global3.d.c.x, arg_1.d.c.x, global1.c.c.x, false), vec4<bool>(true, true, global3.d.c.x, false), false), !global3.c.c.x))), arg_0.c.c.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1561f - arg_0.c.a), _wgslsmith_div_f32(global3.c.a, _wgslsmith_f_op_f32(step(arg_0.c.a, arg_0.b.x))))) * _wgslsmith_f_op_f32(-511f + _wgslsmith_f_op_f32(floor(177f)))));
    global1 = Struct_2(reverseBits(1u) & (abs(u_input.c) ^ ~(u_input.c ^ 19722u)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), -101f, _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_vec4_f32(func_3()).x))), global0[_wgslsmith_index_u32(firstTrailingBit(arg_1.d.d), 22u)], arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1359f, -1327f, global1.d.a, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, arg_0.e.x, global1.d.a, -579f) * vec4<f32>(-217f, -441f, var_1, global3.d.a))) - global1.e)));
    var var_2 = Struct_3(countOneBits(arg_0.a), _wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(29902u, global3.d.d), select(global1.d.b.yw, arg_1.d.b.wz, var_0.x)), ~_wgslsmith_sub_vec2_u32(arg_0.d.e.zz, arg_1.c.e.zz), arg_1.c.b.yy), arg_0.c, true);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.b)), vec4<f32>(global3.e.x, global1.c.a, _wgslsmith_f_op_f32(-global3.d.a), 1000f))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.e)), _wgslsmith_f_op_vec4_f32(floor(global3.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2441f, -504f, global3.c.a, 1244f)))));
    return ~0u;
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global3 = Struct_2(func_4(Struct_2(8249u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(747f, global1.d.a, -1000f, -626f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(224f, global3.b.x, 1545f, global1.e.x), global3.b))), global3.c, global3.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))), Struct_2((0u | global3.c.e.x) << ((u_input.c << (5657u % 32u)) % 32u), global1.b, global1.d, Struct_1(_wgslsmith_f_op_f32(1006f + global1.b.x), _wgslsmith_div_vec4_u32(global1.d.b, vec4<u32>(global1.a, 30664u, 0u, global1.c.b.x)), global3.d.c, _wgslsmith_dot_vec3_u32(global3.c.b.xyy, vec3<u32>(57436u, u_input.c, 0u)), vec4<u32>(global2.x, 0u, u_input.c, global3.a)), vec4<f32>(136f, global3.b.x, _wgslsmith_f_op_f32(floor(-115f)), global3.c.a))), global3.e, global1.d, global0[_wgslsmith_index_u32(global1.a, 22u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global3.b, global3.e) * global1.b))));
    let var_0 = _wgslsmith_dot_vec3_u32(abs(~(~global3.c.e.yyy)), ~global1.d.e.xxy << (countOneBits(vec3<u32>(u_input.c, 1u, 1286u) | (global1.c.b.zyz << (vec3<u32>(1u, global2.x, 0u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    global1 = Struct_2(u_input.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.e.x + global3.b.x) - _wgslsmith_div_f32(global3.b.x, global3.d.a)) * -2137f), global3.b.x, global3.d.a, global1.d.a), global0[_wgslsmith_index_u32(~global1.d.e.x, 22u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global3.d.d, 1u, 4791u), vec3<u32>(~1u, global2.x, ~u_input.c)), _wgslsmith_div_u32(0u, ~213u)), 22u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1086f), _wgslsmith_f_op_f32(-global1.c.a), _wgslsmith_div_f32(844f, global1.e.x), 1012f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-978f, 1000f, -767f, 1098f) * global3.e)))));
    global1 = Struct_2(var_0, global1.b, global0[_wgslsmith_index_u32(var_0, 22u)], global3.c, _wgslsmith_f_op_vec4_f32(trunc(global1.e)));
    global2 = ~max(vec3<u32>(u_input.c, global1.c.e.x, ~(~5681u)), ~(~(~vec3<u32>(u_input.c, 24249u, u_input.c))));
    return Struct_2(u_input.c, global1.b, Struct_1(_wgslsmith_f_op_f32(sign(-1360f)), ~countOneBits(~global3.d.b), !vec3<bool>(global1.d.c.x, global3.c.c.x, false & global3.d.c.x), ~4294967295u, _wgslsmith_div_vec4_u32(vec4<u32>(~global1.c.d, global3.c.b.x, global1.c.b.x, global3.a >> (global2.x % 32u)), vec4<u32>(1u, 27052u, 1u, select(11115u, 9486u, global3.c.c.x)))), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(min(global3.c.d ^ 1u, 4294967295u), ~var_0 | global1.c.d, _wgslsmith_sub_u32(global3.a ^ 4294967295u, ~u_input.c))), 22u)], vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b.x))) * _wgslsmith_f_op_f32(select(global3.b.x, 190f, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-741f * -777f))), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.b.x)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    var var_0 = ~(i32(-1i) * -34753i);
    global3 = func_2(vec3<i32>(u_input.a.x, -5143i, 20734i));
    let var_1 = arg_1.a;
    global1 = func_2(~(~u_input.a.wzx));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.b.xx + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-353f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(826f)))))) * global1.b.yz);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(174f, firstTrailingBit(vec4<u32>(global3.c.d, ~_wgslsmith_dot_vec3_u32(global1.c.b.xwy, global1.d.b.zxw), 97145u, 0u)), select(select(select(vec3<bool>(false, true, true), !global1.d.c, all(global1.c.c)), !(!vec3<bool>(global1.d.c.x, true, true)), vec3<bool>(func_1(vec4<u32>(4294967295u, 26232u, 4294967295u, 17956u), global0[_wgslsmith_index_u32(0u, 22u)]), all(vec4<bool>(global3.d.c.x, global3.d.c.x, false, true)), func_1(global1.d.b, Struct_1(-507f, vec4<u32>(global3.a, 4294967295u, u_input.c, global1.d.e.x), vec3<bool>(true, true, true), 22447u, global1.c.b)))), func_2(-vec3<i32>(u_input.a.x, u_input.b, -2147483647i) >> (_wgslsmith_mult_vec3_u32(global3.d.e.zwy, vec3<u32>(global2.x, global2.x, u_input.c)) % vec3<u32>(32u))).d.c, all(global1.c.c)), ~(~_wgslsmith_clamp_u32(1u, 0u, 0u >> (u_input.c % 32u))), vec4<u32>(abs(29453u), global2.x, 55746u, _wgslsmith_sub_u32(reverseBits(global2.x), countOneBits(u_input.c)) & ~_wgslsmith_sub_u32(249u, 1u)));
    var var_1 = u_input.b & ~u_input.a.x;
    let var_2 = -19828i;
    global3 = func_2(select(max(u_input.a.zwx << (global1.d.e.wwy % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_2, u_input.a.x), u_input.a.ywz, -u_input.a.xwy)), vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, var_2), _wgslsmith_clamp_i32(abs(-1169i), min(42376i, var_2), countOneBits(var_2)), 69065i), var_0.c.x));
    let var_3 = vec2<i32>(var_2, _wgslsmith_mod_i32(max(1i, u_input.b), -(~u_input.a.x)) << (4294967295u % 32u));
    global2 = firstLeadingBit(var_0.e.wyx);
    global2 = _wgslsmith_mult_vec3_u32(global3.c.e.yzx, global1.c.e.wxw);
    let var_4 = abs(~0u);
    global2 = ~vec3<u32>(~(~var_4), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_4, u_input.c, 4294967295u, 0u)), ~global3.d.b), 37919u ^ select(u_input.c, 0u, var_0.c.x)) & global1.c.b.xxz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, _wgslsmith_sub_i32(-u_input.a.x, var_2), var_2), _wgslsmith_mod_vec3_i32(u_input.a.zyz, vec3<i32>(-2110i, _wgslsmith_dot_vec4_i32(vec4<i32>(-68221i, -2147483647i, u_input.b, -22390i), vec4<i32>(var_3.x, var_3.x, 1i, -39445i)), u_input.a.x))), max(~select(global1.c.e.yyz, vec3<u32>(30125u, global1.a, var_0.d), all(vec2<bool>(true, false))), _wgslsmith_div_vec3_u32(global1.c.e.wwy, var_0.e.yxw)), global3.c.e, global1.e.x);
}

