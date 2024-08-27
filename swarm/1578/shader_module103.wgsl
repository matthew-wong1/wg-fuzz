struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<u32>(42531u, 78753u), i32(-2147483648)));

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(225f, 4294967295u, false), Struct_2(-543f, 4294967295u, true), Struct_2(273f, 32108u, false), Struct_2(-728f, 4294967295u, false), Struct_2(-1646f, 1u, false), Struct_2(984f, 1u, true), Struct_2(634f, 65344u, false), Struct_2(-606f, 61323u, true), Struct_2(947f, 4294967295u, true), Struct_2(-2499f, 0u, false), Struct_2(-1086f, 1u, false), Struct_2(-480f, 0u, false), Struct_2(1235f, 1u, true), Struct_2(-1224f, 57516u, true), Struct_2(3150f, 4612u, false), Struct_2(-132f, 0u, false), Struct_2(897f, 77457u, true), Struct_2(2076f, 4393u, false), Struct_2(1000f, 4294967295u, true), Struct_2(-744f, 0u, true), Struct_2(982f, 4294967295u, true), Struct_2(-774f, 8188u, true), Struct_2(-564f, 0u, false), Struct_2(1073f, 21342u, true), Struct_2(209f, 4294967295u, true), Struct_2(-1449f, 0u, false), Struct_2(369f, 39116u, false), Struct_2(1770f, 8154u, true));

var<private> global2: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 28u)];
    let var_1 = u_input.a;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-584f))), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(~1u, 96179u, 4294967295u, _wgslsmith_dot_vec2_u32(arg_0.yy, vec2<u32>(global2.a.x, var_0.b)))), vec4<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_0.x, 1u, arg_0.x, 1u)), min(vec4<u32>(arg_0.x, 0u, global2.a.x, 4294967295u), vec4<u32>(15192u, global2.a.x, arg_0.x, 0u))), ~arg_0.x, ~var_0.b)), -1i < (_wgslsmith_div_i32(arg_1.x, 51675i) << (~_wgslsmith_add_u32(u_input.c, 5023u) % 32u)));
    global2 = Struct_1(u_input.b, global2.b);
    let var_3 = global0[_wgslsmith_index_u32(~global2.a.x, 1u)];
    return 60858u << (select((firstLeadingBit(var_3.a.x) >> (~var_0.b % 32u)) << (arg_0.x % 32u), 0u, true) % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global0 = array<Struct_1, 1>();
    global2 = global0[_wgslsmith_index_u32(38142u, 1u)];
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a)), arg_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a))), -1364f)));
    let var_1 = Struct_1(arg_1.a, -22168i);
    var var_2 = vec4<i32>(-u_input.a, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-var_1.b, 1783i) & var_1.b, 25950i), ~select(_wgslsmith_mod_i32(global2.b, global2.b & u_input.a), select(1i, 0i << (u_input.b.x % 32u), false), arg_0.c), min(_wgslsmith_mult_i32(-2147483647i, max(21540i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, 1i), vec4<i32>(global2.b, 1i, -1i, u_input.a)))), ~(~1i)));
    return _wgslsmith_f_op_f32(arg_2.a * arg_0.a);
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 1>();
    let var_0 = _wgslsmith_f_op_f32(-1007f - -1870f);
    global1 = array<Struct_2, 28>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(~firstLeadingBit(38372u), 28u)], global0[_wgslsmith_index_u32(func_3(~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<i32>(1i, 37238i, -77656i) | vec3<i32>(1i, global2.b, u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1798f, var_0, var_0))), 1u)], Struct_2(_wgslsmith_f_op_f32(-var_0), u_input.b.x, true)))), global2.a.x, true && !(!all(vec2<bool>(false, false))));
    let var_2 = vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(u_input.c), firstTrailingBit(~(~u_input.b.x))), 4294967295u, ~(global2.a.x & (4294967295u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_1.b), u_input.b))));
    return global0[_wgslsmith_index_u32(~var_2.x, 1u)];
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 1>();
    global2 = func_2();
    let var_0 = vec3<u32>(~countOneBits(44866u), 0u, 0u);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -904f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1336f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-238f * -980f) - -889f), -261f))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(168f, -324f)))))));
    var var_2 = global2.b;
    return Struct_2(_wgslsmith_f_op_f32(-var_1.x), ~(~global2.a.x), !all(vec3<bool>(false, true, true)) && true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 28>();
    global1 = array<Struct_2, 28>();
    var var_0 = global0[_wgslsmith_index_u32(1u, 1u)];
    global0 = array<Struct_1, 1>();
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~min(reverseBits(-2147483647i), 0i), func_1().b ^ ~32362u, vec4<i32>(_wgslsmith_mod_i32(-60463i, global2.b), _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(22976i, global2.b, var_0.b, global2.b), vec4<i32>(u_input.a, -9903i, var_0.b, -2147483647i)), vec4<i32>(1i, var_0.b, u_input.a, u_input.a)), i32(-1i) * -56511i, ~u_input.a), u_input.e, ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global2.a.x, u_input.e, u_input.e), ~vec3<u32>(var_1.b, global2.a.x, u_input.b.x)), vec3<u32>(countOneBits(81661u), ~51508u, 67678u)));
}

