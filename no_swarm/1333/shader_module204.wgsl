struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_1.a, arg_1.b);
    var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = Struct_1(1i, vec4<bool>(select(arg_0.x, false, !(true & arg_0.x)), !(!(!arg_1.b.x)), (1i <= _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)) || (true && arg_1.b.x), true));
    var_0 = Struct_1(_wgslsmith_add_i32(-(~u_input.e), u_input.a), var_0.b);
    return 0i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mult_i32(-(u_input.e | func_3(vec3<bool>(false, true, false), Struct_1(-17889i, vec4<bool>(true, false, false, true)))), -2147483647i), vec4<bool>(true, false, select(true, false && all(vec3<bool>(false, false, false)), true), !(all(vec4<bool>(false, false, false, true)) | true)));
    return Struct_1(u_input.a, !(!select(!var_0.b, vec4<bool>(var_0.b.x, true, true, var_0.b.x), var_0.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1231f) * -113f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(443f + _wgslsmith_f_op_f32(floor(-315f))))));
    let var_1 = arg_1;
    var var_2 = func_2();
    let var_3 = all(!vec4<bool>(abs(u_input.c.x) > ~29092u, var_1.b.x, !(!arg_2.b.x), var_2.b.x));
    var var_4 = arg_1.b.x;
    return _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_sub_u32(min(0u, _wgslsmith_mod_u32(9616u, 4886u)), min(~4294967295u, min(u_input.c.x, u_input.c.x)))), ~4294967295u);
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = all(!vec3<bool>(false, !arg_0.b.x, all(arg_0.b.zz)));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -196f);
    var_0 = any(arg_0.b.xwy);
    let var_3 = -(abs(countOneBits(~(-4057i))) & (-16159i << (func_4(arg_0, Struct_1(-2147483647i, vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.b.x)), func_2(), firstTrailingBit(vec4<u32>(u_input.d.x, u_input.c.x, 29936u, u_input.d.x))) % 32u)));
    return 11070i;
}

fn func_5(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = select(select(!(!vec3<bool>(arg_0.x, false, true)), func_2().b.yzw, func_2().b.yxy), !select(select(!vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, true, true), func_2().b.xyw), !(!vec3<bool>(arg_0.x, false, true)), !vec3<bool>(true, arg_0.x, true)), func_2().b.x);
    var var_1 = select(vec2<bool>(func_2().b.x, any(func_2().b.zzx)), func_2().b.ww, var_0.x);
    var var_2 = Struct_1(_wgslsmith_sub_i32(abs(_wgslsmith_mod_i32(-1i, i32(-1i) * -19571i)), ~countOneBits(firstTrailingBit(1i))), !(!vec4<bool>(false, var_0.x, var_1.x, true)));
    var_0 = !func_2().b.yzy;
    var var_3 = countOneBits(u_input.d.x);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-38363i, !(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true))));
    var var_1 = func_5(select(var_0.b.zy, !(!(!vec2<bool>(var_0.b.x, true))), -1i == firstTrailingBit(func_1(Struct_1(u_input.e, vec4<bool>(var_0.b.x, var_0.b.x, true, true))))));
    var var_2 = !(!vec3<bool>(var_1.b.x, all(func_5(vec2<bool>(false, var_0.b.x)).b.zxz), true));
    let var_3 = Struct_1(~1i, vec4<bool>(var_0.b.x, true && select(!var_1.b.x, !var_0.b.x, var_1.b.x), func_2().b.x, true));
    let var_4 = 2147483647i;
    var var_5 = func_2();
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-666f + 3025f)))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-600f))))))));
    var_2 = var_0.b.zwy;
    var_2 = var_1.b.zyx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, var_3.a);
}

