struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(2896f, -1355f);

var<private> global1: Struct_5;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: i32, arg_3: Struct_5) -> u32 {
    var var_0 = Struct_1(-286f);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a, -1574f))), _wgslsmith_div_f32(-1259f, 1264f))), vec2<f32>(-1941f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-892f - 1338f)))));
    var var_2 = Struct_3(select(!(!select(vec2<bool>(false, true), arg_3.a.a, false)), select(!(!global1.a.a), arg_3.a.b.xy, arg_3.a.b.yy), arg_3.d), vec2<i32>(arg_1 << ((~u_input.c.x ^ ~u_input.c.x) % 32u), ~countOneBits(_wgslsmith_add_i32(arg_1, 0i))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a)))));
    let var_3 = _wgslsmith_add_i32(-25322i, var_2.b.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, 381f, var_2.c.a), vec3<f32>(var_0.a, var_1.x, var_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-736f, var_1.x, 278f) * vec3<f32>(-274f, var_0.a, var_1.x)))))))), vec3<f32>(_wgslsmith_f_op_f32(max(var_1.x, -1277f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1817f))), global0.x), arg_3.a.b));
    return 1u;
}

fn func_2() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(exp2(global0.x))), 754f)), _wgslsmith_f_op_f32(step(global0.x, 307f)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -108f) - _wgslsmith_f_op_f32(-global0.x))), 150f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * var_0.a) * global0.x))), 234f)));
    let var_2 = vec3<u32>(~1u, func_3(vec2<i32>(u_input.b.x, -1i) ^ u_input.b.zx, -u_input.a ^ (u_input.a & 2147483647i), u_input.b.x, Struct_5(Struct_2(global1.a.b.xx, vec3<bool>(false, false, global1.a.a.x)), false, !global1.d, !global1.d)) ^ min(u_input.c.x, u_input.c.x | reverseBits(u_input.c.x)), _wgslsmith_sub_u32(~(~(~u_input.c.x)), ~4294967295u << (u_input.c.x % 32u)));
    return select(true, false && (global1.d == true), !(select(1i, _wgslsmith_clamp_i32(-2147483647i, 24437i, 12892i), any(vec2<bool>(true, global1.b))) == _wgslsmith_add_i32(firstLeadingBit(-1i), _wgslsmith_mult_i32(u_input.b.x, u_input.a))));
}

fn func_1() -> Struct_4 {
    global1 = Struct_5(global1.a, true || global1.c, global1.a.a.x, func_2());
    var var_0 = !(-9688i <= max(firstTrailingBit(2147483647i), ~u_input.a)) || true;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1229f, global0.x, global0.x))), vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_f_op_f32(-global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.yy)));
    var var_2 = global0.x;
    return Struct_4(select(!vec4<bool>(!global1.c, global1.b, all(vec4<bool>(false, true, global1.b, global1.b)), u_input.b.x > -1i), !(!select(vec4<bool>(global1.b, global1.d, false, global1.d), vec4<bool>(global1.c, global1.b, global1.c, global1.d), global1.a.b.x)), 1861f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), Struct_2(global1.a.b.yz, vec3<bool>(true, global1.c, true)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(246f - 995f))))), global0.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_5 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-823f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.c.a, arg_0.c.a))))), _wgslsmith_f_op_f32(-global0.x));
    global1 = Struct_5(global1.a, arg_3.x, arg_1.a.x, any(vec3<bool>(!(!global1.d), true, arg_1.a.x && !arg_0.a.x)));
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.c.a, 255f, -153f))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.c.a, global0.x, -343f), vec3<f32>(arg_1.c.a, 111f, 644f)))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -1189f, global0.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-234f, 371f, arg_1.c.a), vec3<f32>(503f, arg_1.c.a, -383f), arg_2))))))));
    var var_2 = Struct_1(global0.x);
    return Struct_5(func_1().b, false, 1214f < _wgslsmith_f_op_f32(-arg_1.c.a), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x - 1000f)))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -441f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1188f))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 833f)))));
    global1 = func_4(func_1(), Struct_3(!(!(!global1.a.b.xx)), vec2<i32>(u_input.b.x & 1i, -_wgslsmith_sub_i32(u_input.a, -1i)), Struct_1(_wgslsmith_f_op_f32(-1458f + _wgslsmith_f_op_f32(558f - global0.x)))), !(!vec3<bool>(true, global1.d, global1.d)), vec4<bool>(true, !(_wgslsmith_div_f32(global0.x, global0.x) > global0.x), true, true));
    var var_0 = all(vec4<bool>(any(vec3<bool>(global1.a.b.x, true, select(global1.b, global1.b, true))), !global1.a.a.x, true, global1.c));
    let var_1 = u_input.c.x;
    var var_2 = 34062u;
    var var_3 = vec2<i32>(-u_input.a, ~u_input.a << (min(var_1, _wgslsmith_div_u32(var_1, 87695u)) % 32u)) >> (((vec2<u32>(16395u, 8242u) ^ u_input.c) | (~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1, 16151u), vec2<u32>(u_input.c.x, 1u)) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(56196u, var_1), vec2<u32>(19561u, u_input.c.x)) % vec2<u32>(32u)))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(reverseBits(~u_input.c)), ~vec2<u32>(countOneBits(var_1), reverseBits(1u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 631f) + vec2<f32>(global0.x, 289f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1360f) + vec2<f32>(global0.x, global0.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-766f, global0.x)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x)))))));
}

