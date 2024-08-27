struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(16080i), Struct_3(-43786i), Struct_3(385i), Struct_3(67299i), Struct_3(-59708i), Struct_3(2147483647i), Struct_3(-26662i));

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec3<i32>(1i, i32(-2147483648), -8325i), false, 2294f), vec2<u32>(1018u, 4294967295u), -1i), i32(-2147483648), 20281u), Struct_4(Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<i32>(-566i, 2147483647i, 2147483647i), false, 403f), vec2<u32>(16266u, 4294967295u), -1i), 29625i, 0u), Struct_4(Struct_2(Struct_1(vec3<u32>(91909u, 1u, 0u), vec3<i32>(55745i, 43206i, 1i), true, -2394f), vec2<u32>(93992u, 13812u), 1i), 16823i, 82192u), Struct_4(Struct_2(Struct_1(vec3<u32>(75455u, 62508u, 1u), vec3<i32>(2147483647i, 2147483647i, 2147483647i), true, 178f), vec2<u32>(1u, 0u), 1i), 0i, 8418u), Struct_4(Struct_2(Struct_1(vec3<u32>(0u, 0u, 14116u), vec3<i32>(2147483647i, -1i, 1i), true, -523f), vec2<u32>(87619u, 4294967295u), 1i), -2897i, 0u), Struct_4(Struct_2(Struct_1(vec3<u32>(25974u, 23995u, 33560u), vec3<i32>(67171i, 22062i, i32(-2147483648)), true, -824f), vec2<u32>(0u, 4294967295u), i32(-2147483648)), -84892i, 62442u), Struct_4(Struct_2(Struct_1(vec3<u32>(18918u, 1u, 46647u), vec3<i32>(-39513i, 60622i, -1i), false, -602f), vec2<u32>(4294967295u, 32435u), -1i), 1i, 76317u), Struct_4(Struct_2(Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec3<i32>(0i, -9497i, 1i), true, -988f), vec2<u32>(1u, 23998u), -32456i), -2783i, 4294967295u), Struct_4(Struct_2(Struct_1(vec3<u32>(94063u, 3484u, 1u), vec3<i32>(1i, 13444i, 1i), true, -138f), vec2<u32>(0u, 1920u), -1710i), i32(-2147483648), 29479u));

var<private> global2: Struct_1 = Struct_1(vec3<u32>(1u, 19549u, 0u), vec3<i32>(0i, -20135i, 61324i), false, 643f);

var<private> global3: Struct_5 = Struct_5(vec4<u32>(1u, 4294967295u, 0u, 38256u));

var<private> global4: array<i32, 31>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<bool>) -> bool {
    var var_0 = ~vec3<u32>(global2.a.x, 24107u, ~global3.a.x);
    let var_1 = global3.a.yz;
    var var_2 = global3.a.x;
    var_0 = vec3<u32>(_wgslsmith_add_u32(0u, global3.a.x), ~(~max(global2.a.x, 1u)), ~var_0.x) << (reverseBits(~vec3<u32>(_wgslsmith_add_u32(0u, 0u), 10648u & var_1.x, arg_0.c)) % vec3<u32>(32u));
    var var_3 = -arg_0.a.a.b.zz;
    return !select(arg_2.x, true, arg_2.x);
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<bool>(true, any(vec3<bool>(any(vec4<bool>(global2.c, true, global2.c, global2.c)), global2.c, !global2.c)), true, false);
    var var_1 = global4[_wgslsmith_index_u32(96696u, 31u)] | _wgslsmith_sub_i32(-41148i, 1i);
    global1 = array<Struct_4, 9>();
    var_0 = vec4<bool>(var_0.x, true, false, var_0.x);
    let var_2 = u_input.c;
    return Struct_1(vec3<u32>(19468u | select(reverseBits(19198u), ~1u, any(vec4<bool>(false, true, true, global2.c))), global2.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.x, 13177u), global3.a.zz | global3.a.xx) >> (countOneBits(global2.a.x << (0u % 32u)) % 32u)), global2.b, global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.d - _wgslsmith_f_op_f32(step(926f, global2.d)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 7>();
    let var_0 = countOneBits(countOneBits(u_input.c));
    var var_1 = all(!vec4<bool>(global2.c, global2.c, global4[_wgslsmith_index_u32(55511u, 31u)] > global2.b.x, global2.c)) || any(vec2<bool>(!any(vec4<bool>(global2.c, global2.c, true, global2.c)), any(vec2<bool>(true, true))));
    var_1 = all(select(!select(!vec4<bool>(false, global2.c, false, global2.c), vec4<bool>(global2.c, false, true, global2.c), vec4<bool>(global2.c, global2.c, true, global2.c)), !(!(!vec4<bool>(false, global2.c, global2.c, global2.c))), vec4<bool>(false, ~global2.a.x <= global3.a.x, func_1(Struct_4(Struct_2(Struct_1(vec3<u32>(global3.a.x, 59727u, global3.a.x), vec3<i32>(var_0, -10127i, 0i), global2.c, global2.d), global3.a.xx, 70172i), -3690i, 43714u), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.a.x, global3.a.x), 7u)], !vec3<bool>(global2.c, global2.c, true)), true)));
    global1 = array<Struct_4, 9>();
    let var_2 = func_2();
    var var_3 = global2.c;
    global4 = array<i32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1173f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1290f), var_2.d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1901f, var_2.d))), _wgslsmith_f_op_f32(select(-1733f, global2.d, global2.c != false))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d))), func_2().d, 1722f, _wgslsmith_f_op_f32(func_2().d + 412f)), _wgslsmith_add_vec2_u32(global3.a.wz, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, 1u), _wgslsmith_add_u32(56221u, 1u)), var_2.a.yx)));
}

