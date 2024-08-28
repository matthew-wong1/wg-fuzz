struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = u_input.b.wzy;
    var var_1 = ~_wgslsmith_add_i32(-23681i, select(firstLeadingBit(-u_input.b.x), -28506i >> (_wgslsmith_mod_u32(u_input.c, arg_1.d.a.x) % 32u), arg_1.e.x));
    var_1 = ~(-var_0.x);
    var var_2 = any(arg_2.c);
    let var_3 = Struct_4(arg_2);
    return _wgslsmith_f_op_f32(f32(-1f) * -1897f);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = !select(!select(vec2<bool>(arg_3.c.x, arg_3.c.x), vec2<bool>(arg_3.c.x, arg_3.c.x), arg_3.c), arg_3.c, false);
    let var_1 = select(!(!select(vec4<bool>(var_0.x, var_0.x, true, false), !vec4<bool>(true, arg_3.c.x, false, arg_3.c.x), true)), vec4<bool>(var_0.x, arg_1 > _wgslsmith_f_op_f32(floor(arg_1)), var_0.x, arg_3.a.x > 29038u), arg_3.c.x);
    let var_2 = -2025f;
    let var_3 = _wgslsmith_f_op_f32(ceil(arg_3.b.x));
    var var_4 = _wgslsmith_add_i32(u_input.b.x, -1i);
    return arg_3.c;
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2342f, -194f, 1287f) - vec3<f32>(693f, -2005f, 496f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-132f, -1376f, -1000f))))), abs(~(u_input.c ^ (24591u | u_input.a.x))), vec3<bool>(true, true, true), Struct_1(vec4<u32>(max(113u, 0u), 57850u, _wgslsmith_mod_u32(52534u, 42543u), u_input.c) >> ((~vec4<u32>(u_input.c, 4203u, u_input.c, 28947u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 56657u, 4251u, u_input.c), vec4<u32>(u_input.c, 24919u, u_input.a.x, 42933u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(551f, 111f) * vec2<f32>(-608f, -813f)))), vec2<bool>((arg_0 | arg_0) | arg_0, false)), !(!vec4<bool>(any(vec3<bool>(arg_0, arg_0, true)), true && arg_0, !arg_0, all(vec3<bool>(false, arg_0, true)))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -464f)));
    var var_2 = u_input.b.yz;
    var_2 = _wgslsmith_mult_vec2_i32(reverseBits(~(~(~vec2<i32>(-4608i, -9466i)))), vec2<i32>(2147483647i, var_2.x));
    var_2 = firstTrailingBit(min(countOneBits(abs(-vec2<i32>(66235i, 51901i))), u_input.b.yx));
    return ~(~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), true), vec2<bool>(true, true), (0u >> (u_input.c % 32u)) > (u_input.a.x | u_input.c)), vec2<bool>(any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, false, false), Struct_2(vec3<f32>(1000f, 124f, -1086f), u_input.c, vec3<bool>(false, true, false), Struct_1(vec4<u32>(u_input.c, u_input.a.x, u_input.c, u_input.c), vec2<f32>(455f, -228f), vec2<bool>(true, false)), vec4<bool>(false, false, false, false)), Struct_1(vec4<u32>(30352u, u_input.c, u_input.a.x, u_input.c), vec2<f32>(-2376f, 575f), vec2<bool>(true, true)))) >= -588f), !func_2(vec2<u32>(u_input.c, u_input.c), 656f, _wgslsmith_mod_u32(u_input.c, 1u), Struct_1(vec4<u32>(u_input.a.x, 2822u, u_input.a.x, u_input.a.x), vec2<f32>(309f, -613f), vec2<bool>(false, false)))));
    let var_1 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.b.zwx, vec2<u32>(~(~(~u_input.c)), firstTrailingBit(~u_input.a.x | 4294967295u)), max(vec3<u32>(~(~0u), func_3(true), u_input.a.x), vec3<u32>(78250u, max(107750u, func_3(true)), min(u_input.a.x ^ 4294967295u, u_input.a.x))));
}

