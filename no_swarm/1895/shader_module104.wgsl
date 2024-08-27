struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: array<Struct_1, 8>;

var<private> global2: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(1076f, vec4<f32>(-474f, -1121f, -1539f, 447f), Struct_2(true, vec4<bool>(true, false, true, false), Struct_1(25043u, 2147483647i, vec3<f32>(111f, -955f, 1315f), vec4<u32>(5959u, 4294967295u, 22357u, 18839u), true)), 829f), Struct_3(-265f, vec4<f32>(435f, 230f, 411f, -726f), Struct_2(true, vec4<bool>(false, true, false, false), Struct_1(0u, 1i, vec3<f32>(2045f, -1767f, -1000f), vec4<u32>(0u, 6565u, 4294967295u, 0u), false)), -789f));

var<private> global3: f32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool, arg_3: vec2<bool>) -> f32 {
    var var_0 = arg_0.c;
    let var_1 = countOneBits(u_input.a);
    var_0 = Struct_2(true, var_0.b, Struct_1(var_0.c.d.x, (countOneBits(-6251i) << (arg_0.c.c.a % 32u)) & 0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c.x, -194f, -1537f))))), vec4<u32>(arg_0.c.c.d.x, abs(_wgslsmith_div_u32(var_0.c.d.x, 0u)), 4294967295u, ~(~4294967295u)), global0.x));
    var var_2 = arg_0.c;
    global1 = array<Struct_1, 8>();
    return _wgslsmith_f_op_f32(floor(-117f));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -(17978i & -firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-10537i, u_input.a))));
    global1 = array<Struct_1, 8>();
    global0 = vec4<bool>(false, true, any(!vec2<bool>(true, all(arg_0.b))), arg_0.c.a >= ~(abs(arg_0.c.a) & arg_1.a));
    global1 = array<Struct_1, 8>();
    let var_1 = Struct_2(arg_0.c.e, select(vec4<bool>(false, arg_1.e, !(arg_1.c.x > arg_0.c.c.x), true), arg_0.b, select(!arg_0.b, vec4<bool>(any(arg_0.b.zy), arg_0.c.e, select(arg_1.e, arg_1.e, false), false), true)), Struct_1(abs(~(~arg_0.c.d.x)), -2147483647i, vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(arg_0.c.c.x, vec4<f32>(arg_1.c.x, arg_1.c.x, 1000f, -433f), arg_0, arg_0.c.c.x), vec2<i32>(u_input.a, -8842i), any(vec2<bool>(true, arg_0.a)), !global0.wz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.c.x - arg_0.c.c.x)), 1171f), vec4<u32>(arg_1.d.x, arg_1.d.x, 0u, abs(_wgslsmith_div_u32(3031u, arg_1.a))), all(arg_0.b.yyy)));
    return arg_0.c;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~1u, 2u)];
    global2 = array<Struct_3, 2>();
    var_0 = global2[_wgslsmith_index_u32(1u, 2u)];
    return firstLeadingBit(_wgslsmith_sub_u32(countOneBits(var_0.c.c.a), ~(~arg_0.c.d.x)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<bool>) -> f32 {
    global2 = array<Struct_3, 2>();
    let var_0 = _wgslsmith_div_u32(~30530u, func_4(Struct_2(arg_1.a == (arg_1.a & 23672u), !select(vec4<bool>(false, arg_1.e, false, arg_1.e), vec4<bool>(false, false, arg_0, arg_1.e), false), func_2(Struct_2(false, vec4<bool>(global0.x, true, false, true), arg_1), Struct_1(arg_1.a, arg_1.b, vec3<f32>(-1651f, arg_2.x, -197f), arg_1.d, arg_3.x))), ~max(4294967295u, arg_1.a), Struct_2(true, !(!vec4<bool>(arg_3.x, true, false, true)), arg_1), Struct_2(false | all(arg_3), select(!vec4<bool>(arg_1.e, true, true, global0.x), vec4<bool>(global0.x, arg_0, global0.x, arg_3.x), arg_3.x && arg_0), func_2(Struct_2(arg_1.e, vec4<bool>(true, true, arg_0, arg_3.x), Struct_1(arg_1.d.x, -2147483647i, vec3<f32>(arg_1.c.x, 834f, arg_1.c.x), vec4<u32>(0u, arg_1.d.x, 10035u, arg_1.d.x), global0.x)), arg_1))));
    var var_1 = global0.x;
    global0 = vec4<bool>(!arg_1.e, false || any(select(vec4<bool>(false, true, arg_3.x, arg_0), vec4<bool>(false, false, arg_3.x, arg_3.x), arg_3.x)), false, true);
    var var_2 = arg_1.d.x;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1595f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(609f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a >= 1i, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 15848u, 51154u), 8u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(1019f, -778f, 1000f, 494f)), !global0.wy)))) - 153f);
    var var_0 = global0.x;
    var var_1 = Struct_3(1000f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(func_2(Struct_2(false, vec4<bool>(global0.x, global0.x, true, true), Struct_1(0u, u_input.a, vec3<f32>(689f, -1000f, -1180f), vec4<u32>(4294967295u, 0u, 1u, 1u), false)), Struct_1(7255u, -22254i, vec3<f32>(850f, -852f, 1772f), vec4<u32>(30092u, 29529u, 4294967295u, 4294967295u), global0.x)).c.x, 1657f, _wgslsmith_div_f32(-164f, 643f), _wgslsmith_div_f32(187f, 417f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1336f, -1691f, 1997f, 189f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(585f, 1598f, 1068f, 1224f)), vec4<f32>(_wgslsmith_f_op_f32(1728f - -691f), _wgslsmith_f_op_f32(-821f * 604f), func_2(Struct_2(false, vec4<bool>(true, true, global0.x, global0.x), global1[_wgslsmith_index_u32(10359u, 8u)]), global1[_wgslsmith_index_u32(0u, 8u)]).c.x, -1517f))))), Struct_2(global0.x, !vec4<bool>(global0.x && global0.x, true, global0.x, any(vec4<bool>(true, false, global0.x, global0.x))), Struct_1(func_4(Struct_2(false, vec4<bool>(global0.x, global0.x, global0.x, false), Struct_1(5617u, u_input.a, vec3<f32>(300f, -1301f, -183f), vec4<u32>(0u, 0u, 30052u, 133236u), true)), ~2714u, Struct_2(global0.x, vec4<bool>(true, false, false, global0.x), global1[_wgslsmith_index_u32(6789u, 8u)]), Struct_2(false, vec4<bool>(global0.x, global0.x, false, global0.x), global1[_wgslsmith_index_u32(4294967295u, 8u)])), 19694i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1272f, -277f, -360f))), vec4<u32>(_wgslsmith_mult_u32(33802u, 1u), 1u, 1u, ~31291u), global0.x)), 497f);
    var var_2 = select(2147483647i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(~var_1.c.c.b, 0i, -46226i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(3348i, -29010i)))), min(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.c.c.b, u_input.a, var_1.c.c.b, 0i), vec4<i32>(u_input.a, var_1.c.c.b, 1i, var_1.c.c.b)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, var_1.c.c.b, var_1.c.c.b, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, 2147483647i))), ~firstLeadingBit(vec4<i32>(-7947i, u_input.a, 2147483647i, var_1.c.c.b)))), !var_1.c.a | var_1.c.b.x);
    let var_3 = abs(~(~var_1.c.c.d.x));
    let var_4 = vec2<f32>(_wgslsmith_div_f32(1593f, -1000f), var_1.c.c.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.c.b, _wgslsmith_f_op_f32(-var_1.c.c.c.x), 557f, 0i, -(vec3<i32>(-1i) * -(vec3<i32>(var_1.c.c.b, u_input.a, 0i) << (vec3<u32>(var_1.c.c.a, 63785u, 14933u) % vec3<u32>(32u)))));
}

