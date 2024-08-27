struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 1u, 50870u, 22466u), 21352u);

var<private> global1: f32 = -940f;

var<private> global2: array<f32, 19> = array<f32, 19>(632f, 1169f, 1236f, -1189f, 296f, 242f, 110f, -235f, -607f, -1000f, 2933f, 694f, -1746f, 503f, 1531f, 577f, 1262f, -859f, 522f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~global0.a.x, 7895u, global0.a.x, global0.a.x ^ global0.a.x), vec4<u32>(1u, 0u, global0.b, global0.a.x) & vec4<u32>(~1415u, 21933u, 1u, global0.b)), 67145u);
    global0 = Struct_1(global0.a << (_wgslsmith_mult_vec4_u32(global0.a, vec4<u32>(var_0.b, var_0.b | global0.a.x, 36774u, 0u)) % vec4<u32>(32u)), var_0.b);
    var var_1 = Struct_1(reverseBits(~max(var_0.a, vec4<u32>(29161u, 29501u, 4294967295u, global0.a.x))) | global0.a, max(31703u, _wgslsmith_sub_u32(~1u, global0.a.x)));
    var var_2 = max(~vec2<u32>(global0.b, 0u), vec2<u32>(var_0.a.x, global0.b) & global0.a.yx);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(var_0.a.x, 19u)], arg_0.x, false)), _wgslsmith_f_op_f32(-arg_0.x)) - vec3<f32>(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(118139u, 19u)], arg_0.x)), _wgslsmith_f_op_f32(abs(-147f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.a.x, 19u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(535f, global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(var_2.x, 19u)]))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 514f, -866f))))));
    return 6691u;
}

fn func_2() -> bool {
    let var_0 = max(global0.a, vec4<u32>(~16690u, min(_wgslsmith_mod_u32(4294967295u, 1u), ~25772u), global0.b, 1u));
    let var_1 = Struct_1(vec4<u32>(~24534u, var_0.x, _wgslsmith_div_u32(64947u, 1u), 29797u), global0.a.x);
    let var_2 = _wgslsmith_clamp_u32(reverseBits(1u), 71522u, var_1.a.x) << (func_3(vec2<f32>(_wgslsmith_f_op_f32(select(1261f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 19u)] - 947f), false)), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(~var_0.x, 19u)], _wgslsmith_f_op_f32(f32(-1f) * -236f))))) % 32u);
    let var_3 = var_1;
    global1 = -1639f;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1220f + -1313f), global2[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x, var_1.b, 51361u, var_0.x), var_3.a), var_3.a.x) << (~(~0u) % 32u), 19u)])) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1953f))), global2[_wgslsmith_index_u32(~(~(~0u)), 19u)]));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(!arg_2.yx, !select(arg_2.xy, !arg_2.yx, !select(vec2<bool>(false, false), arg_2.zz, true)), !arg_2.yy);
    global2 = array<f32, 19>();
    global0 = arg_3;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(401f, 906f, false)), global2[_wgslsmith_index_u32(arg_1, 19u)]);
    global2 = array<f32, 19>();
    return Struct_1(_wgslsmith_div_vec4_u32(select(global0.a, ~arg_0.a, (true | arg_2.x) & func_2()), arg_3.a), 21695u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    var var_0 = global0.a.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(global0.b, 19u)]))))), global2[_wgslsmith_index_u32(global0.a.x, 19u)]), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.b, 19u)] - global2[_wgslsmith_index_u32(23012u, 19u)]))) * _wgslsmith_f_op_f32(step(-1020f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_2.a.x, 19u)])))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(54923u, 19u)] * -2917f)))))));
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(firstTrailingBit(global0.b), _wgslsmith_div_u32(global0.b, 21981u)), global0.b), _wgslsmith_mult_u32(arg_0.b, _wgslsmith_add_u32(~global0.a.x, ~40452u)), arg_0.b, ~36988u), arg_0.a.x);
    let var_3 = arg_0;
    let var_4 = _wgslsmith_mod_u32(_wgslsmith_add_u32(func_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(126f, var_1.x)))), 1u), select(_wgslsmith_dot_vec2_u32(abs(var_2.a.wy), ~vec2<u32>(arg_2.b, 4294967295u)), 17774u, true) & _wgslsmith_sub_u32(arg_2.b, var_3.a.x));
    return ((i32(-1i) * -2147483647i) | _wgslsmith_dot_vec4_i32(vec4<i32>(-27827i, min(2147483647i, 0i), 1i, 1i), ~arg_3)) << (func_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 845f)), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-1738f, -246f))))) % 32u);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec2<i32>) -> Struct_1 {
    global0 = Struct_1(vec4<u32>(~(~arg_1.a.x), ~arg_1.b, global0.b, global0.b), 34032u);
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(arg_1.a.x, 19u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.b, 19u)]), _wgslsmith_f_op_f32(691f - -311f))))));
    let var_1 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(arg_3 | u_input.a, reverseBits(u_input.a)), arg_3.x, _wgslsmith_dot_vec2_i32(-arg_3, u_input.a));
    global0 = Struct_1(arg_1.a, ~(~global0.b));
    let var_2 = Struct_1(arg_1.a, 1u);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 19>();
    let var_0 = ~(-vec3<i32>(~(u_input.a.x & u_input.a.x), u_input.a.x, _wgslsmith_clamp_i32(2147483647i, -29554i, -38624i) << (~32950u % 32u)));
    global1 = global2[_wgslsmith_index_u32(abs(0u), 19u)];
    var var_1 = ~max(countOneBits(global0.a), ~(~global0.a));
    var_1 = global0.a & vec4<u32>(firstLeadingBit(~(36012u << (global0.b % 32u))), 4294967295u, 37069u, 0u);
    let var_2 = func_5(~(-49505i), Struct_1(select(countOneBits(max(global0.a, vec4<u32>(global0.b, global0.b, 31702u, 0u))), global0.a, all(vec2<bool>(true, true))), 1u), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec2_i32(reverseBits(-_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, var_0.x))), vec2<i32>(u_input.a.x, func_4(func_1(Struct_1(global0.a, var_1.x), global0.a.x, vec3<bool>(false, false, false), Struct_1(global0.a, 4294967295u)), vec3<bool>(false, false, true), func_1(Struct_1(global0.a, global0.a.x), 9845u, vec3<bool>(true, false, true), Struct_1(global0.a, 1u)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, -2147483647i, 0i), vec4<i32>(-5578i, u_input.a.x, var_0.x, var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, var_0.x) >> (1u % 32u), -14223i), u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(19326u, 19u)])) * global2[_wgslsmith_index_u32(countOneBits(global0.a.x), 19u)]) + 1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(1u, 19u)]))))), global2[_wgslsmith_index_u32(21316u, 19u)]));
}

