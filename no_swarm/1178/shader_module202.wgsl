struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(0u, 1550f, true, vec4<u32>(1u, 7642u, 12413u, 115251u)), Struct_1(4294967295u, 161f, true, vec4<u32>(21339u, 0u, 0u, 4294967295u)), Struct_1(4294967295u, 754f, false, vec4<u32>(4294967295u, 31443u, 0u, 0u)));

var<private> global1: Struct_4;

var<private> global2: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(11167i, 1i, -1i, 32205i), vec4<i32>(-98149i, -13748i, -1i, 1i), vec4<i32>(0i, 0i, i32(-2147483648), 0i), vec4<i32>(2147483647i, 14989i, 895i, -69747i), vec4<i32>(-16545i, -1i, i32(-2147483648), 0i), vec4<i32>(-11430i, 51110i, -57940i, 1i), vec4<i32>(1i, 25261i, -45288i, i32(-2147483648)), vec4<i32>(-52292i, -63884i, 34987i, 74390i), vec4<i32>(0i, 55803i, 0i, 32038i), vec4<i32>(0i, -41775i, 13016i, 7733i), vec4<i32>(i32(-2147483648), 0i, -1i, -56268i), vec4<i32>(-38603i, -1i, -5732i, 1i));

var<private> global3: array<vec4<bool>, 18>;

var<private> global4: array<vec3<f32>, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    global1 = Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 2000f, arg_1), _wgslsmith_f_op_vec3_f32(round(global1.a)))))));
    var var_0 = !select(select(vec3<bool>(false, true, all(vec4<bool>(false, false, false, false))), vec3<bool>(all(vec4<bool>(false, true, true, false)), true, any(global3[_wgslsmith_index_u32(0u, 18u)])), true), !vec3<bool>(all(vec2<bool>(false, false)), true, select(false, true, true)), all(vec3<bool>(true, true, true)) != false);
    var var_1 = 0i;
    var var_2 = Struct_5(global0[_wgslsmith_index_u32(4294967295u, 3u)], _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(618f, _wgslsmith_f_op_f32(-2061f + 755f)), global1.a.x), _wgslsmith_f_op_f32(-global1.a.x)), 0u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    return 0u;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(~arg_0 ^ _wgslsmith_mod_u32(~(~0u) << (arg_0 % 32u), 61091u), 3u)];
    global0 = array<Struct_1, 3>();
    global4 = array<vec3<f32>, 26>();
    global4 = array<vec3<f32>, 26>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), 463f, _wgslsmith_f_op_f32(abs(var_0.b))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(global1.a.x - var_0.b), _wgslsmith_f_op_f32(exp2(global1.a.x)), _wgslsmith_div_f32(695f, 110f))))));
    return var_0.d.xw;
}

fn func_2(arg_0: vec2<bool>) -> Struct_4 {
    global2 = array<vec4<i32>, 12>();
    let var_0 = ~func_4(1u, arg_0.x & (func_3(u_input.c.zz, global1.a.x, vec2<u32>(u_input.d, 0u), Struct_2(u_input.c)) < u_input.d), Struct_2(~vec4<i32>(-5560i, u_input.c.x, u_input.c.x, 24536i) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 48401u), vec4<u32>(4294967295u, u_input.b.x, 1u, 4294967295u)) % vec4<u32>(32u))));
    let var_1 = Struct_5(Struct_1(firstTrailingBit(~115063u), _wgslsmith_f_op_f32(-global1.a.x), false & any(vec4<bool>(arg_0.x, true, arg_0.x, true)), select(~vec4<u32>(var_0.x, u_input.a, u_input.a, var_0.x), ~vec4<u32>(var_0.x, 4294967295u, var_0.x, 1u), true | arg_0.x) & reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 67915u, 25184u, 4294967295u), vec4<u32>(30913u, u_input.d, 4294967295u, 45213u)))), 1549f, var_0.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global1.a + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, var_1.a.b)))))));
    var var_3 = u_input.c.x;
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(var_1.b * global1.a.x), var_1.a.b, _wgslsmith_div_f32(-1302f, _wgslsmith_f_op_f32(exp2(global1.a.x)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = i32(-1i) * -1962i;
    global1 = arg_1;
    global0 = array<Struct_1, 3>();
    let var_1 = vec4<i32>(firstTrailingBit(u_input.c.x ^ var_0) >> (0u % 32u), var_0, -(-u_input.c.x & u_input.c.x), min(arg_2.x | 17282i, u_input.c.x));
    let var_2 = true;
    return global0[_wgslsmith_index_u32(~func_4(13503u, all(global3[_wgslsmith_index_u32(~max(u_input.d, u_input.a), 18u)]), Struct_2(~firstLeadingBit(global2[_wgslsmith_index_u32(7860u, 12u)]))).x, 3u)];
}

fn func_6(arg_0: Struct_3) -> Struct_2 {
    var var_0 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(13477u >> (~arg_0.c.a % 32u), ~(~u_input.b.x << (12812u % 32u))), 3u)], -617f, 14854u);
    var_0 = Struct_5(Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.b))))), false, abs(arg_0.c.d)), func_2(!vec2<bool>(any(vec2<bool>(var_0.a.c, false)), all(vec2<bool>(false, false)))).a.x, ~(~arg_0.c.d.x));
    var var_1 = func_5(Struct_4(_wgslsmith_f_op_vec3_f32(-global1.a)), func_2(select(vec2<bool>(39321u == u_input.a, any(global3[_wgslsmith_index_u32(arg_0.a.d.x, 18u)])), !vec2<bool>(false, arg_0.c.c), true)), min(-u_input.c, vec4<i32>(max(u_input.c.x, 0i), u_input.c.x ^ (u_input.c.x | u_input.c.x), u_input.c.x, 1i))).d.zxx;
    var var_2 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, ~min(4294967295u, arg_0.a.a & 20962u)), 3u)], arg_0.a.b, 4638u);
    let var_3 = -590f;
    return Struct_2(max(vec4<i32>(u_input.c.x, 0i, 2147483647i, ~u_input.c.x), ~global2[_wgslsmith_index_u32(~min(32234u, 29396u), 12u)]));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_4 {
    var var_0 = func_6(Struct_3(func_5(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(197f, global1.a.x, 339f))), func_2(!arg_3.zz), -u_input.c >> (min(vec4<u32>(41011u, 1u, 0u, arg_1.x), vec4<u32>(u_input.d, 13583u, arg_2.a, u_input.d)) % vec4<u32>(32u))), arg_3.x, arg_2));
    var var_1 = 4493u;
    let var_2 = Struct_3(Struct_1(func_5(Struct_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.b, arg_2.b, arg_2.b)))), Struct_4(vec3<f32>(-178f, arg_2.b, global1.a.x)), _wgslsmith_sub_vec4_i32(var_0.a, vec4<i32>(-8103i, 74526i, var_0.a.x, 1i))).a, 117f, true, firstLeadingBit(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, arg_2.d.x) ^ ~vec4<u32>(u_input.a, u_input.b.x, arg_2.a, arg_0.x))), !arg_2.c, func_5(Struct_4(vec3<f32>(1000f, -1310f, _wgslsmith_f_op_f32(max(arg_2.b, -250f)))), Struct_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.b, global1.a.x, global1.a.x)))), vec4<i32>(_wgslsmith_mult_i32(-1965i, -16797i) ^ var_0.a.x, ~u_input.c.x, _wgslsmith_div_i32(~u_input.c.x, ~u_input.c.x), reverseBits(var_0.a.x))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1934f);
    var var_4 = var_0.a.wzy;
    return func_2(!(!vec2<bool>(true, true && arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(~(~(~vec3<u32>(15031u, 36455u, u_input.a))), u_input.b, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~u_input.d), ~vec2<u32>(0u, 24663u)) & u_input.d, 3u)], global3[_wgslsmith_index_u32(u_input.d, 18u)]);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -353f, 1129f, 470f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -512f, global1.a.x, global1.a.x) * vec4<f32>(337f, global1.a.x, global1.a.x, -186f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1294f, var_0.x, -1027f, var_0.x)))))));
    global3 = array<vec4<bool>, 18>();
    var var_2 = _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(u_input.d, u_input.d, 0u) << (_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, select(u_input.b, vec3<u32>(u_input.a, 4294967295u, u_input.d), false)), reverseBits(u_input.b) & u_input.b) % vec3<u32>(32u)));
    var var_3 = Struct_3(func_5(func_2(select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec2<bool>(false, false)))), Struct_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(836f, -532f, -1441f)))))), min(vec4<i32>(abs(u_input.c.x), -u_input.c.x, -u_input.c.x, -u_input.c.x), u_input.c)), !(_wgslsmith_mod_u32(u_input.b.x, ~5758u) != firstTrailingBit(~1u)), func_5(Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-710f, 1883f, var_0.x))) * _wgslsmith_f_op_vec3_f32(select(var_1.yyx, var_0.zww, vec3<bool>(false, true, true))))), func_1(~firstLeadingBit(vec3<u32>(var_2.x, 0u, 1u)), vec3<u32>(u_input.d, u_input.b.x, ~var_2.x), Struct_1(0u, var_1.x, any(vec2<bool>(false, true)), vec4<u32>(22711u, 4294967295u, 50097u, 4294967295u) >> (vec4<u32>(u_input.b.x, 4294967295u, 1u, 7548u) % vec4<u32>(32u))), global3[_wgslsmith_index_u32(u_input.a, 18u)]), firstTrailingBit(-vec4<i32>(-2147483647i, 2147483647i, 0i, u_input.c.x))));
    var var_4 = var_2.x;
    var var_5 = func_2(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, max(_wgslsmith_mod_vec3_u32(~var_3.c.d.zzw, abs(vec3<u32>(4294967295u, var_2.x, 9630u) << (vec3<u32>(var_2.x, var_3.a.d.x, 1u) % vec3<u32>(32u)))), var_3.a.d.xzy));
}

