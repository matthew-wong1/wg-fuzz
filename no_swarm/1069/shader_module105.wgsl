struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(345f);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = select(vec2<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), max(64959i, _wgslsmith_clamp_i32(2147483647i, -8638i, arg_0.x)) >= _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, -5134i, arg_0.x), vec3<i32>(arg_0.x, 46211i, arg_0.x), arg_0.xww), vec3<i32>(-41887i, arg_0.x, -3420i) >> (vec3<u32>(4294967295u, 0u, 12593u) % vec3<u32>(32u)))), select(vec2<bool>(true, false), vec2<bool>(true, (u_input.a & u_input.a) == u_input.b.x), any(vec4<bool>(235f < global0.a, true, true, true))), select(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, true), false), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), false));
    global1 = arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-361f, 136f, -175f, global0.a))))));
    var var_2 = max(435i, _wgslsmith_dot_vec2_i32(arg_0.zz, _wgslsmith_mod_vec2_i32(arg_0.wx, _wgslsmith_mod_vec2_i32(arg_0.xz, arg_0.wy)) ^ firstLeadingBit(~vec2<i32>(arg_0.x, 2147483647i))));
    var var_3 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.b.x, 1u, ~0u, ~1u)), ~((_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 2264u, 15180u), vec4<u32>(40119u, u_input.b.x, 94196u, u_input.a)) << (select(vec4<u32>(4294967295u, 713u, 23629u, u_input.a), vec4<u32>(u_input.b.x, 0u, u_input.a, u_input.a), var_0.x) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.b.x, u_input.a, u_input.a, 14225u) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(-global1.a);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    global1 = Struct_1(_wgslsmith_f_op_f32(func_3(-_wgslsmith_mult_vec4_i32(-vec4<i32>(9636i, 0i, -1i, 2147483647i), vec4<i32>(0i, -4218i, 40457i, 1i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-367f + global2.a) - -2224f)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_2.a))))) + arg_1.a));
    global1 = Struct_1(1129f);
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), ~u_input.b.x), firstTrailingBit(u_input.b));
    var var_1 = select(select(vec3<bool>(true, all(vec4<bool>(false, false, false, true)), any(vec2<bool>(false, true))), !vec3<bool>(all(vec2<bool>(true, false)), u_input.b.x != 6343u, true), vec3<bool>(!all(vec4<bool>(true, false, false, false)), true, true)), !vec3<bool>(_wgslsmith_f_op_f32(-global1.a) >= _wgslsmith_f_op_f32(-1264f + -666f), false, all(vec3<bool>(true, true, true))), select(vec3<bool>(!all(vec2<bool>(false, true)), !any(vec2<bool>(false, true)), true), vec3<bool>(!all(vec4<bool>(false, true, true, true)), true, 1f != _wgslsmith_f_op_f32(sign(-249f))), false));
    return vec3<bool>(any(vec3<bool>(select(true, false, var_1.x || var_1.x), true, !var_1.x || true)), false, (arg_2.a < arg_1.a) & var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    global2 = arg_2;
    global0 = Struct_1(-1000f);
    let var_0 = 40467u;
    let var_1 = global0.a;
    let var_2 = Struct_1(global0.a);
    return _wgslsmith_sub_u32(~15594u, ~20374u);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global1 = Struct_1(1000f);
    let var_0 = func_4(Struct_1(global2.a), select(arg_0.wyz, arg_0.yzw, select(select(vec3<bool>(true, true, true), func_2(Struct_1(global1.a), Struct_1(global1.a), Struct_1(global2.a)), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true)))), Struct_1(_wgslsmith_f_op_f32(step(global2.a, _wgslsmith_f_op_f32(step(1000f, 484f))))));
    let var_1 = !vec4<bool>(func_2(Struct_1(_wgslsmith_div_f32(global0.a, -505f)), Struct_1(global1.a), Struct_1(global0.a)).x, !select(true, arg_0.x > arg_0.x, false), any(func_2(Struct_1(-1000f), Struct_1(global1.a), Struct_1(global1.a)).yz) && (var_0 >= var_0), true);
    var var_2 = vec3<bool>(!(true || func_2(Struct_1(1880f), Struct_1(388f), Struct_1(global0.a)).x), false, all(!var_1));
    var var_3 = 1194f;
    return Struct_1(_wgslsmith_f_op_f32(-global2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    var var_1 = func_1(vec4<i32>(_wgslsmith_div_i32(22586i, 1i >> (~u_input.a % 32u)), 33259i, -max(i32(-1i) * -12075i, 1i), -6561i));
    var_0 = u_input.a;
    global1 = func_1(vec4<i32>(i32(-1i) * -35515i, 66119i >> ((abs(u_input.a) ^ ~499u) % 32u), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(2147483647i, 2147483647i, -2147483647i)), vec3<i32>(1i, 1i, 1i)), firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(23543i, 12429i, -2147483647i), vec3<i32>(49198i, 70566i, -1i))))));
    global2 = func_1(reverseBits(vec4<i32>(1i, 36023i, 1i, 2147483647i << (func_4(Struct_1(var_1.a), vec3<i32>(0i, 16816i, 2147483647i), Struct_1(-252f)) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a);
}

