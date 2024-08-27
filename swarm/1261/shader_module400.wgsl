struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(0i, 10835i, 0i, 22309i, 0i, -1i, 1i, -9354i, 10119i, -2010i);

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<f32, 5>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global0 = array<i32, 10>();
    global1 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(1u, 69203u)), 5u)]));
    global0 = array<i32, 10>();
    global2 = array<f32, 5>();
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.x, 5u)]), _wgslsmith_f_op_f32(f32(-1f) * -1064f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(arg_1.x, 5u)], global2[_wgslsmith_index_u32(0u, 5u)])), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(arg_1.x, 5u)], global2[_wgslsmith_index_u32(1u, 5u)])))))), any(arg_2))));
    global2 = array<f32, 5>();
    let var_1 = select(select(select(select(!arg_0.a.zz, select(arg_2, arg_2, vec2<bool>(arg_0.a.x, arg_3)), any(arg_0.a)), !arg_2, any(arg_0.a.yx)), !(!(!arg_0.a.yx)), !arg_2.x), select(arg_2, select(select(select(arg_0.a.xy, arg_0.a.xy, vec2<bool>(arg_0.c, arg_0.c)), select(vec2<bool>(arg_3, arg_2.x), arg_2, vec2<bool>(false, false)), arg_3), !select(arg_0.a.xz, arg_0.a.yy, arg_0.a.yz), !(43701u <= arg_1.x)), vec2<bool>(true, !(19476u < arg_1.x))), all(select(select(arg_0.a.zx, vec2<bool>(arg_2.x, false), vec2<bool>(false, arg_3)), vec2<bool>(arg_3, arg_3), arg_1.x <= 1u)) || false);
    let var_2 = vec4<u32>((4294967295u | (~48538u & ~arg_1.x)) << (4294967295u % 32u), 1u, arg_1.x, ~20789u);
    return max(_wgslsmith_dot_vec3_i32(~vec3<i32>(~20176i, global0[_wgslsmith_index_u32(~arg_1.x, 10u)], -2147483647i), -vec3<i32>(~u_input.a, 1i, abs(-21141i))), u_input.b.x);
}

fn func_2() -> vec2<u32> {
    global2 = array<f32, 5>();
    let var_0 = ~abs(abs(global0[_wgslsmith_index_u32(~0u, 10u)]) | -10433i);
    var var_1 = func_4(global1[_wgslsmith_index_u32(6720u, 31u)], vec2<u32>(_wgslsmith_clamp_u32(1u, ~1u, 33087u), 4294967295u), select(vec2<bool>(_wgslsmith_div_f32(-1532f, 130f) >= _wgslsmith_div_f32(201f, global2[_wgslsmith_index_u32(9729u, 5u)]), true), vec2<bool>(true, false), !((var_0 != global0[_wgslsmith_index_u32(1u, 10u)]) & func_3(vec4<bool>(false, false, true, false)))), true);
    let var_2 = max(firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(-11557i, -2147483647i, 0i, 34949i), vec4<i32>(-1i, 41340i, 2147483647i, u_input.b.x), true), firstTrailingBit(vec4<i32>(1i, 15194i, global0[_wgslsmith_index_u32(1u, 10u)], var_0))), vec4<i32>(-1i) * -vec4<i32>(8596i, global0[_wgslsmith_index_u32(65148u, 10u)], -2147483647i, -2147483647i))), vec4<i32>(global0[_wgslsmith_index_u32(select(countOneBits(~4294967295u), 1u, true), 10u)], _wgslsmith_div_i32(abs(-3198i), ~global0[_wgslsmith_index_u32(48245u, 10u)]) & 1i, _wgslsmith_mod_i32(-1i, u_input.b.x), -abs(1i)));
    global1 = array<Struct_1, 31>();
    return _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u) | ~vec2<u32>(select(59752u, 1u, true), ~17545u), select(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 64297u), vec2<bool>(true, true))), vec2<u32>(1u, 1u), vec2<bool>(true, all(vec2<bool>(false, false)))));
}

fn func_1() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits((_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 73651u), vec2<u32>(0u, 1u)) & reverseBits(vec2<u32>(39101u, 0u))) | abs(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 15277u)))), vec2<u32>(1u, 1u) | (vec2<u32>(~40132u, _wgslsmith_mod_u32(0u, 42880u)) << (func_2() % vec2<u32>(32u)))), 31u)];
    var var_1 = ~(vec3<u32>(firstTrailingBit(1u), ~(~18464u), 1u) & vec3<u32>(~1u, func_2().x, 0u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, 22441u), 5u)], _wgslsmith_f_op_f32(-265f + global2[_wgslsmith_index_u32(var_1.x, 5u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_2().x, 5u)]), true)) - -1813f));
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1557f))))), -927f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + -673f))), -128f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-736f, global2[_wgslsmith_index_u32(var_1.x, 5u)], 2532f, -1122f) - vec4<f32>(-1017f, 196f, var_2, 610f))))))));
    var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_1.x, var_1.x, 1u), ~countOneBits(vec3<u32>(0u, 43370u, var_1.x))), abs(vec3<u32>(1u, 1u, ~81608u))), 1u, _wgslsmith_div_u32(var_1.x, func_2().x));
    return max(global0[_wgslsmith_index_u32(~abs(var_1.x) | var_1.x, 10u)], ~_wgslsmith_clamp_i32(u_input.a, ~_wgslsmith_sub_i32(u_input.b.x, var_0.b), -26149i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 5>();
    let var_0 = vec4<i32>(-u_input.b.x ^ _wgslsmith_mult_i32(~u_input.b.x, func_1()), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u & _wgslsmith_clamp_u32(firstLeadingBit(1u), 0u, _wgslsmith_div_u32(43135u, 4294967295u)), abs(1u)), 10u)], 0i, ~global0[_wgslsmith_index_u32(40943u, 10u)]);
    global2 = array<f32, 5>();
    var var_1 = reverseBits(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 49682u, 1u), vec4<u32>(0u, 23408u, 68522u, 30563u)) & firstTrailingBit(vec4<u32>(5783u, 10675u, 4294967295u, 4294967295u))) | max(vec4<u32>(0u >> (0u % 32u), ~0u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 49760u), _wgslsmith_sub_u32(4294967295u, 43974u)), vec4<u32>(~0u, ~18799u, 12865u, ~0u)));
    global2 = array<f32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(i32(-1i) * -2147483647i), ~(~global0[_wgslsmith_index_u32(0u, 10u)])), -1i, (vec2<i32>(-1i) * -(var_0.ww & vec2<i32>(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 10u)]))) | abs(_wgslsmith_sub_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(46778u, 10u)], u_input.a), u_input.b.yy)));
}

