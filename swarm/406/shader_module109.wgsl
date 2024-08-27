struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(-46669i), Struct_2(2605i), Struct_2(-30600i), Struct_2(5330i), Struct_2(26574i), Struct_2(0i), Struct_2(52554i), Struct_2(-42693i), Struct_2(-26293i), Struct_2(-33133i), Struct_2(0i), Struct_2(-2619i), Struct_2(2147483647i), Struct_2(0i), Struct_2(i32(-2147483648)), Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(19240i), Struct_2(-13329i), Struct_2(47644i), Struct_2(1i), Struct_2(2147483647i), Struct_2(0i));

var<private> global4: vec3<f32> = vec3<f32>(886f, -260f, 914f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = ~global0.d;
    var var_1 = -1i;
    let var_2 = global3[_wgslsmith_index_u32(global0.d, 25u)];
    global3 = array<Struct_2, 25>();
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.a, -40926i, global2.a, global2.a), vec4<i32>(~global2.a, firstLeadingBit(31815i), arg_0.x, -global2.a))), -_wgslsmith_div_vec2_i32(-arg_0.yx & ~vec2<i32>(-19792i, global2.a), vec2<i32>(-1i, firstTrailingBit(2147483647i))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.x)) * global4.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d.x, arg_2.e.x))), _wgslsmith_f_op_f32(trunc(arg_2.e.x)), arg_2.a);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, 545f, global4.x) * vec3<f32>(global4.x, 166f, -819f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1413f, global4.x, global4.x) * vec3<f32>(global4.x, global4.x, global4.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -408f, arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(u_input.b, vec2<bool>(global0.c.x, global0.c.x), Struct_3(-971f, global0.c, global4.xz, vec3<f32>(-1237f, 1695f, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, 1926f, arg_0.x))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, _wgslsmith_div_f32(arg_0.x, -897f), arg_0.x))));
    global4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-458f, _wgslsmith_f_op_f32(max(global4.x, arg_0.x)), -111f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 140f, arg_0.x)))))));
    let var_0 = any(select(vec2<bool>((global0.d << (global0.d % 32u)) == _wgslsmith_div_u32(u_input.a.x, u_input.a.x), !all(vec4<bool>(global0.b.x, global0.c.x, global0.c.x, false))), select(select(vec2<bool>(global0.c.x, true), select(vec2<bool>(false, true), vec2<bool>(false, global0.b.x), global0.b.x), global0.c.yz), select(select(vec2<bool>(true, global0.b.x), vec2<bool>(global0.c.x, global0.b.x), global0.c.xx), vec2<bool>(true, false), vec2<bool>(false, false)), _wgslsmith_mult_i32(0i, -32187i) >= u_input.d), !(!vec2<bool>(global0.c.x, global0.b.x))));
    let var_1 = arg_0.x;
    global1 = _wgslsmith_f_op_f32(global4.x * 1f);
    return Struct_1(-u_input.c, !vec3<bool>(global0.b.x, !var_0, true), vec4<bool>(select((87060u >> (u_input.a.x % 32u)) <= 60498u, global0.c.x && true, var_0), true, !(firstLeadingBit(u_input.e.x) < _wgslsmith_dot_vec2_i32(global0.a.zw, global0.a.xz)), global0.b.x), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_clamp_u32(~(~0u), ~(~70742u), global0.d)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    let var_0 = Struct_2(2649i);
    let var_1 = _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, global0.d), u_input.a.x), u_input.a.zy)) | 4294967295u;
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(min(global4.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.e.x, 942f), global4.zy)) + _wgslsmith_f_op_vec2_f32(arg_0 + arg_2.c))))));
    let var_3 = arg_3;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.e.x) * arg_3.e.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-118f, global4.x) - _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.x)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = 69411u << ((_wgslsmith_clamp_u32(65770u, u_input.a.x, ~u_input.a.x) | ~29473u) % 32u);
    var var_1 = reverseBits(u_input.e.x);
    var var_2 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u << (global0.d % 32u), global0.d), ~global0.d >> (~26095u % 32u), global0.d))), 25u)];
    let var_3 = max(~(~countOneBits(vec4<u32>(global0.d, 1u, u_input.a.x, global0.d)) & firstTrailingBit(~vec4<u32>(global0.d, global0.d, global0.d, 13022u))), abs(max(_wgslsmith_div_vec4_u32(max(vec4<u32>(u_input.a.x, 0u, 27564u, global0.d), vec4<u32>(u_input.a.x, global0.d, global0.d, 200u)), vec4<u32>(global0.d, global0.d, u_input.a.x, 56184u)), ~(vec4<u32>(u_input.a.x, 54233u, 32413u, 1u) | vec4<u32>(30220u, 4294967295u, u_input.a.x, u_input.a.x)))));
    return global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, ~abs(1u)), 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<bool>(false, all(vec2<bool>(any(global0.c), !global0.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + -1038f), -717f)) < _wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(floor(1250f)))), Struct_3(_wgslsmith_f_op_f32(-global4.x), vec4<bool>(true, global0.d > 20266u, global0.b.x, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(750f, 103f)) - global4.xz), _wgslsmith_div_vec3_f32(vec3<f32>(-3020f, _wgslsmith_f_op_f32(-1000f + -850f), _wgslsmith_f_op_f32(func_1(global4.yy, u_input.c, Struct_3(-1175f, vec4<bool>(false, global0.b.x, false, false), vec2<f32>(global4.x, global4.x), vec3<f32>(global4.x, 515f, global4.x), vec4<f32>(236f, -238f, global4.x, 311f)), Struct_3(-1000f, global0.c, global4.xy, vec3<f32>(global4.x, global4.x, -312f), vec4<f32>(250f, 1248f, global4.x, global4.x))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.x, global4.x, global4.x)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1165f, 1073f, 259f) * vec4<f32>(global4.x, -176f, -1000f, global4.x)))))));
    var var_1 = firstTrailingBit(u_input.a.zz) << (~vec2<u32>(global0.d, ~u_input.a.x) % vec2<u32>(32u));
    global2 = func_4(vec3<bool>(global0.c.x | !(false | global0.c.x), all(vec2<bool>(select(true, false, true), global0.c.x)), global0.b.x), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(531f, _wgslsmith_f_op_f32(global4.x + global4.x)))), func_2(vec2<f32>(_wgslsmith_f_op_f32(-global4.x), 107f)).c, vec2<f32>(572f, global4.x), _wgslsmith_f_op_vec3_f32(func_3(abs(~global0.a.wxy), vec2<bool>(true, true), Struct_3(_wgslsmith_f_op_f32(-global4.x), global0.c, global4.xx, vec3<f32>(global4.x, 718f, global4.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, global4.x, global4.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-180f, -1381f, global4.x, -1652f))))));
    var var_2 = ~global0.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2008f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.x))), global4.x, _wgslsmith_f_op_f32(step(-670f, _wgslsmith_f_op_f32(sign(global4.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(498f, global4.x, global4.x, 153f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2609f, global4.x, global4.x, -300f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(1i, u_input.c.x), vec4<u32>(max(4294967295u, _wgslsmith_sub_u32(abs(global0.d), ~var_1.x)), _wgslsmith_mod_u32(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(748u, 1u, 21038u, var_1.x), vec4<u32>(var_1.x, global0.d, u_input.a.x, u_input.a.x))) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(81247u, 1u, 12555u, u_input.a.x), ~vec4<u32>(15164u, 83261u, var_1.x, 61221u)), ~_wgslsmith_div_u32(u_input.a.x, var_1.x) << (~firstLeadingBit(0u) % 32u), var_1.x >> (abs(global0.d) % 32u)), ~var_2.x);
}

