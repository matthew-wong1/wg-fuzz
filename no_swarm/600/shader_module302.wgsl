struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, false, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = -_wgslsmith_mod_vec4_i32(-abs(firstTrailingBit(vec4<i32>(arg_0.x, arg_0.x, 33855i, -1i))), ~vec4<i32>(arg_0.x, ~arg_0.x, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(arg_0.x, -2147483647i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1606f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(2113f)), _wgslsmith_f_op_f32(f32(-1f) * -282f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(743f, 2220f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1264f, -1134f)), true)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(814f, -1000f), vec2<f32>(-356f, 246f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(598f, -853f))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-642f, 284f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-533f, -337f)))))))));
    var var_2 = Struct_3(reverseBits(vec2<i32>(_wgslsmith_div_i32(10449i, arg_0.x) ^ (i32(-1i) * -69845i), var_0.x)), 87075u, vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1536f, -1365f)))), _wgslsmith_f_op_f32(max(2402f, _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-var_1.x), global0.a.x))))), Struct_2(global0.a));
    var var_3 = vec2<bool>(true, !any(select(vec4<bool>(true, var_2.d.a.x, var_2.d.a.x, global0.a.x), var_2.d.a, global0.a.x)));
    let var_4 = Struct_3(select(~vec2<i32>(28725i, firstLeadingBit(var_0.x)), -vec2<i32>(-2147483647i, 1i), select(select(select(var_2.d.a.wy, vec2<bool>(var_3.x, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(global0.a.x, true)), global0.a.zw, true)), ~(~85372u) & _wgslsmith_mult_u32(_wgslsmith_mult_u32(min(u_input.d, u_input.b.x), ~4294967295u), select(_wgslsmith_add_u32(var_2.b, var_2.b), var_2.b, !var_3.x)), _wgslsmith_f_op_vec3_f32(var_2.c * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-102f, -274f)) * -262f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-851f + 668f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(924f * 1593f), _wgslsmith_div_f32(-937f, -586f)))), var_2.d);
    return var_0.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: i32) -> u32 {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(min(269f, _wgslsmith_f_op_f32(-arg_0.x))));
    let var_2 = vec3<i32>(_wgslsmith_div_i32(arg_1, 1i), 0i, _wgslsmith_mult_i32(-select(~arg_1, firstLeadingBit(arg_2), all(vec4<bool>(true, false, false, var_0))), _wgslsmith_sub_i32(~0i, func_3(vec2<i32>(arg_2, arg_1)))));
    global0 = Struct_2(vec4<bool>(var_0, true, true, select(true, var_0, all(vec4<bool>(var_0, true, true, true)))));
    var var_3 = -arg_1;
    return ~_wgslsmith_div_u32(u_input.a, reverseBits(_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.b), u_input.b)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>) -> Struct_2 {
    global0 = Struct_2(!(!(!select(vec4<bool>(true, global0.a.x, global0.a.x, true), vec4<bool>(true, true, global0.a.x, false), vec4<bool>(true, global0.a.x, global0.a.x, false)))));
    var var_0 = !vec2<bool>(any(!global0.a), !global0.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(938f, -1393f, 636f, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(-2600f - 679f), _wgslsmith_f_op_f32(step(-669f, 475f)), _wgslsmith_f_op_f32(trunc(-1034f)), -725f)))), vec4<f32>(1366f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1924f)), _wgslsmith_f_op_f32(round(-295f))), -442f, _wgslsmith_f_op_f32(ceil(135f)))));
    var_0 = select(select(vec2<bool>(!(arg_1.x != arg_1.x), select(true, !var_0.x, arg_1.x > arg_1.x)), select(vec2<bool>(all(vec3<bool>(global0.a.x, true, false)), all(global0.a)), vec2<bool>(true, var_0.x), arg_0.x), all(global0.a.yw) && arg_0.x), select(select(!vec2<bool>(false, var_0.x), arg_0.xx, select(!vec2<bool>(var_0.x, arg_0.x), vec2<bool>(true, false), select(arg_0.xy, vec2<bool>(arg_0.x, false), true))), arg_0.xx, global0.a.yz), all(!vec3<bool>(any(vec2<bool>(true, global0.a.x)), global0.a.x, arg_1.x <= 0i)));
    global0 = Struct_2(!vec4<bool>(!arg_0.x, arg_0.x, true, (-1000f > var_1.x) | any(vec3<bool>(global0.a.x, arg_0.x, global0.a.x))));
    return Struct_2(!vec4<bool>(global0.a.x, -2147483647i < ~arg_1.x, !all(global0.a), global0.a.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<f32>) -> i32 {
    var var_0 = ~4294967295u;
    var var_1 = func_4(select(!(!(!vec3<bool>(false, false, global0.a.x))), select(!select(arg_0, vec3<bool>(true, arg_0.x, arg_0.x), arg_0), global0.a.yzz, true), all(!vec2<bool>(arg_0.x, arg_0.x))), vec2<i32>(-(1i >> (func_2(arg_2, 45308i, 1i) % 32u)), _wgslsmith_mod_i32(~(-5641i) >> (1u % 32u), ~countOneBits(-1i))));
    var_1 = func_4(!vec3<bool>(var_1.a.x, false, func_4(select(vec3<bool>(arg_1, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, true), true), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 19773i), vec2<i32>(-7858i, -2147483647i))).a.x), vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(abs(vec2<i32>(9314i, 1i)), select(vec2<i32>(11362i, 12700i), vec2<i32>(-45206i, -2147483647i), var_1.a.ww)));
    var var_2 = 4294967295u;
    let var_3 = Struct_2(var_1.a);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-20751i, 7647i, -8662i, -1i), vec4<i32>(-29330i, 1i, 6648i, -2147483647i)), 10747i, _wgslsmith_div_i32(-1i, -3385i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-24523i, 7119i, 0i, 0i), -vec4<i32>(-41865i, 5967i, 25703i, -2147483647i))) & ~(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 0i, -2147483647i, 15322i), vec4<i32>(-1i, 15894i, 2147483647i, -2147483647i), vec4<i32>(0i, -36368i, -19035i, -69266i)) | vec4<i32>(17202i, 2147483647i, 0i, 2147483647i)), -abs(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(56135i, 0i, -20842i, 6452i), vec4<i32>(-1i, 1i, 24046i, -19859i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<i32>(min(min(func_1(vec3<bool>(true, true, global0.a.x), false, vec2<f32>(-570f, 838f)), 71688i), 1i), _wgslsmith_clamp_i32(func_3(vec2<i32>(1i, 1i)), ~_wgslsmith_mod_i32(0i, -23100i), _wgslsmith_mult_i32(~741i, _wgslsmith_sub_i32(1i, 0i)))), ~reverseBits(firstLeadingBit(u_input.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-203f, 1000f, 1000f) - vec3<f32>(-418f, -1609f, -166f)))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-313f, -927f, 430f) * vec3<f32>(-773f, -680f, -910f))))))), Struct_2(vec4<bool>(false, true, false, global0.a.x)));
    var var_1 = func_4(!(!vec3<bool>(global0.a.x, var_0.d.a.x, true)), ~(~var_0.a));
    let var_2 = _wgslsmith_sub_vec4_u32(u_input.b, u_input.b);
    var_0 = Struct_3(~vec2<i32>(-(~(-19895i)), _wgslsmith_sub_i32(1i, 2147483647i)), firstTrailingBit(abs(u_input.d)), var_0.c, var_0.d);
    let var_3 = Struct_2(vec4<bool>(!(true || var_1.a.x), var_0.a.x >= (reverseBits(var_0.a.x) | abs(var_0.a.x)), func_4(func_4(select(vec3<bool>(true, false, global0.a.x), var_0.d.a.yzy, true), vec2<i32>(2147483647i, var_0.a.x) ^ vec2<i32>(15381i, -1i)).a.yzx, var_0.a).a.x, global0.a.x || true));
    let var_4 = select(!vec2<bool>(!(17871u < var_2.x), !global0.a.x), !func_4(select(vec3<bool>(true, global0.a.x, var_0.d.a.x), select(vec3<bool>(false, true, true), var_1.a.zzw, var_0.d.a.xzx), var_0.a.x < -822i), vec2<i32>(abs(-1i), func_3(vec2<i32>(-27407i, 1i)))).a.xz, var_3.a.yw);
    var_1 = func_4(func_4(vec3<bool>(false, !var_4.x, true & !global0.a.x), _wgslsmith_mod_vec2_i32(abs(var_0.a), vec2<i32>(-1i) * -var_0.a)).a.xyz, _wgslsmith_sub_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(34911i, var_0.a.x), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_0.a.x), var_0.a), _wgslsmith_add_vec2_i32(var_0.a, vec2<i32>(2147483647i, -31957i))), vec2<i32>(_wgslsmith_mod_i32(0i, var_0.a.x << (var_0.b % 32u)), _wgslsmith_add_i32(var_0.a.x, _wgslsmith_mult_i32(var_0.a.x, -30394i)))));
    var var_5 = Struct_2(vec4<bool>(true, true, func_4(select(var_1.a.zzz, vec3<bool>(false, var_3.a.x, true), true), -(var_0.a & vec2<i32>(var_0.a.x, var_0.a.x))).a.x, !global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, abs(-(~vec3<i32>(var_0.a.x, -1i, -1i)) & vec3<i32>(reverseBits(22746i), -var_0.a.x, var_0.a.x)), 1u, _wgslsmith_f_op_f32(-var_0.c.x));
}

