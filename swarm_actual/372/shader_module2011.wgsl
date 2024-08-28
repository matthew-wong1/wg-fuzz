struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1;

var<private> global2: array<i32, 8> = array<i32, 8>(-1i, 2147483647i, -1i, -70838i, -42470i, -24963i, 0i, 19271i);

var<private> global3: u32 = 31192u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    global2 = array<i32, 8>();
    let var_0 = global0.b.a;
    global2 = array<i32, 8>();
    let var_1 = _wgslsmith_f_op_f32(floor(var_0.c));
    let var_2 = ~(~select(abs(min(25017u, global0.c)), firstLeadingBit(1u), global1.a));
    return var_0.a || any(vec3<bool>(any(vec3<bool>(global0.d, true, true)), global0.d, all(vec3<bool>(false, false, global0.d)) == global1.a));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(arg_3.b.yy, Struct_2(global0.b.a, false), global0.c, func_3());
    var var_1 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.b.x, var_0.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.x, arg_2)))), global0.b.a.b.xy), global0.b, min(global0.c ^ min(~global0.c, global0.c), global0.c), arg_1.x);
    global3 = 25315u;
    var var_2 = _wgslsmith_f_op_f32(floor(var_1.b.a.b.x));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(387f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-686f - var_0.a.x), 452f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-113f)) + var_0.a.x));
    return Struct_1(!(!arg_0.x), vec3<f32>(710f, _wgslsmith_f_op_f32(trunc(2210f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.a.x))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1278f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    var var_0 = min(vec4<i32>(i32(-1i) * -2147483647i, 1i, 29782i, -(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 11573i), u_input.a) << (abs(14139u) % 32u))), vec4<i32>(-9352i, _wgslsmith_mult_i32(-u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global2[_wgslsmith_index_u32(39024u, 8u)]), u_input.b)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global2[_wgslsmith_index_u32(global0.c, 8u)], global2[_wgslsmith_index_u32(global0.c, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], -29234i), vec4<i32>(-2147483647i, -126i, -1i, global2[_wgslsmith_index_u32(82633u, 8u)]), vec4<bool>(true, false, arg_2.a.a, arg_2.a.a)), vec4<i32>(-2147483647i, 39262i, u_input.a.x, u_input.b.x)), -2147483647i) << (countOneBits(vec4<u32>(1u << (global0.c % 32u), global0.c, select(global0.c, global0.c, global0.d), global0.c)) % vec4<u32>(32u)));
    var var_1 = arg_2;
    let var_2 = Struct_3(vec2<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_0.x))))), Struct_2(Struct_1(select(var_1.b, true, global0.c < global0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, -431f, arg_1.a.b.x)), _wgslsmith_f_op_f32(395f * _wgslsmith_f_op_f32(-594f - -1324f))), var_1.b), global0.c, func_2(!(!vec3<bool>(true, arg_2.b, global1.a)), !(!vec3<bool>(true, arg_2.b, var_1.b)), 642f, Struct_1(arg_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(206f, 367f, global1.b.x) * arg_2.a.b), -572f)).a && (true != func_3()));
    var var_3 = Struct_2(Struct_1(!(!any(vec2<bool>(arg_2.b, true))), _wgslsmith_f_op_vec3_f32(var_1.a.b + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a.b + global1.b) - global0.b.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(503f)))), !global1.a);
    global2 = array<i32, 8>();
    return var_2;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a.c) - arg_0.b.a.b.x), global1.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -618f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1005f * _wgslsmith_f_op_f32(global0.b.a.b.x * global0.a.x)), func_2(vec3<bool>(global1.a, true, arg_1.a.a), select(vec3<bool>(global1.a, false, global0.b.a.a), vec3<bool>(arg_0.d, true, true), vec3<bool>(arg_1.a.a, arg_0.b.b, true)), _wgslsmith_f_op_f32(ceil(857f)), func_2(vec3<bool>(global1.a, true, true), vec3<bool>(global0.d, false, true), arg_0.a.x, Struct_1(arg_1.a.a, arg_1.a.b, global1.b.x))).c)))));
    let var_1 = any(!select(!select(vec4<bool>(true, false, global0.d, global0.d), vec4<bool>(false, true, true, global0.b.b), vec4<bool>(global1.a, true, arg_1.b, true)), select(select(vec4<bool>(global1.a, arg_0.d, true, arg_0.b.a.a), vec4<bool>(true, true, global1.a, global0.d), true), !vec4<bool>(false, global1.a, true, arg_0.b.b), all(vec4<bool>(true, true, global1.a, global0.d))), select(select(vec4<bool>(true, true, arg_1.a.a, true), vec4<bool>(true, arg_0.d, false, arg_0.b.b), arg_0.d), !vec4<bool>(arg_0.d, false, arg_0.b.b, arg_0.b.a.a), vec4<bool>(global1.a, global1.a, false, true))));
    var var_2 = _wgslsmith_add_vec2_u32(firstTrailingBit(max(~(vec2<u32>(global0.c, global0.c) >> (vec2<u32>(arg_0.c, 1u) % vec2<u32>(32u))), ~vec2<u32>(13361u, 19600u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_0.c), vec2<u32>(35779u, 4294967295u)) % vec2<u32>(32u)))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~arg_0.c, arg_0.c, 55571u ^ global0.c), ~(~arg_0.c)), (max(vec2<u32>(global0.c, 68291u), vec2<u32>(global0.c, 16054u)) ^ select(vec2<u32>(1u, 5585u), vec2<u32>(global0.c, 20315u), false)) << (~vec2<u32>(global0.c, 64589u) % vec2<u32>(32u))));
    var var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1297f - -1660f), _wgslsmith_f_op_f32(min(global1.c, 507f))))), _wgslsmith_f_op_f32(var_0.x + -1875f)), func_4(_wgslsmith_f_op_vec3_f32(-func_4(global0.b.a.b, func_4(arg_0.b.a.b, Struct_2(Struct_1(arg_0.b.a.a, global0.b.a.b, -739f), false), Struct_2(arg_1.a, false)).b, Struct_2(arg_0.b.a, true)).b.a.b), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)), Struct_2(func_4(vec3<f32>(global1.b.x, -563f, 1470f), Struct_2(global0.b.a, arg_0.b.b), global0.b).b.a, false), Struct_2(func_2(vec3<bool>(false, true, false), vec3<bool>(var_1, global0.b.b, true), arg_0.b.a.c, global0.b.a), true)).b, func_4(global1.b, Struct_2(Struct_1(var_1, vec3<f32>(-194f, global1.c, arg_0.a.x), global1.c), arg_1.a.b.x < 155f), Struct_2(func_2(vec3<bool>(false, true, arg_1.b), vec3<bool>(true, false, true), var_0.x, Struct_1(global0.b.b, vec3<f32>(var_0.x, arg_0.a.x, -507f), -312f)), arg_0.b.b)).b).b, var_2.x, true);
    let var_4 = _wgslsmith_add_vec3_u32(max(_wgslsmith_add_vec3_u32(select(select(vec3<u32>(var_3.c, 0u, var_2.x), vec3<u32>(1u, 4294967295u, arg_0.c), vec3<bool>(false, var_1, false)), ~vec3<u32>(4145u, 4294967295u, arg_0.c), select(vec3<bool>(global0.d, var_1, global0.b.b), vec3<bool>(false, global1.a, true), true)), reverseBits(vec3<u32>(global0.c, arg_0.c, 4294967295u))), ~(~(~vec3<u32>(arg_0.c, 0u, arg_0.c)))), ~(~min(vec3<u32>(var_2.x, 938u, arg_0.c), vec3<u32>(1u, 4294967295u, arg_0.c)) >> (select(vec3<u32>(4294967295u, 1u, 4294967295u) << (vec3<u32>(arg_0.c, 36266u, 0u) % vec3<u32>(32u)), select(vec3<u32>(2325u, var_3.c, var_3.c), vec3<u32>(var_3.c, var_2.x, 17612u), vec3<bool>(true, arg_0.b.a.a, false)), vec3<bool>(true, true, true)) % vec3<u32>(32u))));
    return vec3<bool>(!(u_input.a.x > -2147483647i), true, !func_4(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, 569f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.c, -1000f, -234f) * global0.b.a.b)), arg_0.b, arg_0.b).d);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> Struct_2 {
    let var_0 = func_5(func_4(global1.b, global0.b, Struct_2(func_2(vec3<bool>(global1.a, arg_0.d, global0.d), !vec3<bool>(false, global1.a, false), _wgslsmith_f_op_f32(-arg_1.x), Struct_1(arg_2, vec3<f32>(-842f, arg_1.x, 199f), -1099f)), func_2(vec3<bool>(false, global0.b.b, true), select(vec3<bool>(global0.d, false, true), vec3<bool>(false, false, true), arg_0.d), _wgslsmith_f_op_f32(ceil(209f)), Struct_1(false, vec3<f32>(-877f, 1478f, arg_0.b.a.c), global0.a.x)).a)), arg_0.b, u_input.a);
    let var_1 = u_input.b.x;
    let var_2 = 1u;
    global3 = _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, global0.c)), _wgslsmith_div_vec2_u32(vec2<u32>(15419u, 54992u), vec2<u32>(4294967295u, global0.c)) | ~vec2<u32>(var_2, global0.c)), var_2);
    global1 = Struct_1(true, arg_0.b.a.b, _wgslsmith_f_op_f32(100f - _wgslsmith_f_op_f32(arg_0.b.a.b.x - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.a.x, 334f))))));
    return global0.b;
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> i32 {
    return _wgslsmith_sub_i32(-(100226i >> (global0.c % 32u)), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 8>();
    let var_0 = ~(~(~reverseBits(vec4<u32>(1640u, 4294967295u, 4294967295u, 4294967295u))));
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(abs(abs(abs(-1i))), _wgslsmith_sub_i32(~global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(~global0.c, 8u)]), 2147483647i, func_6(Struct_3(vec2<f32>(-435f, -352f), func_1(Struct_3(global1.b.xz, Struct_2(Struct_1(true, vec3<f32>(-727f, global1.b.x, global0.a.x), global1.c), global0.d), var_0.x, false), global1.b.xx, true), var_0.x, !global1.a), true && global0.b.a.a, func_4(vec3<f32>(global1.b.x, 723f, global1.b.x), global0.b, func_4(vec3<f32>(182f, -1328f, 316f), global0.b, Struct_2(Struct_1(false, global0.b.a.b, global1.c), global1.a)).b))), vec4<i32>(~(~1i), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~var_0.x), 10318u), 8u)], min(select(firstLeadingBit(u_input.a.x), reverseBits(global2[_wgslsmith_index_u32(32078u, 8u)]), false), u_input.a.x), -(~(-52805i))));
    var var_2 = !vec2<bool>(!(!any(vec3<bool>(global0.d, global0.d, false))), true);
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1165f, -889f, -630f) * vec3<f32>(1276f, global0.a.x, global1.b.x)), global0.b.a.b) - vec3<f32>(-266f, global1.c, -1592f)))), global0.b, func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, 1006f)), global1.c, -1373f), Struct_2(Struct_1(!var_2.x, _wgslsmith_f_op_vec3_f32(-global0.b.a.b), _wgslsmith_f_op_f32(-global1.c)), global0.a.x == _wgslsmith_f_op_f32(-1055f + global0.b.a.b.x)), func_1(Struct_3(global1.b.zz, global0.b, 1u, !global1.a), _wgslsmith_f_op_vec2_f32(max(global1.b.yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, -798f) - vec2<f32>(global1.c, global1.c)))), false)).b);
    var var_4 = Struct_1(any(vec2<bool>(true, ~0i > global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 8u)])), vec3<f32>(_wgslsmith_f_op_f32(sign(-420f)), _wgslsmith_f_op_f32(round(1790f)), var_3.a.x), -347f);
    var_4 = func_1(func_4(global1.b, global0.b, func_1(func_4(vec3<f32>(var_4.b.x, var_3.b.a.c, var_4.b.x), global0.b, global0.b), vec2<f32>(func_2(vec3<bool>(var_2.x, true, true), vec3<bool>(global0.d, false, false), -1708f, Struct_1(false, vec3<f32>(489f, global0.a.x, 328f), 907f)).b.x, _wgslsmith_f_op_f32(178f + global0.a.x)), !global0.b.b)), _wgslsmith_f_op_vec2_f32(-var_3.b.a.b.xy), !any(vec2<bool>(var_3.d, false))).a;
    let x = u_input.a;
    s_output = StorageBuffer(1051f, var_1.ww);
}

