struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(!arg_2.a, arg_2.b);
    var var_1 = vec3<bool>(select(arg_2.a.x, true, true), !(arg_2.a.x || all(select(vec2<bool>(arg_2.a.x, arg_2.a.x), vec2<bool>(arg_2.a.x, arg_2.a.x), true))), !arg_2.a.x);
    let var_2 = arg_2;
    let var_3 = 0u;
    let var_4 = var_2;
    return select(vec3<bool>(var_0.a.x || arg_2.a.x, all(vec4<bool>(all(vec4<bool>(var_1.x, var_1.x, arg_0.x, false)), !var_4.a.x, any(vec3<bool>(var_4.a.x, false, var_0.a.x)), 1i < u_input.b)), any(select(var_4.a, select(var_2.a, vec3<bool>(var_2.a.x, false, arg_0.x), true), vec3<bool>(var_2.a.x, false, true)))), vec3<bool>(false, arg_0.x | any(select(vec4<bool>(arg_0.x, false, arg_0.x, var_1.x), vec4<bool>(true, false, var_4.a.x, var_0.a.x), var_2.a.x)), false), any(vec3<bool>(true, any(select(vec3<bool>(false, var_2.a.x, arg_0.x), vec3<bool>(var_2.a.x, true, arg_0.x), vec3<bool>(var_2.a.x, true, var_2.a.x))), any(select(arg_2.a.yx, vec2<bool>(false, var_1.x), vec2<bool>(false, true))))));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(vec3<bool>(true, true, false), 17266u);
    var_0 = Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, any(select(var_0.a.zx, select(var_0.a.yy, var_0.a.xz, var_0.a.yy), any(var_0.a)))), var_0.b);
    var_0 = Struct_1(vec3<bool>(all(select(var_0.a, var_0.a, func_3(var_0.a.zy, 26481i, Struct_1(var_0.a, 49316u)))), any(!(!vec3<bool>(false, var_0.a.x, false))), var_0.a.x), 50618u);
    let var_1 = Struct_1(var_0.a, _wgslsmith_div_u32(4294967295u, 4294967295u));
    var_0 = var_1;
    return var_1.a;
}

fn func_1() -> bool {
    let var_0 = select(-vec3<i32>(countOneBits(u_input.b), 1i, u_input.b), min(vec3<i32>(u_input.b, _wgslsmith_mod_i32(u_input.b, 2147483647i), ~(-1i)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.b, 31989i, u_input.b), ~vec3<i32>(-2147483647i, -81504i, 2147483647i), ~vec3<i32>(-2147483647i, u_input.b, u_input.b))), true) << (vec3<u32>(abs(firstTrailingBit(29565u)), u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_add_u32(~u_input.c.x, 21040u))) % vec3<u32>(32u));
    let var_1 = Struct_1(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), false), func_2(), vec3<bool>(any(vec4<bool>(true, false, true, true)), true, any(vec4<bool>(true, true, true, true)))), u_input.a);
    var var_2 = var_1;
    var_2 = var_1;
    var_2 = var_1;
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!(true | any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false))), any(vec4<bool>(true, false, func_1(), true)), func_2().x);
    let var_1 = u_input.b;
    var_0 = !vec3<bool>(func_3(var_0.zx, _wgslsmith_div_i32(u_input.b, u_input.b), Struct_1(vec3<bool>(false, true, var_0.x), 82720u)).x | !func_3(var_0.xz, -38130i, Struct_1(vec3<bool>(true, false, true), 0u)).x, (min(1672i, var_1) ^ _wgslsmith_mult_i32(var_1, -1i)) > 53276i, true);
    var_0 = !vec3<bool>(var_0.x, all(select(!vec4<bool>(false, var_0.x, false, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(false, false, true, false), vec4<bool>(true, var_0.x, var_0.x, false)))), !(u_input.c.x > ~22096u));
    var_0 = func_3(!func_3(func_2().xz, u_input.b, Struct_1(select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, true, true), var_0.x), 1u)).yz, countOneBits(1i), Struct_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, false))), ~u_input.a));
    var_0 = func_2();
    var_0 = vec3<bool>(true, all(select(vec4<bool>(u_input.a >= 62772u, true, var_0.x, !var_0.x), vec4<bool>(any(vec3<bool>(true, var_0.x, var_0.x)), true, true, true), select(!vec4<bool>(var_0.x, true, var_0.x, true), !vec4<bool>(var_0.x, false, false, var_0.x), true))), any(vec4<bool>(true, true, true, all(vec4<bool>(true, true, false, var_0.x)))) != (!func_2().x & var_0.x));
    var var_2 = Struct_1(vec3<bool>(true, func_1(), func_2().x), abs(29791u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(118f)))))), -84196i, abs(_wgslsmith_sub_u32(firstLeadingBit(67731u), 0u)));
}

