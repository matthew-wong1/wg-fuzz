struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: i32 = 1i;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, false, true, false), vec2<u32>(58524u, 0u), -499i, vec3<i32>(i32(-2147483648), 2147483647i, -18503i)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, true, true), vec2<u32>(4294967295u, 4294967295u), i32(-2147483648), vec3<i32>(-20747i, 21588i, -38871i)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, false, true), vec2<u32>(0u, 53969u), -28748i, vec3<i32>(i32(-2147483648), -36144i, -3434i)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, false, true), vec2<u32>(44869u, 18834u), -1250i, vec3<i32>(-13204i, -45693i, 32373i)), Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, true, true, true), vec2<u32>(9305u, 72119u), i32(-2147483648), vec3<i32>(i32(-2147483648), i32(-2147483648), 9910i)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, false, false, true), vec2<u32>(583u, 41635u), 7822i, vec3<i32>(-7619i, -1i, -33258i)));

var<private> global4: vec4<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, arg_0, 1597f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -997f, 815f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(178f, arg_0, arg_0, -1115f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -569f, 404f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 544f, -509f, 964f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, 778f, arg_0))))))));
    let var_1 = Struct_1(vec3<bool>(false, _wgslsmith_sub_i32(8322i, ~arg_1.d) > _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.e.x, arg_1.d, arg_1.e.x, 50086i), select(vec4<i32>(global2.e.x, -1i, arg_2.d, 0i), vec4<i32>(-2147483647i, arg_1.e.x, arg_1.e.x, -55432i), false)), global0.x), vec4<bool>(true, any(select(vec3<bool>(true, true, true), arg_1.a, false)), true && (!global0.x && false), select(true, true, arg_2.b.x) & arg_1.b.x), ~arg_1.c & select(vec2<u32>(global2.c.x, ~u_input.b.x), u_input.b.xy, select(global4.yy, vec2<bool>(global2.b.x, global0.x), arg_2.a.yy)), global2.e.x, countOneBits(vec3<i32>(~8633i, 42275i, 2147483647i)) & vec3<i32>(-14385i, -34857i, min(max(arg_2.d, arg_1.d), _wgslsmith_clamp_i32(arg_2.d, arg_2.d, -4389i))));
    let var_2 = var_1;
    var var_3 = vec2<bool>(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-104f + var_0.x), var_0.x) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1365f, 118f)), _wgslsmith_f_op_f32(f32(-1f) * -427f), arg_2.b.x))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-282f, arg_0))) - -244f));
    let var_4 = ~(_wgslsmith_div_i32(-2147483647i, arg_2.e.x) << (~reverseBits(abs(35533u)) % 32u));
    return var_2.d;
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = u_input.b.wz;
    let var_1 = vec3<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.xyy, u_input.b.xwy), vec3<u32>(29336u, var_0.x, 56664u)), min(max(1u, global2.c.x), global2.c.x), 48094u);
    global1 = _wgslsmith_sub_i32(-abs(abs(-23446i)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)), arg_0, Struct_1(vec3<bool>(global0.x, global4.x, global2.a.x), vec4<bool>(true, false, false, arg_0.a.x), ~var_1.yz, arg_0.e.x, global2.e << (vec3<u32>(1u, u_input.a, u_input.b.x) % vec3<u32>(32u)))) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -2000i, ~global2.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global2.d, -1i), vec3<i32>(0i, -1i, 1i)), _wgslsmith_mod_i32(global2.e.x, 0i)), abs(~vec4<i32>(arg_0.d, arg_0.e.x, global2.e.x, 37652i))));
    return _wgslsmith_dot_vec4_i32(-firstLeadingBit(countOneBits(max(vec4<i32>(global2.e.x, global2.d, 24843i, global2.d), vec4<i32>(global2.d, arg_0.e.x, 20428i, 0i)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-42762i), -global2.e.x, ~arg_0.d, -73038i), select(vec4<i32>(global2.e.x, 33769i, -2147483647i, arg_0.e.x), max(vec4<i32>(-37791i, 0i, global2.d, -1i), vec4<i32>(2147483647i, global2.e.x, -2147483647i, global2.d)), true), -countOneBits(vec4<i32>(arg_0.d, global2.d, -1i, 1i))) >> (_wgslsmith_div_vec4_u32(u_input.b, u_input.b & u_input.b) % vec4<u32>(32u)));
}

fn func_1(arg_0: f32) -> u32 {
    global1 = i32(-1i) * -2147483647i;
    var var_0 = global2.c.x;
    global3 = array<Struct_1, 6>();
    var var_1 = min(vec3<i32>(reverseBits(global2.d), -50251i, _wgslsmith_div_i32(global2.d, _wgslsmith_mod_i32(~global2.e.x, global2.e.x))), select(-global2.e, vec3<i32>(global2.e.x, ~(global2.e.x ^ -38350i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global2.e.zx, vec2<i32>(-1i, global2.e.x), global2.e.zx), reverseBits(global2.e.zy))), any(select(vec4<bool>(global4.x, global0.x, true, global0.x), vec4<bool>(global4.x, true, false, false), vec4<bool>(global2.b.x, global4.x, false, false))) & all(!vec4<bool>(false, global4.x, true, global0.x))));
    global1 = min(0i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(func_2(global3[_wgslsmith_index_u32(u_input.b.x, 6u)]), _wgslsmith_div_i32(var_1.x, -102i)), i32(-1i) * -1i)) | -(~(_wgslsmith_mult_i32(-2669i, var_1.x) | global2.e.x));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(global2.c.x) ^ abs(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-125f)) + _wgslsmith_f_op_f32(floor(-593f)))));
    var var_1 = global3[_wgslsmith_index_u32(firstTrailingBit(0u), 6u)];
    let var_2 = false;
    let var_3 = Struct_1(select(!vec3<bool>(!global4.x, true, any(vec4<bool>(global2.b.x, global0.x, var_2, global4.x))), !(!select(global4.wxy, var_1.a, global4.x)), false), var_1.b, ~_wgslsmith_clamp_vec2_u32((u_input.b.zy ^ u_input.b.yy) << (u_input.b.wx % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1.c.x), ~u_input.b.xx), _wgslsmith_mult_vec2_u32(var_1.c << (u_input.b.wz % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), global2.c, var_1.c))), min((_wgslsmith_sub_i32(global2.e.x, -2147483647i) & global2.e.x) << (var_1.c.x % 32u), -1i), -var_1.e);
    var var_4 = global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_3.c.x, ~((u_input.b.x & 41555u) ^ min(4294967295u, 13003u))), 6u)];
    let var_5 = _wgslsmith_f_op_f32(max(-651f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1000f))))))));
    let var_6 = var_3;
    let var_7 = Struct_1(!(!var_4.b.wwx), select(var_6.b, global2.b, !vec4<bool>(true, var_4.b.x, true, true)), global2.c, 37985i, -var_6.e);
    var var_8 = var_7;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-673f + var_5), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_5))))));
}

