struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<f32>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<f32>(-1000f, -295f, -541f), 17854i, 45283i), Struct_1(vec3<f32>(739f, 427f, 1000f), 1i, 46485i));

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global4: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(92488u, 0u), vec2<u32>(1148u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(26260u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(61031u, 0u), vec2<u32>(45103u, 63072u), vec2<u32>(25337u, 0u), vec2<u32>(39168u, 35160u), vec2<u32>(4294967295u, 11119u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    global1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global2.b.a.x, _wgslsmith_f_op_f32(round(2323f)))), global0.a.b.a.x, _wgslsmith_f_op_f32(floor(global0.a.a.a.x))))));
    let var_0 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, arg_1.a.x, global1.x) * vec3<f32>(-332f, -1719f, -714f)), 1i, 0i), arg_1));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(arg_1.a, global2.a.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.a.a)))));
    let var_1 = ~vec2<i32>(-62454i, -25991i);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_div_f32(-236f, _wgslsmith_f_op_f32(var_0.a.a.a.x + _wgslsmith_f_op_f32(floor(global0.a.a.a.x)))), arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_1.a.x) - _wgslsmith_f_op_f32(1069f + _wgslsmith_f_op_f32(-var_0.a.a.a.x)))), -1i, 2147483647i);
    return global3.x;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = Struct_3(global2.b, global2.b);
    let var_1 = Struct_2(select(select(select(vec3<bool>(false, false, false), global3.xwx, global3.zwz), vec3<bool>(any(global3.zy), false, !global3.x), vec3<bool>(any(global3.zyx), false, u_input.b.x > 0u)), select(!select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(global3.x, true, false), true), select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, global3.x, global3.x), !global3.wzz), !func_3(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), global2.b)), select(vec3<bool>(any(vec2<bool>(false, false)), false, select(global3.x, true, global3.x)), vec3<bool>(true, global3.x, select(false, global3.x, false)), true)), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(global0.a.a.a)))))), var_0.b.b, 13116i), _wgslsmith_add_u32(0u, u_input.b.x));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(-arg_1.x), 291f);
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global2.b.a, arg_1)) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), var_0.b.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -128f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(317f, global1.x, global0.a.a.a.x) - vec3<f32>(128f, -984f, global2.b.a.x)))))));
    var var_2 = global0.a;
    return global1.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_3 {
    global4 = array<vec2<u32>, 10>();
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 2147483647i, 2147483647i, global0.a.b.b), vec4<i32>(global2.a.c, -2147483647i, global2.a.c, arg_0.x)), global0.a.a.a, _wgslsmith_add_vec4_i32(u_input.c, u_input.c), ~u_input.a))), 321f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * -296f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(364f, -779f)) + _wgslsmith_f_op_f32(-global0.a.a.a.x)))), global0.a.a.a, !(~(-59876i) > global2.b.c)));
    var var_0 = abs(-((firstLeadingBit(vec2<i32>(global2.b.b, 16571i)) | arg_0) & vec2<i32>(2147483647i, arg_0.x)));
    let var_1 = global0.a;
    let var_2 = Struct_3(Struct_1(global2.a.a, global2.a.c, global2.b.c), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1 - var_1.a.a))), global2.a.b, 2147483647i));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(global2.a.a - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(global0.a.a.a, vec3<f32>(arg_1.x, 579f, 1330f)))))), -4110i, -2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1277f, -455f, 672f), arg_2, false))) * vec3<f32>(-1000f, -463f, arg_1.x)), var_0.x & abs(_wgslsmith_dot_vec3_i32(u_input.c.xyw, u_input.c.yzy)), -var_1.b.c));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>) -> vec3<f32> {
    var var_0 = ~vec4<u32>(~u_input.b.x, ~(max(u_input.b.x, 58558u) ^ 11332u), u_input.b.x, 19048u >> (1u % 32u));
    var var_1 = !global3.x;
    var var_2 = _wgslsmith_div_f32(global0.a.b.a.x, global1.x);
    global4 = array<vec2<u32>, 10>();
    var var_3 = func_1(~_wgslsmith_clamp_vec2_i32(-arg_1, vec2<i32>(~(-2147483647i), -global0.a.b.c), arg_1), vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(func_2(-abs(global0.a.b.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(797f, global1.x, 103f)))), _wgslsmith_mod_vec4_i32(~u_input.c, u_input.c), u_input.c.yzy)), -141f), vec3<f32>(_wgslsmith_f_op_f32(-global2.b.a.x), _wgslsmith_f_op_f32(func_2(global2.a.c >> (u_input.b.x % 32u), vec3<f32>(1000f, _wgslsmith_f_op_f32(func_2(u_input.d, vec3<f32>(107f, global1.x, global2.b.a.x), u_input.c, vec3<i32>(arg_0.a.b.c, 2147483647i, 749i))), global1.x), vec4<i32>(countOneBits(global0.a.b.c), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -42382i, 1i), u_input.c.xyx), arg_0.a.b.c, arg_0.a.b.b), ~u_input.a)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.a.x + 250f))))).a;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0.a.a.a), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(582f, global0.a.b.a.x, arg_0.a.a.a.x) + _wgslsmith_div_vec3_f32(global0.a.b.a, vec3<f32>(-261f, -1322f, -1837f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0.a.a.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.b.a.x, arg_0.a.b.a.x, global1.x))) * _wgslsmith_f_op_vec3_f32(global2.b.a - var_3.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_4(func_1(u_input.c.yz, global0.a.b.a, global0.a.b.a)), vec2<i32>(-10848i, u_input.a.x))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.a.a.a)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global0.a.b.a + vec3<f32>(global2.b.a.x, 743f, global1.x)), _wgslsmith_f_op_vec3_f32(-global2.a.a))))));
    global1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global2.b.a + global2.b.a)));
    let var_1 = global2.a.a.zy;
    global2 = func_1(vec2<i32>(27907i, 30297i), global0.a.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.a.x, -3025f, global0.a.a.a.x)))) - _wgslsmith_f_op_vec3_f32(-global0.a.b.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-837f - -2019f), _wgslsmith_f_op_f32(sign(global1.x)), -493f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<f32>(1794f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global1.x)))), 151f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -888f))))), select(select(vec4<bool>(false, true, true, global3.x), select(select(vec4<bool>(false, true, false, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x), false), vec4<bool>(true, false, false, false), all(global3.xzx)), firstLeadingBit(1u) >= u_input.b.x), vec4<bool>(false, global3.x, true, true == global3.x), select(vec4<bool>(func_3(vec3<u32>(26940u, u_input.b.x, u_input.b.x), Struct_1(global2.b.a, -2147483647i, 18033i)), true, global3.x || false, true), vec4<bool>(any(vec2<bool>(false, true)), true, true, global3.x), any(!vec2<bool>(global3.x, global3.x))))));
    let var_3 = Struct_2(select(vec3<bool>(global3.x, global3.x, ~0i == (2147483647i << (u_input.b.x % 32u))), select(global3.yxy, select(vec3<bool>(global3.x, global3.x, false), !global3.ywy, !vec3<bool>(true, global3.x, global3.x)), !all(vec2<bool>(global3.x, global3.x))), false), global2.b, 7899u);
    let var_4 = select(u_input.a.xx, vec2<i32>(u_input.c.x, var_3.b.c), false);
    let var_5 = Struct_3(Struct_1(global0.a.a.a, -2147483647i, -abs(abs(1i))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.a.x, 624f, 1620f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_3.b.a)))), global0.a.a.c, _wgslsmith_clamp_i32(firstLeadingBit(var_4.x), 1i, 19317i)));
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.b.a.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(22599i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a.a.x, global1.x, -115f)), u_input.c, vec3<i32>(global0.a.a.c, u_input.a.x, var_4.x)))))), _wgslsmith_f_op_f32(350f + 234f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b.x << (_wgslsmith_add_u32(u_input.b.x | u_input.b.x, _wgslsmith_mod_u32(118156u, u_input.b.x)) % 32u), _wgslsmith_div_u32(countOneBits(min(4294967295u, 8000u)), ~(u_input.b.x ^ 4294967295u)), var_3.c << (60332u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.b.a.yz * vec2<f32>(-1266f, 733f)) - vec2<f32>(337f, 233f)))) - global0.a.b.a.zy), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~var_3.c, ~0u), 1u), -52623i);
}

