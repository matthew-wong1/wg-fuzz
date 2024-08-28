struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4>;

var<private> global1: array<Struct_3, 4>;

var<private> global2: array<f32, 16> = array<f32, 16>(-227f, -390f, -595f, -859f, 298f, -1013f, 498f, -703f, 953f, -2241f, -304f, -316f, -587f, 1124f, 1278f, -479f);

var<private> global3: array<vec2<bool>, 15>;

var<private> global4: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<i32>(1i, -69865i)), Struct_1(vec2<i32>(14816i, 0i)), Struct_1(vec2<i32>(-26040i, 2147483647i)), Struct_1(vec2<i32>(i32(-2147483648), 0i)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global1 = array<Struct_3, 4>();
    let var_0 = _wgslsmith_f_op_f32(-1379f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-397f - -1043f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(8200u, 16u)]))) - -966f) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(60679u), 23393u), 16u)] * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-327f - -638f), -169f))));
    let var_1 = -max(min(reverseBits(vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(1u, 13103u) % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-19192i, u_input.a), vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.a, u_input.a)))), select(abs(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, -56003i), vec2<bool>(true, true)));
    global4 = array<Struct_1, 4>();
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1752f, -210f)), vec2<f32>(var_0, 1960f), all(vec4<bool>(true, true, false, false)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1299f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(907u, 16u)]))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, global2[_wgslsmith_index_u32(u_input.b, 16u)]) + vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(u_input.b, 16u)])) * _wgslsmith_div_vec2_f32(vec2<f32>(-775f, 1000f), vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], 136f))))));
    return true;
}

fn func_2() -> Struct_1 {
    global4 = array<Struct_1, 4>();
    var var_0 = ~vec2<u32>(~u_input.b, 24550u);
    var var_1 = vec4<bool>(all(vec2<bool>((1u | u_input.b) == _wgslsmith_add_u32(var_0.x, 4294967295u), true)), !(all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))) || !(global2[_wgslsmith_index_u32(u_input.b, 16u)] == -2468f)), all(vec3<bool>(false, func_3(), true)), true);
    var var_2 = any(vec3<bool>(any(!global3[_wgslsmith_index_u32(12962u, 15u)]), var_1.x, var_1.x));
    global3 = array<vec2<bool>, 15>();
    return Struct_1(abs(reverseBits(vec2<i32>(u_input.a, 12704i) << (vec2<u32>(0u, 60425u) % vec2<u32>(32u))) >> (~(~vec2<u32>(var_0.x, u_input.b)) % vec2<u32>(32u))));
}

fn func_1() -> Struct_1 {
    let var_0 = !(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~0u, countOneBits(1604u), _wgslsmith_dot_vec4_u32(vec4<u32>(60249u, 114204u, 62236u, u_input.b), vec4<u32>(0u, u_input.b, 0u, u_input.b))), u_input.b) < (min(~u_input.b, 99322u) >> (reverseBits(29962u) % 32u)));
    let var_1 = ~(~u_input.b);
    let var_2 = select(global3[_wgslsmith_index_u32(var_1 >> (abs(~(~u_input.b)) % 32u), 15u)], global3[_wgslsmith_index_u32(u_input.b, 15u)], global3[_wgslsmith_index_u32(var_1, 15u)]);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1());
    global2 = array<f32, 16>();
    var var_1 = -8086i;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(u_input.b, 16u)]), vec3<f32>(121f, -1335f, global2[_wgslsmith_index_u32(1u, 16u)]))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(u_input.b, 16u)], 2564f), vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], -994f, global2[_wgslsmith_index_u32(12397u, 16u)]), vec3<bool>(true, true, false)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], -1630f, -954f)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(29484u, 16u)], 464f, 713f) - vec3<f32>(-1381f, global2[_wgslsmith_index_u32(0u, 16u)], -1201f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1926f, global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(1u, 16u)]) - vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(u_input.b, 16u)])) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(0u, 16u)], 1033f, -1311f) + vec3<f32>(-825f, -787f, -1765f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-131f, -1000f, global2[_wgslsmith_index_u32(u_input.b, 16u)]) - vec3<f32>(global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(u_input.b, 16u)], -522f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], -2466f, -144f))))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))))));
    var var_3 = Struct_1(vec2<i32>(_wgslsmith_add_i32(-17651i, i32(-1i) * -u_input.a), var_0.a.a.x));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-746f, global2[_wgslsmith_index_u32(59342u, 16u)]))))) * 685f);
    var var_5 = Struct_2(global4[_wgslsmith_index_u32(min(46796u, ~(1759u << (0u % 32u)) << (_wgslsmith_mult_u32(u_input.b, 4294967295u) % 32u)), 4u)]);
    var var_6 = Struct_3(func_1(), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -953f)) * _wgslsmith_f_op_f32(min(var_4, _wgslsmith_f_op_f32(-var_2.x)))), global2[_wgslsmith_index_u32(firstTrailingBit(~(~19902u)), 16u)])), u_input.b);
}

