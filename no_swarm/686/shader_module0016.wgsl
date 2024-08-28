struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
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

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<u32>(9732u, 34006u, 48008u, 15919u), false, -492f, 547f), Struct_1(vec4<u32>(0u, 56480u, 33360u, 4294967295u), true, 1000f, -1028f), Struct_1(vec4<u32>(52632u, 0u, 44092u, 1u), true, 382f, -1900f), Struct_1(vec4<u32>(23113u, 47027u, 0u, 1u), true, 554f, 831f), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), true, -297f, -623f), Struct_1(vec4<u32>(4294967295u, 1u, 10083u, 65289u), true, -448f, -590f), Struct_1(vec4<u32>(4649u, 1u, 23299u, 70361u), false, 1913f, -859f), Struct_1(vec4<u32>(0u, 24225u, 10347u, 27275u), false, -164f, 752f), Struct_1(vec4<u32>(18568u, 1u, 0u, 0u), false, 1354f, -181f), Struct_1(vec4<u32>(1u, 28930u, 1u, 1u), false, -1221f, 854f), Struct_1(vec4<u32>(0u, 1u, 1u, 0u), true, -787f, 736f), Struct_1(vec4<u32>(110087u, 34574u, 1u, 17140u), true, 196f, -2024f), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 10621u), true, 1543f, 2201f), Struct_1(vec4<u32>(1u, 1u, 1u, 31736u), true, 268f, 2422f), Struct_1(vec4<u32>(29333u, 0u, 3720u, 1u), false, -135f, -368f), Struct_1(vec4<u32>(1u, 1u, 1879u, 0u), true, -380f, -2376f), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 0u), true, -660f, -398f), Struct_1(vec4<u32>(5312u, 0u, 20408u, 4294967295u), true, -617f, -852f), Struct_1(vec4<u32>(4294967295u, 527u, 4294967295u, 25481u), false, -1701f, 1000f), Struct_1(vec4<u32>(22159u, 0u, 1u, 1u), false, -612f, -869f), Struct_1(vec4<u32>(4294967295u, 64307u, 4294967295u, 1u), true, -1000f, -379f), Struct_1(vec4<u32>(1u, 4294967295u, 61408u, 22400u), true, -968f, -1000f), Struct_1(vec4<u32>(4294967295u, 57585u, 1u, 0u), true, -1000f, -735f), Struct_1(vec4<u32>(0u, 0u, 0u, 36703u), true, -402f, 809f), Struct_1(vec4<u32>(9539u, 6840u, 41925u, 57412u), true, -1000f, -227f), Struct_1(vec4<u32>(11669u, 1u, 19130u, 1u), false, -620f, 655f), Struct_1(vec4<u32>(0u, 37809u, 41420u, 1u), true, -163f, 1000f), Struct_1(vec4<u32>(4294967295u, 14621u, 4294967295u, 72944u), false, -595f, -1630f), Struct_1(vec4<u32>(45198u, 4294967295u, 7753u, 43430u), false, 207f, 1704f), Struct_1(vec4<u32>(0u, 7527u, 37467u, 0u), true, 1616f, -1960f), Struct_1(vec4<u32>(0u, 1u, 0u, 0u), true, 267f, 516f), Struct_1(vec4<u32>(9098u, 1u, 0u, 4294967295u), false, 335f, -1215f));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<u32>(34218u, 4294967295u, 4294967295u, 0u), false, -1746f, -1055f), 1i, vec2<u32>(1u, 29526u), vec3<bool>(false, true, true));

var<private> global2: vec4<f32>;

var<private> global3: array<f32, 13>;

var<private> global4: u32 = 34366u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: bool) -> f32 {
    return _wgslsmith_f_op_f32(-global2.x);
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = vec3<bool>(false, !global1.d.x, global1.a.b != !arg_0.a.b);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(global1.a.c, (all(var_0) && (var_0.x && var_0.x)) | false))));
    var var_2 = 0u;
    let var_3 = Struct_1(countOneBits(~arg_0.a.a), !(!(!global1.d.x) || true), _wgslsmith_f_op_f32(f32(-1f) * -330f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1334f * global2.x) * _wgslsmith_f_op_f32(-1227f - global1.a.c))));
    var var_4 = global2.yyy;
    return ~(~1u);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: u32, arg_3: i32) -> bool {
    global0 = array<Struct_1, 32>();
    global1 = Struct_2(global0[_wgslsmith_index_u32(49941u ^ ~_wgslsmith_dot_vec4_u32(arg_0, firstTrailingBit(global1.a.a)), 32u)], max(u_input.a.x, _wgslsmith_sub_i32(countOneBits(global1.b), 1i)) ^ -10354i, ~global1.a.a.wz, vec3<bool>(true, false, select(countOneBits(u_input.a.x) < global1.b, global1.d.x, true)));
    global3 = array<f32, 13>();
    global2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a.c, global3[_wgslsmith_index_u32(arg_0.x, 13u)], global2.x, global2.x)))))));
    let var_0 = arg_0.wz;
    return !all(!select(!global1.d, vec3<bool>(global1.a.b, true, false), !global1.d));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> i32 {
    global3 = array<f32, 13>();
    global0 = array<Struct_1, 32>();
    var var_0 = all(vec3<bool>(!all(!vec4<bool>(false, true, true, arg_0.a.b)), !any(vec4<bool>(global1.d.x, true, arg_0.a.b, true)) | any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, global1.a.b, arg_0.d.x, false), true)), select(true, arg_0.a.b, all(vec4<bool>(true, arg_0.a.b, true, global1.a.b)))));
    let var_1 = Struct_1(global1.a.a, global1.a.b, _wgslsmith_f_op_f32(-global1.a.c), global3[_wgslsmith_index_u32(~global1.a.a.x, 13u)]);
    var var_2 = arg_0;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 13>();
    let var_0 = _wgslsmith_clamp_u32(~27093u >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(global1.c) ^ global1.a.a.zw, global1.c) % 32u), select(47945u, ~(global1.a.a.x | 1u), !(!global1.a.b)) | abs(func_1(Struct_2(Struct_1(global1.a.a, global1.d.x, -1620f, -1530f), global1.b, vec2<u32>(0u, global1.c.x), global1.d))), 0u);
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 13u)] - _wgslsmith_f_op_f32(-1167f * global1.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - 605f) * -1115f)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, global2.x, 1311f, 424f), vec4<f32>(global1.a.d, global3[_wgslsmith_index_u32(global1.c.x, 13u)], global1.a.d, -1000f))) - vec4<f32>(-1035f, 760f, 2563f, 1000f)))))));
    var var_4 = Struct_2(global1.a, max(func_4(Struct_2(Struct_1(vec4<u32>(58999u, global1.a.a.x, 58564u, global1.c.x), global1.a.b, -1831f, 993f), 908i, vec2<u32>(52297u, 17789u), !vec3<bool>(false, global1.a.b, false)), _wgslsmith_f_op_f32(select(-943f, 1625f, func_3(global1.a.a, var_2.x, global1.a.a.x, 1i)))), _wgslsmith_dot_vec2_i32(-u_input.a, reverseBits(vec2<i32>(2147483647i, var_1))) & 1i), vec2<u32>(~(~countOneBits(global1.a.a.x)), _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.x, 7692u), ~vec2<u32>(global1.a.a.x, var_0)))), global1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a.c), 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(~global1.c.x, 13u)], _wgslsmith_f_op_f32(-var_3.x))))))), -17240i, 4294967295u, var_3.zz);
}

