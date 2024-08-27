struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2 = Struct_2(-20844i, Struct_1(vec4<i32>(-33130i, 18737i, 8497i, -43601i), vec3<bool>(true, false, false), 1i), Struct_1(vec4<i32>(2147483647i, -1i, 5784i, i32(-2147483648)), vec3<bool>(true, true, true), 1i), 1u, Struct_1(vec4<i32>(-1941i, i32(-2147483648), -55338i, 1i), vec3<bool>(true, true, true), -62624i));

var<private> global2: f32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(Struct_2(16569i, Struct_1(global1.c.a, global1.e.b, i32(-1i) * -2147483647i), Struct_1(global1.e.a, select(!vec3<bool>(global1.e.b.x, false, true), vec3<bool>(global1.b.b.x, false, false), !global1.c.b), -4661i), 95505u, global1.b), global1.e);
    let var_1 = ~countOneBits(firstTrailingBit(vec4<i32>(-1i) * -var_0.b.a));
    global0 = vec2<u32>(~firstLeadingBit((27406u >> (global0.x % 32u)) ^ _wgslsmith_mult_u32(32300u, u_input.a)), ~1u);
    global1 = var_0.a;
    let var_2 = ~countOneBits(vec2<u32>(abs(0u), ~(u_input.a ^ global0.x)));
    return _wgslsmith_f_op_f32(ceil(-547f));
}

fn func_2() -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-653f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(234f, -496f))))), global1.e.b.x || ((_wgslsmith_f_op_f32(func_3()) >= 451f) && all(vec3<bool>(false, global1.b.b.x, global1.b.b.x)))));
    var var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-202f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1474f))) * -325f));
    var var_2 = Struct_3(Struct_2(-_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.a, global1.b.a.x), global1.e.a.wx), select(vec2<i32>(-7199i, -10163i), global1.b.a.zw, false)), global1.e, global1.c, max(~56968u, global0.x), Struct_1(min(~global1.e.a, vec4<i32>(-67451i, -1i, global1.a, global1.a)), select(global1.c.b, !global1.b.b, global1.b.b.x & global1.b.b.x), ~(global1.e.a.x >> (global1.d % 32u)))), global1.b);
    var var_3 = Struct_2(_wgslsmith_div_i32(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(15180i, -1i), global1.b.a.x), reverseBits(-global1.b.a.x)), global1.b, Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-40842i, global1.b.c, global1.c.c, global1.b.c), select(vec4<i32>(2147483647i, -26211i, var_2.b.a.x, 0i), var_2.b.a, vec4<bool>(false, true, true, true))), _wgslsmith_div_vec4_i32(var_2.a.e.a, vec4<i32>(25536i, var_2.b.c, 39128i, global1.a))), var_2.a.b.b, select(-2147483647i, _wgslsmith_dot_vec2_i32(global1.b.a.zw, global1.c.a.yy << (vec2<u32>(global0.x, 33245u) % vec2<u32>(32u))), !all(vec2<bool>(global1.e.b.x, var_2.b.b.x)))), 37139u | global1.d, Struct_1(abs(global1.e.a), select(vec3<bool>(global1.e.b.x, !var_2.b.b.x, !global1.e.b.x), !global1.b.b, vec3<bool>(select(global1.e.b.x, global1.e.b.x, global1.b.b.x), var_2.a.e.b.x, var_2.b.a.x != 0i)), ~_wgslsmith_dot_vec2_i32(min(var_2.b.a.zy, global1.c.a.wz), vec2<i32>(var_2.b.c, global1.a))));
    return global1.c;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<u32>) -> StorageBuffer {
    global0 = _wgslsmith_mult_vec2_u32(arg_3.yw, arg_3.xz) ^ (~arg_3.xy ^ select(min(vec2<u32>(global1.d, arg_2), ~arg_3.ww), arg_3.yx, select(!global1.b.b.xz, vec2<bool>(global1.b.b.x, global1.c.b.x), global1.c.b.yx)));
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~34489u), global1.d), arg_3.yy << (_wgslsmith_mult_vec2_u32(arg_3.ww, min(vec2<u32>(u_input.a, 1u), vec2<u32>(8816u, 33655u))) % vec2<u32>(32u))) >> (~(~arg_3.xx ^ arg_3.xz) % vec2<u32>(32u));
    let var_0 = func_2();
    global0 = _wgslsmith_sub_vec2_u32(vec2<u32>(5547u & ~(~global0.x), min(_wgslsmith_div_u32(70790u, countOneBits(global1.d)), 81331u)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u << (global1.d % 32u)) >> (~(~arg_3.wy) % vec2<u32>(32u)), ~(~arg_3.zx)));
    global0 = vec2<u32>(u_input.a, _wgslsmith_add_u32(firstLeadingBit(~global0.x), global0.x));
    return StorageBuffer(0u, firstLeadingBit(i32(-1i) * -1i), _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_add_u32(12674u, 36977u), firstLeadingBit(_wgslsmith_div_u32(7498u, u_input.a))), vec2<u32>(arg_2, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_3.wy, vec2<u32>(global1.d, 13728u)), _wgslsmith_div_u32(30796u, 68224u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(countOneBits(global1.c.a), vec3<i32>(1i, ~global1.e.c >> (1u % 32u), global1.a), countOneBits(~10166u), ~abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.x, u_input.a, 0u, 28134u), vec4<u32>(u_input.a, 1u, 4294967295u, global0.x), vec4<u32>(u_input.a, 0u, 85268u, u_input.a))));
}

