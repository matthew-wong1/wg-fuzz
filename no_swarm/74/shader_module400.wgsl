struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-3531i, -1i), vec2<i32>(-1i, -2366i), vec2<i32>(-1i, 1i), vec2<i32>(19315i, 38737i), vec2<i32>(66369i, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(-44145i, -1i), vec2<i32>(30569i, 43401i), vec2<i32>(i32(-2147483648), -25085i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, -44308i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, -7882i), vec2<i32>(18240i, 60562i), vec2<i32>(1i, 8457i), vec2<i32>(-24670i, 18454i), vec2<i32>(i32(-2147483648), 5881i), vec2<i32>(18767i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -10356i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(1i, 58936i), vec2<i32>(1i, 1i), vec2<i32>(-17200i, -13495i), vec2<i32>(0i, -13849i), vec2<i32>(-34699i, 26526i), vec2<i32>(-67127i, 32694i));

var<private> global1: Struct_1 = Struct_1(-595f, vec4<f32>(-1000f, -2189f, 1885f, -430f), 0u, vec4<i32>(-33817i, 46289i, -2404i, 0i), vec2<u32>(4294967295u, 0u));

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-1979f, vec4<f32>(-487f, 1285f, -174f, -291f), 26268u, vec4<i32>(-38110i, 18050i, -1i, -15421i), vec2<u32>(36501u, 45685u)), Struct_1(-696f, vec4<f32>(1024f, 1461f, 1000f, 1095f), 93794u, vec4<i32>(0i, -1i, -1i, i32(-2147483648)), vec2<u32>(1u, 4294967295u)), Struct_1(-1000f, vec4<f32>(-1792f, -239f, 559f, -575f), 1u, vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 2147483647i), vec2<u32>(57161u, 97950u)), Struct_1(-837f, vec4<f32>(1433f, 366f, -1430f, 1147f), 61509u, vec4<i32>(23972i, -42623i, 54635i, -1i), vec2<u32>(5643u, 4294967295u)), Struct_1(-509f, vec4<f32>(-641f, 588f, 851f, 911f), 33031u, vec4<i32>(i32(-2147483648), 2147483647i, 0i, -24335i), vec2<u32>(75087u, 4294967295u)), Struct_1(110f, vec4<f32>(-665f, -1851f, 1301f, 1108f), 4294967295u, vec4<i32>(-47522i, -45620i, -10436i, -10009i), vec2<u32>(1u, 0u)), Struct_1(585f, vec4<f32>(-937f, -1000f, 111f, 620f), 6309u, vec4<i32>(1i, -28119i, 28615i, 22261i), vec2<u32>(67558u, 4294967295u)));

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_sub_i32(reverseBits(global1.d.x), 1i);
    global0 = array<vec2<i32>, 30>();
    let var_1 = vec3<bool>(false, 1336f != _wgslsmith_f_op_f32(_wgslsmith_div_f32(-743f, _wgslsmith_f_op_f32(round(global1.b.x))) * global1.a), any(vec2<bool>(false, true)));
    global1 = global2[_wgslsmith_index_u32(~(~(~1u)), 7u)];
    global3 = Struct_1(global1.b.x, vec4<f32>(-145f, global3.b.x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b.x, -550f, var_1.x)) - _wgslsmith_f_op_f32(-673f - global3.a)) + -605f)), 4294967295u, global3.d, vec2<u32>(_wgslsmith_dot_vec2_u32(min(firstTrailingBit(vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(global1.c, 1u)), ~vec2<u32>(global3.c, u_input.b.x) ^ ~vec2<u32>(4294967295u, global3.e.x)), global3.e.x));
    return global1.d.x;
}

fn func_4(arg_0: i32, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_div_u32(global1.c, global1.c);
    var var_1 = !(!select(vec3<bool>(any(vec4<bool>(true, false, false, false)), true, true), vec3<bool>(any(vec4<bool>(false, false, true, true)), true, true), select(select(true, true, true), true, true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(global3.b));
    let var_3 = global3.d.x;
    global0 = array<vec2<i32>, 30>();
    return _wgslsmith_mult_u32(u_input.a, global1.c);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec2<bool>) -> bool {
    global1 = global2[_wgslsmith_index_u32(u_input.a, 7u)];
    let var_0 = vec4<u32>(global1.e.x, func_4(func_3(), 395f), countOneBits(59069u), 4294967295u);
    global2 = array<Struct_1, 7>();
    global1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x - 2069f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1228f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1851f), arg_0.x, global3.b.x, _wgslsmith_div_f32(global1.b.x, -251f))))), firstLeadingBit(func_4(global1.d.x, _wgslsmith_f_op_f32(-arg_1.x))), -(~((vec4<i32>(global3.d.x, 1i, 46621i, 16991i) & global3.d) >> (~vec4<u32>(global3.e.x, 13073u, 0u, global3.c) % vec4<u32>(32u)))), vec2<u32>(~(~33715u), _wgslsmith_div_u32(global1.c, 69630u)));
    let var_1 = _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-17897i, 1i)), ~global3.d.yx | vec2<i32>(global1.d.x, ~(-9277i)));
    return !(!((13975i <= ~global3.d.x) & arg_3.x));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1505f) >= global3.a;
    let var_1 = all(vec4<bool>(false | func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global1.a, global1.a, 761f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(992f, global3.b.x, 1000f), vec3<f32>(-468f, global3.b.x, 1282f))), false, select(vec2<bool>(false, false), vec2<bool>(true, true), false)), !(~(-43707i) > global3.d.x), any(vec2<bool>(true, true)), true));
    var_0 = var_1;
    let var_2 = 326f;
    global1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(-872f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global3.a, var_2)))), -882f, var_2)), global1.c, abs(abs(countOneBits(~vec4<i32>(arg_0, global3.d.x, 1i, global3.d.x)))), vec2<u32>(global3.c, 5103u));
    return Struct_1(_wgslsmith_f_op_f32(-666f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1872f - -786f)))), global3.b, 4294967295u, -vec4<i32>(_wgslsmith_div_i32(~arg_0, ~global3.d.x), -_wgslsmith_mod_i32(global1.d.x, global3.d.x), -38346i, 2392i), ~(arg_1 | global3.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_i32(global3.d.x, global3.d.x) << (~1u % 32u);
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(24693u, ~abs(min(~u_input.a, 0u))), 7u)];
    let var_1 = func_1(_wgslsmith_add_i32(abs(global3.d.x), global3.d.x), global1.e & vec2<u32>(0u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~20293u, _wgslsmith_clamp_u32(~max(0u, 46004u), 0u, 9518u), abs(1u)));
}

