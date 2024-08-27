struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: array<Struct_1, 29>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec2<i32> {
    return u_input.a;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec4<i32>) -> vec4<bool> {
    let var_0 = !(!global2.wxz);
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    let var_1 = global1[_wgslsmith_index_u32(~3378u, 29u)];
    var var_2 = 22606u;
    return !select(var_1.a, !vec4<bool>(all(var_0.yy), true, false, true), select(vec4<bool>(false, arg_0, all(var_1.a.xzy), !global2.x), vec4<bool>(true, global0[_wgslsmith_index_u32(50937u, 18u)] >= 463f, false & arg_0, any(var_1.a)), all(var_1.a)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(func_3(global2.x, _wgslsmith_sub_u32(1u, ~abs(u_input.e)), -(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, -1482i, -65180i), vec4<i32>(u_input.a.x, 1i, 2147483647i, u_input.d.x), u_input.d) >> (vec4<u32>(u_input.e, 35992u, u_input.e, 0u) % vec4<u32>(32u)))), !select(global2.zy, !select(vec2<bool>(global2.x, true), global2.xx, vec2<bool>(global2.x, true)), !func_3(false, 4595u, vec4<i32>(13129i, u_input.b, u_input.c, 0i)).yw), reverseBits(reverseBits(vec3<i32>(u_input.c, -13210i, ~u_input.a.x))));
    var var_1 = Struct_2(~vec2<i32>(max(u_input.d.x, var_0.c.x) | ~u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.d, u_input.d), select(u_input.d, u_input.d, vec4<bool>(false, true, var_0.b.x, var_0.b.x)))), (select(_wgslsmith_dot_vec2_i32(vec2<i32>(4569i, -1i), var_0.c.yz), ~var_0.c.x, true) | _wgslsmith_dot_vec3_i32(vec3<i32>(-491i, -2147483647i, -9158i), u_input.d.wxx)) != firstTrailingBit(2147483647i), !(!var_0.a), global1[_wgslsmith_index_u32(u_input.e, 29u)], global1[_wgslsmith_index_u32(u_input.e, 29u)]);
    var_1 = Struct_2(u_input.d.xz, false, var_1.c, global1[_wgslsmith_index_u32(~(~u_input.e) << (u_input.e % 32u), 29u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(u_input.e, u_input.e)), _wgslsmith_dot_vec4_u32(~vec4<u32>(20906u, 4294967295u, u_input.e, u_input.e), reverseBits(vec4<u32>(1u, u_input.e, 82895u, 1u)))), u_input.e), 29u)]);
    var var_2 = reverseBits(reverseBits(~(~(vec3<u32>(u_input.e, u_input.e, 30268u) >> (vec3<u32>(1u, u_input.e, u_input.e) % vec3<u32>(32u))))));
    global2 = func_3(!(global0[_wgslsmith_index_u32(0u, 18u)] < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1289f, 418f)) - _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(var_2.x, 18u)])))), abs(~4294967295u), vec4<i32>(u_input.c, var_0.c.x, 8266i, select(u_input.b, -_wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(50659i, 0i, 37200i)), true)));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 29>();
    global0 = array<f32, 18>();
    var var_0 = Struct_3(Struct_2((func_1(vec2<u32>(u_input.e, 4294967295u), false, global0[_wgslsmith_index_u32(u_input.e, 18u)], global1[_wgslsmith_index_u32(u_input.e, 29u)]) << ((vec2<u32>(u_input.e, u_input.e) ^ vec2<u32>(u_input.e, u_input.e)) % vec2<u32>(32u))) | -(vec2<i32>(-1i, u_input.b) & u_input.a), true, !(!(!vec4<bool>(global2.x, global2.x, global2.x, global2.x))), func_2(), global1[_wgslsmith_index_u32(u_input.e, 29u)]), !global2.x);
    var var_1 = var_0.a.d;
    var var_2 = firstTrailingBit(firstTrailingBit(func_2().c.x)) >> (u_input.e % 32u);
    global1 = array<Struct_1, 29>();
    let var_3 = Struct_3(var_0.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-(~_wgslsmith_mod_i32(var_0.a.a.x, var_0.a.e.c.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-11521i, var_1.c.x, -50100i), var_0.a.e.c, global2.xyy), -var_0.a.e.c), vec3<i32>(var_0.a.d.c.x, 45793i, var_1.c.x << (u_input.e % 32u)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1654f, 304f, global0[_wgslsmith_index_u32(1u, 18u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.e, 18u)], 234f, -798f)))))), _wgslsmith_dot_vec4_i32(min(u_input.d, vec4<i32>(var_0.a.d.c.x, -53357i, var_0.a.a.x, 10557i)) >> (vec4<u32>(1u, u_input.e, 24678u, max(0u, u_input.e)) % vec4<u32>(32u)), countOneBits(vec4<i32>(u_input.c, -1i, -var_0.a.e.c.x, u_input.c))), -(vec4<i32>(_wgslsmith_add_i32(var_0.a.d.c.x, -36322i), firstTrailingBit(-882i), -2147483647i, _wgslsmith_mult_i32(59045i, var_0.a.d.c.x)) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, 12505u, u_input.e, u_input.e), vec4<u32>(54040u, 1u, u_input.e, u_input.e), vec4<u32>(1u, u_input.e, u_input.e, 38198u)), select(vec4<u32>(u_input.e, 61559u, 41472u, 0u), vec4<u32>(u_input.e, 79099u, u_input.e, 0u), var_0.a.e.a)) % vec4<u32>(32u))), u_input.e & ~_wgslsmith_mod_u32(u_input.e, firstLeadingBit(1u)));
}

