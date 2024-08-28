struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-468f, -846f), vec2<f32>(158f, -394f), vec2<f32>(-1101f, -969f), vec2<f32>(-861f, 1096f), vec2<f32>(1332f, 375f), vec2<f32>(-472f, 811f), vec2<f32>(-521f, 369f), vec2<f32>(-351f, -747f), vec2<f32>(732f, 2537f), vec2<f32>(699f, -333f));

var<private> global1: vec4<f32> = vec4<f32>(1693f, 225f, -1072f, 1000f);

var<private> global2: array<Struct_1, 32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(186f, -635f, 1243f, 1077f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 513f, global1.x))))), global1.x, 4355i), Struct_2(vec2<u32>(~_wgslsmith_mult_u32(10078u, 1u), ~reverseBits(u_input.b.x)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-658f, -511f, global1.x, global1.x) * vec4<f32>(-772f, -184f, 290f, global1.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(349f, global1.x, -1438f, global1.x), vec4<f32>(509f, global1.x, global1.x, -1806f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -301f) * _wgslsmith_f_op_f32(-1000f * global1.x)), reverseBits(-u_input.a)), ~u_input.b, global2[_wgslsmith_index_u32(u_input.b.x, 32u)], select(false, all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), all(vec2<bool>(true, true)))), firstLeadingBit(abs(u_input.d | ~vec3<u32>(34945u, u_input.b.x, u_input.b.x))));
    let var_1 = min(_wgslsmith_sub_u32(firstLeadingBit(~1u), ~firstTrailingBit(9001u)), firstTrailingBit(45962u));
    var var_2 = ~(abs(~vec3<u32>(33931u, u_input.b.x, u_input.d.x) ^ reverseBits(vec3<u32>(0u, var_0.b.a.x, 49780u))) << (~vec3<u32>(30267u, var_0.b.a.x & var_0.b.c.x, 0u) % vec3<u32>(32u)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(502f)))), 1067f);
    return ~49906u;
}

fn func_2() -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(48901u, 32u)];
    global2 = array<Struct_1, 32>();
    global0 = array<vec2<f32>, 10>();
    var var_1 = vec4<i32>(-(_wgslsmith_mod_i32(_wgslsmith_add_i32(18638i, u_input.e), _wgslsmith_mult_i32(1i, 67225i)) << (func_3() % 32u)), var_0.c, _wgslsmith_clamp_i32(var_0.c, _wgslsmith_sub_i32(1i | var_0.c, 33731i), -2147483647i), -1i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(-564f, global1.x, global1.x, var_0.b)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 2328f, var_0.b, var_0.a.x), var_0.a, true))))), _wgslsmith_f_op_f32(-global1.x), ~(-1i));
    return _wgslsmith_f_op_f32(-404f - 1f);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: vec2<f32>) -> Struct_2 {
    global0 = array<vec2<f32>, 10>();
    var var_0 = _wgslsmith_f_op_f32(461f - -852f);
    let var_1 = arg_0;
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.b.a.x)), _wgslsmith_f_op_f32(func_2()), 1000f, -302f));
    var var_2 = _wgslsmith_f_op_f32(func_2());
    return Struct_2(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(~arg_0.c.x, var_1.a.x), var_1.c.wy)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.d.a - _wgslsmith_f_op_vec4_f32(round(arg_0.b.a)))), _wgslsmith_f_op_f32(func_2()), reverseBits(i32(-1i) * -var_1.b.c)), u_input.b, var_1.b, !(!all(!vec2<bool>(var_1.e, true))));
}

fn func_4(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_1(arg_0.d.a, 623f, u_input.a);
    var var_1 = ~(vec3<u32>(~_wgslsmith_add_u32(arg_0.a.x, 41575u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.d, arg_0.c.zxw), select(arg_0.a.x, 1u, arg_0.e)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 153321u, arg_0.a.x), arg_0.c.ywx)) >> (u_input.b.wwz % vec3<u32>(32u)));
    var var_2 = ~arg_0.c;
    var var_3 = Struct_3(arg_0.d, arg_0, max(reverseBits(arg_0.c.yyz), vec3<u32>(u_input.b.x & ~arg_0.c.x, var_2.x, ~func_1(Struct_2(vec2<u32>(var_2.x, 1u), Struct_1(vec4<f32>(arg_0.b.a.x, -486f, var_0.a.x, -1535f), -1367f, arg_0.b.c), arg_0.c, global2[_wgslsmith_index_u32(var_1.x, 32u)], arg_0.e), var_0.c, u_input.c, var_0.a.zx).c.x)));
    var var_4 = u_input.b;
    return arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(26286u, firstLeadingBit(u_input.b.x << (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 3886u), u_input.d.yy) % 32u)), u_input.d.x, ~u_input.b.x << ((select(u_input.b.x, 13979u, true) | func_4(func_1(Struct_2(u_input.b.zy, Struct_1(vec4<f32>(global1.x, global1.x, global1.x, global1.x), 1402f, 2147483647i), vec4<u32>(u_input.d.x, 46749u, 28251u, u_input.b.x), global2[_wgslsmith_index_u32(19648u, 32u)], false), u_input.e, u_input.e, vec2<f32>(-523f, 1592f)))) % 32u));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1051f, global1.x, global1.x, global1.x))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -1366f), vec4<f32>(global1.x, 1550f, global1.x, -204f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-188f, -888f)))), _wgslsmith_dot_vec4_i32(min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -2147483647i, u_input.c, -2147483647i), vec4<i32>(u_input.a, -1i, u_input.c, -20521i)), max(vec4<i32>(u_input.a, -1i, u_input.e, u_input.a), vec4<i32>(-9795i, u_input.c, 2147483647i, u_input.c))), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.a), ~vec4<i32>(u_input.a, u_input.e, 13634i, u_input.a)))), Struct_2(var_0.yw, global2[_wgslsmith_index_u32(min(u_input.b.x, u_input.d.x), 32u)], firstTrailingBit(~abs(u_input.b)), Struct_1(vec4<f32>(func_1(Struct_2(vec2<u32>(u_input.b.x, u_input.d.x), global2[_wgslsmith_index_u32(var_0.x, 32u)], vec4<u32>(var_0.x, 59553u, var_0.x, u_input.b.x), Struct_1(vec4<f32>(-166f, global1.x, global1.x, -1596f), global1.x, 1i), true), u_input.c, u_input.a, vec2<f32>(global1.x, -177f)).b.a.x, _wgslsmith_f_op_f32(sign(-629f)), -854f, _wgslsmith_f_op_f32(trunc(601f))), _wgslsmith_f_op_f32(round(global1.x)), ~(0i << (1u % 32u))), !(any(vec4<bool>(true, true, true, true)) && any(vec2<bool>(true, true)))), ~(~_wgslsmith_add_vec3_u32(var_0.xxx, ~vec3<u32>(4294967295u, 4294967295u, 5380u))));
    var var_2 = countOneBits(u_input.d & abs(var_1.b.c.xzz));
    let var_3 = !(_wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(u_input.e, u_input.c, 966i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, 22170i, var_1.b.d.c), vec3<i32>(-55727i, 16945i, 0i)) << (var_0.wyw % vec3<u32>(32u))) > (reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-41825i, u_input.e, 34873i, 17918i), vec4<i32>(2147483647i, u_input.e, var_1.a.c, var_1.a.c))) ^ u_input.a));
    let var_4 = false;
    global2 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_sub_i32(~33867i, -(~u_input.c))), -_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-24498i, -2147483647i, 1i, u_input.a), ~vec4<i32>(var_1.b.d.c, -1i, u_input.e, var_1.b.b.c)), vec4<i32>(var_1.a.c, -1i, _wgslsmith_clamp_i32(1i, -1i, u_input.a), -2147483647i)));
}

