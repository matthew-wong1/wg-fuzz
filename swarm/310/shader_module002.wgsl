struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-1940f, -218f, 768f, 191f), vec3<i32>(-12953i, i32(-2147483648), 2147483647i), 492f, vec4<i32>(0i, 20036i, i32(-2147483648), -8960i));

var<private> global1: vec2<i32> = vec2<i32>(13096i, 1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> u32 {
    global0 = arg_3;
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(global0.a, _wgslsmith_f_op_vec4_f32(max(global0.a, _wgslsmith_f_op_vec4_f32(-arg_3.a))))))), ~min(-global0.d.www, global0.d.zzz) & arg_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - arg_2), abs(firstTrailingBit(-vec4<i32>(-2147483647i, 1i, global0.b.x, global0.b.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-522f, 218f)))))));
    global1 = _wgslsmith_mult_vec2_i32(global0.b.xx, ~var_0.d.xy);
    var var_2 = true;
    return arg_0;
}

fn func_3() -> vec4<f32> {
    var var_0 = countOneBits(max(firstTrailingBit(vec3<i32>(-u_input.a, global1.x, ~(-998i))), global0.d.xyy));
    let var_1 = 0u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(749f, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(f32(-1f) * -972f), _wgslsmith_f_op_f32(-global0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1362f), global0.a.x, 683f, _wgslsmith_f_op_f32(-global0.c)), vec4<bool>(true, true, any(vec2<bool>(false, false)), true)))), -global0.d.zyx, 820f, ~global0.d);
    let var_3 = 0i;
    global1 = reverseBits(vec2<i32>(-7321i, -17093i >> (~_wgslsmith_clamp_u32(var_1, 9453u, 1u) % 32u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global0.a))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())), global0.d.xwx, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1365f, arg_2.x) - _wgslsmith_f_op_f32(-1000f * global0.c)) * global0.c), _wgslsmith_f_op_f32(round(global0.c)))), vec4<i32>(1i, -55287i, -reverseBits(u_input.a), ~(-(~1i))));
    global1 = u_input.b;
    var var_1 = Struct_1(global0.a, var_0.b, _wgslsmith_f_op_f32(872f + 1000f), var_0.d);
    return var_1.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> vec2<bool> {
    global1 = firstLeadingBit(max(arg_1.b.xx, ~(vec2<i32>(arg_1.b.x, arg_1.b.x) ^ arg_2.yy)));
    var var_0 = arg_0.x;
    let var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())), vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(11959i, 2147483647i, var_1.d.x) << (vec3<u32>(arg_0.x, arg_0.x, arg_0.x) % vec3<u32>(32u)), abs(vec3<i32>(arg_1.b.x, global0.b.x, arg_2.x))), var_1.d.x, ~(i32(-1i) * -21623i)), _wgslsmith_f_op_f32(-arg_1.c), arg_2);
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(5357u, func_1(~49045u, ~arg_0.x, arg_1.c, arg_1)), _wgslsmith_mod_u32(~arg_0.x, firstTrailingBit(~arg_0.x)), select(firstLeadingBit(~82599u), ~firstTrailingBit(79691u), true)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 2696u, 18332u), reverseBits(vec3<u32>(53340u, 57683u, 82306u))), _wgslsmith_clamp_u32(arg_0.x << (7642u % 32u), 0u, max(17286u, 4294967295u))), _wgslsmith_dot_vec3_u32(arg_0, arg_0), ~countOneBits(select(1u, 1u, arg_3))));
    return select(!vec2<bool>(_wgslsmith_f_op_f32(max(var_2.c, 581f)) <= _wgslsmith_f_op_f32(floor(-572f)), all(vec2<bool>(arg_3, arg_3)) | false), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, arg_3), arg_3), -426f < var_1.a.x)), _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x) != var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_4(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(23772u, 0u, 453u, 37138u), vec4<u32>(0u, 1u, 3718u, 5984u)), func_1(18077u, 1u, 1000f, Struct_1(global0.a, global0.d.wwz, global0.a.x, vec4<i32>(global0.d.x, -16784i, global1.x, u_input.a))), 0u), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(1035f)), global0.a.x, _wgslsmith_f_op_f32(global0.c - 823f), _wgslsmith_f_op_f32(-554f * global0.a.x)), abs(func_2(0u, vec2<bool>(false, true), global0.a.zwz)), 620f, global0.d), select(vec4<i32>(2147483647i, global0.d.x, global0.b.x, u_input.a) >> (~vec4<u32>(4294967295u, 0u, 13386u, 1u) % vec4<u32>(32u)), vec4<i32>(i32(-1i) * -19398i, global1.x, -global1.x, _wgslsmith_mod_i32(-1437i, 2147483647i)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true)), any(vec2<bool>(select(false, false, false), true))), !vec2<bool>(true, !any(vec4<bool>(false, true, false, false))), vec2<bool>(false, true));
    let var_1 = 10551u;
    let var_2 = 66711u;
    var var_3 = Struct_1(global0.a, abs(vec3<i32>(global1.x | 2147483647i, min(1i, abs(global0.b.x)), -3634i)), -189f, vec4<i32>(-(global1.x << (_wgslsmith_mod_u32(1u, 7009u) % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(-20985i, 4477i & u_input.b.x, global0.d.x), vec3<i32>(_wgslsmith_clamp_i32(global1.x, global1.x, 0i), 0i, firstTrailingBit(8694i))), _wgslsmith_dot_vec2_i32(~(vec2<i32>(global0.d.x, 35234i) << (vec2<u32>(1u, var_1) % vec2<u32>(32u))), vec2<i32>(2147483647i, _wgslsmith_mod_i32(1i, 2147483647i))), global1.x));
    let var_4 = _wgslsmith_sub_vec4_u32(abs(vec4<u32>(_wgslsmith_add_u32(var_2, 1u), 6950u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 605u), vec2<u32>(var_1, var_1)), var_2)), min(min(vec4<u32>(var_2, 1u, var_1, 4294967295u), vec4<u32>(29438u, 4294967295u, 78467u, var_2)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(var_1, 0u, 4294967295u, var_1), vec4<u32>(var_2, var_1, 4294967295u, 0u)), vec4<u32>(~10800u, var_2, max(var_1, 1u), var_2))) << ((countOneBits(select(_wgslsmith_add_vec4_u32(vec4<u32>(var_1, var_2, var_2, 1u), vec4<u32>(10382u, var_1, var_2, var_1)), ~vec4<u32>(131539u, var_2, 48795u, var_1), vec4<bool>(var_0.x, false, true, var_0.x))) | max(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 8655u, var_1, var_1), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 13066u, var_2, 41401u), vec4<u32>(7596u, var_1, var_2, 77774u), vec4<u32>(var_1, 1u, 12385u, 0u))), min(countOneBits(vec4<u32>(1u, 4294967295u, 0u, var_2)), ~vec4<u32>(var_1, 0u, var_1, var_2)))) % vec4<u32>(32u));
    var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_3.a.x + 450f), _wgslsmith_f_op_f32(global0.a.x - -1066f), 953f, global0.a.x), var_3.a)), vec3<i32>(-_wgslsmith_mod_i32(0i, func_2(var_4.x, vec2<bool>(true, false), vec3<f32>(1447f, 463f, 853f)).x), global1.x, _wgslsmith_add_i32(-var_3.d.x, select(abs(2147483647i), 1i, 4294967295u < var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + var_3.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c)) * _wgslsmith_f_op_f32(round(561f))))), global0.d);
    var var_5 = var_3.d.x;
    var_5 = global0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-(~u_input.a), -(var_3.d.x ^ global1.x)) | var_3.b.x, 0u, ~vec4<u32>(~_wgslsmith_sub_u32(4294967295u, var_4.x), abs(var_1), 55570u, _wgslsmith_mod_u32(0u, ~1u)), global0.a.zwx, 1f);
}

