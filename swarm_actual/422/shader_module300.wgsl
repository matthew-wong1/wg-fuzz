struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, false), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true), vec4<bool>(false, false, true, true)));

var<private> global1: vec3<f32> = vec3<f32>(-426f, 466f, 278f);

var<private> global2: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(1u, 2221u, 4328u, 1u), vec4<u32>(1u, 1u, 70054u, 0u), vec4<u32>(26611u, 28002u, 1u, 3480u), vec4<u32>(0u, 0u, 16882u, 1u), vec4<u32>(8713u, 36436u, 45606u, 0u), vec4<u32>(14386u, 1u, 0u, 105022u), vec4<u32>(41415u, 25798u, 0u, 4294967295u), vec4<u32>(79567u, 4294967295u, 4294967295u, 44530u), vec4<u32>(17903u, 1694u, 50171u, 4294967295u), vec4<u32>(0u, 49767u, 51250u, 46153u), vec4<u32>(69748u, 18395u, 0u, 4294967295u), vec4<u32>(14533u, 5670u, 4294967295u, 0u), vec4<u32>(45504u, 422u, 0u, 0u), vec4<u32>(0u, 3260u, 1u, 46144u), vec4<u32>(4527u, 1u, 56507u, 48810u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec4<u32>(49061u, 1u, 0u, 18543u), vec4<u32>(536u, 21407u, 65946u, 55274u), vec4<u32>(5016u, 0u, 8637u, 4294967295u), vec4<u32>(52101u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(10925u, 0u, 49385u, 0u));

var<private> global3: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false), vec4<bool>(true, false, true, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = u_input.c.zy;
    let var_1 = arg_3;
    var var_2 = Struct_5(vec3<u32>(_wgslsmith_dot_vec2_u32(countOneBits(u_input.c.yy), vec2<u32>(4294967295u, var_0.x)), max(var_0.x ^ var_0.x, 0u), _wgslsmith_sub_u32(u_input.c.x, 30623u) << (arg_1.b.x % 32u)) | arg_1.a.xzy, global3.a.x, arg_1.e, arg_1.a.x);
    return !(!vec3<bool>(any(select(var_1.b.c.yxz, var_1.c.c.wyx, global3.c.zww)), !any(var_2.c.a.c.a), arg_3.c.a.x));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global0 = array<Struct_1, 2>();
    let var_0 = Struct_2(-22500i, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(~(~(u_input.b | arg_0.x)), 2u)]);
    let var_1 = Struct_3(Struct_2(-2147483647i, Struct_1(func_3(Struct_2(-2147483647i, Struct_1(vec3<bool>(true, true, false), vec2<bool>(global3.a.x, global3.c.x), var_0.b.c), Struct_1(global3.c.xwz, vec2<bool>(false, true), vec4<bool>(global3.a.x, var_0.c.b.x, var_0.c.a.x, global3.a.x))), Struct_4(vec4<u32>(0u, 59268u, u_input.b, u_input.c.x), vec2<u32>(arg_0.x, u_input.b), var_0, Struct_1(global3.c.wzy, var_0.b.a.xx, vec4<bool>(true, true, true, var_0.c.a.x)), Struct_3(Struct_2(var_0.a, var_0.c, Struct_1(var_0.b.a, vec2<bool>(var_0.c.a.x, var_0.c.c.x), global3.c)), var_0.c.b.x, vec3<f32>(global1.x, global1.x, -1120f))), -50346i, Struct_2(u_input.a.x, var_0.b, Struct_1(vec3<bool>(false, false, false), global3.b, global3.c))), !(!var_0.b.b), vec4<bool>(all(var_0.b.c.xww), true, select(true, global3.c.x, true), all(var_0.b.c.wy))), global0[_wgslsmith_index_u32(~1u, 2u)]), global3.b.x, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))), global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)), -855f), global1.x));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(517f, 663f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global1.x, global1.x, var_0.c.b.x)), global1.x), var_1.c.yy)));
    global0 = array<Struct_1, 2>();
    return any(var_0.c.c.yyz);
}

fn func_1(arg_0: vec2<bool>) -> vec4<bool> {
    global3 = global0[_wgslsmith_index_u32(u_input.b, 2u)];
    let var_0 = ~vec2<u32>(select(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c.x, 1u), 45429u), 4294967295u, false), u_input.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(480f, -885f, _wgslsmith_f_op_f32(min(global1.x, 1123f))) * vec3<f32>(global1.x, global1.x, 2021f));
    var var_2 = func_2(u_input.c);
    var var_3 = ~0u;
    return !global3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(global3.a, !(!(!(!vec2<bool>(false, global3.a.x)))), global3.c);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 371f)));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(((u_input.c.x << (11436u % 32u)) | 1u) >> (_wgslsmith_mult_u32(abs(u_input.c.x), _wgslsmith_mod_u32(4294967295u, 9462u)) % 32u), u_input.b), u_input.c.x), 2u)];
    let var_1 = u_input.a.zx;
    var var_2 = func_1(global3.b);
    global3 = Struct_1(vec3<bool>(!(!(true && var_0.b.x)), !any(!var_2.yz), true), func_3(Struct_2(0i, Struct_1(global3.a, !vec2<bool>(global3.b.x, false), vec4<bool>(var_2.x, var_2.x, false, global3.b.x)), Struct_1(vec3<bool>(var_0.a.x, var_2.x, global3.b.x), func_3(Struct_2(var_1.x, Struct_1(var_2.wxz, vec2<bool>(false, var_2.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true)), Struct_1(var_0.c.wyw, vec2<bool>(var_0.a.x, true), var_0.c)), Struct_4(vec4<u32>(6026u, u_input.b, u_input.b, 4294967295u), vec2<u32>(0u, u_input.c.x), Struct_2(36378i, global0[_wgslsmith_index_u32(u_input.b, 2u)], Struct_1(var_0.c.wxy, global3.a.zx, global3.c)), Struct_1(vec3<bool>(var_0.a.x, false, true), var_0.c.wy, var_0.c), Struct_3(Struct_2(1i, Struct_1(var_2.xxx, vec2<bool>(false, true), var_0.c), Struct_1(global3.a, vec2<bool>(var_0.b.x, global3.b.x), global3.c)), false, vec3<f32>(global1.x, global1.x, global1.x))), -46363i, Struct_2(var_1.x, Struct_1(vec3<bool>(false, true, var_0.c.x), vec2<bool>(var_0.c.x, false), global3.c), global0[_wgslsmith_index_u32(12552u, 2u)])).zz, var_0.c)), Struct_4(global2[_wgslsmith_index_u32(u_input.c.x ^ u_input.b, 22u)], ~u_input.c.xy, Struct_2(~18012i, Struct_1(vec3<bool>(global3.c.x, var_2.x, true), vec2<bool>(var_2.x, true), vec4<bool>(false, global3.c.x, var_2.x, var_0.a.x)), global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), Struct_1(vec3<bool>(var_0.b.x, true, true), !var_2.wz, global3.c), Struct_3(Struct_2(-15451i, Struct_1(global3.a, vec2<bool>(var_0.c.x, var_0.a.x), vec4<bool>(false, global3.a.x, global3.b.x, var_0.b.x)), Struct_1(var_0.a, vec2<bool>(var_0.b.x, var_0.a.x), vec4<bool>(false, var_2.x, false, var_0.c.x))), true, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(172f, global1.x, -784f))))), _wgslsmith_clamp_i32(8354i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, -23260i, var_1.x) >> (global2[_wgslsmith_index_u32(0u, 22u)] % vec4<u32>(32u)), -vec4<i32>(1i, 1i, u_input.a.x, 2147483647i)), max(~u_input.a.x, -1i >> (u_input.b % 32u))), Struct_2(u_input.a.x, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)])).zy, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(global1.x)));
}

