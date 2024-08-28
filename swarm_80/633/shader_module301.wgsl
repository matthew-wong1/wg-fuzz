struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(true, 861f, -1017f, vec2<f32>(-1147f, 1047f)), Struct_1(false, -1000f, 1000f, vec2<f32>(2523f, 1000f)), Struct_1(false, 437f, 1297f, vec2<f32>(216f, 207f)), Struct_1(true, 164f, -545f, vec2<f32>(1003f, 150f)), Struct_1(false, -1012f, -651f, vec2<f32>(699f, 318f)), Struct_1(false, -1000f, -222f, vec2<f32>(1000f, 188f)), Struct_1(true, 1217f, 110f, vec2<f32>(-1299f, 476f)), Struct_1(true, -1490f, -1481f, vec2<f32>(1193f, 488f)), Struct_1(false, 1922f, -1766f, vec2<f32>(248f, -2135f)), Struct_1(false, 1727f, -1085f, vec2<f32>(748f, 488f)), Struct_1(true, 211f, -1511f, vec2<f32>(1000f, 735f)), Struct_1(false, 254f, -290f, vec2<f32>(380f, 1211f)), Struct_1(true, 387f, 563f, vec2<f32>(-251f, -161f)), Struct_1(false, -677f, -787f, vec2<f32>(546f, 1000f)), Struct_1(false, 185f, -378f, vec2<f32>(879f, 116f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~u_input.d, ~min(u_input.c, 4294967295u)), reverseBits(_wgslsmith_mod_u32(~4294967295u, u_input.d)), 1u)), 15u)];
    var var_1 = firstLeadingBit(~(~vec3<u32>(17289u, u_input.e.x, 4294967295u) & ~firstLeadingBit(vec3<u32>(0u, u_input.e.x, u_input.c))));
    var var_2 = -u_input.b;
    let var_3 = ~firstTrailingBit(u_input.c);
    var var_4 = Struct_2(-u_input.b, Struct_1(false, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(419f, var_0.b), 1218f, global2.x)) - _wgslsmith_f_op_f32(-961f + _wgslsmith_div_f32(-207f, -434f))), _wgslsmith_f_op_vec2_f32(var_0.d - vec2<f32>(var_0.c, _wgslsmith_f_op_f32(-var_0.d.x)))), u_input.c, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.d.x, -676f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(var_0.c, 808f)), _wgslsmith_f_op_f32(var_0.b - 279f)))));
    return vec4<bool>(all(!vec2<bool>(all(global2.wxz), !var_0.a)), true, true, any(select(select(vec4<bool>(false, global2.x, true, false), vec4<bool>(global2.x, var_4.b.a, true, var_4.b.a), vec4<bool>(false, true, false, false)), select(vec4<bool>(var_4.b.a, var_4.b.a, global2.x, var_4.b.a), select(vec4<bool>(false, false, false, false), vec4<bool>(global2.x, var_4.b.a, false, true), vec4<bool>(true, true, var_0.a, true)), !var_0.a), !global2.x)));
}

fn func_2() -> vec3<f32> {
    var var_0 = global3[_wgslsmith_index_u32(~min(~u_input.e.x, 1u), 15u)];
    global3 = array<Struct_1, 15>();
    var var_1 = 503f;
    let var_2 = !func_3();
    var_0 = global3[_wgslsmith_index_u32(min(countOneBits(4294967295u), _wgslsmith_div_u32(16484u, ~_wgslsmith_add_u32(~u_input.e.x, ~u_input.e.x))), 15u)];
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-459f * var_0.d.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(628f, 523f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.d.x, -227f), -578f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(199f, var_0.b, -230f) * vec3<f32>(var_0.c, 1174f, 905f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-414f, -1158f, 494f), vec3<f32>(var_0.b, var_0.d.x, var_0.c)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.d.x, 1611f, 1060f)))), var_2.x)), false)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -678f))))) + vec3<f32>(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-1010f + arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(314f + 1305f)))))));
    return Struct_2(select(vec2<i32>(~2147483647i, 12114i), _wgslsmith_sub_vec2_i32(u_input.b >> (arg_0.yy % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 2147483647i), u_input.b)), vec2<bool>(any(vec4<bool>(true, global2.x, global2.x, false)), true)) >> (u_input.e.zw % vec2<u32>(32u)), global3[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_mod_u32(arg_0.x, abs(1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1147f, arg_1.x, 2086f)) - vec4<f32>(-126f, var_0.x, var_0.x, arg_1.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1468f, -1000f, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, -842f, 393f, var_0.x))))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    global0 = false;
    var var_0 = func_4(abs(u_input.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1063f), -336f, 371f)));
    let var_1 = countOneBits(u_input.e.yyx);
    let var_2 = vec2<i32>(u_input.b.x, u_input.b.x);
    let var_3 = arg_1;
    return Struct_2(-_wgslsmith_sub_vec2_i32(~var_0.a, vec2<i32>(_wgslsmith_add_i32(u_input.b.x, -2147483647i), var_0.a.x)), var_3, var_1.x, var_0.d);
}

fn func_1() -> Struct_1 {
    var var_0 = ~(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(u_input.e.x, u_input.c)) & vec2<u32>(u_input.e.x, 1u), u_input.e.yx, ~_wgslsmith_sub_vec2_u32(u_input.e.wy, vec2<u32>(u_input.d, u_input.d))) & vec2<u32>(1u, 30241u & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 71190u, 4294967295u), vec3<u32>(1u, 1u, 29521u))));
    let var_1 = func_5(func_4(u_input.e, _wgslsmith_f_op_vec3_f32(func_2())), func_4(~(min(u_input.e, vec4<u32>(34739u, var_0.x, u_input.c, u_input.e.x)) & max(vec4<u32>(u_input.d, 1130u, u_input.c, u_input.c), u_input.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-189f, 172f, -672f) + _wgslsmith_div_vec3_f32(vec3<f32>(-870f, 222f, 166f), vec3<f32>(1325f, -653f, 1488f))))).b);
    var var_2 = var_1;
    global1 = ~(-2147483647i);
    global2 = !select(select(vec4<bool>(!global2.x, !var_2.b.a, false, var_1.b.a), !vec4<bool>(true, true, false, var_2.b.a), func_3().x), vec4<bool>(true, true, func_4(u_input.e, vec3<f32>(var_2.b.b, var_1.d.x, var_2.d.x)).b.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 1u, u_input.e.x), vec3<u32>(var_2.c, 4294967295u, 73247u)) <= abs(var_1.c)), global2.x);
    return Struct_1(true, _wgslsmith_f_op_f32(-153f + var_2.d.x), _wgslsmith_f_op_f32(-var_2.b.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b.d - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.b.c, -336f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.b.c, 1711f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 15>();
    var var_0 = func_1();
    let var_1 = var_0.d;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1288f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1188f) + var_1.x))));
    global1 = max(65306i, ~(u_input.a << (func_4(u_input.e, vec3<f32>(-1201f, var_1.x, 1179f)).c % 32u))) | func_4(reverseBits(abs(vec4<u32>(42005u, u_input.d, u_input.d, 18307u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -713f, var_1.x)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_1.x, -195f) - vec3<f32>(-115f, -727f, -1117f)))))).a.x;
    var var_3 = Struct_1((var_0.a | var_0.a) && (_wgslsmith_f_op_vec3_f32(func_2()).x > _wgslsmith_f_op_f32(ceil(1183f))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -738f)), _wgslsmith_f_op_vec2_f32(var_0.d + func_1().d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(0u, ~u_input.d), u_input.e | _wgslsmith_sub_vec4_u32(~(~u_input.e), _wgslsmith_clamp_vec4_u32(vec4<u32>(28460u, 12463u, u_input.c, 60592u), u_input.e, vec4<u32>(u_input.e.x, 64002u, u_input.d, u_input.e.x))), var_0.c);
}

