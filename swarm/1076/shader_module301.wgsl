struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, true, true, true, false);

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec4<u32>(73686u, 1u, 38999u, 1u), Struct_1(vec3<i32>(1i, -1i, 17716i))), Struct_2(vec4<u32>(73072u, 8342u, 1u, 0u), Struct_1(vec3<i32>(14777i, i32(-2147483648), 0i))), Struct_2(vec4<u32>(1u, 4294967295u, 0u, 1u), Struct_1(vec3<i32>(-9010i, -24884i, 0i))), Struct_2(vec4<u32>(0u, 77509u, 1u, 28362u), Struct_1(vec3<i32>(-36764i, 1i, 2147483647i))), Struct_2(vec4<u32>(0u, 4294967295u, 34750u, 4294967295u), Struct_1(vec3<i32>(23653i, 2147483647i, 63887i))), Struct_2(vec4<u32>(25118u, 1u, 14673u, 11803u), Struct_1(vec3<i32>(-1i, 28470i, 1i))), Struct_2(vec4<u32>(30325u, 28824u, 1u, 4294967295u), Struct_1(vec3<i32>(1i, 0i, -6482i))), Struct_2(vec4<u32>(0u, 6749u, 1u, 4294967295u), Struct_1(vec3<i32>(2147483647i, -1i, i32(-2147483648)))), Struct_2(vec4<u32>(4294967295u, 0u, 45812u, 0u), Struct_1(vec3<i32>(-1i, 1i, 0i))), Struct_2(vec4<u32>(4294967295u, 4294967295u, 21879u, 4294967295u), Struct_1(vec3<i32>(0i, 1i, 2147483647i))), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 47579u), Struct_1(vec3<i32>(25982i, -20425i, -25011i))), Struct_2(vec4<u32>(4294967295u, 21322u, 1u, 4294967295u), Struct_1(vec3<i32>(i32(-2147483648), -30502i, i32(-2147483648)))), Struct_2(vec4<u32>(0u, 3539u, 31988u, 54819u), Struct_1(vec3<i32>(29767i, i32(-2147483648), 0i))), Struct_2(vec4<u32>(51605u, 4294967295u, 4294967295u, 4294967295u), Struct_1(vec3<i32>(1i, -55885i, -64262i))), Struct_2(vec4<u32>(80772u, 4294967295u, 3230u, 4294967295u), Struct_1(vec3<i32>(0i, 0i, -923i))), Struct_2(vec4<u32>(1u, 103744u, 1u, 0u), Struct_1(vec3<i32>(50269i, -1i, 2147483647i))), Struct_2(vec4<u32>(10659u, 6893u, 1u, 15865u), Struct_1(vec3<i32>(0i, i32(-2147483648), 1i))));

var<private> global2: array<i32, 28> = array<i32, 28>(-33316i, 2147483647i, -35048i, i32(-2147483648), 1i, -1i, 0i, i32(-2147483648), -21154i, i32(-2147483648), 5917i, i32(-2147483648), -1731i, -63528i, 1i, -1i, 1i, 11231i, 2147483647i, -31709i, i32(-2147483648), 57632i, 70815i, 4824i, 6659i, -8896i, 76097i, 15118i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(countOneBits(u_input.e.www) & abs(u_input.e.ywx), ~_wgslsmith_sub_vec3_i32(u_input.e.yxz, u_input.e.zwx), _wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.d.x, global2[_wgslsmith_index_u32(1u, 28u)], 2147483647i), u_input.e.zxy), u_input.e.wwy)), vec3<i32>(select(2147483647i, -2373i, false), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(u_input.c ^ u_input.a.x, 28u)]), ~(-2147483647i))));
    var var_1 = global1[_wgslsmith_index_u32(max(u_input.c, ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.xx), 4294967295u)), 17u)];
    global1 = array<Struct_2, 17>();
    let var_2 = reverseBits(_wgslsmith_sub_vec3_i32(var_0.a, var_1.b.a));
    var var_3 = global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x), 17u)];
    return vec3<bool>(arg_0, false, true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>) -> u32 {
    var var_0 = true;
    let var_1 = vec2<u32>(4294967295u, arg_1.a.x);
    var_0 = arg_2.x;
    var var_2 = _wgslsmith_mod_u32(1u, ~var_1.x | min(0u, max(abs(4294967295u), 0u)));
    var var_3 = arg_1.a | _wgslsmith_div_vec4_u32(~arg_1.a, max(vec4<u32>(countOneBits(1u), 5649u, u_input.c, ~4294967295u), vec4<u32>(51772u << (u_input.a.x % 32u), _wgslsmith_div_u32(55927u, arg_1.a.x), ~u_input.c, 1u)));
    return arg_1.a.x;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global2 = array<i32, 28>();
    let var_0 = Struct_2(vec4<u32>(func_4(Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], global2[_wgslsmith_index_u32(0u, 28u)], arg_0.x)), Struct_2(vec4<u32>(u_input.c, u_input.c, u_input.a.x, 16331u), Struct_1(vec3<i32>(2662i, -2741i, 20631i))), func_3(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(28146u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)])), -1000f)), ~(~0u), 1u, abs(~u_input.a.x)), Struct_1(-abs(reverseBits(u_input.e.wwz))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -897f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(747f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1276f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -665f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1625f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-930f + 405f), -567f)))));
    var var_2 = vec3<bool>(global0[_wgslsmith_index_u32(31059u >> (~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 9829u, 14510u, u_input.a.x), var_0.a)) % 32u), 5u)], !(!all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 5u)], true, global0[_wgslsmith_index_u32(1792u, 5u)], true))), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]);
    return Struct_1(vec3<i32>(-_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-13422i, var_0.b.a.x), vec2<i32>(-31228i, -16882i)), ~arg_0.x), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.a.x, u_input.a.x), ~u_input.c) >> (50221u % 32u), 28u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(~0u, abs(u_input.a.x))), 28u)]));
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -132f)))))));
    var var_1 = all(func_3(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1073f, _wgslsmith_f_op_f32(f32(-1f) * -760f), func_3(true, 1041f).x)))).zx);
    var var_2 = Struct_3(select(-vec4<i32>(u_input.b, -1i, -2147483647i, -2147483647i) << (~vec4<u32>(3954u, u_input.a.x, 4294967295u, u_input.c) % vec4<u32>(32u)), vec4<i32>(arg_0.a.x, arg_0.a.x, u_input.e.x, arg_0.a.x) & -vec4<i32>(40101i, global2[_wgslsmith_index_u32(u_input.a.x, 28u)], global2[_wgslsmith_index_u32(43514u, 28u)], 42875i), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(20055u, 5u)]), select(vec4<bool>(false, false, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 5u)], global0[_wgslsmith_index_u32(40327u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(20071u, 5u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]), false))) << (~(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 5098u, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)) & ~vec4<u32>(u_input.a.x, 1u, 49793u, 1u)) % vec4<u32>(32u)), 1f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1300f, -760f), vec2<f32>(1187f, -633f)))))));
    var var_3 = _wgslsmith_div_vec2_i32(countOneBits(~var_2.a.xz), _wgslsmith_mult_vec2_i32(func_2(arg_0.a.xz).a.yz | vec2<i32>(2147483647i, -1i), ~_wgslsmith_clamp_vec2_i32(var_2.a.zy, vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], 1i), arg_0.a.xx))) & u_input.e.zz;
    global0 = array<bool, 5>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(2953f, var_2.b)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2473f)), var_2.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 5u)] && false))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: bool, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = arg_1.x;
    var var_1 = u_input.a.yz;
    global1 = array<Struct_2, 17>();
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-278f + _wgslsmith_f_op_f32(-216f + _wgslsmith_f_op_f32(min(189f, 598f)))), _wgslsmith_f_op_f32(func_5(func_2(countOneBits(arg_1.wx)))))));
    return Struct_2(~vec4<u32>(~var_1.x << (_wgslsmith_mult_u32(var_1.x, u_input.a.x) % 32u), _wgslsmith_clamp_u32(var_1.x, abs(u_input.c), 0u >> (1u % 32u)), 16395u, max(~u_input.c, 63077u ^ var_1.x)), func_2((reverseBits(u_input.d) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(42018u, u_input.c), vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u))) & -_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, 19645i), vec2<i32>(20885i, global2[_wgslsmith_index_u32(var_1.x, 28u)]))));
}

fn func_6(arg_0: Struct_2) -> u32 {
    var var_0 = max(firstTrailingBit(u_input.e), select(_wgslsmith_mod_vec4_i32(u_input.e, -vec4<i32>(arg_0.b.a.x, 77105i, u_input.e.x, global2[_wgslsmith_index_u32(arg_0.a.x, 28u)])), max(~vec4<i32>(-2147483647i, u_input.b, u_input.b, 0i), -(~vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(arg_0.a.x, 28u)], -1i))), !global0[_wgslsmith_index_u32(~max(u_input.c, u_input.c), 5u)]));
    global1 = array<Struct_2, 17>();
    let var_1 = Struct_3(_wgslsmith_div_vec4_i32(~(firstLeadingBit(u_input.e) | -u_input.e), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, global2[_wgslsmith_index_u32(u_input.c, 28u)], 1i, 0i)) ^ firstTrailingBit(vec4<i32>(u_input.d.x, 1i, 21686i, -55846i)), vec4<i32>(1i, func_1(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 5u)]), vec4<i32>(-2147483647i, -7922i, 0i, global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), true, u_input.e.zxx).b.a.x, -var_0.x, arg_0.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(452f, 692f)) * _wgslsmith_f_op_f32(1373f - 461f)))) * -1000f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 701f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-122f, 1366f)))))), vec2<f32>(547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -611f)))));
    global2 = array<i32, 28>();
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(func_5(func_1(vec2<bool>(global0[_wgslsmith_index_u32(48553u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), vec4<i32>(2147483647i, var_0.x, 35108i, -11188i), false, vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], 0i, var_1.a.x)).b)))), var_1.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -127f))), 130f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-669f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-112f)) + var_1.c.x), var_1.b, var_1.c.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b, var_1.b, var_1.b, var_1.c.x))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(738f, var_1.c.x, var_1.c.x, var_1.b)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-566f, var_1.c.x, var_1.b, var_1.b)))))))));
    return _wgslsmith_dot_vec2_u32(~u_input.a.yy, vec2<u32>(_wgslsmith_dot_vec4_u32(abs(arg_0.a), (vec4<u32>(16402u, 31690u, 9458u, arg_0.a.x) | arg_0.a) ^ ~arg_0.a), 134287u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(func_6(func_1(select(!vec2<bool>(global0[_wgslsmith_index_u32(14244u, 5u)], global0[_wgslsmith_index_u32(28316u, 5u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 5u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(100514u, 5u)]), global0[_wgslsmith_index_u32(0u, 5u)])), countOneBits(~u_input.e), select(global0[_wgslsmith_index_u32(35198u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], false), vec3<i32>(-51876i, ~u_input.e.x, 1i))) ^ (~4294967295u << (_wgslsmith_sub_u32(u_input.a.x, u_input.c) % 32u)), 17u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-673f)), -1000f, _wgslsmith_div_f32(639f, 689f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-412f, -1332f, 256f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-224f, -367f, 742f), vec3<f32>(807f, -1191f, -508f))), vec3<f32>(954f, 1118f, -2234f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1062f, 363f, -1010f), vec3<f32>(-1628f, 396f, -1969f)))));
    var var_2 = var_1.x <= var_1.x;
    var var_3 = vec3<u32>(~_wgslsmith_add_u32(var_0.a.x ^ var_0.a.x, var_0.a.x) & ~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c, 0u), func_6(Struct_2(var_0.a, var_0.b))), 0u, _wgslsmith_div_u32(~(~_wgslsmith_sub_u32(11508u, u_input.c)), var_0.a.x));
    var var_4 = Struct_1(~u_input.e.wyz);
    var var_5 = vec4<bool>(_wgslsmith_sub_u32(var_0.a.x, var_0.a.x & 1u) == 0u, true, var_1.x >= -1462f, global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(~var_0.a.x, 46155u) ^ var_3.x), 5u)]);
    let var_6 = func_1(!var_5.yy, ~(~vec4<i32>(-1i, u_input.e.x, ~31119i, -2283i << (var_0.a.x % 32u))), func_3(func_3(all(vec3<bool>(true, false, var_5.x)), _wgslsmith_f_op_f32(890f * var_1.x)).x, -427f).x || (!(var_1.x < 1290f) & var_5.x), u_input.e.wzz);
    let var_7 = Struct_3(vec4<i32>(_wgslsmith_add_i32(~(-2147483647i), _wgslsmith_dot_vec4_i32(u_input.e | u_input.e, u_input.e)), _wgslsmith_div_i32(var_0.b.a.x, 1i), 1i, -2147483647i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -158f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))) + _wgslsmith_f_op_vec2_f32(var_1.yz * vec2<f32>(_wgslsmith_f_op_f32(-699f + 268f), _wgslsmith_f_op_f32(f32(-1f) * -948f)))));
    let x = u_input.a;
    s_output = StorageBuffer(307f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_7.c.x) - _wgslsmith_f_op_f32(var_7.b + _wgslsmith_f_op_f32(var_7.c.x + _wgslsmith_f_op_f32(func_5(var_0.b))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-103f)), _wgslsmith_f_op_f32(f32(-1f) * -1804f))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1064f * 1f), _wgslsmith_f_op_f32(-var_1.x))), -1226f), 0u);
}

