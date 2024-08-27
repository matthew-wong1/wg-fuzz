struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(7445u, 38606u, 5659u, 390u, 1412u, 1u, 16875u, 4294967295u, 26905u, 107027u);

var<private> global1: i32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(u_input.a.yyw, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -1i, -2147483647i), abs(arg_0.a), _wgslsmith_mult_vec3_i32(arg_0.a, vec3<i32>(u_input.a.x, -325i, u_input.a.x))) ^ vec3<i32>(u_input.a.x, -28438i, u_input.a.x), select(~(vec3<i32>(arg_0.a.x, 10407i, u_input.a.x) << (arg_2.yyw % vec3<u32>(32u))), arg_0.a, vec3<bool>(true, arg_0.b < arg_0.b, any(vec3<bool>(true, false, false))))));
    var var_1 = arg_0.b;
    var_0 = Struct_2(arg_0.a);
    let var_2 = vec4<f32>(-1000f, -1127f, -243f, arg_0.b);
    global1 = u_input.a.x;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0.b, 1266f)), 1000f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 1008f) + _wgslsmith_f_op_f32(step(var_2.x, -1502f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b))))), arg_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_2.x)))), -1173f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(749f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.x - -3109f), arg_2.x)))));
    var var_1 = false;
    return _wgslsmith_f_op_f32(174f * arg_0.d);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_3) -> f32 {
    var var_0 = countOneBits(11010i);
    global0 = array<u32, 10>();
    let var_1 = arg_0.c.yx;
    var var_2 = Struct_1(u_input.a.zzx & firstLeadingBit(vec3<i32>(5683i, arg_0.a.a.x, 1i) ^ arg_3.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -1202f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.d)))), u_input.b.x);
    global1 = arg_0.a.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1105f - arg_0.c.x));
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    global1 = -u_input.a.x;
    let var_0 = u_input.b.x;
    var var_1 = Struct_1(u_input.a.yyx, _wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-7081i, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, 0i, 2147483647i))), !select(arg_0, vec3<bool>(arg_0.x, false, true), arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-602f, 241f, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-427f, 753f, 2613f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec3<i32>(-76258i, u_input.a.x, u_input.a.x)), vec3<bool>(true, false, true), vec3<f32>(-587f, -801f, -1205f), 974f), 638f, vec3<f32>(-1251f, -211f, -1622f))))), vec3<bool>(!arg_0.x | arg_0.x, true & arg_0.x, arg_0.x), arg_0.x, Struct_3(Struct_2(~vec3<i32>(1i, u_input.a.x, 2147483647i)), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1003f, -1162f, -2063f))), _wgslsmith_f_op_f32(-580f * 581f)))), 29035u);
    let var_2 = 0i;
    var var_3 = Struct_4(var_2 <= ~u_input.a.x, Struct_2(-u_input.a.wyw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(ceil(-1110f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1046f, _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(-var_1.b)), var_1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b - -2490f), _wgslsmith_f_op_f32(round(var_1.b)))))));
    return 1536f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1323f, 852f, 111f, -417f))) * vec4<f32>(-578f, 1618f, 1015f, 202f)), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec3<i32>(10124i, 43152i, -17446i), -780f, 59657u), 0u, ~vec4<u32>(u_input.b.x, 1u, 18358u, 0u))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-914f, 327f, 1285f, -659f))) + vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<bool>(false, false, true))), _wgslsmith_div_f32(-1368f, -1748f), _wgslsmith_f_op_f32(-703f - -702f), _wgslsmith_f_op_f32(ceil(1867f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(1u, 10u)] < u_input.b.x), vec4<bool>(false, true, any(vec2<bool>(true, true)), false))))));
    global1 = -(abs(u_input.a.x) ^ (i32(-1i) * -2147483647i));
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = vec2<i32>(2147483647i, -2147483647i);
    let var_3 = Struct_4(!var_1.x, Struct_2(vec3<i32>(~abs(0i), var_2.x, _wgslsmith_mod_i32(u_input.a.x, var_2.x) << (global0[_wgslsmith_index_u32(u_input.b.x, 10u)] % 32u))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(var_0.wy, var_0.xw))), vec4<f32>(-233f, -299f, _wgslsmith_f_op_f32(step(291f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x))), 775f));
    let var_4 = _wgslsmith_f_op_vec4_f32(func_1(Struct_1(~u_input.a.yww, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1441f), _wgslsmith_f_op_f32(trunc(919f)))), firstTrailingBit(countOneBits(global0[_wgslsmith_index_u32(1u, 10u)]))), countOneBits(~(~0u)), ~(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(0u, u_input.b.x, global0[_wgslsmith_index_u32(0u, 10u)], 22087u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 10u)], u_input.b.x, 32916u, 22039u)), abs(vec4<u32>(u_input.b.x, 4294967295u, 1u, 0u)), firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u))) << (vec4<u32>(1u, reverseBits(global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), ~1u, u_input.b.x << (u_input.b.x % 32u)) % vec4<u32>(32u))))).x;
    var var_5 = _wgslsmith_f_op_vec4_f32(-var_0);
    let var_6 = all(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(12934i, _wgslsmith_div_vec4_i32(firstLeadingBit(~u_input.a >> (vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], 4294967295u, u_input.b.x, global0[_wgslsmith_index_u32(5508u, 10u)]) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.b.a.x, _wgslsmith_add_i32(-8465i, -8212i), ~50172i, u_input.a.x), ~vec4<i32>(u_input.a.x, 25239i, -53273i, -2863i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) + _wgslsmith_f_op_f32(select(var_0.x, -1116f, _wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_f_op_f32(min(var_5.x, 823f))))));
}

