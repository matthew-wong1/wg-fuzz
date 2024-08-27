struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<f32, 20>;

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_3, 22>;

var<private> global4: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = global4.x;
    let var_1 = _wgslsmith_mult_u32(0u, ~firstLeadingBit(arg_2.d.x));
    var var_2 = Struct_3(4294967295u);
    global1 = array<f32, 20>();
    global3 = array<Struct_3, 22>();
    return 1i;
}

fn func_1() -> i32 {
    var var_0 = ~vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(2831u, 1u, 0u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u))), max(reverseBits(_wgslsmith_div_u32(0u, 67503u)), abs(4294967295u)));
    let var_1 = var_0.x;
    var_0 = abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.x, 13493u), ~(~(~vec2<u32>(7356u, var_0.x)))));
    var var_2 = global0[_wgslsmith_index_u32(reverseBits(~1u), 12u)];
    global3 = array<Struct_3, 22>();
    return ~(-((func_2(var_2.d.d.xx, vec4<u32>(53109u, 0u, 4294967295u, 14707u), var_2.d) & _wgslsmith_add_i32(52009i, 1i)) ^ (i32(-1i) * -1i)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 15165u, 1u), 20u)])))) != _wgslsmith_f_op_f32(-arg_1.x);
    var var_1 = global0[_wgslsmith_index_u32(~1u, 12u)];
    let var_2 = vec4<i32>(~global2.x | 15842i, -1i, ~(0i >> (var_1.a % 32u)), func_2(~var_1.d.d.zz, reverseBits(~vec4<u32>(31316u, 34935u, var_1.d.d.x, 0u)), Struct_1(_wgslsmith_div_vec2_i32(var_1.d.a, var_1.d.a), var_1.d.b, !vec4<bool>(global4.x, global4.x, var_0, var_1.d.c.x), vec3<u32>(var_1.a, var_1.a, 56093u)))) & abs(~(~(vec4<i32>(2147483647i, var_1.d.a.x, 22158i, u_input.a) ^ vec4<i32>(global2.x, 46457i, -1i, 0i))));
    global3 = array<Struct_3, 22>();
    let var_3 = !(!(!var_1.d.c));
    return ~(~(~1u));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = Struct_1(arg_0.xx, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.a, arg_2), vec3<u32>(48916u, arg_3, 0u))), 20u)], _wgslsmith_f_op_f32(f32(-1f) * -1717f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~0u, 20u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(198f, -1106f, global1[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(118f, global1[_wgslsmith_index_u32(arg_1.a, 20u)], 1700f)))))), select(vec4<bool>(!(-2147483647i >= global2.x), global4.x, all(select(global4.yzw, vec3<bool>(true, true, true), global4.wxw)), global4.x), select(select(select(vec4<bool>(false, global4.x, global4.x, false), vec4<bool>(global4.x, false, true, false), vec4<bool>(global4.x, true, true, true)), select(vec4<bool>(true, false, false, global4.x), vec4<bool>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(global4.x, global4.x, global4.x, global4.x)), select(vec4<bool>(global4.x, global4.x, false, true), vec4<bool>(false, global4.x, global4.x, global4.x), vec4<bool>(false, false, global4.x, global4.x))), !vec4<bool>(global4.x, global4.x, global4.x, global4.x), all(!global4.xwz)), true), ~max(~vec3<u32>(arg_1.a, 4294967295u, 18310u), ~max(vec3<u32>(arg_1.a, arg_2, arg_2), vec3<u32>(4294967295u, arg_3, arg_3))));
    var var_1 = -vec2<i32>(countOneBits(_wgslsmith_clamp_i32(1i, u_input.a, var_0.a.x) << (var_0.d.x % 32u)), 0i);
    global4 = !vec4<bool>(true, min(0u, countOneBits(0u)) <= abs(~var_0.d.x), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(784f)) + var_0.b.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(894f - var_0.b.x)));
    var var_2 = global4.x | any(select(select(!global4.xww, vec3<bool>(true, true, true), var_0.c.ywz), global4.yyy, var_0.c.wyz));
    global2 = firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(global2.x, ~arg_0.x), -_wgslsmith_div_i32(1i, u_input.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2, 6430u, 1u), vec4<u32>(0u, 4294967295u, arg_2, 4294967295u) ^ vec4<u32>(110584u, 4294967295u, 55453u, arg_1.a)) % 32u)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~(~1u), func_4(vec4<i32>(-global2.x, global2.x, func_1(), _wgslsmith_div_i32(_wgslsmith_mult_i32(global2.x, -71793i), global2.x)), global3[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_mult_u32(func_3(global2.x, vec2<f32>(176f, 1457f)) >> (1u % 32u), 29062u), max(_wgslsmith_add_u32(23530u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 52860u, 1u), vec3<u32>(20286u, 62259u, 11838u))), 61170u << (func_3(global2.x, vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)])) % 32u))));
    let var_1 = select(select(select(global4.yzy, !(!vec3<bool>(true, true, global4.x)), select(select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(false, false, true), vec3<bool>(global4.x, false, false)), global4.xzy, all(vec4<bool>(false, global4.x, true, false)))), !select(global4.xyw, !global4.yyz, select(vec3<bool>(false, global4.x, true), global4.wzw, global4.wxz)), !select(vec3<bool>(false, global4.x, global4.x), select(global4.wxx, vec3<bool>(true, false, global4.x), global4.x), vec3<bool>(global4.x, false, false))), select(vec3<bool>(global4.x || false, global4.x, !(global1[_wgslsmith_index_u32(var_0.x, 20u)] <= -1147f)), !global4.yxz, select(global4.xwy, !select(vec3<bool>(true, global4.x, true), vec3<bool>(true, global4.x, true), true), false)), global4.wyy);
    var var_2 = abs(_wgslsmith_mod_vec2_i32(-(-vec2<i32>(-2147483647i, -2147483647i) ^ _wgslsmith_add_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(0i, global2.x))), ~(vec2<i32>(-24492i, u_input.a) << (var_0 % vec2<u32>(32u)))));
    let var_3 = Struct_1(vec2<i32>(-1i) * -vec2<i32>(min(1i, global2.x), global2.x | var_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(840f, 734f, 699f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-340f, -587f, -1000f))) * vec3<f32>(_wgslsmith_f_op_f32(sign(1403f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 20u)])))), vec4<bool>(global4.x, true, global4.x, var_1.x), vec3<u32>(~10513u, 1u, func_4(select(~vec4<i32>(global2.x, global2.x, u_input.a, 2147483647i), vec4<i32>(var_2.x, 1i, -5168i, var_2.x), select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(true, false, false, var_1.x), global4.x)), Struct_3(~4294967295u), 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 11499u, 7378u), vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x)))));
    var var_4 = var_3.c;
    let var_5 = abs(var_3.d.x);
    var var_6 = _wgslsmith_clamp_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-u_input.a, 23884i), var_3.a & (vec2<i32>(61321i, -11725i) ^ var_3.a)), firstTrailingBit(~(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), var_3.a) ^ vec2<i32>(-1i, global2.x))), var_3.a);
    var_6 = vec2<i32>(var_6.x, -_wgslsmith_mult_i32(-(-12993i << (1u % 32u)), var_2.x));
    global0 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(vec3<i32>(global2.x, 1i, -9237i) >> (var_3.d % vec3<u32>(32u))))), ~(i32(-1i) * -2147483647i) ^ ~u_input.a, firstLeadingBit(func_2(var_0, _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, 25392u, var_0.x, var_3.d.x), vec4<u32>(23108u, var_0.x, var_5, 24989u)), var_3)));
}

