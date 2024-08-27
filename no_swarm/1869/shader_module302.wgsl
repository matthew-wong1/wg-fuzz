struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: i32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(!select(vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), false), vec2<bool>(any(vec3<bool>(false, true, true)), all(vec3<bool>(false, false, true)))));
    var var_1 = 51069u;
    global0 = array<i32, 21>();
    var var_2 = 27215u;
    var var_3 = Struct_2(vec3<bool>(!var_0.a.x, global0[_wgslsmith_index_u32(9627u, 21u)] >= 1i, false), select(var_0.a, vec2<bool>(var_0.a.x & true, all(!vec3<bool>(var_0.a.x, false, false))), var_0.a.x), Struct_1(select(!var_0.a, var_0.a, all(var_0.a))));
    return select(select(!vec2<bool>(true, select(var_3.c.a.x, true, true)), var_3.c.a, select(select(var_3.a.yx, vec2<bool>(false, var_3.b.x), false), !var_0.a, true)), !vec2<bool>(true != any(vec4<bool>(false, false, true, false)), all(select(vec3<bool>(var_3.b.x, true, true), var_3.a, false))), select(vec2<bool>(var_3.c.a.x, !all(vec4<bool>(var_3.b.x, var_0.a.x, var_3.b.x, var_0.a.x))), !var_3.c.a, var_0.a.x));
}

fn func_2() -> vec2<bool> {
    global0 = array<i32, 21>();
    let var_0 = u_input.d.x;
    var var_1 = Struct_2(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) > _wgslsmith_f_op_f32(step(-763f, _wgslsmith_f_op_f32(f32(-1f) * -1196f))), true), vec2<bool>(true, true), Struct_1(!select(vec2<bool>(true, true), func_3(), true)));
    var var_2 = var_1.c.a;
    var var_3 = Struct_2(!vec3<bool>(_wgslsmith_sub_i32(u_input.e, var_0) < -2147483647i, all(select(vec4<bool>(false, var_1.c.a.x, var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_1.c.a.x), vec4<bool>(false, var_1.a.x, var_2.x, false))), true), select(!vec2<bool>(var_1.c.a.x, func_3().x), var_1.c.a, var_1.b), var_1.c);
    return vec2<bool>(true, true);
}

fn func_1(arg_0: vec3<i32>) -> StorageBuffer {
    var var_0 = min(select(u_input.d.zy, u_input.b.wz, select(select(func_2(), vec2<bool>(true, true), vec2<bool>(true, true)), func_2(), any(vec3<bool>(true, true, true)) & true)), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(~(-1i), global0[_wgslsmith_index_u32(u_input.c.x, 21u)] ^ 61138i), firstTrailingBit(-1i)), _wgslsmith_sub_vec2_i32(arg_0.zx >> (u_input.c.zy % vec2<u32>(32u)), u_input.b.wy)));
    var var_1 = min(abs(vec3<u32>(u_input.c.x, u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c.x))), abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(68454u, u_input.c.x, 78634u), vec3<u32>(1u, u_input.c.x, u_input.c.x))));
    let var_2 = Struct_2(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true))), vec2<bool>(true, true), Struct_1(vec2<bool>(!func_2().x, select(any(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false)), any(vec3<bool>(false, false, false))))));
    let var_3 = Struct_1(vec2<bool>(var_2.b.x, true));
    var var_4 = ~countOneBits(var_1.x) ^ 42441u;
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-133f, -287f))), -1622f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(420f + 887f)) * -531f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(852f, -1751f, true)) - _wgslsmith_f_op_f32(1000f * -496f)), -712f))), -1806f, _wgslsmith_add_u32(abs(firstTrailingBit(max(1u, 19790u))), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = reverseBits(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(23600u, ~_wgslsmith_add_u32(11455u, u_input.c.x)), 21u)], global0[_wgslsmith_index_u32(~(~(~70758u)), 21u)]));
    let var_0 = true;
    global0 = array<i32, 21>();
    let var_1 = ~u_input.c;
    global0 = array<i32, 21>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mod_vec3_i32(u_input.b.zzw, select(abs(countOneBits(vec3<i32>(-28054i, -2147483647i, global0[_wgslsmith_index_u32(6697u, 21u)]))), u_input.b.xwy, _wgslsmith_f_op_f32(select(-571f, -108f, var_0)) <= -1685f)));
}

