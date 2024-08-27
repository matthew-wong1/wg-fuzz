struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4>;

var<private> global1: vec4<bool>;

var<private> global2: f32 = -1365f;

var<private> global3: array<Struct_2, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = !(!(!vec2<bool>(true, all(vec4<bool>(false, true, false, false)))));
    var var_1 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(15060i, u_input.b) >> (_wgslsmith_sub_u32(8598u, _wgslsmith_dot_vec4_u32(vec4<u32>(113741u, 1u, u_input.a, 42412u), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))) % 32u), arg_2.b), select(_wgslsmith_sub_i32(abs(u_input.b), ~(-2147483647i)), -arg_2.b, false));
    global2 = arg_1;
    global2 = arg_1;
    var var_2 = global0[_wgslsmith_index_u32((abs((u_input.a & 8056u) | min(0u, 35692u)) >> ((u_input.a | reverseBits(_wgslsmith_div_u32(u_input.a, u_input.a))) % 32u)) << (~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(u_input.a, u_input.a))) % 32u), 4u)];
    return _wgslsmith_f_op_vec2_f32(-var_2.wx);
}

fn func_2() -> bool {
    let var_0 = Struct_2(firstTrailingBit(~(~vec3<u32>(4294967295u, 1u, 4294967295u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(4294967295u, 11605u, u_input.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(false, -1984f, Struct_1(-1i, -u_input.d.x)))));
    var var_1 = !global1.zxy;
    let var_2 = -_wgslsmith_add_vec3_i32(countOneBits(~vec3<i32>(u_input.c.x, u_input.c.x, u_input.d.x)), u_input.d.ywx) << (abs(~(~(var_0.a ^ var_0.a))) % vec3<u32>(32u));
    return var_1.x | !(var_0.b.x == _wgslsmith_f_op_f32(f32(-1f) * -2531f));
}

fn func_1() -> Struct_2 {
    var var_0 = false;
    var_0 = all(select(vec4<bool>(false, global1.x, all(global1.xz), func_2()), vec4<bool>(global1.x, global1.x, _wgslsmith_mult_u32(u_input.a, 24865u) < select(u_input.a, 4294967295u, true), global1.x), !(!vec4<bool>(global1.x, global1.x, global1.x, true))));
    var var_1 = global3[_wgslsmith_index_u32(0u, 12u)];
    var var_2 = Struct_1(max(min(0i >> (~var_1.a.x % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), ~u_input.d.x)), _wgslsmith_sub_i32(-2147483647i, select(u_input.b, -1i, select(global1.x, global1.x, global1.x)))), i32(-1i) * -24077i);
    let var_3 = 1u;
    return global3[_wgslsmith_index_u32(u_input.a, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 4>();
    let var_0 = ~(~u_input.c.zzy);
    var var_1 = func_1();
    var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + func_1().b.x), _wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(f32(-1f) * -110f)))))));
    var var_3 = -max(~(i32(-1i) * -22958i), var_0.x);
    let var_4 = vec2<u32>(~u_input.a, u_input.a);
    var_1 = Struct_2(vec3<u32>(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_4.x, 27420u, var_4.x, var_1.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(20697u, var_4.x, var_1.a.x, 1u), vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, var_4.x))), ~countOneBits(_wgslsmith_clamp_u32(38646u, 1u, var_1.a.x)), _wgslsmith_mod_u32(select(~1u, 1u, true), 1u)), vec2<f32>(var_1.b.x, var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1198f, -1522f, 470f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x) * vec3<f32>(1025f, -1066f, 459f)))))), u_input.c.x, -372f, func_1().b.x, 50274u);
}

