struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<bool, 17>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec2<u32> {
    global2 = array<bool, 17>();
    let var_0 = true;
    global0 = Struct_1(~u_input.c, !vec4<bool>(true, !any(vec4<bool>(var_0, false, global2[_wgslsmith_index_u32(0u, 17u)], global1.x)), false, true), true, _wgslsmith_add_i32(global0.d, u_input.c.x) ^ firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(global0.a.x, u_input.a.x, u_input.b.x, global0.d))));
    let var_1 = Struct_2(arg_1, ~select(i32(-1i) * -global0.d, -1i, var_0));
    var var_2 = Struct_2(min(vec2<u32>(firstLeadingBit(countOneBits(var_1.a.x)), _wgslsmith_mult_u32(u_input.d, 0u) & 12901u), vec2<u32>(~(arg_0.x << (arg_0.x % 32u)), 1u)), var_1.b);
    return _wgslsmith_div_vec2_u32(var_1.a, _wgslsmith_sub_vec2_u32(vec2<u32>(~(~10663u), arg_0.x), ~vec2<u32>(~0u, u_input.d)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global2 = array<bool, 17>();
    global2 = array<bool, 17>();
    global2 = array<bool, 17>();
    let var_0 = Struct_2(abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, u_input.d) & (vec2<u32>(33502u, u_input.d) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))), select(vec2<u32>(u_input.d, u_input.d), func_3(vec3<u32>(u_input.d, 67622u, 0u), vec2<u32>(u_input.d, 15955u)), global1.x | true))), ~_wgslsmith_sub_i32(-countOneBits(-1i), -1i));
    var var_1 = -1318f;
    return Struct_1(firstTrailingBit(u_input.c) << (_wgslsmith_mult_vec4_u32(vec4<u32>(~48525u, u_input.d, 49634u, ~58146u), vec4<u32>(u_input.d, ~var_0.a.x, _wgslsmith_mod_u32(0u, u_input.d), u_input.d)) % vec4<u32>(32u)), global0.b, arg_0, ~firstLeadingBit(~_wgslsmith_clamp_i32(var_0.b, 12542i, global0.d)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = !(!arg_0.b.zwy);
    global1 = !var_0.xz;
    global2 = array<bool, 17>();
    let var_1 = Struct_4(_wgslsmith_clamp_u32(17152u, _wgslsmith_mod_u32(97662u, 50860u), min(5712u, u_input.d)), Struct_2(vec2<u32>(u_input.d, u_input.d), min(arg_1.x, min(1i, 2147483647i) | _wgslsmith_mult_i32(2147483647i, arg_1.x))), global0.b);
    var var_2 = Struct_1(-vec4<i32>(reverseBits(_wgslsmith_mod_i32(1i, global0.a.x)), ~1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, 17585i), 1i), -arg_1.x & reverseBits(-31797i)), !(!(!func_2(false).b)), arg_0.b.x, -var_1.b.b);
    return Struct_2(~var_1.b.a, arg_3.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    global0 = Struct_1(global0.a, select(vec4<bool>(arg_1.c.x, global0.b.x, arg_1.c.x, any(select(vec2<bool>(global2[_wgslsmith_index_u32(arg_2.a.x, 17u)], global2[_wgslsmith_index_u32(arg_1.a, 17u)]), global0.b.yw, global0.b.xy))), vec4<bool>(all(vec4<bool>(true, true, true, true)), func_2(global0.b.x).c, true, true), arg_1.c), false, arg_2.b);
    global1 = arg_1.c.yx;
    global1 = !vec2<bool>(true, global1.x);
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-884f, -1430f), 1218f)) * -692f)), _wgslsmith_f_op_f32(sign(-241f)), _wgslsmith_f_op_f32(-389f * _wgslsmith_f_op_f32(abs(300f))));
    global0 = func_2(countOneBits(~74769u & _wgslsmith_mod_u32(arg_1.a, 1u)) < _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.a.x | 95839u, min(arg_1.a, u_input.d)), ~11682u));
    return func_2(!global2[_wgslsmith_index_u32(arg_2.a.x, 17u)]);
}

fn func_1() -> Struct_4 {
    let var_0 = ~u_input.e;
    let var_1 = Struct_3(func_5(func_4(func_2(all(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 17u)], false))), max(~vec4<i32>(var_0, global0.a.x, var_0, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-35205i, var_0, u_input.e, 2147483647i), vec4<i32>(global0.d, var_0, -2147483647i, -76063i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -493f))), countOneBits(abs(global0.a.zwz))), Struct_4(0u, func_4(func_2(true), select(vec4<i32>(global0.a.x, 3032i, global0.d, -1i), u_input.c, vec4<bool>(true, global1.x, true, false)), _wgslsmith_f_op_f32(round(569f)), u_input.c.xwy), select(global0.b, !vec4<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 17u)], global0.b.x), global1.x)), func_4(Struct_1(u_input.c, vec4<bool>(global0.c, true, global0.b.x, false), false, -7874i), global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1052f), func_2(true).a.zwx), func_3(max(vec3<u32>(u_input.d, 4294967295u, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d)), ~vec2<u32>(1u, u_input.d)).x << (~(u_input.d | 4294967295u) % 32u)));
    let var_2 = _wgslsmith_sub_i32(max(reverseBits(1i), _wgslsmith_dot_vec2_i32(var_1.a.a.zz, vec2<i32>(~var_1.a.a.x, _wgslsmith_div_i32(-2147483647i, u_input.b.x)))), _wgslsmith_mod_i32(global0.d, 1i));
    var var_3 = Struct_3(var_1.a);
    var var_4 = ~69961i;
    return Struct_4(u_input.d, func_4(var_3.a, max(-var_3.a.a, max(var_3.a.a, global0.a)) & reverseBits(vec4<i32>(var_1.a.a.x, 2147483647i, var_1.a.a.x, u_input.e) << (vec4<u32>(48215u, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-299f, 952f)))), vec3<i32>(-_wgslsmith_mod_i32(56657i, -1i), firstLeadingBit(0i), ~min(global0.d, u_input.b.x))), vec4<bool>(func_2(max(var_3.a.d, 25481i) > _wgslsmith_mod_i32(var_0, 31186i)).c, global1.x, all(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 17u)], true, global2[_wgslsmith_index_u32(u_input.d, 17u)] & false)), any(global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.b.a;
    let var_2 = _wgslsmith_mult_i32(global0.d, -var_0.b.b);
    let var_3 = _wgslsmith_dot_vec4_i32(max(global0.a, -(func_5(var_0.b, Struct_4(0u, var_0.b, global0.b), var_0.b, 56898u).a | ~global0.a)), min(vec4<i32>(15517i, var_0.b.b, var_2, var_2), u_input.c));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(1358f)), _wgslsmith_div_f32(-297f, -1239f), -628f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    var_1 = vec2<u32>(u_input.d, ~1u);
    var var_5 = 28839i;
    var var_6 = Struct_3(func_2(true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(var_4.x + -260f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + var_4.x)), _wgslsmith_f_op_f32(min(-418f, _wgslsmith_f_op_f32(exp2(var_4.x))))))), _wgslsmith_div_u32(27620u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(48327u, var_0.b.a.x, var_1.x) << (vec3<u32>(var_0.b.a.x, u_input.d, 732u) % vec3<u32>(32u)), select(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(1u, var_0.a, var_0.a), var_6.a.b.ywx)), reverseBits(var_0.a))), firstLeadingBit(vec3<u32>(u_input.d, ~var_0.b.a.x, abs(u_input.d))) ^ vec3<u32>(var_0.b.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, var_1.x, var_1.x), vec3<u32>(var_1.x, 4963u, var_0.a)), 1u), _wgslsmith_add_i32(select(u_input.e, 1i, global0.c), -var_3), 4294967295u);
}

