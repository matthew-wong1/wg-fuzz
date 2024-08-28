struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_4;

var<private> global2: array<u32, 32> = array<u32, 32>(1u, 14087u, 4294967295u, 0u, 1u, 1u, 1u, 4294967295u, 4294967295u, 23603u, 0u, 34942u, 0u, 1u, 1u, 4294967295u, 20907u, 1u, 4294967295u, 0u, 4294967295u, 3922u, 0u, 12339u, 19730u, 1u, 0u, 0u, 32711u, 49079u, 1u, 11686u);

var<private> global3: Struct_4 = Struct_4(Struct_1(vec3<f32>(-1904f, 434f, -1384f)), vec4<f32>(-414f, 427f, 412f, 728f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global1.a.a), global1.a.a)));
    let var_1 = global0.xyw;
    let var_2 = _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(5828i, 19436i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, 67894i, u_input.b.x, u_input.a.x), vec4<bool>(false, arg_0.x, arg_0.x, true)), vec4<i32>(u_input.a.x, -1i, -2147483647i, u_input.b.x)) & 1i, u_input.a.x);
    let var_3 = Struct_3(reverseBits(_wgslsmith_clamp_vec4_i32(-max(vec4<i32>(u_input.b.x, 297i, u_input.a.x, var_2), vec4<i32>(30864i, var_2, 13052i, 2147483647i)), ~countOneBits(vec4<i32>(-1i, var_2, u_input.b.x, u_input.a.x)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, 24902i, 0i), vec4<i32>(-1i, 4031i, -1i, u_input.a.x)), ~vec4<i32>(2147483647i, -2147483647i, u_input.a.x, -13767i)))), Struct_2(vec2<i32>(var_2, _wgslsmith_mod_i32(select(46157i, var_2, false), var_2)), arg_0, abs(countOneBits(min(global0.wz, global0.yz))), firstTrailingBit(~u_input.c)), vec2<i32>(min(u_input.b.x ^ var_2, ~14316i), firstLeadingBit(u_input.a.x)) | (max(u_input.b, _wgslsmith_sub_vec2_i32(u_input.a, u_input.b)) & u_input.a), global3.a);
    var var_4 = max(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(var_3.b.c.x, 4294967295u, var_1.x)), global0.www), ~global0.zyw);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(1810f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(-290f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1195f, global1.b.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(global3.b.x * _wgslsmith_f_op_f32(f32(-1f) * -604f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.x)))));
}

fn func_2() -> bool {
    var var_0 = global1.b.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(!(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(true, true)))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1256f - _wgslsmith_f_op_f32(trunc(370f)))) + global1.a.a.x), global1.a.a.x);
    return true;
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-641f, global3.b.x, -908f) + global3.b.wyx)), global3.b);
    let var_1 = global1.a;
    var var_2 = vec4<bool>(!(!(global3.a.a.x == _wgslsmith_f_op_f32(min(global1.b.x, global1.a.a.x)))), true & (_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, -33111i, u_input.a.x, u_input.b.x), vec4<i32>(-37993i, u_input.a.x, -1i, u_input.a.x)) <= u_input.a.x), func_2(), any(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(false, true, true))));
    global2 = array<u32, 32>();
    var_2 = vec4<bool>(any(vec4<bool>(var_1.a.x < _wgslsmith_f_op_f32(max(var_1.a.x, global1.a.a.x)), true, any(select(vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(true, true, var_2.x, true), false)), true)), var_2.x, var_2.x, !all(!vec4<bool>(var_2.x, false, var_2.x, var_2.x)));
    return _wgslsmith_f_op_vec3_f32(sign(global1.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(377f, 1000f, global1.a.a.x)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_1()), global1.a.a)))), global3.b);
    global3 = Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(global3.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1617f)), global3.b.x, global1.b.x)), global3.b);
    global1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(global3.a.a))))), _wgslsmith_f_op_vec4_f32(ceil(global3.b)));
    global1 = Struct_4(global3.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -204f), global1.a.a.x, _wgslsmith_f_op_f32(-global1.a.a.x), _wgslsmith_div_f32(-1199f, _wgslsmith_f_op_f32(global1.b.x * -953f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, -562f, _wgslsmith_f_op_f32(floor(1192f)), _wgslsmith_f_op_f32(-global3.a.a.x)))));
    let var_0 = ~(~((reverseBits(vec3<i32>(-10495i, u_input.a.x, 0i)) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.a.x, 49856i))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, global0.x, u_input.c), global0.zzx ^ global0.wxy) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_mod_i32(var_0.x, -20461i) & var_0.x), 1i);
    var var_2 = -850f;
    var var_3 = ~vec3<u32>(1u, 1u, ~global0.x);
    global1 = Struct_4(global1.a, global3.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(~1i, var_0.x)), 2147483647i, _wgslsmith_dot_vec2_u32(~(~(global0.zz & vec2<u32>(14980u, 1u))), ~(~vec2<u32>(global2[_wgslsmith_index_u32(6164u, 32u)], 0u))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, global1.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(497f, -1839f) * global3.b.wx), global1.a.a.x <= -407f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.b.yx - global3.b.xx) - _wgslsmith_f_op_vec2_f32(max(global1.b.xx, global3.a.a.zz))))))));
}

