struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(-21247i, -1i, 2147483647i), vec3<i32>(-35652i, 2147483647i, 55476i));

var<private> global2: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(7654u), Struct_5(0u), Struct_5(53774u), Struct_5(4294967295u), Struct_5(33897u), Struct_5(887u), Struct_5(0u), Struct_5(1u), Struct_5(4294967295u), Struct_5(4294967295u), Struct_5(46469u), Struct_5(76341u), Struct_5(4294967295u), Struct_5(4294967295u), Struct_5(1u), Struct_5(57133u), Struct_5(3037u));

var<private> global3: Struct_4 = Struct_4(-32236i, vec2<i32>(20663i, -33750i), 157f);

var<private> global4: Struct_5;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: bool, arg_3: i32) -> vec3<i32> {
    var var_0 = vec3<f32>(-1000f, -179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-871f)) * _wgslsmith_f_op_f32(-global3.c)));
    global2 = array<Struct_5, 17>();
    let var_1 = false;
    let var_2 = vec2<u32>(1u, ~_wgslsmith_div_u32(arg_1.a, 24124u) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, global4.a, arg_1.a, global4.a), vec4<u32>(4294967295u, arg_1.a, 1u, 1u)), select(52258u, global4.a, false)) % 32u)) << (~(~_wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.d.xx), u_input.d.zx)) % vec2<u32>(32u));
    return firstTrailingBit(select(firstLeadingBit(u_input.a.zwx), -global1[_wgslsmith_index_u32(arg_0, 2u)], false));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_5) -> Struct_4 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 49255u, u_input.d.x), u_input.d);
    let var_1 = Struct_1(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(60564u, 10393u, 1u, global4.a), vec4<u32>(23382u, 39931u, arg_1.a, u_input.d.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(0u, arg_1.a, arg_1.a)), reverseBits(95994u), abs(arg_1.a), 0u))), func_3(1u, Struct_5(~_wgslsmith_mod_u32(15445u, arg_1.a)), true, _wgslsmith_div_i32(_wgslsmith_div_i32(arg_0.x << (u_input.d.x % 32u), _wgslsmith_div_i32(arg_0.x, u_input.a.x)), -global3.b.x)));
    let var_2 = true;
    global0 = 1u;
    let var_3 = u_input.d;
    return Struct_4(func_3(36586u, Struct_5(arg_1.a), true, select(select(u_input.a.x, arg_0.x, true), ~_wgslsmith_mod_i32(0i, 1i), var_2)).x, ~(-select(~var_1.b.yz, var_1.b.yx, vec2<bool>(false, true))), 317f);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> Struct_4 {
    global3 = func_2(global3.b, Struct_5(arg_1.a >> (~abs(global4.a) % 32u)));
    global4 = global2[_wgslsmith_index_u32(0u | u_input.d.x, 17u)];
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c, -321f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -139f)))))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_mult_vec3_i32(select(~(u_input.a.yzy << (u_input.d % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, global3.b.x), u_input.a.x, arg_0.b.x), ~global4.a == 0u) & abs(~vec3<i32>(arg_1.b.x, 0i, global3.b.x)), ~(~max(vec3<i32>(arg_0.b.x, 15963i, arg_0.b.x), arg_1.b >> (u_input.d % vec3<u32>(32u)))));
    return Struct_4(1i, var_2.zy, arg_0.c);
}

fn func_1(arg_0: vec4<bool>) -> vec2<i32> {
    global3 = func_4(func_2(global3.b, global2[_wgslsmith_index_u32(1u, 17u)]), Struct_1(abs(~countOneBits(global4.a)), vec3<i32>(reverseBits(0i), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -7284i, -2147483647i, -1i), u_input.a), u_input.a.x)));
    var var_0 = any(arg_0);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global3.c))))))), !select(arg_0.yxx, !arg_0.xxx, arg_0.xzw), Struct_1(_wgslsmith_add_u32(0u, ~u_input.d.x), vec3<i32>(u_input.c, u_input.a.x << (min(0u, 32840u) % 32u), 25825i)));
    let var_2 = select(select(vec4<bool>(false, !arg_0.x, ~0u <= ~global4.a, var_1.b.x), arg_0, var_1.b.x), select(select(!(!vec4<bool>(true, true, var_1.b.x, var_1.b.x)), select(vec4<bool>(true, var_1.b.x, arg_0.x, false), arg_0, select(arg_0, arg_0, true)), false), vec4<bool>(true, false & var_1.b.x, true, !(true || arg_0.x)), false), !arg_0.x);
    var var_3 = Struct_4(u_input.c, vec2<i32>(u_input.a.x, -func_4(Struct_4(-32279i, var_1.c.b.zy, var_1.a), var_1.c).b.x), global3.c);
    return -func_4(func_2(func_2(var_1.c.b.zx, Struct_5(var_1.c.a)).b, Struct_5(4294967295u)), Struct_1(u_input.d.x, vec3<i32>(0i, u_input.a.x, global3.a) & vec3<i32>(u_input.b, global3.a, var_1.c.b.x))).b ^ var_1.c.b.yy;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool) -> vec3<bool> {
    global3 = arg_1;
    let var_0 = -964f;
    var var_1 = 0u;
    var var_2 = firstLeadingBit(min(firstLeadingBit(global4.a), global4.a));
    let var_3 = !select(!vec3<bool>(all(vec4<bool>(arg_2, false, true, true)), all(vec4<bool>(false, arg_2, arg_2, arg_2)), -762f <= var_0), select(!select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, true, arg_2), vec3<bool>(false, arg_2, arg_2)), !select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, true, true), arg_2), false), vec3<bool>(any(vec4<bool>(arg_2, arg_2, arg_2, arg_2)) || arg_2, !any(vec4<bool>(false, arg_2, arg_2, arg_2)), arg_2));
    return select(!var_3, !var_3, all(!vec4<bool>(true, true, var_3.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_5(Struct_2(select(~vec2<i32>(global3.b.x, global3.b.x), func_1(vec4<bool>(true, false, false, true)), vec2<bool>(false, true))), func_4(func_4(func_2(global3.b, Struct_5(1u)), Struct_1(65864u, global1[_wgslsmith_index_u32(42055u, 2u)])), Struct_1(0u, vec3<i32>(2147483647i, global3.b.x, 0i) & u_input.a.zzx)), true);
    var var_1 = reverseBits(vec4<i32>((u_input.c ^ _wgslsmith_mod_i32(global3.a, u_input.c)) | u_input.b, u_input.c, -1i, _wgslsmith_div_i32(~(-u_input.a.x), (u_input.b | global3.a) & func_2(global3.b, Struct_5(u_input.d.x)).a)));
    global3 = Struct_4(~(-1i), ~abs(vec2<i32>(var_1.x >> (global4.a % 32u), -var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global3.c)))));
    global0 = abs(~_wgslsmith_div_u32(select(_wgslsmith_div_u32(1u, global4.a), countOneBits(1u), var_0.x), _wgslsmith_sub_u32(1u, global4.a)));
    var var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(u_input.d.zz, reverseBits(vec2<u32>(~u_input.d.x, firstLeadingBit(0u)))), global3.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.c, global3.c), vec2<f32>(global3.c, global3.c))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c, 515f) + vec2<f32>(global3.c, global3.c))))), false)), global3.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c, global3.c, global3.c) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.c, global3.c, global3.c)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1849f, 250f, 890f)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c, -526f, global3.c) + vec3<f32>(global3.c, global3.c, global3.c)))))));
}

