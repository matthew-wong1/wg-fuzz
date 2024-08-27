struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29>;

var<private> global1: vec3<u32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<i32> {
    let var_0 = vec3<u32>(~(~reverseBits(global1.x) >> (~(~3044u) % 32u)), abs(4294967295u), global1.x);
    var var_1 = 1f;
    let var_2 = Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(!all(vec4<bool>(true, true, true, true)), false)), !(_wgslsmith_mod_i32(-u_input.a.x, u_input.a.x) <= abs(u_input.a.x)));
    global1 = ~(max(vec3<u32>(_wgslsmith_mod_u32(0u, 18157u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 13266u), global1.xy), _wgslsmith_mod_u32(var_0.x, u_input.b)), ~(~var_0)) >> (var_0 % vec3<u32>(32u)));
    var var_3 = var_2.a;
    return vec2<i32>(i32(-1i) * -abs(-u_input.a.x), _wgslsmith_dot_vec2_i32(~firstTrailingBit(u_input.a.zz | u_input.a.yz), -u_input.a.xz));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> vec4<bool> {
    var var_0 = u_input.b;
    let var_1 = select(!(true || (arg_1.x || (u_input.a.x >= u_input.a.x))), !(arg_2 && (_wgslsmith_div_i32(u_input.a.x, u_input.a.x) > select(-28815i, -1i, arg_2))), _wgslsmith_mult_u32((u_input.b | 24858u) & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.x, 1u, u_input.b), vec4<u32>(global1.x, 29667u, 64788u, global1.x)), u_input.b) <= ~0u);
    global0 = array<vec3<u32>, 29>();
    let var_2 = func_3();
    var var_3 = true && any(select(select(arg_1.xww, !arg_1.xwx, vec3<bool>(arg_1.x, arg_2, var_1)), vec3<bool>(arg_2 || true, !var_1, arg_2), var_1));
    return vec4<bool>(false, !(false & !(!arg_1.x)), true, var_1);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>) -> f32 {
    global0 = array<vec3<u32>, 29>();
    var var_0 = select(true, true, !(all(func_2(-835f, vec4<bool>(true, true, true, false), true)) && all(vec3<bool>(false, false, false))));
    let var_1 = _wgslsmith_mod_i32(2147483647i, arg_0.x);
    let var_2 = Struct_3(vec2<bool>(false, !(_wgslsmith_div_f32(-150f, -1129f) <= _wgslsmith_f_op_f32(select(-1828f, 1416f, true)))), Struct_1(vec2<bool>(!all(vec2<bool>(false, true)), select(true, true, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, u_input.a.x, arg_0.x), _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(0i, var_1, u_input.a.x))) < arg_0.x), max(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yy, arg_0.xz), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-20107i, 1i), u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a, abs(arg_0))), arg_0), Struct_1(vec2<bool>(true, any(vec4<bool>(false, false, true, true)) & true), false));
    var var_3 = vec3<bool>(!var_2.a.x, var_2.d.a.x | true, select(!var_2.d.a.x, _wgslsmith_mod_i32(-var_1, _wgslsmith_add_i32(arg_0.x, 0i)) >= -(~var_1), var_2.d.b));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(199f, _wgslsmith_f_op_f32(-2267f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-380f, 316f)))))), 1813f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(465f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1177f))))), -480f, _wgslsmith_f_op_f32(-383f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a, ~global0[_wgslsmith_index_u32(5465u, 29u)])))));
    global0 = array<vec3<u32>, 29>();
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.x, _wgslsmith_mult_u32(~70833u, 33715u >> (global1.x % 32u))), _wgslsmith_mult_u32(global1.x >> (78043u % 32u), 14686u >> (firstTrailingBit(33787u) % 32u))), u_input.c);
    var var_2 = _wgslsmith_sub_vec2_i32(u_input.a.zy, select(_wgslsmith_mult_vec2_i32(u_input.a.zz, ~vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.xx, _wgslsmith_mod_i32(firstTrailingBit(2147483647i), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, -32519i, 26707i))) >= (countOneBits(u_input.a.x) >> (var_1.x % 32u))));
    var var_3 = _wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-12230i, countOneBits(2147483647i), -var_2.x, i32(-1i) * -2147483647i), vec4<i32>(21618i, -101030i, reverseBits(36922i), max(u_input.a.x, u_input.a.x)))), ~(abs(-vec4<i32>(u_input.a.x, var_2.x, var_2.x, -44196i)) << (abs(~vec4<u32>(global1.x, global1.x, global1.x, 1u)) % vec4<u32>(32u))));
    let var_4 = 1443f;
    var var_5 = -((countOneBits(vec3<i32>(var_2.x, var_2.x, u_input.a.x) & vec3<i32>(var_2.x, 33708i, u_input.a.x)) << (~vec3<u32>(var_1.x, 53819u, global1.x) % vec3<u32>(32u))) & vec3<i32>(countOneBits(u_input.a.x), var_3.x, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(var_2.x, -u_input.a.x)), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a >> (global0[_wgslsmith_index_u32(u_input.b, 29u)] % vec3<u32>(32u))), firstLeadingBit(var_3.zxy)), -u_input.a.x), ~(~vec3<u32>(countOneBits(global1.x), ~0u, select(u_input.c, 66303u, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(229f, -1109f)))), _wgslsmith_f_op_f32(-1074f - -249f));
}

