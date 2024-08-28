struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(!(!vec2<bool>(true, !global1.a.x)));
    var var_2 = arg_0.wwz;
    global0 = Struct_1(!vec2<bool>(!(arg_0.x <= var_2.x), all(!global0.a)));
    var_2 = arg_0.wwx >> ((~vec3<u32>(22318u, ~u_input.a.x, u_input.a.x) >> (((u_input.a.xwy >> (u_input.a.xwy % vec3<u32>(32u))) ^ (u_input.a.yxz << (~vec3<u32>(u_input.a.x, u_input.a.x, 70474u) % vec3<u32>(32u)))) % vec3<u32>(32u))) % vec3<u32>(32u));
    return var_1.a;
}

fn func_2() -> vec4<u32> {
    let var_0 = global1.a.x;
    let var_1 = Struct_1(select(select(global1.a, select(global0.a, vec2<bool>(true, true), func_3(vec4<i32>(2147483647i, 37931i, -2147483647i, -1i), Struct_1(global1.a))), global0.a), func_3(-(~vec4<i32>(51228i, 41597i, 7172i, -1i)), Struct_1(!global0.a)), !global1.a.x));
    let var_2 = vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, firstTrailingBit(-36638i), 0i, _wgslsmith_div_i32(39464i, 2147483647i)));
    let var_3 = 13618u;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(max(-416f, -1162f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -674f), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-501f - -418f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(665f * 1431f) - _wgslsmith_f_op_f32(-1480f - -458f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -783f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-224f)) + _wgslsmith_f_op_f32(f32(-1f) * -556f)), _wgslsmith_f_op_f32(abs(582f)))));
    return firstTrailingBit(vec4<u32>(1u, 1u, min(59804u, var_3), u_input.a.x | 12562u));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = firstLeadingBit(reverseBits(vec2<i32>(~(-1i), 1i)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))) * -1630f), arg_0.x);
    var var_2 = Struct_1(global0.a);
    let var_3 = _wgslsmith_mod_vec4_u32(~(u_input.a << (u_input.a % vec4<u32>(32u))), u_input.a) | func_2();
    var var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1513f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1770f, 869f) + arg_0.zz) - _wgslsmith_f_op_vec2_f32(arg_0.zy - vec2<f32>(-2047f, arg_0.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))) - arg_0.yy))));
    return Struct_1(!global0.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = -_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(32533i, 16299i, -32405i), -vec3<i32>(18678i, 22399i, -13396i)), vec3<i32>(2147483647i, 1i, -1i) << (vec3<u32>(0u, 0u, arg_1) % vec3<u32>(32u))) << (vec3<u32>(min(abs(u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(156212u, arg_1), u_input.a.xz)) << (u_input.a.x % 32u), countOneBits(~(24483u | u_input.a.x)), arg_1) % vec3<u32>(32u));
    var var_1 = var_0.x;
    var var_2 = min(~_wgslsmith_mod_u32(reverseBits(53153u), _wgslsmith_mult_u32(1u, u_input.a.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 10234u, u_input.a.x, u_input.a.x), vec4<u32>(78311u, 4294967295u, 45292u, arg_1)) | 0u, countOneBits(~u_input.a.x))) >> (_wgslsmith_add_u32(u_input.a.x, ~(~(~1u))) % 32u);
    let var_3 = _wgslsmith_dot_vec3_u32(select(~(u_input.a.wxz ^ ~vec3<u32>(4294967295u, arg_1, arg_1)), u_input.a.zyx, select(vec3<bool>(true, true && global0.a.x, false), !(!vec3<bool>(true, arg_3.a.x, false)), !arg_0.a.x)), vec3<u32>(0u, _wgslsmith_mod_u32(u_input.a.x, ~14650u) & (0u & func_2().x), _wgslsmith_dot_vec2_u32(~(~u_input.a.wx), vec2<u32>(0u, u_input.a.x))));
    let var_4 = abs(0i);
    return _wgslsmith_mult_i32(24005i, _wgslsmith_mult_i32(11675i, _wgslsmith_mult_i32(var_4, 29706i)) & _wgslsmith_sub_i32(~var_4 ^ 0i, -1i));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(321f + -1079f), _wgslsmith_f_op_f32(-416f * -359f), _wgslsmith_f_op_f32(step(-1126f, -651f))) + vec3<f32>(1f, 1f, 1f)) + vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-366f - -605f), 234f)));
    global0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-150f, -686f, 1000f) * vec3<f32>(369f, -1059f, 645f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1681f, 753f, -892f)))))));
    global0 = arg_1;
    var var_1 = 22889u;
    var var_2 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(730f, -1014f, -1268f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-456f, 858f, -1282f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-409f, -1340f, -259f))), global0.a.x && true)))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(firstTrailingBit(-firstLeadingBit(0i)) == _wgslsmith_mult_i32(func_4(func_1(vec3<f32>(-1420f, 397f, -783f)), _wgslsmith_div_u32(4294967295u, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -179f), Struct_1(global1.a)), -countOneBits(22608i)), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1114f, -305f, -975f)))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2394f, _wgslsmith_f_op_f32(floor(-185f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1308f, 1495f)))));
    global1 = func_5(false, var_0);
    let var_3 = var_0.a.x;
    global0 = Struct_1(!func_5(true, Struct_1(func_5(true, Struct_1(vec2<bool>(false, true))).a)).a);
    var var_4 = _wgslsmith_div_u32(func_2().x, ~0u) | func_2().x;
    global0 = func_5((_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1000f)))) >= var_2.x) && !global0.a.x, func_1(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1226f, -1256f)) - _wgslsmith_f_op_f32(-var_2.x)), var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(min(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), max(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 7670u), u_input.a), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(1u, 1u, 1u, 1u))))), abs(_wgslsmith_mod_i32(-(~(-32762i)), ~abs(2819i))), max(0u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(reverseBits(1u), _wgslsmith_add_u32(1u, u_input.a.x)), 0u)), firstLeadingBit(countOneBits(abs(0i))));
}

