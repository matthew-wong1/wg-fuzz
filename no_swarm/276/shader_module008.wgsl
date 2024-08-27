struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<u32> = vec4<u32>(1u, 75334u, 42691u, 55465u);

var<private> global2: Struct_2 = Struct_2(vec3<f32>(-167f, -1022f, 528f));

var<private> global3: array<u32, 23>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(-_wgslsmith_clamp_i32(u_input.b.x, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 11802i, -18407i), vec3<i32>(u_input.b.x, u_input.b.x, -46825i))));
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(step(global0.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 699f, global2.a.x)))))));
    var var_1 = ~(reverseBits(~(~vec2<u32>(28497u, u_input.a))) | select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 39169u) << (vec2<u32>(2599u, global3[_wgslsmith_index_u32(1u, 23u)]) % vec2<u32>(32u)), global1.yy), firstTrailingBit(~vec2<u32>(global1.x, 1u)), false));
    let var_2 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2351f + global2.a.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1491f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), !(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(75882u, var_1.x, global3[_wgslsmith_index_u32(1u, 23u)], var_1.x), vec4<u32>(1u, var_1.x, var_1.x, 0u)), abs(global3[_wgslsmith_index_u32(4294967295u, 23u)])) < min(u_input.a, _wgslsmith_div_u32(var_1.x, 0u)))));
    var var_3 = global0.a.zz;
    return select(select(vec2<bool>(select(select(true, true, false), true, false), true), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), true), vec2<bool>(false, false), true);
}

fn func_2() -> i32 {
    var var_0 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), any(vec2<bool>(false, false))), vec2<bool>(false, true)), !select(vec2<bool>(any(vec3<bool>(true, false, true)), true), func_3(), !func_3()), !all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)))));
    let var_1 = global2.a.x;
    let var_2 = all(!vec3<bool>(false, true, !var_0.x));
    let var_3 = 30212i;
    let var_4 = Struct_1(firstTrailingBit(-2147483647i));
    return ~0i;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = ~(~arg_1.x);
    var var_1 = !(!(!vec4<bool>(true, any(vec3<bool>(false, false, false)), true, false)));
    global3 = array<u32, 23>();
    var var_2 = 24984i;
    var_1 = !select(select(vec4<bool>(true, var_1.x, var_1.x, select(true, var_1.x, var_1.x)), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, false, var_1.x, true)), !vec4<bool>(true, var_1.x, var_1.x, true), all(vec2<bool>(false, var_1.x))), 32505u == _wgslsmith_add_u32(0u, global1.x)), vec4<bool>(true, true, true, true), vec4<bool>(any(!vec4<bool>(true, var_1.x, false, true)), true, var_1.x, 180f == global0.a.x));
    return Struct_1(countOneBits(u_input.b.x) >> (global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~global1.x, ~u_input.c, ~1u), 23u)] % 32u));
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(~vec3<i32>(func_2(), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, -u_input.b.x), 2147483647i), vec4<u32>(~global3[_wgslsmith_index_u32(global1.x, 23u)], _wgslsmith_mod_u32(abs(31568u) | (u_input.a ^ 1u), countOneBits(1u)), 1u, ~(global1.x << (min(45393u, global1.x) % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(480f)), 1000f, 782f, _wgslsmith_f_op_f32(f32(-1f) * -559f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a.x, 851f, global2.a.x, global0.a.x))), vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global2.a.x))))));
    global1 = ~vec4<u32>(1u, global1.x, global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(max(u_input.a, 96440u), u_input.c), 23u)], ~global3[_wgslsmith_index_u32(global1.x, 23u)]);
    let var_1 = u_input.b;
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + global0.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.x), global2.a.x)), -173f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.a.x, global0.a.x, global2.a.x), global0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, global2.a.x)), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-748f, -372f, 1404f), vec3<f32>(global2.a.x, 765f, global0.a.x))))))));
    var var_2 = var_0;
    return Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(global2.a, _wgslsmith_f_op_vec3_f32(-global0.a))), global2.a, all(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_1(_wgslsmith_mult_i32(u_input.b.x, -_wgslsmith_add_i32(~11549i, 1i)));
    let var_2 = var_1;
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a.x, ~u_input.b, _wgslsmith_f_op_f32(1121f + func_1().a.x), _wgslsmith_div_vec2_f32(var_3.a.xy, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(step(-332f, -1114f)))), global1.x);
}

