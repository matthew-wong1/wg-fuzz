struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_4,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(-1886f, 810f, 2014f, -193f, -429f, 724f, 1848f, 909f, 1198f, -1430f);

var<private> global1: Struct_1 = Struct_1(-9234i, vec3<i32>(-35040i, 17661i, 4149i), vec2<i32>(1i, 0i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -(i32(-1i) * -2147483647i), ~u_input.a.x) & vec3<i32>(-36376i, ~12760i, -1i), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(-reverseBits(vec3<i32>(u_input.a.x, 30645i, global1.c.x)), vec3<i32>(-2147483647i & global1.c.x, reverseBits(u_input.a.x), _wgslsmith_sub_i32(2147483647i, u_input.a.x))), firstLeadingBit(global1.b & vec3<i32>(0i, u_input.a.x, u_input.a.x))));
    let var_1 = countOneBits(~(~vec3<u32>(1u, 1u, 1u)));
    let var_2 = Struct_5(true | !(var_1.x > var_1.x), true, Struct_4(any(vec3<bool>(false, true, true))), -countOneBits(select(-u_input.a.zzy, ~u_input.a.zzw, vec3<bool>(true, true, true))));
    var var_3 = Struct_5(!(all(vec2<bool>(true, true)) && !all(vec2<bool>(var_2.c.a, false))), true, var_2.c, vec3<i32>(~(firstTrailingBit(var_0.x) | (i32(-1i) * -21209i)), ~_wgslsmith_mod_i32(global1.a, 21077i), global1.b.x & _wgslsmith_dot_vec2_i32(firstLeadingBit(global1.c), ~vec2<i32>(-2147483647i, var_2.d.x))));
    var var_4 = var_1.x;
    return var_2.d;
}

fn func_2() -> u32 {
    global0 = array<f32, 10>();
    global1 = Struct_1(_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(func_3(), -vec3<i32>(global1.c.x, 1i, global1.c.x))), reverseBits(global1.b)), (~countOneBits(vec3<i32>(u_input.a.x, global1.c.x, 1i)) << (~(~vec3<u32>(4294967295u, 4294967295u, 46848u)) % vec3<u32>(32u))) << (~abs(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), -(~vec2<i32>(global1.a, 0i)));
    var var_0 = _wgslsmith_f_op_f32(floor(161f));
    var var_1 = firstTrailingBit(u_input.a.wy);
    let var_2 = -select(vec3<i32>(2147483647i, 0i << (1u % 32u), global1.c.x), _wgslsmith_add_vec3_i32(global1.b, func_3()), 1f != global0[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(4294967295u)), 10u)]);
    return 0u;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(798f, -1000f, -252f, arg_2.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -319f), _wgslsmith_f_op_f32(max(-703f, -932f)), _wgslsmith_f_op_f32(ceil(arg_2.x)))), vec4<f32>(1566f, _wgslsmith_f_op_f32(f32(-1f) * -610f), arg_2.x, 807f)), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x - 1405f))), 744f));
    global1 = Struct_1(~abs(countOneBits(countOneBits(global1.a))), vec3<i32>(global1.a, global1.a, max(_wgslsmith_div_i32(~global1.b.x, _wgslsmith_dot_vec3_i32(global1.b, global1.b)), -global1.a)), ((vec2<i32>(-1i) * -global1.c) | ~(vec2<i32>(1i, u_input.a.x) ^ u_input.a.zw)) | u_input.a.xx);
    var var_1 = Struct_4(all(vec2<bool>(true, true)));
    global0 = array<f32, 10>();
    var var_2 = arg_1;
    return Struct_1(_wgslsmith_dot_vec4_i32(-(~(u_input.a | vec4<i32>(1i, global1.c.x, u_input.a.x, -2147483647i))), _wgslsmith_mult_vec4_i32(-(vec4<i32>(u_input.a.x, u_input.a.x, 55079i, 0i) << (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) % vec4<u32>(32u))), vec4<i32>(-global1.b.x, 2147483647i, 0i, u_input.a.x))), u_input.a.xwz, select(vec2<i32>(_wgslsmith_mult_i32(-u_input.a.x, 1i), u_input.a.x << (~4294967295u % 32u)), _wgslsmith_mult_vec2_i32(u_input.a.wy, _wgslsmith_mult_vec2_i32(u_input.a.zx, u_input.a.wy) ^ global1.b.yz), true));
}

fn func_1() -> Struct_4 {
    global0 = array<f32, 10>();
    let var_0 = !(!(!(_wgslsmith_mod_u32(0u, 1u) == select(1u, 8182u, false))));
    global1 = func_4(vec2<u32>(func_2(), ~(~(~16199u))), !(!all(vec4<bool>(true, var_0, var_0, var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(48521u, 10u)]), -1427f, _wgslsmith_f_op_f32(f32(-1f) * -1297f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(67437u, 10u)], global0[_wgslsmith_index_u32(51229u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)])))));
    var var_1 = u_input.a.x == u_input.a.x;
    var var_2 = func_4(vec2<u32>(1u, 1u), var_0, vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), reverseBits(~vec3<u32>(1u, 78001u, 45623u))), 10u)], global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(35812u, 5128u)), vec2<u32>(1u, 1u)), 10u)], _wgslsmith_f_op_f32(1073f + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(31928u, 10u)] * -560f)))));
    return Struct_4(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = func_1();
    let var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, 48227u), vec3<u32>(0u, 13144u, 4294967295u)), abs(~44147u)));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(267f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(30930u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(var_2, 10u)]))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(911f)), global0[_wgslsmith_index_u32(~var_2, 10u)]))))));
    var var_4 = _wgslsmith_mod_vec2_u32(vec2<u32>(4991u, (~var_2 >> (~var_2 % 32u)) >> (4294967295u % 32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_2, var_2, 4294967295u)), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(20929u, var_2, 1u), vec3<u32>(0u, 16135u, 79394u)))), 24102u));
    let var_5 = Struct_1(u_input.a.x, _wgslsmith_add_vec3_i32(vec3<i32>(func_3().x, func_3().x, i32(-1i) * -9493i), -(~u_input.a.wyw)), firstTrailingBit((vec2<i32>(global1.c.x, u_input.a.x) ^ global1.c) << (vec2<u32>(73613u, countOneBits(var_4.x)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_3)), -189f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2, 10u)] - var_3)))))));
}

