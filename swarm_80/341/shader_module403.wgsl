struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(449f, 685f) * vec2<f32>(-201f, 705f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1206f, 888f), vec2<f32>(-509f, 333f), vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 734f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(634f, -1230f) * vec2<f32>(-567f, -294f))))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1472f)), -731f), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1653f))))));
    let var_1 = Struct_2(Struct_1((i32(-1i) * -arg_2.x) | -reverseBits(arg_2.x), !any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), 4294967295u), vec3<i32>(arg_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2350i, arg_2.x), (vec2<i32>(11837i, -32803i) << (arg_0.xx % vec2<u32>(32u))) ^ ~vec2<i32>(-2147483647i, 13108i)), 0i));
    var var_2 = var_0;
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)) * vec2<f32>(1f, _wgslsmith_div_f32(var_0.x, 392f))))));
    var var_3 = select(select(select(select(!vec2<bool>(var_1.a.b, false), vec2<bool>(true, true), !vec2<bool>(var_1.a.b, false)), select(!vec2<bool>(var_1.a.b, var_1.a.b), vec2<bool>(var_1.a.b, true), !var_1.a.b), var_1.a.b), select(vec2<bool>(var_1.a.b, var_1.a.b), !select(vec2<bool>(true, var_1.a.b), vec2<bool>(false, false), false), true), select(vec2<bool>(false, var_1.a.b), vec2<bool>(-47572i == arg_1, all(vec3<bool>(var_1.a.b, true, true))), _wgslsmith_f_op_f32(sign(var_2.x)) < 583f)), select(vec2<bool>(all(vec4<bool>(true, false, false, false)), true), !(!(!vec2<bool>(var_1.a.b, true))), !vec2<bool>(true, select(var_1.a.b, var_1.a.b, var_1.a.b))), var_1.a.b);
    return var_1.a.b;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec3<f32>) -> f32 {
    let var_0 = !arg_0.zz;
    let var_1 = Struct_4(~(-1i), arg_2.b);
    var var_2 = Struct_4(5002i, var_1.b);
    var var_3 = true;
    var_3 = !func_3(~(vec3<u32>(arg_1.b.a.c, 0u, var_2.b.a.c) ^ ~u_input.c.xzy), reverseBits(abs(22094i | arg_2.a)), vec4<i32>(abs(32734i), arg_2.b.b.x, -arg_2.b.b.x ^ -25299i, _wgslsmith_add_i32(-20466i, var_2.a) << ((var_1.b.a.c & 0u) % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), !(!arg_2.b.a.b))));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-447f + _wgslsmith_f_op_f32(func_2(vec3<bool>(false, true, false), Struct_4(-14921i, Struct_2(Struct_1(-2147483647i, true, u_input.c.x), vec3<i32>(11414i, 1i, 769i))), Struct_4(1i, Struct_2(Struct_1(-52118i, true, 1u), vec3<i32>(424i, 42955i, -1i))), vec3<f32>(-1243f, 951f, -1000f))))))));
    let var_1 = Struct_1(countOneBits(-18503i), !any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)), 0u);
    var var_2 = Struct_1(~59043i, any(vec4<bool>(!var_1.b, true, false, var_1.b)), u_input.a);
    var_2 = var_1;
    var_2 = var_1;
    return Struct_3(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(u_input.c.yzz), vec3<u32>(3215u, 81518u, u_input.a) << (vec3<u32>(8914u, var_1.c, 26542u) % vec3<u32>(32u))), 23416u, var_1.c, 30052u), firstTrailingBit(u_input.c)), !var_2.b, Struct_1(firstLeadingBit(~var_2.a), var_1.b, var_1.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(max(-1649f, -1862f))) * _wgslsmith_f_op_f32(-1298f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), vec4<i32>(abs(var_2.a >> (0u % 32u)), _wgslsmith_clamp_i32(0i, var_1.a, -6521i << (1u % 32u)), _wgslsmith_clamp_i32(-var_2.a << (~0u % 32u), ~reverseBits(var_2.a), var_1.a), ~abs(min(-2147483647i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.c.x, u_input.a, u_input.c.x);
    var_0 = vec3<u32>(0u, var_0.x, 1u);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1125f)));
    let var_2 = func_1();
    let var_3 = vec3<bool>(func_3(var_2.a.zzx, -57239i, var_2.e), true, true);
    let var_4 = Struct_1(-1i, func_3(~vec3<u32>(func_1().c.c, ~30975u, _wgslsmith_sub_u32(u_input.c.x, 1u)), reverseBits(_wgslsmith_dot_vec4_i32(var_2.e, vec4<i32>(16744i, var_2.c.a, 12183i, var_2.e.x))), func_1().e), 25669u);
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1120f, var_2.d, -1521f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, -1432f, var_2.d))) - vec3<f32>(_wgslsmith_f_op_f32(min(-110f, var_2.d)), _wgslsmith_f_op_f32(min(1007f, var_2.d)), _wgslsmith_f_op_f32(round(var_2.d)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.d, var_2.d)))));
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.yzz);
}

