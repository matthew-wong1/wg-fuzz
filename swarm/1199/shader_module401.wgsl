struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec3<bool>(false, true, true), 40252u, false), Struct_3(vec3<bool>(false, false, true), 1u, true), Struct_3(vec3<bool>(true, false, false), 11945u, false), Struct_3(vec3<bool>(true, false, false), 77477u, false), Struct_3(vec3<bool>(false, false, true), 0u, true), Struct_3(vec3<bool>(true, false, false), 25976u, false), Struct_3(vec3<bool>(true, true, false), 1u, true), Struct_3(vec3<bool>(true, true, true), 0u, true), Struct_3(vec3<bool>(false, true, true), 11320u, false), Struct_3(vec3<bool>(false, false, false), 1u, true), Struct_3(vec3<bool>(false, true, false), 37808u, true), Struct_3(vec3<bool>(true, true, false), 1u, true), Struct_3(vec3<bool>(true, false, false), 18890u, false), Struct_3(vec3<bool>(false, false, false), 4294967295u, true), Struct_3(vec3<bool>(false, true, true), 4294967295u, true), Struct_3(vec3<bool>(false, false, true), 4294967295u, false));

var<private> global2: Struct_3 = Struct_3(vec3<bool>(true, false, false), 47730u, true);

var<private> global3: array<Struct_1, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(4294967295u, 18u)];
    var var_1 = arg_1.a;
    var var_2 = vec2<bool>(false, var_1.x);
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 2138f, -960f) - vec3<f32>(arg_0, 1558f, -270f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.c, var_0.c, -636f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(176f, 1000f, var_0.c)))))), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-12969i, -14164i, 2147483647i, -3521i), vec4<i32>(-1i, -2147483647i, -23605i, 0i), vec4<i32>(1i, -15177i, -1i, 0i)), vec4<i32>(1i, ~9171i, 1i, abs(-2147483647i))) & vec4<i32>(~(-12835i), 14424i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(50773i, 0i, -2043i, 20939i), vec4<i32>(0i, -46920i, 0i, -30388i)), vec4<i32>(1i, 1i, 1i, 1i)), -2147483647i));
    var var_4 = global3[_wgslsmith_index_u32(~94687u, 18u)];
    return abs(_wgslsmith_clamp_u32(46686u, _wgslsmith_mult_u32(~abs(118263u), 0u), ~max(var_0.a.x, arg_1.b) << (arg_1.b % 32u)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(1276f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -512f), 1000f))), -1460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2348f, 863f)) + 689f), -301f);
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~52428u, 1u) >> (~(u_input.a.x ^ 4294967295u) % 32u), 18u)];
    global2 = global1[_wgslsmith_index_u32(global2.b, 16u)];
    let var_2 = var_1.c;
    var var_3 = global1[_wgslsmith_index_u32(firstLeadingBit(func_3(129f, Struct_3(vec3<bool>(true, true, true), ~_wgslsmith_add_u32(global2.b, u_input.a.x), true))), 16u)];
    return global3[_wgslsmith_index_u32(4294967295u, 18u)];
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = true;
    var_0 = true;
    var var_1 = u_input.a.wxw;
    var var_2 = func_2(!(!select(select(vec4<bool>(false, false, global0.x, global2.a.x), vec4<bool>(false, global0.x, arg_2.c, false), arg_2.c), select(vec4<bool>(global2.a.x, false, arg_2.a.x, global0.x), vec4<bool>(false, false, global0.x, true), true), false)));
    let var_3 = Struct_1(~_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(var_1.x, var_2.d.x, var_2.b.x, u_input.a.x)), firstLeadingBit(~vec4<u32>(82426u, 8300u, global2.b, var_1.x))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~(~vec2<u32>(1u, arg_2.b)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(0u, u_input.a.x))), ~_wgslsmith_clamp_vec2_u32(~var_2.b, var_1.zx & vec2<u32>(18646u, u_input.a.x), var_2.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))), var_1.yx);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.c), var_3.c), -665f, _wgslsmith_f_op_f32(sign(func_2(vec4<bool>(false, global2.c, arg_2.c, arg_2.a.x)).c)), _wgslsmith_f_op_f32(-650f * 659f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -254f, var_3.c, var_3.c), vec4<f32>(var_2.c, arg_1.a.x, 286f, -1520f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(944f, -1417f, 382f, -161f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-280f + 201f), _wgslsmith_f_op_f32(step(-490f, -820f)), _wgslsmith_f_op_f32(floor(-345f)), 734f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(326f, 704f, -1657f, var_0.x) + vec4<f32>(var_0.x, 706f, -114f, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-190f, 869f, var_0.x, -1050f) - vec4<f32>(1573f, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(165f, 339f, -854f, var_0.x)) + _wgslsmith_f_op_vec4_f32(func_1(Struct_2(var_0.xwz, vec4<i32>(-2147483647i, -36502i, 0i, 8847i)), Struct_2(vec3<f32>(var_0.x, -301f, -2386f), vec4<i32>(49941i, -33704i, -29246i, -26078i)), Struct_3(vec3<bool>(true, global2.c, global0.x), 4294967295u, global0.x))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -526f, 1000f, _wgslsmith_f_op_f32(min(var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-114f, var_0.x, 860f, 355f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))));
    let var_1 = _wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(min(min(1i, 1i), -2147483647i), abs(firstTrailingBit(3069i)) << (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(u_input.a.x, u_input.a.x, true) | 8289u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - var_0.yyw), countOneBits(vec4<i32>(var_1, 2147483647i, var_1, var_1))), Struct_2(var_0.wwy, abs(vec4<i32>(var_1, var_1, -1i, 15469i))), global1[_wgslsmith_index_u32(u_input.a.x, 16u)])).xy), ~reverseBits(vec2<i32>(2147483647i, var_1)) | -((vec2<i32>(-24478i, -2147483647i) >> (u_input.a.zz % vec2<u32>(32u))) ^ ~vec2<i32>(1i, var_1)), 4294967295u, min(vec3<i32>(var_1, firstLeadingBit(var_1), select(var_1, var_1, global0.x)) >> (vec3<u32>(10158u, ~53799u, ~global2.b) % vec3<u32>(32u)), vec3<i32>(1i, reverseBits(var_1) & firstTrailingBit(-48842i), var_1)));
}

