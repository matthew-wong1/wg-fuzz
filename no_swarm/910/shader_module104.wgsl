struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u);

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(4294967295u, 13420u, 0u), vec3<u32>(0u, 64422u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 2396u), vec3<u32>(79911u, 1u, 28631u), vec3<u32>(4294967295u, 5447u, 85470u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(40603u, 39178u, 4294967295u), vec3<u32>(75376u, 2939u, 28885u), vec3<u32>(4294967295u, 30344u, 4294967295u), vec3<u32>(0u, 4294967295u, 11994u), vec3<u32>(52145u, 3801u, 1u), vec3<u32>(4294967295u, 58309u, 22631u), vec3<u32>(4294967295u, 64301u, 58997u), vec3<u32>(28727u, 1u, 1u), vec3<u32>(0u, 1u, 38790u), vec3<u32>(85287u, 0u, 1u), vec3<u32>(4294967295u, 66141u, 4801u), vec3<u32>(4294967295u, 34026u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(35228u, 30395u, 1u), vec3<u32>(4294967295u, 4294967295u, 91256u), vec3<u32>(4294967295u, 64602u, 0u));

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    global0 = arg_3;
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(sign(arg_0.x)))), _wgslsmith_f_op_f32(select(2619f, arg_0.x, true))) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(602f, arg_0.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1449f) + 3433f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), 199f))))));
    return vec3<bool>(arg_2, !global3.x, u_input.c > _wgslsmith_add_i32(-1i, ~(-2147483647i)));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    global1 = vec3<bool>(false, true, !(!(!global3.x && true)));
    global1 = func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2978f) - -405f), -780f)), ~(~global0.a), true, Struct_1(0u));
    var var_0 = Struct_1(~(arg_0 << (~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 0u), vec2<u32>(arg_0, 0u)) % 32u)));
    var var_1 = global3.zx;
    let var_2 = -354f;
    return select(select(vec4<bool>(!global1.x, global3.x, !select(true, global3.x, false), 28440i <= (u_input.b.x ^ -1i)), !select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, global1.x, global3.x, true), vec4<bool>(global3.x, true, false, var_1.x), false), any(global1.xz)), func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-145f, -2860f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) * vec2<f32>(-282f, var_2))), ~firstTrailingBit(global0.a), all(!vec2<bool>(var_1.x, global1.x)), Struct_1(firstTrailingBit(arg_0))).x), select(vec4<bool>(!(!var_1.x), false, global3.x, global1.x), vec4<bool>(true, 1u > _wgslsmith_add_u32(arg_0, 952u), ~u_input.b.x != _wgslsmith_mod_i32(u_input.a.x, u_input.e.x), false), global1.x), true);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = select(vec4<bool>(global1.x, true, arg_2, !all(select(global3.yw, vec2<bool>(true, arg_2), global3.wz))), select(vec4<bool>(!arg_0 | false, true, any(vec3<bool>(false, true, false)), true), vec4<bool>(arg_0, true, !global1.x != true, any(global3.xy)), vec4<bool>(arg_2, true, !(!global3.x), arg_2)), !select(!(!vec4<bool>(false, false, global1.x, true)), func_2(_wgslsmith_mult_u32(1u, arg_1)), select(!vec4<bool>(true, false, true, arg_2), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(arg_0, arg_2, global3.x, arg_0), true), true)));
    var var_1 = reverseBits(-(~vec4<i32>(abs(u_input.e.x), 42345i ^ u_input.b.x, firstLeadingBit(-39998i), ~u_input.e.x)));
    global0 = Struct_1(70058u ^ global0.a);
    var var_2 = Struct_1(1u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, arg_1, 9382u), vec3<u32>(arg_1, arg_1, arg_1) >> (vec3<u32>(1u, 23066u, global0.a) % vec3<u32>(32u))) % 32u));
    global3 = vec4<bool>(((countOneBits(arg_1) ^ ~u_input.d.x) < _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d.x), u_input.d.yx)) & func_2(~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(39227u, global0.a, u_input.d.x))).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(880f, -1030f))), 861f) == _wgslsmith_f_op_f32(f32(-1f) * -906f), !var_0.x, true);
    return Struct_1(1u | ~(~max(u_input.d.x, arg_1)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> vec3<u32> {
    let var_0 = func_1(arg_3.x | arg_3.x, global0.a, true);
    global0 = var_0;
    let var_1 = u_input.d;
    let var_2 = true;
    global2 = array<vec3<u32>, 23>();
    return vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.d.x, max(u_input.d.x, var_0.a), var_0.a ^ 0u, ~26672u), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a, var_1.x, 73147u, var_1.x) & vec4<u32>(33591u, arg_1.a, 0u, 15006u), ~vec4<u32>(49512u, arg_2.a, var_0.a, var_0.a), vec4<u32>(global0.a, global0.a, 4294967295u, 30235u)))), _wgslsmith_mod_u32(arg_1.a, 30066u), ~5085u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(global2[_wgslsmith_index_u32(1u, 23u)] | ~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.a, 1003u, 37365u), vec3<u32>(u_input.d.x, u_input.d.x, global0.a)), func_4(vec2<i32>(-u_input.c, u_input.e.x) | ~u_input.b.xx, func_1(global3.x, 21731u, true), func_1(global1.x, global0.a, true), vec3<bool>(true, true, true)));
    var var_1 = u_input.a;
    var var_2 = !global1.x;
    var var_3 = Struct_1(57038u);
    let var_4 = _wgslsmith_dot_vec3_u32(~(min(vec3<u32>(u_input.d.x, 1u, 4294967295u), u_input.d) >> (global2[_wgslsmith_index_u32(0u, 23u)] % vec3<u32>(32u))), u_input.d);
    let var_5 = func_1(global1.x, ~1u, select(global1.x, global1.x, global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1984f, _wgslsmith_add_vec2_i32(var_1.xx, ~vec2<i32>(17328i, var_1.x)));
}

