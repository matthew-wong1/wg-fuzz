struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    var var_0 = vec4<i32>(u_input.a, 46238i, arg_3.x, _wgslsmith_clamp_i32(firstTrailingBit(-u_input.a & arg_3.x), 3174i, -1i));
    var var_1 = false;
    let var_2 = -443f;
    var_1 = all(select(vec4<bool>(_wgslsmith_mod_u32(u_input.d, 19564u) != ~0u, arg_2, arg_0.x & true, arg_0.x), !select(vec4<bool>(false, true, arg_0.x, false), select(vec4<bool>(true, arg_1, false, arg_0.x), vec4<bool>(arg_0.x, arg_1, true, true), vec4<bool>(arg_0.x, false, arg_1, arg_0.x)), !vec4<bool>(arg_0.x, arg_2, arg_1, arg_0.x)), arg_0.x));
    var var_3 = Struct_1(true);
    return -266f;
}

fn func_3() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_2(vec3<bool>(any(vec3<bool>(false, true, true)), true, true), true, true, select(select(vec2<i32>(-2147483647i, -14701i), vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, true)), vec2<i32>(-1i, u_input.a) ^ vec2<i32>(2147483647i, -9595i), any(vec4<bool>(true, true, true, false))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(258f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-848f, 2248f, false)))));
    var_0 = Struct_1(var_0.a);
    var var_1 = select(abs(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) << (firstLeadingBit(~vec4<u32>(68193u, u_input.c.x, u_input.b.x, 4294967295u)) % vec4<u32>(32u))), vec4<i32>(~1i, -1i, u_input.a, -1i), true);
    let var_2 = 1f;
    var_0 = Struct_1(true);
    return var_0.a;
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_1(true | any(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, var_0.a, var_0.a), all(select(!vec2<bool>(false, var_0.a), vec2<bool>(false, true), any(vec4<bool>(true, var_0.a, false, true)))), !var_0.a, -(~(-vec2<i32>(u_input.a, 2147483647i)))))));
    let var_2 = u_input.a;
    var var_3 = vec2<i32>(~0i, ~(-1i));
    var var_4 = Struct_3(var_1, Struct_2(Struct_1(func_3()), var_1, _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(6801i, -2147483647i, 1i) << (vec3<u32>(u_input.c.x, u_input.d, u_input.b.x) % vec3<u32>(32u)), vec3<i32>(u_input.a, -1i, 2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-21415i, u_input.a, u_input.a) >> (vec3<u32>(u_input.d, 1653u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2, var_2, var_3.x), vec3<i32>(var_3.x, var_2, -1i))))), abs(vec2<u32>(_wgslsmith_sub_u32(abs(0u), u_input.e << (23052u % 32u)), ~_wgslsmith_mod_u32(1u, 31766u))), Struct_1(var_0.a || !var_0.a));
    return select(!(!(!select(vec4<bool>(false, false, false, var_0.a), vec4<bool>(true, var_4.b.a.a, true, var_4.b.a.a), vec4<bool>(var_0.a, var_4.b.a.a, var_4.d.a, true)))), select(!select(vec4<bool>(var_4.b.a.a, true, true, true), vec4<bool>(var_0.a, false, true, var_4.d.a), vec4<bool>(true, false, var_0.a, var_4.b.a.a)), select(vec4<bool>(any(vec4<bool>(true, var_4.b.a.a, var_4.b.a.a, false)), any(vec2<bool>(var_0.a, var_4.b.a.a)), false, true), vec4<bool>(u_input.b.x > u_input.d, !var_4.b.a.a, var_4.b.a.a, true), vec4<bool>(false, var_0.a, !var_0.a, select(var_0.a, false, var_4.b.a.a))), !(157356u <= var_4.c.x)), !(var_1 == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_1(), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), true), vec4<bool>(false, min(u_input.e, 0u) > u_input.e, true, false), func_1()), func_1());
    let var_1 = 293f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(411f))))) == var_1;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(max(var_1, var_1))), Struct_2(Struct_1(!func_3()), _wgslsmith_f_op_f32(step(-1000f, var_1)), firstLeadingBit(min(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-1i, -2147483647i, u_input.a))) << (vec3<u32>(u_input.c.x, 1u, 51406u) % vec3<u32>(32u))), vec2<u32>(min(u_input.b.x, u_input.c.x), u_input.c.x), Struct_1(func_1().x));
    let var_4 = 27923u;
    let var_5 = Struct_4(Struct_1(any(var_0)), var_3.b, var_3.b.a.a, Struct_3(_wgslsmith_f_op_f32(step(-585f, -416f)), var_3.b, vec2<u32>(~(u_input.e & var_4), var_4), Struct_1(false)));
    let var_6 = Struct_2(var_3.b.a, 192f, var_5.d.b.c);
    let var_7 = var_3.d.a;
    var var_8 = Struct_4(Struct_1(var_6.a.a), Struct_2(Struct_1(!var_3.b.a.a), 340f, vec3<i32>(min(var_5.b.c.x, i32(-1i) * -1i), _wgslsmith_sub_i32(var_3.b.c.x, 0i ^ var_5.d.b.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-35602i, u_input.a), var_5.d.b.c.zy))), true, Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(296f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, 500f)) - var_3.a)), Struct_2(Struct_1(var_5.a.a), var_5.d.a, var_3.b.c), var_5.d.c, var_5.d.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(~var_8.d.c.x ^ 1u, var_3.a);
}

