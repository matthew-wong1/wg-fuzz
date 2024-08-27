struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = (_wgslsmith_dot_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(u_input.d.xx, vec2<i32>(0i, u_input.a), vec2<i32>(u_input.d.x, 29337i))), u_input.d.xx) > 1i) & any(!vec3<bool>(all(vec3<bool>(false, true, false)), all(vec3<bool>(true, true, true)), true));
    var_0 = true;
    var var_1 = select(vec2<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-1281f * 600f) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-666f)), -1696f, true))), select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec4<bool>(false, true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(all(vec3<bool>(true, true, true)), true)), true);
    let var_2 = select(u_input.c.xx, select(u_input.c.yy, u_input.c.zx, vec2<bool>(true, true)) << (u_input.c.yz % vec2<u32>(32u)), var_1.x);
    var var_3 = u_input.c.yy;
    return 1f;
}

fn func_4(arg_0: vec2<f32>) -> vec4<f32> {
    let var_0 = Struct_5(Struct_1(u_input.c.x));
    let var_1 = Struct_1(u_input.c.x);
    let var_2 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    let var_3 = Struct_3(var_1, _wgslsmith_mod_i32(-_wgslsmith_div_i32(abs(2147483647i), firstTrailingBit(u_input.e.x)), u_input.e.x));
    var var_4 = Struct_3(Struct_1(_wgslsmith_mult_u32(1u, countOneBits(_wgslsmith_mult_u32(var_3.a.a, var_1.a)))), abs(0i));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2, -635f, -875f, arg_0.x), vec4<f32>(var_2, -1390f, var_2, -689f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, 314f, -1179f, 163f), vec4<f32>(683f, -585f, var_2, arg_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -1164f, 696f, var_2) * vec4<f32>(-902f, 502f, var_2, -469f)))))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(1246f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(floor(arg_0)))))));
    let var_1 = ~46940u;
    let var_2 = Struct_3(Struct_1(_wgslsmith_clamp_u32(~(u_input.c.x & var_1), ~abs(4294967295u), 22401u)), _wgslsmith_sub_i32(u_input.a << (0u % 32u), _wgslsmith_div_i32(select(~0i, _wgslsmith_clamp_i32(-2147483647i, 18419i, u_input.b), any(vec4<bool>(true, false, false, false))), select(1i, _wgslsmith_div_i32(u_input.b, 1i), true))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1352f, _wgslsmith_f_op_f32(var_0.x + -1134f)))));
    var var_4 = Struct_4(Struct_1(reverseBits(~(~1u))), _wgslsmith_dot_vec2_u32(reverseBits(max(u_input.c.zx >> (vec2<u32>(0u, var_2.a.a) % vec2<u32>(32u)), u_input.c.zz << (vec2<u32>(22079u, u_input.c.x) % vec2<u32>(32u)))), u_input.c.yx << (vec2<u32>(~var_1, 0u) % vec2<u32>(32u))), _wgslsmith_add_u32(_wgslsmith_sub_u32(firstTrailingBit(countOneBits(48266u)), 19096u), 24626u), Struct_2(_wgslsmith_clamp_i32(var_2.b, min(~(-11421i), var_2.b), 1i), max(var_1, reverseBits(firstLeadingBit(u_input.c.x)))));
    return Struct_1(4294967295u);
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = func_2(344f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -1501f))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -355f))), _wgslsmith_f_op_f32(round(1597f)), _wgslsmith_f_op_f32(exp2(var_1.x)));
    var_0 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1296f, _wgslsmith_f_op_f32(f32(-1f) * -1083f)))));
    var var_3 = true;
    return Struct_3(arg_0, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = u_input.c;
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-294f, _wgslsmith_f_op_f32(392f + -164f), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(155f, 652f)))), 453f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-785f * -1404f) + -515f) + _wgslsmith_f_op_f32(ceil(-325f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -626f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -304f))), _wgslsmith_f_op_f32(ceil(-1167f))));
    var var_4 = func_1(Struct_1(reverseBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.x, 48907u), u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(max(countOneBits(var_4.b), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_4.b, 0i)), firstLeadingBit(~vec2<i32>(var_4.b, 22200i)))));
}

