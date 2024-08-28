struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-858f, -610f), vec2<f32>(1068f, -950f), vec2<f32>(454f, 1000f), vec2<f32>(433f, 819f), vec2<f32>(-204f, 788f), vec2<f32>(354f, -1144f), vec2<f32>(1000f, -294f), vec2<f32>(-566f, 1567f), vec2<f32>(-993f, -1934f), vec2<f32>(155f, 237f), vec2<f32>(-627f, 334f), vec2<f32>(1729f, -699f), vec2<f32>(451f, -901f), vec2<f32>(-1144f, 1487f), vec2<f32>(1445f, 349f), vec2<f32>(-417f, -571f), vec2<f32>(-110f, -1112f), vec2<f32>(1000f, -802f), vec2<f32>(220f, 248f), vec2<f32>(-1477f, -182f), vec2<f32>(-554f, -1441f), vec2<f32>(232f, 1057f), vec2<f32>(-1993f, -1109f), vec2<f32>(516f, -1276f), vec2<f32>(-1000f, 813f), vec2<f32>(-1000f, -1078f), vec2<f32>(-255f, -863f), vec2<f32>(1837f, -1153f), vec2<f32>(-618f, 554f), vec2<f32>(1000f, -977f));

var<private> global1: array<i32, 28>;

var<private> global2: f32 = 1126f;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(112f, 1000f) - -471f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(525f, 366f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -681f))) * _wgslsmith_f_op_f32(f32(-1f) * -1604f))));
    var var_1 = ~abs(~_wgslsmith_clamp_u32(~4294967295u, ~18171u, 44425u));
    global0 = array<vec2<f32>, 30>();
    let var_2 = ~u_input.b.x;
    var var_3 = var_0.x;
    return (_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(-1000f))) >= _wgslsmith_f_op_f32(sign(-450f))) && select(true, !(_wgslsmith_f_op_f32(max(-137f, var_0.x)) < _wgslsmith_f_op_f32(step(var_0.x, 243f))), !select(false, var_2 > 1i, select(false, true, false)));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(1i);
    global0 = array<vec2<f32>, 30>();
    let var_1 = u_input.a.x;
    let var_2 = vec2<i32>(max(1i, -1i), firstLeadingBit(-1i ^ -(var_0.a ^ -23405i)));
    global1 = array<i32, 28>();
    return !vec4<bool>(all(!(!vec4<bool>(arg_0.b, false, true, false))), true, false, arg_0.b);
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    let var_0 = u_input.b;
    global2 = 1265f;
    let var_1 = func_4(Struct_1(-(~var_0), func_3(1u)));
    let var_2 = ~(-22073i);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2063f + 652f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -592f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -372f), 1102f)))), 806f)));
    return 19819u;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(min(-54011i, ~global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), 1224i) << (select(arg_0, select(vec2<u32>(1u, 1u), ~u_input.a.xx, arg_2.c), true) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_div_i32((global1[_wgslsmith_index_u32(u_input.a.x, 28u)] & -1i) ^ global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 33040u), 28u)], u_input.b.x), arg_2.b.a.x));
    global1 = array<i32, 28>();
    let var_1 = arg_2;
    let var_2 = vec3<bool>(var_1.c.x, any(vec2<bool>(!arg_2.b.b && true, var_1.c.x)), true);
    global1 = array<i32, 28>();
    return func_2(true, _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -1i, ~global1[_wgslsmith_index_u32(46345u, 28u)]) ^ var_1.a.a, u_input.b), _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(var_1.b.a.x, -28168i, -57891i) << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 18155u, 33633u), vec3<u32>(0u, u_input.a.x, 89111u)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.x, -1i, -1i), _wgslsmith_add_i32(3003i, 18202i)), 42222i, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec3<i32>(u_input.b.x, -21388i, -global1[_wgslsmith_index_u32(_wgslsmith_add_u32(min(39666u, 0u), func_1(vec2<u32>(u_input.a.x, 4294967295u), 672f, Struct_3(Struct_1(u_input.b, true), Struct_1(u_input.b, true), vec2<bool>(false, true)))), 28u)]));
    let var_1 = Struct_3(Struct_1(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b.x, u_input.b.x)), abs(var_0.yy), ~(var_0.xy & var_0.zz)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(6033i, -15673i)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 72994i), u_input.b)) >= 4079i), Struct_1(abs(~u_input.b) >> (u_input.a.xx % vec2<u32>(32u)), true), !func_4(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-23678i, -1i), var_0.zx), false)).zw);
    var var_2 = Struct_2((var_0.x & (var_1.b.a.x >> (u_input.a.x % 32u))) | 0i);
    var var_3 = var_1.b;
    let var_4 = true;
    let var_5 = _wgslsmith_mod_vec3_i32(vec3<i32>(abs(abs(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a.x, 28u)]))), _wgslsmith_mult_i32(var_2.a, -1i >> (_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u) % 32u)), u_input.b.x), abs(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(u_input.b.x, 1i, 0i)), vec3<i32>(-1i, var_2.a, u_input.b.x), abs(vec3<i32>(0i, 1i, var_3.a.x))) << (countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 0u) ^ u_input.a) % vec3<u32>(32u))));
    var var_6 = _wgslsmith_f_op_f32(floor(578f));
    let var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1486f + _wgslsmith_f_op_f32(max(824f, 599f))), 1676f, 1432f)), 1i, ~(~(~u_input.a.x)) ^ func_1(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zx), vec2<u32>(0u, 4294967295u)), _wgslsmith_f_op_f32(sign(-565f)), var_7));
}

