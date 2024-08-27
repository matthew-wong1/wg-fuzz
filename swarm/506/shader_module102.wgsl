struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1>;

var<private> global1: array<i32, 6> = array<i32, 6>(10302i, 1i, -1i, -1i, 55513i, -15656i);

var<private> global2: array<vec4<u32>, 2>;

var<private> global3: array<u32, 17> = array<u32, 17>(10400u, 4294967295u, 33892u, 37427u, 16879u, 0u, 0u, 31535u, 32129u, 4294967295u, 4294967295u, 0u, 7783u, 31416u, 92028u, 1u, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> vec2<bool> {
    global3 = array<u32, 17>();
    var var_0 = -2147483647i;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2390f)) * 1059f), 2409f);
    var_0 = _wgslsmith_add_i32(~(-1i), reverseBits(-(~arg_0)));
    global0 = array<vec2<i32>, 1>();
    return vec2<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec2<bool>(false, false))), vec2<bool>(any(vec3<bool>(true, false, false)), true), !any(vec2<bool>(false, false)))), all(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false))), vec4<bool>(true, false, all(vec4<bool>(false, false, false, true)), true), vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> bool {
    global1 = array<i32, 6>();
    var var_0 = select(vec2<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), any(vec3<bool>(false, true, false)))), true), !select(vec2<bool>(true, true), func_3(-u_input.a, vec3<f32>(128f, 411f, 1171f)), func_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 11455u), 6u)], _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1424f, 1134f, -694f), vec3<f32>(364f, 356f, -1198f), false))).x), true);
    let var_1 = Struct_2(_wgslsmith_add_u32(103145u, abs(global3[_wgslsmith_index_u32(9441u, 17u)])), vec2<bool>(true, !var_0.x));
    let var_2 = -1000f;
    var var_3 = var_1;
    return var_3.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = !(global3[_wgslsmith_index_u32(1u, 17u)] == _wgslsmith_dot_vec3_u32(max(max(vec3<u32>(75813u, 27939u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(110470u, 17u)], 17u)]), arg_0.a), ~vec3<u32>(global3[_wgslsmith_index_u32(25487u, 17u)], 12627u, 0u)), vec3<u32>(0u, 1u, global3[_wgslsmith_index_u32(4294967295u, 17u)]) << (vec3<u32>(0u, global3[_wgslsmith_index_u32(4294967295u, 17u)], 51239u) % vec3<u32>(32u))));
    var_0 = !any(vec3<bool>(select(true, true, true), select(true, true, func_2(4294967295u, vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], 0i, -52380i))), all(vec4<bool>(true, true, true, true))));
    var var_1 = ~_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 17u)], 1u)], vec2<i32>(firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(~8476u, 6u)], 1i)));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(241f - _wgslsmith_div_f32(-1336f, _wgslsmith_f_op_f32(f32(-1f) * -851f))))));
    var_1 = ~(~957i);
    return max(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.a.x, _wgslsmith_mod_u32(1u, 4294967295u)), 17u)], 17u)], arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 2>();
    global2 = array<vec4<u32>, 2>();
    var var_0 = vec3<bool>(true, true, true);
    global3 = array<u32, 17>();
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 15409u, 24852u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20990u, 17u)], 17u)]), ~global2[_wgslsmith_index_u32(99846u, 2u)]), 0u, 2589u), firstLeadingBit(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_1(Struct_1(vec3<u32>(1u, 27658u, global3[_wgslsmith_index_u32(0u, 17u)])), 2147483647i) & select(_wgslsmith_add_u32(13920u, 19715u), 39699u, var_0.x), 17u)], 2u)]));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1575f, -1429f, 1190f, -760f))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(344f, -120f, 909f, 487f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(652f, 605f, -348f, -418f), vec4<f32>(-277f, -219f, -652f, 710f)))), vec4<f32>(1f, -916f, _wgslsmith_div_f32(1208f, -219f), -322f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(419f, 2126f, 381f, 899f) * vec4<f32>(329f, 107f, -603f, -1558f))), vec4<f32>(-1382f, -964f, _wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(f32(-1f) * -718f)))))));
    let var_3 = vec2<bool>(false, all(!vec4<bool>(true, true, var_0.x, global1[_wgslsmith_index_u32(104265u, 6u)] < global1[_wgslsmith_index_u32(4294967295u, 6u)])));
    var_1 = abs(vec4<u32>(~var_1.x ^ 1u, global3[_wgslsmith_index_u32(var_1.x, 17u)], ~15446u >> (global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 4294967295u), 17u)] % 32u), global3[_wgslsmith_index_u32(min(1u, func_1(Struct_1(vec3<u32>(global3[_wgslsmith_index_u32(0u, 17u)], var_1.x, var_1.x)), -1i)), 17u)]) | _wgslsmith_clamp_vec4_u32(~reverseBits(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50441u, 17u)], 17u)], 17u)], 2u)]), global2[_wgslsmith_index_u32(var_1.x, 2u)], ~_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(0u, 17u)], global3[_wgslsmith_index_u32(8342u, 17u)], var_1.x, 16583u), global2[_wgslsmith_index_u32(var_1.x, 2u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1192f))), 834f, vec2<f32>(_wgslsmith_f_op_f32(step(-862f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f)))), var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 826f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) + _wgslsmith_f_op_f32(trunc(566f))))), _wgslsmith_f_op_f32(round(var_2.x)));
}

