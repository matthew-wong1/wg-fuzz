struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    var var_0 = 61848i;
    var_0 = arg_0.x;
    var_0 = 0i;
    var_0 = -1i;
    var_0 = u_input.d.x;
    return select(select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), select(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), 220f <= _wgslsmith_f_op_f32(-arg_2));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32) -> vec3<bool> {
    let var_0 = func_3(firstTrailingBit(countOneBits(-u_input.d.zz) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, arg_1.a.c.x), vec2<u32>(arg_1.a.c.x, 0u), arg_1.a.c.yx) % vec2<u32>(32u))), arg_1.a, -617f);
    var var_1 = arg_1.a.c.xyy;
    var var_2 = _wgslsmith_f_op_f32(1f - -1496f);
    var_1 = vec3<u32>(~133270u, ~var_1.x, u_input.c.x);
    let var_3 = arg_1.a;
    return vec3<bool>(any(func_3(~_wgslsmith_sub_vec2_i32(u_input.d.yx, vec2<i32>(2147483647i, 0i)), Struct_1(abs(2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-356f, 727f, -1794f, arg_1.a.b.x) + vec4<f32>(arg_0.x, -382f, arg_1.a.b.x, -578f)), var_3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b.x * -292f) - 468f))), var_0.x, arg_1.d);
}

fn func_1() -> bool {
    var var_0 = vec3<bool>(true, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 71318u), u_input.c.yz), u_input.c.x) <= _wgslsmith_sub_u32(min(u_input.c.x, u_input.c.x) >> (u_input.c.x % 32u), select(~u_input.c.x, ~u_input.c.x, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec4<bool>(false, false, true, false)), true), true != (u_input.b.x <= u_input.b.x))));
    let var_1 = true;
    var_0 = !select(select(select(!vec3<bool>(var_1, var_1, false), vec3<bool>(true, var_0.x, var_1), var_0.x & var_1), select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, true, true), !vec3<bool>(var_1, var_1, true)), select(vec3<bool>(true, true, true), func_2(vec4<f32>(-373f, 442f, -1044f, -1262f), Struct_2(Struct_1(u_input.d.x, vec4<f32>(1000f, 750f, -991f, 1000f), u_input.c), var_1, var_0.x, false), 6847i), !vec3<bool>(false, true, var_0.x))), select(!vec3<bool>(var_0.x, var_1, false), !(!vec3<bool>(var_0.x, var_0.x, false)), !(!var_0.x)), !vec3<bool>(var_1, all(vec4<bool>(true, var_0.x, var_0.x, var_1)), any(vec2<bool>(false, var_1))));
    var_0 = vec3<bool>(var_1 != (-(u_input.d.x << (4463u % 32u)) == -firstTrailingBit(-11314i)), var_1, true);
    var_0 = vec3<bool>(true, true, true);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(u_input.b.x > (((u_input.b.x ^ 2147483647i) ^ ~1i) ^ (abs(u_input.b.x) << (~64292u % 32u))), !(!func_1()), !(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2170f, -1154f, -186f, -752f), vec4<f32>(-1099f, 1336f, -1000f, 1889f), false)), Struct_2(Struct_1(u_input.b.x, vec4<f32>(-741f, -473f, -670f, -955f), vec4<u32>(0u, 1487u, u_input.c.x, u_input.a)), false, true, false), ~u_input.d.x).x && true), select(true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(7476u, vec4<i32>(-(~abs(-20109i)), u_input.b.x, u_input.d.x, countOneBits(~(i32(-1i) * -29492i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1306f))), u_input.d.x);
}

