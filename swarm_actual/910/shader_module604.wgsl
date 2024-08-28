struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_4;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global3: f32 = -158f;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(u_input.a, 4294967295u), ~(~(~43110u)), global1.a ^ global1.a, countOneBits(u_input.a)));
    global0 = true;
    var var_1 = Struct_5(select(vec4<bool>(all(vec3<bool>(global2.x, true, true)), any(select(vec4<bool>(false, false, global2.x, true), vec4<bool>(global2.x, global1.c, global2.x, true), false)), true, global2.x), select(vec4<bool>(global1.d.x > u_input.b, any(vec2<bool>(global1.c, false)), false, global2.x), select(vec4<bool>(global2.x, global2.x, true, global1.c), vec4<bool>(false, true, global2.x, global1.c), select(vec4<bool>(global2.x, global1.c, true, global1.c), vec4<bool>(global2.x, global2.x, global1.c, global1.c), vec4<bool>(global1.c, global1.c, global2.x, false))), !(!vec4<bool>(global2.x, global2.x, false, false))), any(vec3<bool>(global2.x, global1.c, true))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(var_0.x, global1.a), abs(var_0.xy)), ~(~var_0.zy)) | ~vec2<u32>(_wgslsmith_add_u32(0u, 0u), ~50748u), u_input.c, _wgslsmith_add_i32(25182i | (abs(-46025i) << (~var_0.x % 32u)), 0i), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(~1u, _wgslsmith_sub_u32(u_input.a, 4294967295u)), _wgslsmith_dot_vec3_u32(var_0.yxx, firstTrailingBit(var_0.xwz))), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(5057u, 69003u) | var_0.xy, ~var_0.zw)), _wgslsmith_add_u32(var_0.x, 4294967295u)));
    let var_2 = abs(-(var_1.d | 2147483647i));
    var_1 = Struct_5(!var_1.a, vec2<u32>(_wgslsmith_mod_u32(var_0.x, firstLeadingBit(countOneBits(46940u))), var_1.e.x), ~reverseBits(u_input.c), global1.e.x, var_1.e);
    return ~(min(~_wgslsmith_add_u32(global1.a, 2297u), 1u) & reverseBits(u_input.a));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: i32) -> Struct_5 {
    var var_0 = vec4<u32>(1u, max(~u_input.a ^ max(u_input.a, arg_2.b.x), u_input.a), abs(func_3()), u_input.a);
    global0 = global1.c | all(arg_2.a);
    global0 = !any(!global2.wwx);
    let var_1 = Struct_2(Struct_1(~u_input.b << (_wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.xzw), _wgslsmith_sub_vec3_u32(arg_2.e, vec3<u32>(arg_2.e.x, 1u, var_0.x))) % 32u), 903i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-815f, -470f) + vec2<f32>(374f, global1.b)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b, -433f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 1544f)), arg_0)))));
    var_0 = ~vec4<u32>(arg_2.b.x, arg_2.b.x, countOneBits(1u), var_0.x);
    return Struct_5(!arg_2.a, _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, global1.a) ^ arg_2.b), arg_2.b), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.a.b, global1.d.x, 2147483647i), arg_2.c), countOneBits(vec3<i32>(arg_3, arg_2.c.x, -1i) & vec3<i32>(arg_1.x, arg_1.x, 23836i))), min(select(_wgslsmith_mod_vec3_i32(global1.d.zzx, global1.d.zyw), vec3<i32>(53194i, global1.e.x, var_1.a.a) << (vec3<u32>(2274u, arg_2.e.x, u_input.a) % vec3<u32>(32u)), select(arg_2.a.ywy, vec3<bool>(true, true, false), false)), u_input.c)), global1.e.x, ~vec3<u32>(~global1.a, 10485u, reverseBits(46986u)));
}

fn func_4(arg_0: Struct_5) -> vec4<i32> {
    return _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.d, 2147483647i, 933i, u_input.c.x), vec4<i32>((arg_0.d & (11356i ^ u_input.c.x)) | _wgslsmith_dot_vec2_i32(global1.d.yz, vec2<i32>(1i, -364i) << (vec2<u32>(arg_0.e.x, 0u) % vec2<u32>(32u))), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.c.xx, global1.d.xx)), 8332i, 41932i ^ ~(-arg_0.c.x)));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_5 {
    var var_0 = _wgslsmith_dot_vec4_i32(global1.d, arg_0.d) >> (~func_2(global2.x, select(vec2<i32>(arg_1.x, 1i), countOneBits(vec2<i32>(global1.d.x, arg_0.e.x)), select(vec2<bool>(false, false), global2.yy, false)), Struct_5(select(vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(arg_0.c, arg_0.c, global2.x, global1.c), vec4<bool>(false, arg_0.c, global1.c, true)), ~vec2<u32>(4294967295u, 44749u), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, arg_0.e.x, arg_1.x), arg_0.e, vec3<i32>(global1.d.x, 9159i, global1.e.x)), arg_1.x, _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a, 98690u, 0u), vec3<u32>(4294967295u, arg_0.a, arg_0.a))), 1i).b.x % 32u);
    global3 = _wgslsmith_f_op_f32(global1.b - -1633f);
    var var_1 = arg_0;
    var var_2 = vec4<u32>(~1u, var_1.a, var_1.a, select(u_input.a, 1u, false));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, arg_0.b, var_1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, arg_0.b, -882f)) + vec3<f32>(-1550f, 423f, arg_0.b)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1655f, 2201f, arg_0.b)), vec3<f32>(409f, var_1.b, -297f)))));
    return Struct_5(func_2(4418i < arg_1.x, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.x, 15870i) | vec2<i32>(arg_0.e.x, -5151i), abs(vec2<i32>(25606i, -2147483647i))), func_4(func_2(global1.c, arg_0.e.zy, Struct_5(vec4<bool>(global1.c, true, true, true), var_2.wy, vec3<i32>(-2147483647i, 2147483647i, arg_0.d.x), global1.e.x, var_2.wxx), arg_0.d.x)).xz), Struct_5(!select(vec4<bool>(true, global2.x, false, global1.c), vec4<bool>(global1.c, global2.x, false, true), global1.c), ~firstLeadingBit(var_2.xx), vec3<i32>(reverseBits(-2518i), func_2(global1.c, arg_0.d.xy, Struct_5(vec4<bool>(arg_0.c, global2.x, global2.x, arg_0.c), vec2<u32>(arg_0.a, 0u), vec3<i32>(arg_0.d.x, 31498i, var_1.d.x), -2147483647i, vec3<u32>(34053u, var_2.x, var_1.a)), arg_0.d.x).d, _wgslsmith_mult_i32(u_input.c.x, -2662i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.e.x, arg_1.x, 0i, 21096i), -vec4<i32>(-18398i, 19487i, -9038i, arg_1.x)), ~var_2.yzy), (-1i | firstLeadingBit(arg_0.e.x)) | abs(u_input.c.x)).a, select(vec2<u32>(~84246u, 1536u), ~(~vec2<u32>(80465u, 9110u)), select(!global2.zy, global2.wz, true && arg_0.c)) >> (~(~vec2<u32>(0u, 1u)) % vec2<u32>(32u)), vec3<i32>(19916i, -7739i, ~(-(i32(-1i) * -20728i))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_1.x, arg_1.x), _wgslsmith_clamp_i32(var_1.d.x << (var_1.a % 32u), arg_0.d.x >> (u_input.a % 32u), abs(2147483647i)) >> (~(~global1.a) % 32u)), vec3<u32>(var_2.x, 4294967295u, 37644u));
}

fn func_1(arg_0: u32) -> Struct_4 {
    let var_0 = func_5(Struct_4(max(u_input.a, 4294967295u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)))), select(select(true, select(true, global2.x, true), false), global1.c, select(global1.c, !global2.x, global1.c)), ~func_4(func_2(global2.x, u_input.c.xx, Struct_5(vec4<bool>(global2.x, true, true, global2.x), vec2<u32>(4294967295u, 4294967295u), vec3<i32>(2147483647i, global1.d.x, global1.d.x), global1.d.x, vec3<u32>(1u, global1.a, 63152u)), 2354i)), vec3<i32>(abs(-u_input.b), min(abs(43298i), -2147483647i), -_wgslsmith_add_i32(13003i, u_input.b))), ~_wgslsmith_mult_vec3_i32(global1.d.zxz ^ u_input.c, ~vec3<i32>(u_input.b, global1.d.x, u_input.c.x)) >> (abs(~max(vec3<u32>(global1.a, 76556u, 0u), vec3<u32>(1u, 44518u, u_input.a))) % vec3<u32>(32u)));
    var var_1 = -12593i;
    var var_2 = countOneBits(max(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 4294967295u, 19372u), vec3<u32>(var_0.b.x, 4294967295u, 32802u) ^ var_0.e), var_0.e) | var_0.e);
    let var_3 = true;
    var var_4 = Struct_4(u_input.a, _wgslsmith_div_f32(_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b)) * _wgslsmith_f_op_f32(abs(187f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, _wgslsmith_div_f32(440f, 477f)) * -780f)), true, vec4<i32>(-global1.d.x, var_0.d, var_0.c.x, global1.d.x) << (vec4<u32>(1u, _wgslsmith_div_u32(1u, arg_0) ^ global1.a, arg_0, var_0.b.x) % vec4<u32>(32u)), u_input.c);
    return Struct_4(var_2.x, -2018f, true, _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(1i << (u_input.a % 32u), _wgslsmith_mod_i32(-1i, u_input.b), 2147483647i, u_input.c.x)), min(-min(vec4<i32>(-2147483647i, u_input.c.x, -2147483647i, global1.e.x), vec4<i32>(2147483647i, 11548i, var_4.e.x, var_0.c.x)), -min(vec4<i32>(-1i, -1i, -1i, global1.e.x), global1.d)), _wgslsmith_mod_vec4_i32(countOneBits(var_4.d), vec4<i32>(abs(global1.e.x), _wgslsmith_mod_i32(global1.d.x, var_4.e.x), _wgslsmith_mult_i32(-1i, u_input.c.x), ~6718i))), ~(~vec3<i32>(-4411i, 46498i ^ u_input.b, -18707i)));
}

fn func_6(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_4) -> vec4<bool> {
    global2 = func_5(func_1(u_input.a ^ u_input.a), -global1.d.yyw).a;
    let var_0 = vec4<bool>(any(func_2(!arg_1 || global2.x, u_input.c.xx, func_5(arg_2, u_input.c), 2147483647i).a.wy), false, true, false);
    var var_1 = Struct_4(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1259f)), _wgslsmith_f_op_f32(arg_2.b + -1000f), !global2.x)), func_1(~global1.a).c))), global2.x, ~arg_2.d, -u_input.c);
    var var_2 = func_5(arg_2, -vec3<i32>(~21867i, var_1.d.x, func_2(false, vec2<i32>(global1.d.x, 36462i), Struct_5(var_0, vec2<u32>(arg_2.a, 13934u), vec3<i32>(var_1.e.x, arg_2.d.x, u_input.b), var_1.e.x, vec3<u32>(1u, var_1.a, global1.a)), 1i).c.x) ^ -u_input.c).a.yx;
    let var_3 = var_2.x;
    return select(select(select(!var_0, vec4<bool>(false, !var_2.x, arg_0.x, arg_1), !vec4<bool>(true, false, var_2.x, arg_1)), var_0, var_2.x), select(var_0, vec4<bool>(false, !(false || var_0.x), !(true && arg_1), global1.c != global1.c), !arg_2.c), arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(func_6(vec2<bool>(true, global2.x), false, func_1(47569u)), select(!(!vec4<bool>(global2.x, true, global1.c, false)), !vec4<bool>(global1.c, global1.c, false, true), vec4<bool>(global1.c, global1.a != 25119u, global1.c, global2.x || false)), select(func_5(func_1(global1.a), func_1(69462u).e).a, !vec4<bool>(global1.c, true, true, false), func_5(Struct_4(1u, global1.b, global1.c, vec4<i32>(-1134i, u_input.b, global1.d.x, -2147483647i), vec3<i32>(u_input.b, global1.d.x, u_input.b)), u_input.c | u_input.c).a));
    let var_0 = _wgslsmith_f_op_f32(-1037f + _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-642f, _wgslsmith_f_op_f32(-675f * global1.b), all(global2.xxx))), -1000f))));
    let var_1 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(_wgslsmith_mult_u32(0u, 1187u)), 33988u), vec2<u32>(func_2(false, vec2<i32>(27792i, -2147483647i) | vec2<i32>(-33677i, u_input.b), Struct_5(vec4<bool>(false, global2.x, true, false), vec2<u32>(1u, 75045u), vec3<i32>(global1.d.x, -2147483647i, -1i), global1.d.x, vec3<u32>(u_input.a, u_input.a, 72300u)), global1.e.x).b.x, min(_wgslsmith_clamp_u32(4294967295u, global1.a, 112752u), func_1(4294967295u).a)));
    var var_2 = vec4<f32>(1715f, func_1(~(~(~4294967295u))).b, 1374f, global1.b);
    let var_3 = Struct_3(var_1.x, Struct_1(abs(-1i), u_input.b | ~select(u_input.c.x, global1.e.x, true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_2.xz)) + _wgslsmith_f_op_vec2_f32(floor(var_2.wy))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b, global1.b), var_2.xx))), global2.zz))), !vec4<bool>(func_5(func_1(var_1.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, global1.e.x, -10111i), global1.e, global1.d.yzx)).a.x, any(vec2<bool>(global2.x, true)), (-26230i << (global1.a % 32u)) > u_input.b, global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.b, ~var_3.a, vec4<f32>(_wgslsmith_f_op_f32(abs(global1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1347f), 1614f), var_2.x, _wgslsmith_f_op_f32(trunc(-310f))), vec2<u32>(9530u, ~global1.a), vec3<i32>(~(~(-8175i)), _wgslsmith_dot_vec3_i32(~global1.e, max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, global1.d.x, u_input.b), global1.d.yxy), vec3<i32>(-1i, var_3.b.a, u_input.b))), 0i));
}

