struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 18>;

var<private> global2: vec2<bool>;

var<private> global3: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(12344i, -46071i, -1i, -1i), vec4<i32>(2147483647i, -6488i, -49097i, i32(-2147483648)), vec4<i32>(1i, 0i, -13987i, -21376i), vec4<i32>(-1i, -11758i, 34509i, 0i), vec4<i32>(i32(-2147483648), -1i, 42880i, 11978i), vec4<i32>(0i, 2147483647i, -1i, -1i), vec4<i32>(-32729i, -48975i, -3151i, -1i), vec4<i32>(-1i, i32(-2147483648), 15839i, 24580i), vec4<i32>(2147483647i, 13991i, -44466i, -1i), vec4<i32>(2147483647i, 2147483647i, -22542i, 2147483647i), vec4<i32>(10340i, 7811i, 2147483647i, 1i), vec4<i32>(58164i, 1501i, 0i, -1i), vec4<i32>(i32(-2147483648), -5313i, 2147483647i, i32(-2147483648)), vec4<i32>(-49914i, 2147483647i, 21631i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, 27328i, 0i), vec4<i32>(-1i, 4879i, -16810i, -14084i), vec4<i32>(15428i, 25716i, i32(-2147483648), 2620i));

var<private> global4: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(1i, -30084i, -1i), vec3<i32>(1i, i32(-2147483648), 3737i), vec3<i32>(14777i, -1i, i32(-2147483648)), vec3<i32>(8685i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1576i, 1i, 0i), vec3<i32>(78510i, -23136i, 57231i), vec3<i32>(13829i, 1i, 29138i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(26256i, -36602i, 1i), vec3<i32>(-5580i, -17923i, 2147483647i), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(0i, 0i, 5660i), vec3<i32>(-32389i, 22181i, -11791i), vec3<i32>(-45940i, -34022i, -190i), vec3<i32>(55447i, 26867i, 2147483647i), vec3<i32>(-1i, -74495i, -6261i), vec3<i32>(-29504i, -68248i, 0i), vec3<i32>(2147483647i, 5465i, -22770i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_2) -> bool {
    return global2.x;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = vec3<f32>(1099f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-204f, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(trunc(arg_1))))), -1084f);
    global2 = vec2<bool>(true, _wgslsmith_sub_i32(i32(-1i) * -1i, u_input.b.x) > _wgslsmith_add_i32(-u_input.c, -21164i));
    let var_1 = -14689i;
    let var_2 = arg_0.b;
    var var_3 = countOneBits(_wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.a.x, arg_2, arg_2), vec3<u32>(u_input.a.x, ~40144u, u_input.a.x)), vec3<u32>(~26931u, arg_2, ~u_input.a.x)));
    return Struct_2(arg_0.d.x);
}

fn func_3(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -286f), 661f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1145f), _wgslsmith_f_op_f32(-733f - 456f))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(525f, var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * 826f)) - _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-848f + var_0)))));
    let var_2 = vec2<u32>(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 603u, 72322u)), ~4294967295u);
    let var_3 = true;
    let var_4 = select(vec2<bool>(true, global2.x), vec2<bool>(select(false, !func_2(Struct_3(Struct_1(vec4<bool>(arg_0.a, false, false, var_3)), global1[_wgslsmith_index_u32(var_2.x, 18u)], global1[_wgslsmith_index_u32(var_2.x, 18u)], vec4<bool>(global2.x, true, var_3, arg_0.a)), var_0, u_input.a.x, vec2<bool>(false, arg_0.a)).a, any(vec3<bool>(false, global2.x, global2.x))), var_3), vec2<bool>(true | (firstTrailingBit(40599u) >= 1u), !func_2(Struct_3(global1[_wgslsmith_index_u32(var_2.x, 18u)], Struct_1(vec4<bool>(true, arg_0.a, var_3, false)), global1[_wgslsmith_index_u32(0u, 18u)], vec4<bool>(false, arg_0.a, false, var_3)), _wgslsmith_f_op_f32(floor(var_0)), var_2.x, !vec2<bool>(true, global2.x)).a));
    return StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(46673u | u_input.a.x), u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~u_input.a.x), var_2.x), vec4<u32>(4294967295u, 1u, 0u << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.x, 1u, var_2.x), vec4<u32>(var_2.x, u_input.a.x, u_input.a.x, var_2.x)) % 32u), 1u), vec4<u32>(~1u, 0u, 1u & ~u_input.a.x, ~0u)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, -1414f))))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(-327f, var_0))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 980f))))), 19275i, -1i, i32(-1i) * -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<i32>, 18>();
    let var_0 = 37492u;
    let var_1 = vec4<bool>(all(vec2<bool>(all(vec2<bool>(global2.x, global2.x)), global2.x)), u_input.a.x < firstLeadingBit(_wgslsmith_sub_u32(reverseBits(1492u), 28570u >> (var_0 % 32u))), global2.x, global2.x);
    var var_2 = 1i;
    var var_3 = Struct_1(var_1);
    let x = u_input.a;
    s_output = func_3(func_2(Struct_3(Struct_1(select(var_1, vec4<bool>(true, var_3.a.x, false, global2.x), var_1.x)), Struct_1(select(var_1, vec4<bool>(true, var_3.a.x, var_3.a.x, true), global2.x)), Struct_1(vec4<bool>(global2.x, var_3.a.x, var_1.x, var_1.x)), var_3.a), _wgslsmith_f_op_f32(570f * -649f), 84472u, vec2<bool>(any(vec3<bool>(var_1.x, var_1.x, var_1.x)) != func_1(-1182f, Struct_4(var_3.a.x, Struct_1(var_1), vec3<f32>(234f, -2581f, 1062f)), -1023f, Struct_2(global2.x)), 1u != ~var_0)));
}

