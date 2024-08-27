struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 0i);

var<private> global1: f32 = -561f;

var<private> global2: vec4<i32> = vec4<i32>(-4188i, 26076i, 1i, 1i);

var<private> global3: Struct_1 = Struct_1(true, i32(-2147483648));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = false;
    let var_1 = Struct_1(select(all(!select(vec4<bool>(global3.a, false, true, true), vec4<bool>(global0.a, true, false, arg_0.a), arg_2.a)), select(true, arg_0.a, all(!vec4<bool>(true, false, global3.a, arg_1.a))), true), reverseBits((arg_0.b << (u_input.c.x % 32u)) | min(arg_0.b, _wgslsmith_add_i32(global3.b, 48236i))));
    let var_2 = Struct_1(var_1.a, ~(-7391i));
    global2 = _wgslsmith_clamp_vec4_i32(max(firstTrailingBit(_wgslsmith_mod_vec4_i32(-u_input.b, u_input.b)), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.b, var_1.b, arg_0.b, global2.x << (1u % 32u)), ~vec4<i32>(var_2.b, global3.b, 2147483647i, -1i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(var_2.b, -25977i, arg_2.b, 0i), u_input.b))), vec4<i32>(-22710i, -9506i, var_1.b, 0i), -_wgslsmith_mult_vec4_i32(-select(vec4<i32>(var_1.b, global0.b, -2147483647i, global0.b), vec4<i32>(-2147483647i, arg_0.b, arg_0.b, arg_2.b), vec4<bool>(var_1.a, false, arg_2.a, var_2.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.b, global0.b, -34081i, -2147483647i) >> (vec4<u32>(81716u, u_input.c.x, 1u, u_input.c.x) % vec4<u32>(32u)), u_input.b, abs(u_input.b))));
    var_0 = any(vec4<bool>(true, !any(!vec3<bool>(var_2.a, arg_0.a, arg_2.a)), global3.a || any(!vec4<bool>(var_2.a, false, true, true)), select(global3.a, true, false)));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1120f, 1234f, 702f, 893f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-482f, 1197f, -1000f, -303f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-576f, -245f, -1347f, -279f) * vec4<f32>(-646f, 1259f, 1000f, -396f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-139f, -1000f, 969f, 1922f), vec4<f32>(-1229f, -151f, 143f, -344f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-643f, -940f, -3539f, -1000f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -398f, 1178f, 156f), vec4<f32>(-171f, 186f, 1000f, 246f), true)))))));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    global3 = Struct_1(global3.a, 11504i);
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * -1000f), -793f, -2329f, _wgslsmith_div_f32(-2054f, _wgslsmith_f_op_f32(1340f - 388f)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(select(u_input.c.x <= 4294967295u, !global3.a, !global0.a), 1020i), Struct_1(false, ~(~global0.b)), Struct_1(global3.a, firstLeadingBit(~global0.b))))));
    var var_1 = Struct_1(_wgslsmith_sub_u32(~1u, 1u) <= firstTrailingBit(~_wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.zx)), ~countOneBits(_wgslsmith_div_i32(_wgslsmith_add_i32(1i, -4903i), u_input.b.x & global3.b)));
    return Struct_1(global3.b != u_input.a, _wgslsmith_sub_i32(reverseBits(0i), 32312i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = arg_1;
    global3 = func_2(reverseBits(countOneBits(1i)), arg_1.b >> (u_input.c.x % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 131f, arg_2, arg_2)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1758f, arg_2, -741f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -998f, arg_2, arg_2) + vec4<f32>(arg_2, arg_2, -600f, 1029f)), vec4<f32>(-1300f, arg_2, arg_2, -246f), 21573i == var_0.b))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(501f, 260f, arg_2, arg_2) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_2, 1314f, 638f) + vec4<f32>(arg_2, arg_2, 313f, arg_2))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, -230f, arg_2) * vec4<f32>(arg_2, -621f, -108f, -409f))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2)), arg_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -346f))), _wgslsmith_f_op_f32(arg_2 - arg_2)), any(!select(vec4<bool>(global0.a, global3.a, true, false), vec4<bool>(arg_1.a, true, true, false), var_0.a)))));
    global2 = ~(~countOneBits(vec4<i32>(-58108i, -1i, _wgslsmith_clamp_i32(31160i, 77971i, global0.b), ~u_input.d.x)));
    var var_2 = true;
    return 1273f;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(func_1(Struct_1(true, -global0.b), arg_2, _wgslsmith_div_f32(1803f, _wgslsmith_f_op_f32(f32(-1f) * -632f)))), !(arg_3.x != _wgslsmith_f_op_f32(arg_1 - -416f)))) + -537f);
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, arg_3.x, -644f, arg_1))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, 829f)))))))));
    var var_2 = Struct_1(arg_0.x, global2.x);
    let var_3 = arg_2;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, arg_1, arg_3.x, 662f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1743f, _wgslsmith_f_op_f32(f32(-1f) * -1213f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1028f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, var_1.x, 264f, -493f) + vec4<f32>(var_1.x, arg_1, arg_3.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-680f, -1095f, arg_1, arg_3.x)))))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<bool>(true, true, (reverseBits(-11957i) < global0.b) || false), _wgslsmith_f_op_f32(-340f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_1(true, global2.x), Struct_1(false, global2.x), 340f)), _wgslsmith_div_f32(1404f, 1000f)))))), func_2(u_input.b.x, ~u_input.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(global3.a, global0.b), Struct_1(false, -2147483647i), Struct_1(true, 0i))).x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(168f, -782f)))) + vec2<f32>(_wgslsmith_f_op_f32(-888f * -2219f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-898f - -574f)))));
    var var_1 = select(_wgslsmith_div_vec3_i32(vec3<i32>(select(global0.b, global2.x, all(vec4<bool>(true, true, global0.a, true))), -global0.b, -1i), u_input.b.wzw), u_input.d, global0.a);
    let var_2 = vec2<i32>(59863i, -2147483647i);
    let var_3 = func_2(min(min(var_1.x >> (u_input.c.x % 32u), -var_0.b), var_2.x | -1i) ^ func_4(!(!vec3<bool>(true, global0.a, var_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(471f, -112f))), Struct_1(true, var_2.x & -58324i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1794f, -325f)))).b, -1i << (~u_input.c.x % 32u));
    var_0 = func_2(u_input.d.x, _wgslsmith_mod_i32(21377i & max(~global2.x, 1i), global2.x));
    let var_4 = true;
    var var_5 = u_input.b;
    global3 = var_3;
    global2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -786f)))))), u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2294f, 170f) + vec2<f32>(-1240f, 206f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(359f, -822f) - vec2<f32>(-820f, -704f))))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(63836u, u_input.c.x), vec2<u32>(1u, ~4294967295u)));
}

