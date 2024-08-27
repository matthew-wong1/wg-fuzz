struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9>;

var<private> global1: array<vec3<i32>, 12>;

var<private> global2: vec3<f32> = vec3<f32>(-603f, -1000f, -1858f);

var<private> global3: Struct_1 = Struct_1(2147483647i, vec3<bool>(true, true, false), false, vec4<bool>(false, true, true, false));

var<private> global4: f32 = 1140f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = array<vec2<bool>, 9>();
    var var_0 = _wgslsmith_f_op_f32(-global2.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + -863f));
    return arg_2.a;
}

fn func_3() -> vec2<u32> {
    let var_0 = vec4<u32>(select(u_input.a | countOneBits(1u), ~abs(1u), !(!global3.c)) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 12703u, u_input.a), firstLeadingBit(vec3<u32>(46200u, u_input.a, 10955u) << (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)))), ~(~(~56503u)), u_input.a | u_input.a, u_input.a);
    var var_1 = _wgslsmith_div_vec2_i32(-(~vec2<i32>(-20004i, global3.a ^ -2147483647i)), vec2<i32>(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(40849i, 2147483647i, global3.a, global3.a) >> (var_0 % vec4<u32>(32u)), abs(vec4<i32>(0i, global3.a, -2147483647i, -6807i))), vec4<i32>(-1i, global3.a | 36639i, -global3.a, 1i))));
    global1 = array<vec3<i32>, 12>();
    global1 = array<vec3<i32>, 12>();
    var var_2 = var_0.zz;
    return (vec2<u32>(_wgslsmith_add_u32(~u_input.a, 0u << (var_0.x % 32u)), var_2.x << (58770u % 32u)) >> (~(~vec2<u32>(0u, 89012u)) % vec2<u32>(32u))) << (~vec2<u32>(~u_input.a >> (var_2.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(43198u, 3431u, 1u), var_0.xwy)) % vec2<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: bool) -> vec2<i32> {
    var var_0 = false;
    global4 = _wgslsmith_div_f32(arg_2, 1020f);
    let var_1 = _wgslsmith_f_op_f32(-arg_2);
    var_0 = false;
    let var_2 = vec4<u32>(u_input.a, _wgslsmith_clamp_u32(select(arg_1, abs(26136u), arg_0 || arg_3) >> (~u_input.a % 32u), u_input.a, u_input.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(max(0u, 0u), select(62408u, 4294967295u, true), ~1u, 70447u), select(~vec4<u32>(1u, 0u, 0u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_1, u_input.a, 1u), vec4<u32>(12901u, u_input.a, 1u, u_input.a)), !vec4<bool>(arg_3, arg_3, true, true))), ~1u);
    return vec2<i32>(func_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(54770i, 1i, 0i, global3.a), vec4<i32>(-1i, global3.a, -1i, -2147483647i)), global3.d.yzy, !arg_0, vec4<bool>(false, arg_0, global3.c, arg_0)), Struct_1(firstTrailingBit(global3.a), global3.d.yzy, !global3.d.x, select(vec4<bool>(false, true, true, true), global3.d, global3.d)), Struct_1(1971i, global3.b, global3.d.x, vec4<bool>(arg_0, global3.d.x, arg_3, arg_0))), ~12792i) ^ ((select(-vec2<i32>(global3.a, global3.a), vec2<i32>(0i, 0i) & vec2<i32>(-1i, global3.a), vec2<bool>(global3.b.x, arg_3)) >> (var_2.ww % vec2<u32>(32u))) >> (func_3() % vec2<u32>(32u)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -145f)), -388f, global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global2.x, global2.x)), global2.x))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -220f, 555f, 743f), vec4<f32>(global2.x, 645f, -548f, global2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global2.x, 703f, -679f), vec4<f32>(401f, global2.x, -1965f, global2.x), arg_2)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-659f * global2.x), -1000f, -966f, 1451f)) - vec4<f32>(885f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-607f)), _wgslsmith_f_op_f32(global2.x - 1227f), arg_2.x)), global2.x, _wgslsmith_f_op_f32(f32(-1f) * -415f)))));
    var var_1 = 1u;
    var var_2 = Struct_1(2147483647i, select(select(vec3<bool>(false, true, true), vec3<bool>(!arg_3.x, arg_3.x, false), true), vec3<bool>(true, true, true), global3.d.xwx), arg_0.x, !(!(!vec4<bool>(true, true, arg_3.x, global3.b.x))));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(floor(-1000f)), var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-511f, _wgslsmith_div_f32(global2.x, global2.x), u_input.a >= 0u))), var_0.x, _wgslsmith_f_op_f32(sign(var_0.x))), (!arg_3.x & any(global3.d)) != arg_0.x));
    return Struct_1(-(_wgslsmith_div_i32(arg_1.x, global3.a) << (u_input.a % 32u)), arg_2.xxy, true, select(select(vec4<bool>(arg_0.x, arg_3.x & var_2.d.x, global3.a >= 20999i, select(true, arg_2.x, false)), select(!vec4<bool>(false, true, global3.d.x, arg_2.x), var_2.d, any(var_2.d.zyx)), vec4<bool>(true, all(vec2<bool>(true, true)), any(vec2<bool>(false, arg_0.x)), global3.d.x)), select(vec4<bool>(2147483647i != var_2.a, all(vec4<bool>(arg_3.x, arg_0.x, false, arg_3.x)), true, global3.b.x || false), !vec4<bool>(arg_3.x, arg_0.x, true, false), true), true));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    global4 = 838f;
    var var_0 = ~_wgslsmith_sub_vec3_u32((_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 18758u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a)) << ((vec3<u32>(4294967295u, u_input.a, u_input.a) | vec3<u32>(u_input.a, u_input.a, 4294967295u)) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(18041u, u_input.a, u_input.a), vec3<u32>(4294967295u, 60705u, 24027u)), ~vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), vec3<u32>(~(~39746u), reverseBits(5645u) >> (u_input.a % 32u), abs(~u_input.a)));
    var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(17653u, var_0.x, _wgslsmith_mod_u32(max(firstTrailingBit(34182u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.a), var_0.xz)), var_0.x)), ~_wgslsmith_mult_vec3_u32(~max(vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<u32>(u_input.a, var_0.x, var_0.x)), vec3<u32>(17269u, 27134u, var_0.x) | (vec3<u32>(4294967295u, 4294967295u, var_0.x) ^ vec3<u32>(u_input.a, var_0.x, 1u))));
    global1 = array<vec3<i32>, 12>();
    var var_1 = !(!global0[_wgslsmith_index_u32(var_0.x, 9u)]);
    return Struct_1(_wgslsmith_mult_i32(min(func_2(Struct_1(arg_0.a, arg_0.b, arg_1.x, arg_0.d), func_4(vec2<bool>(global3.d.x, var_1.x), vec2<i32>(-24939i, arg_0.a), arg_0.d, global3.d), Struct_1(global3.a, arg_0.b, var_1.x, vec4<bool>(false, var_1.x, arg_1.x, true))), min(~2147483647i, 38625i)), -43293i), select(vec3<bool>(!any(vec4<bool>(false, false, false, arg_0.d.x)), global3.d.x, global2.x != _wgslsmith_f_op_f32(min(global2.x, 155f))), select(arg_0.b, vec3<bool>(true, true & var_1.x, arg_0.d.x), true), !select(vec3<bool>(true, arg_0.c, true), !arg_0.b, vec3<bool>(false, global3.d.x, false))), global3.d.x, select(func_4(!arg_0.d.xy, firstLeadingBit(~vec2<i32>(global3.a, 1i)), select(select(arg_0.d, arg_0.d, arg_0.d.x), vec4<bool>(arg_0.b.x, var_1.x, var_1.x, arg_0.c), arg_0.d), !global3.d).d, global3.d, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(global3.c, false, (~(u_input.a & 1u) >= u_input.a) && global3.c);
    var var_1 = func_5(func_4(vec2<bool>(global3.d.x, !(!var_0.x)), select(min(vec2<i32>(global3.a, global3.a), countOneBits(vec2<i32>(-21028i, global3.a))), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global3.a, global3.a), vec2<i32>(1849i, 16943i)), func_1(global3.c, u_input.a, global2.x, global3.d.x)), true || all(vec4<bool>(false, false, var_0.x, false))), !(!vec4<bool>(true, var_0.x, var_0.x, false)), select(select(global3.d, !vec4<bool>(false, true, global3.b.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !select(global3.d, vec4<bool>(global3.d.x, global3.c, true, global3.c), false), true)), vec3<bool>(any(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(78688u, u_input.a), u_input.a), 9u)]), any(global3.d), var_0.x));
    let var_2 = all(var_1.b);
    global4 = _wgslsmith_f_op_f32(-global2.x);
    global1 = array<vec3<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-(i32(-1i) * -57995i), _wgslsmith_clamp_vec2_i32(-abs(max(vec2<i32>(var_1.a, global3.a), vec2<i32>(global3.a, global3.a))), vec2<i32>(func_1(true, _wgslsmith_sub_u32(u_input.a, 1u), global2.x, func_4(vec2<bool>(true, true), vec2<i32>(var_1.a, global3.a), vec4<bool>(var_0.x, true, global3.d.x, var_1.b.x), vec4<bool>(var_2, false, false, true)).c).x, ~global3.a), _wgslsmith_mult_vec2_i32(~vec2<i32>(-17841i, var_1.a) >> ((vec2<u32>(1u, 0u) << (vec2<u32>(u_input.a, 47105u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(var_1.a, var_1.a))));
}

