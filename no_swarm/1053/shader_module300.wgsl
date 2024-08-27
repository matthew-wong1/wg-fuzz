struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-32044i, -31636i);

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(-9403i, Struct_1(false, vec2<f32>(914f, -147f), -2032f, 1u)), Struct_2(0i, Struct_1(true, vec2<f32>(-299f, 2597f), 1109f, 1u)), Struct_2(13210i, Struct_1(false, vec2<f32>(705f, 1000f), 153f, 79150u)), Struct_2(17774i, Struct_1(true, vec2<f32>(-2068f, 372f), 102f, 0u)), Struct_2(5282i, Struct_1(true, vec2<f32>(500f, -1294f), -414f, 42935u)), Struct_2(2147483647i, Struct_1(true, vec2<f32>(-1909f, -747f), 1605f, 76225u)), Struct_2(1i, Struct_1(true, vec2<f32>(-1173f, -1194f), 1311f, 78668u)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(3413i, arg_1.b);
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.x, var_0.b.c, 799f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.b.x, arg_1.b.b.x, 465f)), any(vec2<bool>(false, false)))))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.c))), _wgslsmith_f_op_f32(f32(-1f) * -840f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b.b.x), var_0.b.c, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c, -1000f, var_0.b.b.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.c, -668f, -1096f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(238f, arg_1.b.c, -1812f), vec3<f32>(var_1.b.c, -206f, var_1.b.b.x)))))), !select(select(vec3<bool>(true, var_0.b.a, arg_1.b.a), vec3<bool>(false, var_1.b.a, arg_1.b.a), select(vec3<bool>(var_0.b.a, true, arg_1.b.a), vec3<bool>(false, false, true), vec3<bool>(arg_1.b.a, arg_1.b.a, true))), !vec3<bool>(var_0.b.a, true, true), !(!vec3<bool>(true, false, arg_1.b.a)))));
    var_1 = Struct_2(arg_1.a, Struct_1(!arg_1.b.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-444f, -1511f) + var_1.b.b))))), var_2.x, ~arg_0.x));
    global0 = reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(~firstTrailingBit(u_input.c.x), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c))), select(_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(-1i, -2147483647i)), abs(vec2<i32>(arg_1.a, u_input.d)), false)));
    return var_0.b;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<f32>) -> vec2<u32> {
    global0 = u_input.c >> (reverseBits(vec2<u32>(u_input.e.x & arg_0.b.d, 4294967295u ^ select(arg_1.x, u_input.a.x, arg_0.b.a))) % vec2<u32>(32u));
    var var_0 = Struct_2(-22645i, func_2(vec4<u32>(u_input.e.x, 16796u, ~arg_0.b.d, ~arg_1.x), Struct_2(~(-2147483647i), arg_0.b)));
    var var_1 = _wgslsmith_sub_u32(arg_1.x, 25445u);
    let var_2 = _wgslsmith_sub_u32(4294967295u, 52291u);
    global1 = array<Struct_2, 7>();
    return u_input.b.yz;
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    global0 = u_input.c;
    var var_0 = _wgslsmith_div_u32(firstLeadingBit(1u), 393u);
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(u_input.b.x, u_input.a.x)), 7u)];
    let var_2 = ~_wgslsmith_dot_vec2_u32(~firstLeadingBit(u_input.a.zz), firstLeadingBit(func_1(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], vec4<u32>(u_input.e.x, u_input.b.x, var_1.b.d, var_1.b.d), vec3<f32>(var_1.b.c, -598f, var_1.b.b.x)))) << (max(func_2(select(countOneBits(u_input.b), abs(u_input.a), vec4<bool>(false, arg_1.x, arg_1.x, var_1.b.a)), global1[_wgslsmith_index_u32(func_2(vec4<u32>(0u, 16667u, u_input.b.x, u_input.e.x), global1[_wgslsmith_index_u32(~u_input.b.x, 7u)]).d, 7u)]).d, var_1.b.d & _wgslsmith_mult_u32(var_1.b.d, var_1.b.d)) % 32u);
    let var_3 = 45550u;
    return _wgslsmith_clamp_u32(func_2(abs(vec4<u32>(~var_3, _wgslsmith_mult_u32(1438u, var_1.b.d), var_3, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))), Struct_2(~global0.x, Struct_1(all(vec3<bool>(false, arg_1.x, true)), _wgslsmith_f_op_vec2_f32(var_1.b.b + vec2<f32>(-1085f, var_1.b.c)), _wgslsmith_f_op_f32(ceil(-712f)), ~var_2))).d, ~4294967295u, 61944u | var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 7>();
    var var_0 = ~firstLeadingBit(vec2<i32>(abs(global0.x >> (u_input.b.x % 32u)), firstTrailingBit(_wgslsmith_mod_i32(-79671i, global0.x))));
    var var_1 = u_input.a.ww >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~func_1(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], vec4<u32>(u_input.a.x, u_input.e.x, 6241u, u_input.b.x), vec3<f32>(487f, 589f, -1096f)), vec2<u32>(17086u, ~u_input.b.x)), ((vec2<u32>(79859u, 51283u) & vec2<u32>(1u, u_input.b.x)) & vec2<u32>(u_input.b.x, 4294967295u)) ^ select(u_input.e.zx, ~vec2<u32>(98526u, 1u), vec2<bool>(true, true)), abs(u_input.a.wx)) % vec2<u32>(32u));
    var var_2 = Struct_2(-u_input.d, Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(142f, 1000f)) + vec2<f32>(2905f, -467f))), -1000f, func_3(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.x, global0.x), -23308i), vec2<bool>(true, var_0.x <= -2147483647i))));
    let var_3 = select(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_2.a, -29465i), -global0.x, _wgslsmith_div_i32(u_input.c.x << (49725u % 32u), min(-1i, u_input.c.x)), 2147483647i), vec4<i32>(1i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, var_0.x, u_input.c.x, global0.x), vec4<i32>(-1i, -11175i, global0.x, 30827i))), _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.d, var_0.x, -2147483647i), vec3<i32>(1i, global0.x, var_2.a)), select(vec3<i32>(1i, 55657i, u_input.c.x), vec3<i32>(var_0.x, -2147483647i, var_0.x), vec3<bool>(var_2.b.a, var_2.b.a, var_2.b.a))), ~var_0.x)), vec4<i32>((-60287i >> (_wgslsmith_div_u32(u_input.a.x, 0u) % 32u)) | var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -56561i), vec2<i32>(_wgslsmith_clamp_i32(1i, 14151i, var_2.a), _wgslsmith_add_i32(2147483647i, var_0.x))), -(~(var_0.x << (var_2.b.d % 32u))), ~(~(-16215i))), any(select(vec2<bool>(var_2.b.a, false), select(vec2<bool>(var_2.b.a, var_2.b.a), vec2<bool>(var_2.b.a, var_2.b.a), vec2<bool>(false, var_2.b.a)), all(vec3<bool>(var_2.b.a, var_2.b.a, var_2.b.a)) != false)));
    var var_4 = var_3.x;
    var var_5 = !(!select(select(vec3<bool>(true, false, true), !vec3<bool>(var_2.b.a, false, var_2.b.a), true), select(select(vec3<bool>(true, var_2.b.a, var_2.b.a), vec3<bool>(var_2.b.a, false, true), vec3<bool>(var_2.b.a, var_2.b.a, var_2.b.a)), vec3<bool>(var_2.b.a, var_2.b.a, false), select(vec3<bool>(var_2.b.a, var_2.b.a, var_2.b.a), vec3<bool>(var_2.b.a, var_2.b.a, true), vec3<bool>(false, var_2.b.a, false))), vec3<bool>(false, false, true)));
    var var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(714f, var_2.b.b.x, -655f), vec3<f32>(-987f, -140f, 576f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 204f, var_2.b.b.x)))))));
    var var_7 = _wgslsmith_mod_i32(u_input.d, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.ywy, max(vec4<i32>(~min(global0.x, u_input.d), var_2.a, 17537i, 1i), vec4<i32>(u_input.c.x, 61494i, 70763i, 16608i)), vec3<u32>(1u, reverseBits(u_input.b.x), 4294967295u));
}

