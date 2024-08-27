struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(1i, -1i), vec2<i32>(-24298i, 1i), vec2<i32>(-41417i, 26158i), vec2<i32>(-86308i, 0i));

var<private> global1: array<vec3<bool>, 3>;

var<private> global2: array<Struct_2, 29>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = ~select(u_input.b.x, u_input.b.x, true);
    var var_1 = u_input.b.x;
    global0 = array<vec2<i32>, 4>();
    var var_2 = Struct_1(firstTrailingBit(countOneBits(abs(vec3<i32>(var_0, 2147483647i, 28757i)))), -2147483647i, false, arg_0, false);
    var var_3 = vec2<bool>(var_2.e | true, false);
    return _wgslsmith_mod_i32(var_0, _wgslsmith_dot_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(-24575i, -1i, 25997i)) & ~var_2.a, _wgslsmith_mod_vec3_i32(var_2.a, var_2.a)));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global2 = array<Struct_2, 29>();
    let var_0 = vec3<i32>(~firstLeadingBit(1i), u_input.b.x, min(u_input.b.x, select(_wgslsmith_mod_i32(arg_0.x, -45905i), func_3(u_input.c.x), false)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    let var_2 = Struct_1(select(_wgslsmith_mult_vec3_i32(var_0, vec3<i32>(arg_0.x, arg_0.x, 8285i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, arg_0.x, 1i), var_0)), -var_0, vec3<bool>(true, true, true)), -abs(-1i), false, 4294967295u, true);
    global0 = array<vec2<i32>, 4>();
    return var_2.d;
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    let var_0 = !select(vec4<bool>(true, 1i > select(-1i, u_input.b.x, false), true, any(vec3<bool>(true, true, true))), vec4<bool>(abs(60114u) > arg_2.x, false, false, true), vec4<bool>(false, true, true, !all(vec4<bool>(false, false, true, true))));
    global1 = array<vec3<bool>, 3>();
    var var_1 = select(!var_0.xzy, var_0.wwy, var_0.x);
    global1 = array<vec3<bool>, 3>();
    var var_2 = Struct_1((_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-2147483647i, 1i, u_input.b.x)) << ((select(vec3<u32>(u_input.a, u_input.d.x, 0u), arg_2.wwy, global1[_wgslsmith_index_u32(arg_2.x, 3u)]) << (~arg_2.xxx % vec3<u32>(32u))) % vec3<u32>(32u))) & abs(select(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(0i, 21629i, u_input.b.x), vec3<bool>(var_1.x, var_0.x, var_0.x)) | select(vec3<i32>(u_input.b.x, 0i, u_input.b.x), vec3<i32>(u_input.b.x, 0i, -1i), global1[_wgslsmith_index_u32(4294967295u, 3u)])), func_3(0u) | -66869i, any(var_1.xz), _wgslsmith_dot_vec3_u32(arg_2.xwy, ~min(firstTrailingBit(arg_2.yxy), arg_2.wyz)), all(select(var_0, select(select(var_0, vec4<bool>(true, false, var_1.x, var_0.x), true), var_0, var_0), true)));
    return Struct_1(~abs(var_2.a ^ vec3<i32>(var_2.b, 2147483647i, -15368i)) >> ((arg_2.xzx ^ _wgslsmith_add_vec3_u32(arg_2.ywy & vec3<u32>(1u, var_2.d, 0u), vec3<u32>(10145u, u_input.d.x, 30549u))) % vec3<u32>(32u)), -18132i, u_input.d.x < arg_2.x, arg_2.x, (i32(-1i) * -var_2.a.x) > var_2.b);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    global2 = array<Struct_2, 29>();
    global0 = array<vec2<i32>, 4>();
    global1 = array<vec3<bool>, 3>();
    let var_0 = ~abs(-1i);
    let var_1 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -876f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), ~vec4<u32>(func_2(vec4<i32>(var_0, var_0, 43603i, 36998i)), firstLeadingBit(29200u), 0u & _wgslsmith_dot_vec4_u32(vec4<u32>(69206u, 5727u, 4294967295u, u_input.a), vec4<u32>(28242u, 4344u, 771u, 34956u)), ~select(arg_1, u_input.a, false)), _wgslsmith_f_op_f32(f32(-1f) * -514f));
    return global2[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_mult_u32(arg_1, var_1.d)), 29u)];
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec2<f32>) -> i32 {
    var var_0 = vec3<bool>(true, arg_1, arg_1);
    global2 = array<Struct_2, 29>();
    var var_1 = vec4<bool>(any(select(select(vec2<bool>(false, var_0.x), select(var_0.zz, vec2<bool>(true, true), vec2<bool>(true, arg_1)), any(vec2<bool>(false, false))), var_0.zz, vec2<bool>(all(vec3<bool>(var_0.x, arg_1, false)), -1070f <= arg_3.x))), arg_1, !func_4(-290f, vec4<f32>(480f, arg_3.x, arg_3.x, arg_3.x), vec4<u32>(u_input.a, 25639u, u_input.a, u_input.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1046f)).c && arg_1, var_0.x);
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.a, 16994i, ~0i, 1i), ~vec4<i32>(-2147483647i, 2147483647i, -1i, arg_2.a) ^ -vec4<i32>(47708i, 31125i, u_input.b.x, -2147483647i), select(select(vec4<i32>(arg_2.a, u_input.b.x, u_input.b.x, 1i), vec4<i32>(arg_2.a, -73993i, u_input.b.x, -5421i), false), abs(vec4<i32>(arg_2.a, 20395i, arg_2.a, 16380i)), true)), vec4<i32>(-(~8396i), _wgslsmith_div_i32(u_input.b.x & arg_2.a, -4118i), max(~u_input.b.x, ~17984i), _wgslsmith_add_i32(select(u_input.b.x, arg_2.a, var_0.x), func_4(arg_3.x, vec4<f32>(-1974f, 431f, arg_3.x, 693f), vec4<u32>(arg_0.x, 1u, u_input.d.x, u_input.c.x), arg_3.x).a.x))), u_input.b.x);
    global1 = array<vec3<bool>, 3>();
    return var_2.x;
}

fn func_6(arg_0: i32, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<f32>) -> vec2<f32> {
    global2 = array<Struct_2, 29>();
    var var_0 = true;
    global1 = array<vec3<bool>, 3>();
    global1 = array<vec3<bool>, 3>();
    let var_1 = abs(countOneBits(~(~(vec3<u32>(4294967295u, 77552u, u_input.c.x) | vec3<u32>(u_input.a, 31011u, u_input.a)))));
    return _wgslsmith_f_op_vec2_f32(arg_3.zz - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -896f) - _wgslsmith_f_op_vec2_f32(-arg_3.yx)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_6(func_5(vec3<u32>(u_input.d.x, u_input.a, 0u), any(vec3<bool>(true, false, true)), func_1(global2[_wgslsmith_index_u32(u_input.d.x, 29u)], u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(940f, 2393f))), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1268f, 985f, -1042f, 1000f)), vec4<f32>(1201f, -498f, 1866f, -869f), any(vec3<bool>(true, true, false)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-313f, -2299f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(475f, 1843f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(909f, 763f))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(func_6(-1i, firstLeadingBit(vec4<i32>(u_input.b.x, -80990i, 80796i, u_input.b.x)), _wgslsmith_f_op_f32(sign(-766f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(986f, -959f, -1698f, 570f))))).x == -661f)));
    var var_1 = func_4(1047f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1000f, var_0.x, -432f), vec4<f32>(-1730f, 289f, var_0.x, var_0.x), all(vec3<bool>(true, true, false)))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(444f, var_0.x, var_0.x, 471f))))))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~u_input.c.x, u_input.a), 855u), _wgslsmith_add_u32(abs(func_4(var_0.x, vec4<f32>(184f, var_0.x, var_0.x, var_0.x), vec4<u32>(49108u, u_input.d.x, 27438u, u_input.d.x), -271f).d), 1u), 4294967295u, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-376f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, 513f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1172f)))), select(vec2<bool>(true, true), !vec2<bool>(var_1.e, var_1.e), true))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1678f, var_0.x), vec2<f32>(729f, var_0.x)))))))));
    global1 = array<vec3<bool>, 3>();
    let var_3 = global1[_wgslsmith_index_u32(var_1.d, 3u)];
    let var_4 = Struct_1(~(-(~vec3<i32>(var_1.b, u_input.b.x, -20919i))), firstLeadingBit(~(~var_1.a.x)) & var_1.a.x, 0u >= (0u & firstTrailingBit(~u_input.c.x)), ~68808u, !var_1.c);
    var_1 = Struct_1(min(vec3<i32>(0i, _wgslsmith_mult_i32(1i, -14359i), ~select(var_1.b, var_4.b, true)), vec3<i32>(-1i >> (var_1.d % 32u), -func_4(var_2.x, vec4<f32>(var_2.x, 1593f, var_0.x, var_2.x), vec4<u32>(u_input.c.x, 0u, 60798u, 1u), var_2.x).b, var_1.b)), ~_wgslsmith_mult_i32(select(u_input.b.x, ~(-2147483647i), true), -2147483647i), !(!var_4.e | (!var_1.c || var_4.c)), u_input.a, !(var_1.e != false) & true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_2.x));
}

