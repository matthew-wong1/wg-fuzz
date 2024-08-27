struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec4<i32>, 28>;

var<private> global2: array<Struct_1, 6>;

var<private> global3: vec3<u32> = vec3<u32>(79355u, 41258u, 4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> f32 {
    global1 = array<vec4<i32>, 28>();
    let var_0 = vec4<i32>(firstTrailingBit(u_input.d & 29320i), -53484i, abs(u_input.d & u_input.d), _wgslsmith_clamp_i32(u_input.d, _wgslsmith_div_i32(-1i, -u_input.d) & _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d, 28105i), 1i), u_input.d));
    let var_1 = global2[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(arg_0, abs(~0u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_0, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 3264u, u_input.b.x, 1u), vec4<u32>(4294967295u, 27721u, u_input.a.x, 0u))) << (max(arg_0, 1u) % 32u))), 6u)];
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-1166f + -278f));
    let var_3 = vec2<bool>(true, false);
    return 104f;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    global1 = array<vec4<i32>, 28>();
    var var_0 = vec3<bool>(true, true, -1162f >= arg_1);
    global0 = array<Struct_1, 16>();
    global2 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1157f, 119f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_0.a))), 436f), vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-407f, 2445f) + arg_1) + -477f), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(19455u, select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x)))) + _wgslsmith_f_op_f32(-arg_1)))));
    return vec4<bool>(var_0.x, var_0.x, true, all(select(var_0.yz, !select(vec2<bool>(false, var_0.x), var_0.zz, var_0.xz), select(select(vec2<bool>(var_0.x, false), var_0.yz, true), !var_0.xy, var_0.x))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: bool) -> Struct_1 {
    global0 = array<Struct_1, 16>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1731f, -808f))))));
    global3 = firstLeadingBit(vec3<u32>(reverseBits(4294967295u), ~firstTrailingBit(1u), ~36258u));
    var var_1 = ~_wgslsmith_clamp_vec3_u32(countOneBits(~(u_input.a & vec3<u32>(4294967295u, u_input.b.x, global3.x))), ~vec3<u32>(~35856u, ~global3.x, u_input.b.x >> (u_input.c.x % 32u)), u_input.a);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b.x, !vec3<bool>(arg_2, false, arg_0))) + _wgslsmith_f_op_f32(610f - _wgslsmith_div_f32(-1057f, -264f))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-404f))) * _wgslsmith_f_op_f32(f32(-1f) * -790f)), _wgslsmith_f_op_f32(floor(114f)))));
    return Struct_1(_wgslsmith_f_op_f32(366f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1332f, -1311f, arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -158f))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    var var_0 = func_4(select(false, true, any(func_2(Struct_1(-1000f), 157f)) || false), u_input.d | ~u_input.d, false);
    global3 = vec3<u32>(min(arg_0.x | ~4294967295u, u_input.b.x), 28367u, ~_wgslsmith_mult_u32(global3.x << (_wgslsmith_mult_u32(arg_0.x, 33885u) % 32u), global3.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, -947f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, -1015f))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, var_0.a, var_0.a), vec3<f32>(var_0.a, var_0.a, 228f))))))), !vec3<bool>(arg_2.x, false, !(var_0.a == -1777f))));
    let var_2 = Struct_1(-439f);
    global2 = array<Struct_1, 6>();
    return _wgslsmith_clamp_u32(32076u, abs(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(8823u, global3.x, 436u, global3.x), vec4<u32>(u_input.b.x, 1u, 1u, 640u)))), ~arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    global1 = array<vec4<i32>, 28>();
    var var_0 = max(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, firstLeadingBit(u_input.d), 2147483647i), ~vec3<i32>(u_input.d, u_input.d, u_input.d))), vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, u_input.d, 1i, u_input.d) >> (vec4<u32>(global3.x, 6158u, global3.x, u_input.b.x) % vec4<u32>(32u)), reverseBits(global1[_wgslsmith_index_u32(0u, 28u)]) | -vec4<i32>(u_input.d, -1i, 23781i, u_input.d)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(57864i, -8514i, u_input.d, 14615i), global1[_wgslsmith_index_u32(2397u, 28u)], true), global1[_wgslsmith_index_u32(global3.x >> (global3.x % 32u), 28u)]), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-45330i, 39439i, 0i, 65398i)), global1[_wgslsmith_index_u32(u_input.a.x, 28u)])), 56108i));
    global3 = ~min(~(~u_input.a >> ((u_input.a >> (vec3<u32>(global3.x, global3.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<u32>(select(13479u, ~u_input.b.x, true), global3.x, func_1(vec3<u32>(u_input.a.x, 0u, 37536u), true, vec3<bool>(true, true, true))));
    var var_1 = global1[_wgslsmith_index_u32(59058u, 28u)];
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1028f)), _wgslsmith_f_op_f32(f32(-1f) * -1393f)))));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2.a, -659f)))), _wgslsmith_f_op_f32(var_2.a + var_2.a))));
    var var_4 = ~max(abs(~var_1.x), -17399i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, 934f, -497f, -613f))))));
}

