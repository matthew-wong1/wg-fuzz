struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(903f, 2853f, 612f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = !vec2<bool>(!all(vec4<bool>(true, true, true, true)), !(~arg_0.x >= ~u_input.a));
    let var_1 = !(!var_0.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(388f, -191f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(3026f, -1082f), vec2<f32>(arg_1.x, global0.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(223f, arg_1.x) - arg_1.xy))), _wgslsmith_f_op_vec2_f32(arg_1.yy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -561f);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.d.a.x, 1169f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a.x - 570f), _wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.c, 27893i), arg_0.d.a)), arg_1.x >= u_input.b.x)))) * -267f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(1i, 1i), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-655f, arg_3.a.x, 1835f))))))));
    let var_1 = arg_3;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, var_0.x, var_0.x), vec3<f32>(-520f, arg_0.d.a.x, global0.a.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, global0.a.x, 1000f))), select(vec3<bool>(false, false, true), vec3<bool>(arg_2, arg_0.a.x, false), arg_2)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1.a)))));
    let var_2 = vec2<u32>(_wgslsmith_add_u32(reverseBits(~u_input.b.x), u_input.b.x), ~(~u_input.b.x));
    var var_3 = Struct_2(arg_0.a, vec2<i32>(~(arg_0.e & ~u_input.c), reverseBits(-12025i ^ u_input.c) | _wgslsmith_dot_vec2_i32(arg_0.b, abs(arg_0.b))), arg_0.c >> (~countOneBits(max(u_input.b, vec3<u32>(u_input.b.x, 4294967295u, var_2.x))) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1249f, -835f, 726f))), u_input.a);
    return var_3.d;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(479f, 783f) - -544f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * -375f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - arg_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), -464f, _wgslsmith_div_f32(-701f, arg_1.a.x), global0.a.x))));
    let var_1 = !arg_2.a.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-509f - -703f), _wgslsmith_f_op_f32(-global0.a.x), arg_2.a.x))), 1f);
    let var_3 = func_2(Struct_2(select(vec2<bool>(true, true), !arg_2.a, select(!arg_2.a, !arg_2.a, arg_2.a.x)), ~(-arg_2.b), ~vec3<i32>(u_input.c, 1i, i32(-1i) * -2147483647i), arg_2.d, ~countOneBits(1i)), vec3<u32>(u_input.b.x, ~u_input.b.x, u_input.b.x), select(false, !((var_1 & var_1) | true), arg_2.a.x), func_2(arg_2, u_input.b, true, func_2(arg_2, ~u_input.b, all(vec3<bool>(arg_2.a.x, arg_0, var_1)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(global0.a))))));
    let var_4 = vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(46460u, firstTrailingBit(u_input.b.x), arg_3), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), _wgslsmith_mult_u32(arg_3, 4294967295u), ~1u)), abs(arg_3 >> (firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(arg_3, 66659u))) % 32u)));
    return i32(-1i) * -2147483647i;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = vec4<i32>(min(_wgslsmith_add_i32(abs(countOneBits(arg_1.x)), -arg_1.x), 2147483647i), -_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_1.x, 0i), arg_1.x), func_4(arg_0, func_2(Struct_2(!vec2<bool>(arg_0, true), vec2<i32>(arg_1.x, -27049i), vec3<i32>(u_input.c, 1i, u_input.c) >> (vec3<u32>(u_input.b.x, 55635u, 24537u) % vec3<u32>(32u)), Struct_1(vec3<f32>(128f, global0.a.x, global0.a.x)), abs(u_input.a)), u_input.b, !(-1414f >= global0.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(170f, -1471f, -209f))))), Struct_2(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), false), vec2<i32>(-1i) * -arg_1.xz, arg_1, func_2(Struct_2(vec2<bool>(false, arg_0), vec2<i32>(u_input.c, arg_1.x), vec3<i32>(arg_1.x, -1i, 1i), Struct_1(vec3<f32>(-607f, -113f, 630f)), -13830i), ~vec3<u32>(u_input.b.x, 11887u, u_input.b.x), arg_0, Struct_1(global0.a)), -(-1i << (u_input.b.x % 32u))), reverseBits(countOneBits(~u_input.b.x))), -37010i);
    var var_1 = Struct_2(vec2<bool>(!(arg_1.x >= (i32(-1i) * -22286i)), false), ~arg_1.yy & reverseBits(abs(vec2<i32>(-1i, arg_1.x))), arg_1, Struct_1(vec3<f32>(-949f, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, global0.a.x)))), -_wgslsmith_sub_i32(4940i, 4212i));
    let var_2 = ~_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(0u, u_input.b.x)), ~(u_input.b.yy ^ vec2<u32>(u_input.b.x, 1u))) ^ ~0u;
    global0 = var_1.d;
    let var_3 = ~(abs(firstLeadingBit(vec3<u32>(4294967295u, 1u, u_input.b.x) >> (u_input.b % vec3<u32>(32u)))) << (u_input.b % vec3<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-309f, var_1.d.a.x, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.a.x, global0.a.x, -744f) + global0.a) + global0.a) - vec3<f32>(_wgslsmith_f_op_f32(-1969f - -2867f), _wgslsmith_f_op_f32(max(372f, var_1.d.a.x)), -1000f)))));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(vec2<bool>(true, true), firstLeadingBit(vec2<i32>(~u_input.a, min(reverseBits(u_input.a), select(u_input.c, u_input.c, true)))), -select(-vec3<i32>(u_input.a, 1i, 23332i), vec3<i32>(-2147483647i, _wgslsmith_div_i32(u_input.c, -29215i), countOneBits(u_input.a)), all(vec4<bool>(true, true, true, true))), arg_0, -(~41127i) ^ u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec4<i32>(2987i, -1i, u_input.c, u_input.a));
    let var_1 = func_5(func_1(select(true, true == (u_input.a < var_0.x), false), ~(-vec3<i32>(var_0.x, 27164i, 2147483647i) | var_0.yzy)));
    global0 = func_2(Struct_2(func_5(func_5(var_1.d).d).a, abs(-(~var_0.yw)), -(vec3<i32>(-1i) * -vec3<i32>(u_input.a, var_1.b.x, 44326i)), var_1.d, 1i), countOneBits(~u_input.b >> (~u_input.b % vec3<u32>(32u))), true | ((any(vec3<bool>(false, var_1.a.x, var_1.a.x)) && true) || true), Struct_1(global0.a));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-218f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -852f))) + global0.a));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.d.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, 7268i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(590f, var_1.d.a.x)), -197f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global0.a.x))))) + _wgslsmith_f_op_f32(f32(-1f) * -883f)));
}

