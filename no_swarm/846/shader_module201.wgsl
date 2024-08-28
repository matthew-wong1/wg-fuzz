struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(Struct_4(814f), vec3<bool>(true, true, true)), Struct_5(Struct_4(-1069f), vec3<bool>(true, false, true)), Struct_5(Struct_4(-2189f), vec3<bool>(false, true, true)), Struct_5(Struct_4(-222f), vec3<bool>(true, true, false)));

var<private> global1: array<u32, 5> = array<u32, 5>(1u, 27527u, 4294967295u, 4294967295u, 2440u);

var<private> global2: array<vec4<u32>, 22>;

var<private> global3: array<bool, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> u32 {
    return _wgslsmith_div_u32(~41622u, 11410u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a.a, arg_1.a.a, global3[_wgslsmith_index_u32(arg_0.a.x, 21u)])) + -430f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1158f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(689f))))), arg_1.a.a, -779f), vec4<f32>(-551f, _wgslsmith_f_op_f32(-1f), 491f, arg_1.a.a), global3[_wgslsmith_index_u32(76183u ^ global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 21u)]));
    global1 = array<u32, 5>();
    var var_1 = true;
    var var_2 = Struct_3(arg_0, vec3<f32>(_wgslsmith_f_op_f32(1062f + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(arg_1.a.a * arg_1.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(292f + arg_1.a.a) + arg_1.a.a) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a.a))))), var_0.x);
    var_1 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(arg_0.a.wxx, var_2.a.a.zwz)), 21u)];
    return ~var_2.a.a.x;
}

fn func_1(arg_0: f32) -> vec4<u32> {
    let var_0 = !vec4<bool>(!(!global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60170u, 5u)], 5u)], 5u)], 5u)], 21u)]), select(all(vec3<bool>(true, false, true)), global3[_wgslsmith_index_u32(~72467u, 21u)], true), global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~31289u, 5u)], 21u)], !global3[_wgslsmith_index_u32(~func_2(Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(27524u, 5u)], 21885u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)]))), 21u)]);
    global1 = array<u32, 5>();
    global2 = array<vec4<u32>, 22>();
    var var_1 = Struct_1(~select(vec4<u32>(_wgslsmith_div_u32(56386u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28216u, 5u)], 5u)]), ~0u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 1u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42136u, 5u)], 5u)], 5u)], 5u)] >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)] % 32u), 5u)], global1[_wgslsmith_index_u32(0u, 5u)] & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49163u, 5u)], 5u)], global1[_wgslsmith_index_u32(func_3(Struct_1(vec4<u32>(3168u, global1[_wgslsmith_index_u32(17982u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], 2019u)), Struct_5(Struct_4(-550f), var_0.zyx)), 5u)], global1[_wgslsmith_index_u32(14337u, 5u)]), !(arg_0 < -726f)));
    let var_2 = 742f;
    return _wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, var_1.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 0u)), vec4<u32>(1u, global1[_wgslsmith_index_u32(~firstLeadingBit(global1[_wgslsmith_index_u32(var_1.a.x, 5u)]), 5u)], var_1.a.x, 18019u)) | vec4<u32>(_wgslsmith_div_u32(var_1.a.x | global1[_wgslsmith_index_u32(var_1.a.x, 5u)], global1[_wgslsmith_index_u32(func_3(Struct_1(vec4<u32>(81846u, global1[_wgslsmith_index_u32(12148u, 5u)], 4294967295u, 20369u)), global0[_wgslsmith_index_u32(25471u, 4u)]), 5u)]) & countOneBits(abs(49761u)), abs(1u) ^ func_3(Struct_1(vec4<u32>(1u, 39940u, var_1.a.x, global1[_wgslsmith_index_u32(var_1.a.x, 5u)])), Struct_5(Struct_4(-342f), vec3<bool>(var_0.x, false, false))), global1[_wgslsmith_index_u32(18601u, 5u)], _wgslsmith_div_u32(~1u, 85515u));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_4 {
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-3484i, _wgslsmith_dot_vec3_i32(u_input.a.yww, vec3<i32>(u_input.b.x, ~u_input.b.x, -u_input.a.x))), max(countOneBits(vec2<i32>(-7521i, u_input.c.x)), countOneBits(select(vec2<i32>(u_input.a.x, u_input.c.x), u_input.b.zx, vec2<bool>(false, false)))) & select(select(u_input.a.yz, u_input.c, true), vec2<i32>(u_input.a.x, max(-2147483647i, 35987i)), vec2<bool>(!arg_1, 1i == u_input.c.x)), u_input.a.zx);
    let var_1 = select(855u, arg_0.a.a.x, true);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1, reverseBits(~global1[_wgslsmith_index_u32(arg_0.a.a.x, 5u)])), 22u)];
    var var_3 = select(vec2<bool>(any(!vec4<bool>(false, arg_1, global3[_wgslsmith_index_u32(var_1, 21u)], arg_1)), !(countOneBits(59467u) <= _wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(var_1, 5u)]))), select(!(!select(vec2<bool>(true, arg_1), vec2<bool>(global3[_wgslsmith_index_u32(var_1, 21u)], global3[_wgslsmith_index_u32(0u, 21u)]), false)), !vec2<bool>(global3[_wgslsmith_index_u32(47881u, 21u)], any(vec3<bool>(arg_1, arg_1, global3[_wgslsmith_index_u32(35841u, 21u)]))), !vec2<bool>(select(true, arg_1, true), true)), false);
    var var_4 = Struct_2((var_0.x >> (~4294967295u % 32u)) >> (func_3(Struct_1(~global2[_wgslsmith_index_u32(arg_0.a.a.x, 22u)]), global0[_wgslsmith_index_u32(var_1, 4u)]) % 32u));
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -252f));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: f32, arg_3: u32) -> Struct_4 {
    var var_0 = Struct_3(Struct_1(global2[_wgslsmith_index_u32(func_2(Struct_1(min(global2[_wgslsmith_index_u32(arg_3, 22u)], vec4<u32>(arg_3, 59525u, arg_3, 1u)))), 22u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, _wgslsmith_div_f32(arg_2, 781f), arg_1.a), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, -455f, -280f), vec3<f32>(arg_1.a, arg_1.a, arg_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, -1000f) + vec3<f32>(837f, arg_2, -889f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-2275f)), arg_1.a, -636f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.a)), _wgslsmith_f_op_f32(exp2(arg_1.a))))));
    let var_1 = -1i;
    var var_2 = Struct_3(var_0.a, _wgslsmith_f_op_vec3_f32(var_0.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, arg_1.a, arg_2), var_0.b, vec3<bool>(arg_0, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(94433u, 5u)], 5u)], 21u)], arg_0))))))), -1014f);
    let var_3 = vec4<u32>(firstLeadingBit(firstTrailingBit(1u)), var_2.a.a.x, ~var_2.a.a.x, (1u << (abs(0u) % 32u)) & (0u ^ global1[_wgslsmith_index_u32(20837u, 5u)])) | select(global2[_wgslsmith_index_u32(var_2.a.a.x, 22u)], ~_wgslsmith_add_vec4_u32(~var_2.a.a, firstTrailingBit(global2[_wgslsmith_index_u32(3900u, 22u)])), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 21u)]);
    var var_4 = arg_1.a;
    return func_4(Struct_3(Struct_1(abs(abs(var_3))), var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2 * -349f), _wgslsmith_f_op_f32(2022f + 590f))))), any(!select(vec2<bool>(false, true), !vec2<bool>(global3[_wgslsmith_index_u32(var_2.a.a.x, 21u)], arg_0), vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 21u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = array<Struct_5, 4>();
    var var_1 = global0[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4449u, firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17859u, 5u)] >> (4294967295u % 32u), 5u)]) | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)]), 5u)], 5u)], 5u)]), 4u)];
    var var_2 = func_5(true, func_4(Struct_3(Struct_1(func_1(-1105f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-463f, var_1.a.a, -1971f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.a, var_1.a.a, 1355f), vec3<f32>(-619f, -544f, 260f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.a.a, -268f)), _wgslsmith_f_op_f32(-491f * var_1.a.a))), false), var_1.a.a, global1[_wgslsmith_index_u32(~1u, 5u)]);
    let var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.yy);
}

