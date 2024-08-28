struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 16>;

var<private> global2: array<f32, 28>;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, 1i), 2147483647i, vec3<f32>(239f, -229f, -251f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>) -> vec4<f32> {
    let var_0 = Struct_1(-vec4<i32>(countOneBits(u_input.b), 0i, -2147483647i, global3.a.x), global0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -853f, arg_0.x))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(342f, 507f, -1450f, var_0.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), 285f, -924f, _wgslsmith_div_f32(var_0.c.x, 797f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(622f, 710f, -194f, arg_0.x) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1370f, -595f, var_0.c.x, 944f))))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(436f, arg_0.x, 1000f, var_0.c.x), vec4<f32>(-1168f, arg_0.x, 481f, global3.c.x), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-800f, -562f, 706f, global2[_wgslsmith_index_u32(133561u, 28u)])))) * vec4<f32>(151f, -1233f, global3.c.x, -1000f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-567f, -1421f, arg_0.x, 344f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(73979u, 28u)], -969f, -1026f, 414f))))))))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    global1 = array<Struct_1, 16>();
    let var_0 = Struct_3(Struct_1(countOneBits(arg_2.c.a), -2147483647i, arg_2.c.c));
    let var_1 = vec2<i32>(u_input.b, _wgslsmith_div_i32(global0.x, arg_2.c.a.x));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.c.x, var_0.a.c.x)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1734f - -395f))), -468f);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.a.c.x)), _wgslsmith_f_op_f32(arg_2.b.x - global3.c.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-677f, global3.c.x, -541f, -612f), vec4<f32>(var_2.x, -1549f, var_0.a.c.x, arg_2.d), arg_1)), vec4<f32>(global3.c.x, 851f, var_0.a.c.x, global3.c.x))))));
    return Struct_2(!arg_2.a, var_0.a.c.zy, var_0.a, global3.c.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = func_2(u_input.a.x, !(arg_0.a.x | !all(arg_0.a.zz)), arg_0).c;
    let var_1 = select(vec4<bool>(!(!arg_0.a.x), true, abs(~global3.a.x) != 1i, true), select(select(select(!vec4<bool>(arg_0.a.x, false, false, arg_0.a.x), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false), vec4<bool>(arg_0.a.x, true, arg_0.a.x, true))), vec4<bool>(true, true, all(vec4<bool>(arg_0.a.x, arg_0.a.x, true, false)), all(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x))), all(vec2<bool>(false, arg_0.a.x))), vec4<bool>(true, false, arg_0.a.x && select(arg_0.a.x, true, arg_0.a.x), select(arg_0.c.b == global0.x, false, all(vec3<bool>(false, arg_0.a.x, true)))), all(vec4<bool>(true, any(arg_0.a), true, arg_0.a.x))), arg_0.a.x);
    let var_2 = Struct_3(Struct_1(vec4<i32>(-(~2147483647i), max(2147483647i, var_0.b), min(global0.x, var_0.a.x), select(-2541i, global3.b, any(var_1.wy))), -arg_2.a.b, vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 28u)] + _wgslsmith_f_op_f32(max(arg_0.b.x, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1148f, 1453f)), global3.c.x)));
    var var_3 = max(11538u >> (~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, ~u_input.a.x) % 32u), countOneBits(3149u) | u_input.a.x);
    var var_4 = var_0;
    return _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.d, arg_2.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.a.c.x)), 2112f)))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    var var_0 = arg_2.x;
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(global0.x, -1i, 29717i, -28618i), _wgslsmith_sub_vec4_i32(global3.a, vec4<i32>(2147483647i, 0i, -9932i, 12194i)))) & global3.a, ~25827i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(u_input.a.x, arg_2.x, Struct_2(vec3<bool>(arg_2.x, true, true), global3.c.xy, global1[_wgslsmith_index_u32(arg_1, 16u)], -1280f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 28u)], 388f, global2[_wgslsmith_index_u32(25749u, 28u)], -126f)), Struct_3(global1[_wgslsmith_index_u32(23927u, 16u)]))))));
    let var_2 = func_2(firstLeadingBit(arg_1), !(!arg_2.x), func_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(3160u, 14004u, u_input.a.x), u_input.a), !any(!vec4<bool>(arg_2.x, false, true, arg_2.x)), Struct_2(select(!vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(false, true, arg_2.x), select(vec3<bool>(false, arg_2.x, arg_2.x), vec3<bool>(false, arg_2.x, false), arg_2.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global3.c.xx))), func_2(58881u, arg_2.x, Struct_2(vec3<bool>(arg_2.x, false, arg_2.x), vec2<f32>(1055f, -1000f), global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global3.c.x)).c, -2402f))).c;
    var var_3 = vec4<bool>(!all(!(!vec3<bool>(arg_2.x, arg_2.x, arg_2.x))), !all(select(vec4<bool>(false, true, false, arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(true, false, arg_2.x, arg_2.x)), !vec4<bool>(arg_2.x, true, true, arg_2.x))), all(vec4<bool>(~(-1i) < arg_0, true, 52421u > _wgslsmith_add_u32(u_input.a.x, arg_1), func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(arg_1, 18688u)), true, func_2(16622u, true, Struct_2(vec3<bool>(true, arg_2.x, arg_2.x), var_1.c.zz, Struct_1(var_2.a, -3362i, vec3<f32>(global2[_wgslsmith_index_u32(arg_1, 28u)], global2[_wgslsmith_index_u32(arg_1, 28u)], global3.c.x)), -416f))).a.x)), false);
    global1 = array<Struct_1, 16>();
    return ~firstTrailingBit(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u) ^ _wgslsmith_mult_vec2_u32(u_input.a.xx, ~u_input.a.zy ^ ~vec2<u32>(4294967295u, 0u)), abs(vec2<u32>(func_1(firstTrailingBit(23402i), ~u_input.a.x, vec2<bool>(true, true)), ~u_input.a.x))), 16u)];
    global1 = array<Struct_1, 16>();
    var var_0 = vec2<u32>(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_div_u32(1u, u_input.a.x) & max(~26199u, 0u)), ~_wgslsmith_add_u32(15767u, u_input.a.x));
    var var_1 = global2[_wgslsmith_index_u32(~18888u ^ var_0.x, 28u)];
    var var_2 = 0i;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-321f)));
    global3 = func_2(4294967295u, _wgslsmith_clamp_i32(2147483647i, -(~u_input.b), u_input.b) < _wgslsmith_add_i32(_wgslsmith_clamp_i32(i32(-1i) * -33517i, _wgslsmith_div_i32(global3.a.x, 15077i), i32(-1i) * -22085i), _wgslsmith_dot_vec3_i32(global3.a.zyy, abs(vec3<i32>(global0.x, u_input.b, 45685i)))), Struct_2(vec3<bool>(true, false, true), _wgslsmith_f_op_vec2_f32(trunc(global3.c.zx)), func_2(27767u, true, func_2(func_1(global0.x, 0u, vec2<bool>(false, false)), false, Struct_2(vec3<bool>(false, true, true), global3.c.yx, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 947f))).c, _wgslsmith_f_op_f32(global3.c.x * -416f))).c;
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, vec4<u32>(1u, 6650u, ~1u, _wgslsmith_clamp_u32(~0u, var_0.x, firstLeadingBit(abs(70668u)))));
}

