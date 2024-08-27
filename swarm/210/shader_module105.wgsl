struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<bool, 3>;

var<private> global2: vec2<bool>;

var<private> global3: array<i32, 10> = array<i32, 10>(-417i, -22404i, 13674i, -14886i, 16532i, 54003i, 31242i, 21796i, 11828i, 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(vec4<i32>(min(-(arg_0 ^ global3[_wgslsmith_index_u32(4294967295u, 10u)]), 1i), ~global3[_wgslsmith_index_u32(~select(global0[_wgslsmith_index_u32(0u, 16u)], u_input.a.x, true), 10u)], arg_1.b << (~1u % 32u), global3[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, 2016f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-195f, arg_1.d.x) + vec2<f32>(249f, 1219f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(487f * -742f))))), arg_1.c.wy);
    var var_1 = Struct_5(min(vec3<u32>(~(~4294967295u), firstTrailingBit(u_input.a.x << (var_0.d.x % 32u)), max(~u_input.a.x, ~66198u)), select(arg_1.c.yzx ^ vec3<u32>(90496u, var_0.d.x, 4916u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a.x, 1u), vec3<u32>(global0[_wgslsmith_index_u32(arg_1.c.x, 16u)], 4294967295u, arg_1.c.x)), !vec3<bool>(global2.x, true, global2.x)) | abs(vec3<u32>(var_0.d.x, 61875u, 4294967295u))), Struct_4(firstTrailingBit(~arg_1.c.x)));
    global2 = vec2<bool>(all(vec4<bool>(true | global2.x, all(!vec4<bool>(global2.x, false, global2.x, false)), any(!vec3<bool>(global1[_wgslsmith_index_u32(6355u, 3u)], global1[_wgslsmith_index_u32(50949u, 3u)], global2.x)), global2.x)), true);
    let var_2 = _wgslsmith_sub_vec4_u32(arg_1.c << (~(~arg_1.c) % vec4<u32>(32u)), ~arg_1.c);
    let var_3 = var_0.a.xy;
    return arg_1.c.x >> (28788u % 32u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: f32) -> vec4<u32> {
    var var_0 = Struct_2(vec4<i32>(-global3[_wgslsmith_index_u32(1887u, 10u)], abs(global3[_wgslsmith_index_u32(u_input.a.x, 10u)]), ~0i, firstLeadingBit(abs(global3[_wgslsmith_index_u32(4294967295u, 10u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xx) - vec2<f32>(1322f, arg_2))))), arg_0.ww, select(vec2<u32>(~global0[_wgslsmith_index_u32(firstLeadingBit(4581u), 16u)], u_input.a.x), abs(vec2<u32>(0u, 98514u)) >> ((u_input.a.xx >> (vec2<u32>(5074u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), true));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, -802f), var_0.c)) + _wgslsmith_f_op_vec2_f32(ceil(var_0.c))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 447f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, var_0.b.x)))), var_0.b, ~(~vec2<u32>(4294967295u << (u_input.a.x % 32u), func_3(-20416i, Struct_1(var_0.a.x, var_0.a.x, vec4<u32>(var_0.d.x, var_0.d.x, 73668u, 1u), vec3<f32>(arg_0.x, arg_1.x, arg_0.x), arg_0.x)))));
    return ~vec4<u32>(firstLeadingBit(1u) & u_input.a.x, var_0.d.x << (~1u % 32u), var_0.d.x, abs(84735u) << (~u_input.a.x % 32u)) << (vec4<u32>(~global0[_wgslsmith_index_u32(~(u_input.a.x >> (global0[_wgslsmith_index_u32(0u, 16u)] % 32u)), 16u)], 12112u, u_input.a.x, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0.d.x, 16u)], 35093u)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(reverseBits(arg_1.x), _wgslsmith_mod_i32(~arg_1.x, arg_1.x)), arg_1.x), max(countOneBits(-5565i), 0i), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(func_3(global3[_wgslsmith_index_u32(2254u, 10u)], Struct_1(2147483647i, global3[_wgslsmith_index_u32(6932u, 10u)], arg_2, vec3<f32>(-1394f, 481f, -611f), -384f)), ~u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(10702u, 0u, arg_2.x), vec3<u32>(global0[_wgslsmith_index_u32(0u, 16u)], u_input.a.x, arg_2.x)), 40249u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, u_input.a.x), ~global0[_wgslsmith_index_u32(1u, 16u)], 1u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.x, 16u)], 16u)])), arg_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f)))), -1040f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e + var_0.d.x))))));
    var var_2 = firstTrailingBit(reverseBits(min(min(global3[_wgslsmith_index_u32(~31031u, 10u)], ~(-23969i)), firstLeadingBit(~(-2147483647i)))));
    var var_3 = vec3<bool>(all(arg_0.yy), true, global2.x);
    return vec3<i32>(arg_1.x, abs(global3[_wgslsmith_index_u32(~u_input.a.x, 10u)]), reverseBits(arg_1.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    var var_0 = vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(func_4(vec3<bool>(arg_0.x != arg_0.x, all(vec2<bool>(true, false)), true), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -36025i), max(vec2<i32>(0i, -43814i), arg_0.xy)), func_2(vec4<f32>(1000f, 784f, 981f, 790f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-735f, -242f, -217f, -1051f), vec4<f32>(-371f, -174f, 1115f, -1023f))), -1388f)), vec3<i32>(countOneBits(~(-1i)), arg_0.x, abs(-13870i))));
    let var_1 = firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(~1u, ~global0[_wgslsmith_index_u32(48828u, 16u)]), global0[_wgslsmith_index_u32(~72751u, 16u)], _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, u_input.a.x), u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(select(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], true), u_input.a.x), 16u)])));
    let var_2 = -1000f;
    var var_3 = Struct_4(global0[_wgslsmith_index_u32(61756u, 16u)]);
    var var_4 = Struct_4(_wgslsmith_mod_u32(~(_wgslsmith_mod_u32(var_1.x, 4294967295u) >> (4294967295u % 32u)), min(37828u, reverseBits(1u))));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-229f, -355f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-523f, -845f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1370f, -1000f) + vec2<f32>(1454f, 753f)) + vec2<f32>(262f, 812f)), global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)] ^ global0[_wgslsmith_index_u32(525u, 16u)], 16u)], 3u)]))))));
    global2 = select(!vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 16u)] != func_1(vec4<i32>(-1i, -2147483647i, -46816i, -24929i), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4667u, 16u)], 3u)])), select(!(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]))), vec2<bool>(false, !(!global2.x)), select(!select(vec2<bool>(true, false), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x)), vec2<bool>(select(false, global2.x, global2.x), any(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8573u, 16u)], 3u)]))), true)), vec2<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(func_2(vec4<f32>(1546f, var_0.x, var_0.x, -2108f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), -355f).x, 3u)], false)), true));
    var var_1 = -410f;
    let var_2 = Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], -1i, 42773i, global3[_wgslsmith_index_u32(u_input.a.x, 10u)])), countOneBits(vec4<i32>(1i, -1i, global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global3[_wgslsmith_index_u32(1u, 10u)]) << (vec4<u32>(global0[_wgslsmith_index_u32(1u, 16u)], u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(countOneBits(61734u), 10u)], i32(-1i) * -37327i), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(1u, 10u)], ~27270i), global3[_wgslsmith_index_u32(~u_input.a.x, 10u)], ~func_4(vec3<bool>(global2.x, true, global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<i32>(2147483647i, -1i), vec4<u32>(40082u, u_input.a.x, global0[_wgslsmith_index_u32(51307u, 16u)], 12301u)).x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1274f + _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-129f - -947f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)), _wgslsmith_f_op_f32(-var_0.x)) + var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 1394f))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -717f))), ~vec2<u32>(22350u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(3826u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71183u, 16u)], 16u)], 16u)], u_input.a.x), u_input.a), 16u)]) | _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.yy, ~vec2<u32>(25524u, 75055u)), ~abs(u_input.a.zy)));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(398f * -902f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -386f));
    var var_4 = Struct_1(-(~var_2.a.x) & _wgslsmith_mult_i32(-47641i << (u_input.a.x % 32u), var_2.a.x), ~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(75516u, 16u)]), 16u)], ~firstLeadingBit(var_2.d.x)), 10u)], vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(78382u, 0u, u_input.a.x, u_input.a.x) | vec4<u32>(0u, u_input.a.x, global0[_wgslsmith_index_u32(62890u, 16u)], 33102u), ~vec4<u32>(global0[_wgslsmith_index_u32(var_2.d.x, 16u)], global0[_wgslsmith_index_u32(12031u, 16u)], 77512u, global0[_wgslsmith_index_u32(u_input.a.x, 16u)])), 16u)], countOneBits(var_2.d.x & global0[_wgslsmith_index_u32(4294967295u, 16u)]), max(func_3(var_2.a.x, Struct_1(var_2.a.x, 2145i, vec4<u32>(var_2.d.x, 10765u, u_input.a.x, u_input.a.x), vec3<f32>(-164f, var_0.x, -2362f), -184f)), countOneBits(global0[_wgslsmith_index_u32(4294967295u, 16u)])), _wgslsmith_div_u32(u_input.a.x, 1u)) & (select(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(17594u, 16u)], 4294967295u, u_input.a.x, 46238u), vec4<u32>(1u, u_input.a.x, u_input.a.x, var_2.d.x)), vec4<u32>(4294967295u, 29233u, global0[_wgslsmith_index_u32(1u, 16u)], 1u) >> (vec4<u32>(var_2.d.x, 111199u, 2903u, 4959u) % vec4<u32>(32u)), vec4<bool>(global1[_wgslsmith_index_u32(19597u, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global2.x, global1[_wgslsmith_index_u32(1u, 3u)])) >> ((vec4<u32>(global0[_wgslsmith_index_u32(var_2.d.x, 16u)], 0u, 0u, 1u) | ~vec4<u32>(4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(10826u, 16u)], u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-130f, 1162f, var_2.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1000f, -2431f)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1062f - 720f) + _wgslsmith_f_op_f32(592f + 472f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1310f)), 507f)), _wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_div_f32(-762f, _wgslsmith_f_op_f32(-var_2.b.x)));
    var var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.b.x - -840f), -1691f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -901f), _wgslsmith_f_op_f32(var_2.b.x * -1629f)) - var_0.x), _wgslsmith_f_op_f32(-var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), var_5.x)), _wgslsmith_mod_vec2_u32(select(var_2.d, vec2<u32>(4294967295u, 0u), global1[_wgslsmith_index_u32(846u, 3u)]) >> (~vec2<u32>(1031u, var_2.d.x) % vec2<u32>(32u)), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1000f, 197f, var_5.x) - vec4<f32>(var_2.c.x, var_5.x, -2711f, var_2.c.x)), vec4<f32>(-1317f, -1000f, -128f, 492f), -594f).yx) | _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(var_4.c.x, 17938u), vec2<u32>(4294967295u, 48698u)), ~(var_4.c.wy << (u_input.a.zy % vec2<u32>(32u))), ~firstLeadingBit(u_input.a.yx)));
}

