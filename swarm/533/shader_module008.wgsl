struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(17793i, -45829i, 2147483647i, 0i), 1254f, vec2<u32>(1u, 45286u));

var<private> global1: array<vec4<f32>, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_3) -> vec3<bool> {
    global0 = Struct_2(vec4<i32>(21979i, -global0.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.a.x, 2147483647i, arg_2.e.x), global0.a >> (arg_2.d % vec4<u32>(32u))), _wgslsmith_dot_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(global0.a.x, arg_2.e.x))), vec2<i32>(arg_1.e.x & arg_2.e.x, 1i))), global0.b, global0.c);
    global0 = Struct_2(min(global0.a, ~(vec4<i32>(2147483647i, 58012i, 1i, -43947i) | firstTrailingBit(global0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-465f * -285f)), vec2<u32>(firstLeadingBit(0u), 4294967295u));
    var var_0 = _wgslsmith_clamp_vec2_u32(~(~(~max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4624u, 48965u)))), u_input.b.xy, vec2<u32>(~(~countOneBits(6047u)), _wgslsmith_sub_u32(arg_2.a, _wgslsmith_mult_u32(6231u >> (u_input.b.x % 32u), 45787u ^ arg_2.d.x))));
    let var_1 = Struct_4(vec4<bool>(!all(vec2<bool>(true, false)), false, false, any(select(vec4<bool>(arg_2.c.x, arg_1.c.x, false, arg_2.c.x), !vec4<bool>(false, false, true, arg_1.c.x), true == arg_1.c.x))), Struct_3(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_2.d.wxw, vec3<u32>(4294967295u, var_0.x, 63000u)), arg_2.d.yxz)), arg_2.b, select(!vec3<bool>(arg_2.c.x, arg_1.c.x, true), vec3<bool>(true, false, !arg_1.c.x), true), _wgslsmith_add_vec4_u32(arg_2.d, vec4<u32>(~25110u, ~1u, ~arg_2.d.x, 79817u)), global0.a.zzy), arg_2.c.x);
    let var_2 = _wgslsmith_mult_vec3_i32(arg_2.e, _wgslsmith_clamp_vec3_i32(global0.a.xwy, _wgslsmith_sub_vec3_i32(~vec3<i32>(global0.a.x, global0.a.x, global0.a.x), arg_1.e), ~(~var_1.b.e)));
    return select(arg_1.c, var_1.b.c, (all(!vec2<bool>(true, arg_2.c.x)) || true) == (0i != (i32(-1i) * -arg_1.e.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(global0.a, _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(global0.b - global0.b)), _wgslsmith_div_vec2_u32(~global0.c, ~u_input.b.yy));
    var var_1 = any(vec2<bool>(any(vec3<bool>(true, true, true)), all(func_3(vec2<f32>(-803f, global0.b), Struct_3(4294967295u, -660f, vec3<bool>(true, false, true), vec4<u32>(16635u, u_input.b.x, global0.c.x, global0.c.x), global0.a.xzz), Struct_3(44240u, -585f, vec3<bool>(true, false, true), vec4<u32>(u_input.a, var_0.c.x, u_input.a, 4294967295u), global0.a.wwz))))) & (-1097f >= global0.b);
    var var_2 = !(!vec2<bool>(-32346i > global0.a.x, select(true, all(vec3<bool>(false, true, false)), true)));
    var var_3 = Struct_2(vec4<i32>(var_0.a.x, i32(-1i) * -1i, max(38218i, global0.a.x & -2147483647i), var_0.a.x), _wgslsmith_f_op_f32(-var_0.b), global0.c);
    let var_4 = countOneBits(global0.a.x >> (1u % 32u));
    return Struct_2(vec4<i32>(firstLeadingBit(var_0.a.x), global0.a.x | -2147483647i, max(_wgslsmith_div_i32(global0.a.x, var_0.a.x), _wgslsmith_mod_i32(var_3.a.x, var_3.a.x)), i32(-1i) * -53113i) >> (vec4<u32>(~4555u, 63016u | _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, 1u), var_0.c), 40239u, abs(4294967295u) ^ ~var_0.c.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-178f))) - global0.b) + var_0.b), ~(~var_0.c));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>) -> Struct_3 {
    global0 = func_2();
    var var_0 = all(!func_3(arg_0.zy, Struct_3(firstTrailingBit(15800u), _wgslsmith_f_op_f32(-arg_0.x), vec3<bool>(true, false, true), arg_1, global0.a.xxw), Struct_3(global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -405f), vec3<bool>(true, true, true), vec4<u32>(global0.c.x, 0u, arg_1.x, global0.c.x), global0.a.zwz)).yz);
    var var_1 = -(~firstTrailingBit(vec2<i32>(max(global0.a.x, global0.a.x), 29834i >> (u_input.a % 32u))));
    global1 = array<vec4<f32>, 6>();
    var_1 = countOneBits(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0.a.x, 0i), global0.a.yx) ^ vec2<i32>(var_1.x, var_1.x), global0.a.yx) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(min(u_input.a, 1u), abs(arg_1.x)), ~global0.c, ~_wgslsmith_mult_vec2_u32(arg_1.zx, arg_1.yx)) % vec2<u32>(32u)));
    return Struct_3(u_input.b.x, _wgslsmith_f_op_f32(-global0.b), func_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1207f, global0.b)))))), Struct_3(_wgslsmith_clamp_u32(global0.c.x, ~arg_1.x, u_input.a), arg_0.x, vec3<bool>(true, true, true), firstTrailingBit(arg_1), ~select(global0.a.xzw, global0.a.zzy, true)), Struct_3(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1213f, global0.b)) * _wgslsmith_f_op_f32(-global0.b)), vec3<bool>(true, true, true), arg_1, global0.a.yyw)), countOneBits(~vec4<u32>(0u, 0u, firstLeadingBit(global0.c.x), ~101252u)), vec3<i32>(max(28609i ^ global0.a.x, 1i), min(-global0.a.x, abs(var_1.x)), abs(countOneBits(var_1.x))) ^ vec3<i32>(~countOneBits(var_1.x), var_1.x, firstTrailingBit(global0.a.x ^ var_1.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = arg_0.e;
    var var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.c.x, global0.c.x, 4294967295u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 25292u, arg_2.c.x, 107506u), vec4<u32>(4294967295u, 0u, global0.c.x, 56285u)), arg_0.d)), abs(arg_0.d), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.d, arg_0.d, arg_0.d) & ~vec4<u32>(arg_1.c.x, u_input.a, 24932u, global0.c.x), arg_0.d) | firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(4294967295u, arg_2.b.x), 4294967295u, _wgslsmith_sub_u32(global0.c.x, 66567u), _wgslsmith_dot_vec3_u32(u_input.b, arg_0.d.wzz))));
    var var_2 = Struct_4(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), all(arg_0.c.zx)), select(!vec4<bool>(false, arg_0.c.x, false, arg_0.c.x), !vec4<bool>(arg_0.c.x, arg_0.c.x, true, true), !(!vec4<bool>(arg_0.c.x, false, false, arg_0.c.x))), select(select(select(vec4<bool>(false, arg_0.c.x, true, arg_0.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, true, arg_0.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x)), vec4<bool>(false, true, arg_0.c.x, true), select(vec4<bool>(true, true, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, false), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, false))), vec4<bool>(1u >= arg_2.b.x, true, arg_0.c.x | true, all(vec4<bool>(arg_0.c.x, arg_0.c.x, false, arg_0.c.x))), !vec4<bool>(arg_0.c.x, arg_0.c.x, false, false))), func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -387f), 1f, _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(global0.b - global0.b)), _wgslsmith_f_op_vec4_f32(step(global1[_wgslsmith_index_u32(~4294967295u, 6u)], vec4<f32>(378f, -1175f, arg_1.b, 1224f))))), arg_0.d), !arg_0.c.x);
    let var_3 = Struct_4(!select(var_2.a, !select(vec4<bool>(var_2.a.x, true, false, var_2.c), vec4<bool>(arg_0.c.x, false, arg_0.c.x, var_2.a.x), var_2.b.c.x), select(!var_2.a, !var_2.a, var_2.a)), Struct_3(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - var_2.b.b)), !vec3<bool>(all(vec2<bool>(var_2.c, var_2.c)), false || var_2.b.c.x, true), min(vec4<u32>(var_1.x, ~var_1.x, ~var_1.x, reverseBits(0u)), ~arg_0.d), arg_3), func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(var_2.b.d.x, 6u)] - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b, arg_0.b, var_2.b.b, var_2.b.b), vec4<f32>(1374f, -478f, var_2.b.b, global0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_1.b, global0.b, arg_1.b))), var_2.a)), ~min(vec4<u32>(arg_2.c.x, 1u, global0.c.x, u_input.a), vec4<u32>(26108u, 82582u, u_input.a, 4294967295u) << (var_2.b.d % vec4<u32>(32u)))).c.x);
    let var_4 = vec2<bool>(_wgslsmith_sub_i32(var_2.b.e.x, -15412i) < -_wgslsmith_mult_i32(-44645i, global0.a.x), !var_3.b.c.x);
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = Struct_4(!(!vec4<bool>(!arg_1, arg_1, all(vec3<bool>(false, arg_1, arg_1)), arg_1)), Struct_3(60898u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2282f, _wgslsmith_f_op_f32(min(arg_2.x, arg_0.b)))), !func_1(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 34775u, arg_0.c.x, 1u), vec4<u32>(4294967295u, 1u, arg_0.c.x, arg_0.c.x))).c, _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(41908u, global0.c.x, u_input.b.x, 12667u), ~vec4<u32>(0u, global0.c.x, 1u, 33213u)), countOneBits(vec4<u32>(arg_0.c.x, 4294967295u, 1u, 31617u))), _wgslsmith_add_vec3_i32(-arg_0.a.yxy, global0.a.zxy)), !(false | all(func_3(vec2<f32>(1228f, arg_0.b), Struct_3(1u, arg_2.x, vec3<bool>(arg_1, arg_1, arg_1), vec4<u32>(global0.c.x, u_input.a, arg_0.c.x, 0u), arg_0.a.ywx), Struct_3(4294967295u, arg_2.x, vec3<bool>(arg_1, true, arg_1), vec4<u32>(22451u, arg_0.c.x, 1307u, global0.c.x), vec3<i32>(-14562i, 5681i, -31040i))))));
    var var_1 = var_0;
    var var_2 = func_1(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.b - -329f), -415f, _wgslsmith_f_op_f32(exp2(var_1.b.b)), arg_0.b), abs(select(~var_0.b.d, abs(var_1.b.d), !var_0.a)) | var_0.b.d).c.x;
    var var_3 = Struct_2(~_wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(global0.a.x), reverseBits(2147483647i), _wgslsmith_add_i32(var_1.b.e.x, -2147483647i), _wgslsmith_dot_vec4_i32(arg_0.a, arg_0.a)), min(select(global0.a, arg_0.a, true), min(global0.a, vec4<i32>(1i, 0i, 13395i, 37528i)))), var_0.b.b, reverseBits(~vec2<u32>(25492u, ~0u)));
    let var_4 = Struct_4(var_0.a, var_0.b, arg_1);
    return 53295u;
}

fn func_6(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = Struct_2(~(-(~global0.a)), _wgslsmith_f_op_f32(-arg_2.x), max(_wgslsmith_mod_vec2_u32(vec2<u32>(func_1(vec4<f32>(326f, arg_2.x, arg_2.x, global0.b), vec4<u32>(32903u, global0.c.x, 1133u, 29410u)).a, arg_0.x), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, global0.c.x, global0.c.x), vec4<u32>(1u, 35568u, 4294967295u, u_input.b.x)), 30043u)), ~u_input.b.zy));
    let var_1 = arg_3;
    global0 = var_0;
    var var_2 = Struct_3(4294967295u, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))))), !select(!(!vec3<bool>(arg_1, false, true)), vec3<bool>(arg_1, arg_1 && arg_1, 77879u < global0.c.x), vec3<bool>(true, false, false)), abs(vec4<u32>(75578u, var_1.b.x, global0.c.x ^ firstTrailingBit(27960u), var_0.c.x)), var_0.a.yzy);
    let var_3 = Struct_3(25756u, global0.b, !(!(!var_2.c)), ~abs(vec4<u32>(func_1(arg_2, var_2.d).a, 1u, arg_0.x, 0u)), vec3<i32>(var_2.e.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.e.x, -23765i, var_1.a.x, var_1.a.x), vec4<i32>(-4294i, arg_3.a.x, 35161i, -15198i) >> (var_2.d % vec4<u32>(32u))), 2147483647i, arg_1), arg_3.a.x));
    return func_1(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 4294967295u << (min(global0.c.x, var_3.d.x) % 32u)) & arg_0.x, 6u)], _wgslsmith_add_vec4_u32(~(~var_3.d | var_2.d), vec4<u32>(~var_1.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_3.d.wwx, var_1.c), _wgslsmith_div_vec3_u32(vec3<u32>(global0.c.x, 4294967295u, arg_3.b.x), vec3<u32>(arg_0.x, var_0.c.x, 4294967295u))), max(u_input.a >> (0u % 32u), 44756u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_2.d, var_3.d), var_3.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_clamp_i32(68527i, 17653i, 0i), ~(-1i) >> (_wgslsmith_div_u32(0u, u_input.b.x) % 32u)), min(-(0i >> (global0.c.x % 32u)), countOneBits(~global0.a.x)), 10565i, global0.a.x), 877f, vec2<u32>(global0.c.x | global0.c.x, ~(u_input.b.x ^ u_input.a) & 157061u));
    let var_0 = func_6(~countOneBits(~(vec3<u32>(56578u, 1u, 109102u) << (u_input.b % vec3<u32>(32u)))), true, global1[_wgslsmith_index_u32(func_5(func_4(func_1(vec4<f32>(global0.b, -299f, -539f, global0.b), vec4<u32>(4294967295u, global0.c.x, u_input.b.x, global0.c.x)), func_2(), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.a.x, -709i, 1i), global0.a.xwz), ~global0.c, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, global0.c.x, 10051u), vec3<u32>(u_input.b.x, 1u, 6513u))), countOneBits(~global0.a.wzy)), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b, global0.b), vec2<f32>(global0.b, global0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(367f, 882f)), vec2<bool>(true, true)))), ~min(vec2<i32>(global0.a.x, 0i), -vec2<i32>(global0.a.x, 20539i))), 6u)], Struct_1(-global0.a.ywx, _wgslsmith_mult_vec2_u32(~func_4(Struct_3(u_input.a, global0.b, vec3<bool>(false, true, false), vec4<u32>(4294967295u, 4294967295u, 49256u, global0.c.x), global0.a.xyx), Struct_2(vec4<i32>(global0.a.x, 2147483647i, global0.a.x, 51173i), global0.b, global0.c), Struct_1(vec3<i32>(1539i, global0.a.x, global0.a.x), vec2<u32>(u_input.a, 92913u), vec3<u32>(8626u, u_input.b.x, global0.c.x)), vec3<i32>(-11331i, 1i, global0.a.x)).c, ~vec2<u32>(u_input.b.x, 7926u)), firstLeadingBit(select(u_input.b, u_input.b, vec3<bool>(true, true, true)))));
    global0 = Struct_2(vec4<i32>(abs(_wgslsmith_sub_i32(~(-6130i), var_0.e.x)), ~var_0.e.x, 1i, _wgslsmith_dot_vec2_i32(countOneBits(func_6(vec3<u32>(0u, 4294967295u, 3129u), var_0.c.x, global1[_wgslsmith_index_u32(1u, 6u)], Struct_1(vec3<i32>(global0.a.x, var_0.e.x, var_0.e.x), u_input.b.zy, u_input.b)).e.zy), -global0.a.zy)), var_0.b, abs(abs(u_input.b.xy)));
    var var_1 = global1[_wgslsmith_index_u32(~(~(~3286u)), 6u)];
    var var_2 = -1363f;
    let var_3 = true;
    var var_4 = Struct_1(_wgslsmith_add_vec3_i32(abs(vec3<i32>(~global0.a.x, 0i, -2147483647i << (var_0.d.x % 32u))), ~vec3<i32>(-11825i, abs(var_0.e.x), select(global0.a.x, global0.a.x, false))), vec2<u32>(~(~1u), _wgslsmith_div_u32(var_0.d.x, var_0.d.x) >> (global0.c.x % 32u)) ^ u_input.b.xz, abs(var_0.d.wxx));
    let var_5 = !(!vec4<bool>(var_0.c.x, var_3, var_3, !var_0.c.x != true));
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, abs(firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(65587u, 37678u), 0u))), vec2<i32>(-36412i, var_4.a.x), ~1u, _wgslsmith_mult_vec2_u32(vec2<u32>(1u & _wgslsmith_mult_u32(var_0.a, u_input.b.x), firstTrailingBit(78971u)), global0.c));
}

