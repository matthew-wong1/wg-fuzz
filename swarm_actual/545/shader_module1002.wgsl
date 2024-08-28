struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32;

var<private> global2: i32;

var<private> global3: array<f32, 17> = array<f32, 17>(277f, -1185f, 999f, 1925f, -578f, 1195f, 703f, 923f, 1981f, 1362f, -317f, 132f, 2118f, 425f, 295f, 185f, 497f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    return reverseBits(u_input.e);
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(4294967295u), 0u | _wgslsmith_mult_u32(~u_input.c, ~1u), 4294967295u), vec3<u32>(countOneBits(func_3()), _wgslsmith_dot_vec4_u32(vec4<u32>(19165u, u_input.c, 12995u, 0u), vec4<u32>(4294967295u, u_input.c, u_input.d, 85685u)) & 0u, _wgslsmith_mod_u32(u_input.c, 9001u) ^ abs(30426u)) ^ reverseBits(countOneBits(~u_input.b.zzy)));
    global2 = firstLeadingBit(firstTrailingBit(31209i) & u_input.a.x);
    let var_1 = true;
    let var_2 = Struct_2(vec2<bool>(any(vec3<bool>(var_1, false, any(vec3<bool>(false, var_1, var_1)))), var_1), Struct_1(u_input.b.zz, u_input.a), Struct_1(min(~abs(u_input.b.wy), _wgslsmith_mult_vec2_u32(vec2<u32>(30635u, 4294967295u), var_0.zx | vec2<u32>(0u, 18442u))), _wgslsmith_add_vec4_i32(vec4<i32>(-u_input.a.x, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(16629i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)), ~(-14202i)), u_input.a)));
    var var_3 = 1u;
    return vec4<i32>(0i, u_input.a.x, 2147483647i, 64251i);
}

fn func_1() -> vec4<bool> {
    var var_0 = -(~func_2()) | -(~(-u_input.a));
    let var_1 = global3[_wgslsmith_index_u32(1u | u_input.b.x, 17u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.d, 17u)], global3[_wgslsmith_index_u32(u_input.c, 17u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3[_wgslsmith_index_u32(u_input.c, 17u)], 1919f), vec2<f32>(-398f, -1231f)))))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d, 4294967295u, 1u), 17u)])))));
    let var_3 = global3[_wgslsmith_index_u32(u_input.c, 17u)];
    let var_4 = vec2<bool>(false, true);
    return !vec4<bool>((u_input.b.x <= 67818u) & true, true, var_4.x, true != (false || (var_2.x < 1763f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 17>();
    var var_0 = 60308i;
    var var_1 = !(!func_1());
    global3 = array<f32, 17>();
    var_1 = vec4<bool>(4294967295u >= u_input.d, all(var_1.wy), true, var_1.x);
    let var_2 = select(var_1.zw, select(vec2<bool>(true, true), var_1.xy, true == !(!var_1.x)), func_1().yw);
    var_1 = select(vec4<bool>(!(!func_1().x), true, firstLeadingBit(u_input.a.x) >= u_input.a.x, var_2.x), select(select(select(select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_1.x, var_2.x, false, false), var_1.x), select(vec4<bool>(false, var_2.x, false, true), vec4<bool>(var_1.x, true, true, var_2.x), vec4<bool>(var_1.x, false, var_1.x, var_2.x)), vec4<bool>(false, var_2.x, var_1.x, false)), !(!vec4<bool>(false, true, var_2.x, true)), select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, false, var_2.x, var_1.x), !vec4<bool>(var_2.x, false, false, var_1.x))), !(!select(vec4<bool>(var_1.x, true, var_2.x, false), vec4<bool>(false, true, var_2.x, false), var_2.x)), select(var_2.x, u_input.a.x == u_input.a.x, var_1.x)), var_1.x);
    let var_3 = 4294967295u;
    var var_4 = !any(select(select(select(vec3<bool>(var_2.x, false, var_1.x), var_1.www, true), select(var_1.zzw, vec3<bool>(var_1.x, false, true), vec3<bool>(false, var_1.x, var_1.x)), false), select(vec3<bool>(var_2.x, false, var_1.x), vec3<bool>(true, var_2.x, false), vec3<bool>(true, true, var_2.x)), func_1().zwx));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

