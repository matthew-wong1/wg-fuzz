struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_3,
    d: f32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> u32 {
    return 0u;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_5(-u_input.d, any(vec2<bool>(global0.x, any(!global0.xx))));
    var_0 = Struct_5(-20355i, global0.x);
    let var_1 = ~vec3<u32>(4294967295u, u_input.b, u_input.b);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1f), vec2<bool>(var_0.b, true), abs(~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a, 20814i), vec2<i32>(14856i, var_0.a)))));
    var var_3 = Struct_1(1037f, !global0.xy, ~(~(~var_2.a.c)));
    return vec3<bool>(var_2.a.b.x || (_wgslsmith_sub_i32(36776i, u_input.e) > _wgslsmith_mult_i32(var_3.c.x, 1i)), any(global0.xy), var_3.b.x);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: i32, arg_3: Struct_5) -> vec3<i32> {
    global0 = select(!arg_0.wwy, arg_0.wzw, select(vec3<bool>(!(!arg_1.b), any(vec2<bool>(arg_1.b, false)), !func_2().x), arg_0.zzz, !arg_0.wyz));
    return _wgslsmith_mult_vec3_i32(select(-(~vec3<i32>(arg_1.a, arg_2, arg_1.a) << (~vec3<u32>(u_input.b, u_input.b, 19790u) % vec3<u32>(32u))), vec3<i32>(min(-2147483647i | arg_1.a, 1i), ~(~arg_1.a), arg_1.a), true), -_wgslsmith_sub_vec3_i32(vec3<i32>(-arg_1.a, min(arg_3.a, arg_1.a), -2147483647i), ~reverseBits(vec3<i32>(2147483647i, -22779i, arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(global0.x, (~0u >> (_wgslsmith_mod_u32(u_input.b, 0u) % 32u)) <= 1u, !(!global0.x)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, global0.x), (func_1(vec4<f32>(713f, 674f, -447f, -868f), vec2<f32>(1792f, -327f), vec4<u32>(42566u, 1u, 12909u, u_input.b)) & u_input.b) >= 96234u), vec3<bool>(global0.x, global0.x, !(!(!global0.x))));
    var var_1 = Struct_5(-3776i, var_0.x);
    global0 = select(vec3<bool>(select(true, var_1.b, all(func_2())), true, any(var_0.zz)), vec3<bool>(func_2().x, true, global0.x), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1110f * 1538f)) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-416f))))));
    var_1 = Struct_5(_wgslsmith_mult_i32(23421i, var_1.a), true);
    var_1 = Struct_5(var_1.a, any(global0.xz));
    var_0 = vec3<bool>(var_1.b, var_1.b, false);
    let var_2 = -(u_input.c ^ var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(183f, func_3(!vec4<bool>(true & var_1.b, u_input.b != 48701u, u_input.b < 7938u, true), Struct_5(_wgslsmith_div_i32(var_1.a, select(var_1.a, -2147483647i, false)), true), ~(14406i >> (_wgslsmith_div_u32(u_input.b, u_input.b) % 32u)), Struct_5(~_wgslsmith_add_i32(0i, -9714i), var_1.b)), vec2<i32>(~1i, u_input.e));
}

