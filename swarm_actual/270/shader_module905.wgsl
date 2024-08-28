struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, true, true, true, false, false, false, false, true, false, false, false, true, false, true, false, true, true, false, true, true);

var<private> global1: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true));

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: vec2<u32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(!(!all(!global2.b)), vec4<bool>(false, global3.a, false, global2.b.x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(347f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1847f, -152f)), -4095f)), _wgslsmith_f_op_f32(floor(-881f))))));
    let var_2 = var_0;
    global2 = var_0;
    var var_3 = var_2;
    return all(select(select(var_3.b, select(vec4<bool>(global3.b.x, global2.a, false, false), vec4<bool>(true, true, true, var_2.b.x), select(var_2.b, vec4<bool>(global3.b.x, true, var_2.b.x, global2.a), arg_0.b.x)), var_3.b.x), var_2.b, true));
}

fn func_2(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = Struct_1(func_3(Struct_1(arg_1, vec4<bool>(false, true, true, false | global3.a))), vec4<bool>(((u_input.a | u_input.a) & -20156i) >= -u_input.a, global2.a, arg_0 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0))), !all(!global2.b)));
    let var_1 = select(vec3<bool>(!global2.b.x, !all(vec3<bool>(var_0.b.x, global2.b.x, arg_1)) || arg_1, global3.b.x), global2.b.wxx, vec3<bool>(true, !(false && !global2.b.x), true));
    let var_2 = var_0;
    var var_3 = ~(-u_input.a);
    global4 = _wgslsmith_div_vec2_u32(~(vec2<u32>(0u, countOneBits(4294967295u)) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(global4.x, 108271u), vec2<u32>(global4.x, 4294967295u)) % vec2<u32>(32u))), select(vec2<u32>(global4.x, 44225u), vec2<u32>(_wgslsmith_div_u32(firstLeadingBit(1u), global4.x), ~countOneBits(global4.x)), !global3.b.yx));
    return arg_0;
}

fn func_1() -> vec4<bool> {
    var var_0 = 2147483647i;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1891f))) * _wgslsmith_f_op_f32(f32(-1f) * -1188f)), _wgslsmith_f_op_f32(max(-791f, 1090f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1f, global3.a)))));
    var var_2 = Struct_1(!(1u <= select(25732u, global4.x, global2.a)) != global3.a, global3.b);
    var var_3 = false;
    let var_4 = abs(~(~select(countOneBits(vec3<u32>(global4.x, global4.x, global4.x)), vec3<u32>(24274u, 14510u, global4.x), global1[_wgslsmith_index_u32(0u, 26u)])));
    return select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_4.x & global4.x, 21u)], false), select(vec4<bool>(global3.a, global3.a, global2.a, true), !(!select(global2.b, global2.b, global3.a)), false), select(global2.b, select(select(select(global2.b, vec4<bool>(global3.a, false, false, var_2.a), vec4<bool>(global0[_wgslsmith_index_u32(global4.x, 21u)], global3.b.x, true, true)), vec4<bool>(false, false, global3.b.x, var_2.b.x), true), global3.b, global2.b), vec4<bool>(select(global4.x >= 0u, false, !var_2.b.x), any(vec2<bool>(false, true)), all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(global4.x, 21u)], false, var_2.a)), true)));
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    global1 = array<vec3<bool>, 26>();
    return Struct_1(false, vec4<bool>(false, false, all(!(!vec4<bool>(arg_0.x, false, arg_0.x, false))), countOneBits(u_input.a) < abs(firstTrailingBit(u_input.a))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    global4 = min(vec2<u32>(countOneBits(global4.x), 38492u), ~vec2<u32>(global4.x, global4.x));
    var var_0 = ~global4.x;
    var var_1 = arg_1;
    let var_2 = ~(-(~(-vec3<i32>(8421i, u_input.a, arg_0))) | (vec3<i32>(reverseBits(2950i), ~(-1345i), 13441i) | _wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0, 0i, arg_0), vec3<i32>(-1i, 47278i, -58206i))));
    let var_3 = select(global2.b, vec4<bool>(false, func_3(arg_2), false, any(vec3<bool>(var_1.a, !global3.a, true))), select(!func_3(arg_2), !arg_2.a, arg_1.a));
    return StorageBuffer(~(-30183i), vec2<u32>(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, global4.x), abs(vec4<u32>(global4.x, 1u, 26371u, global4.x)))), 24877u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(219f)) + _wgslsmith_f_op_f32(681f - 639f))), 468f, -188f), ~select(-(~vec4<i32>(-1i, var_2.x, 1i, arg_0)), firstLeadingBit(vec4<i32>(arg_0, 21164i, arg_0, -2147483647i)), func_4(select(vec4<bool>(false, global3.a, false, true), var_3, false)).b.x), firstTrailingBit(vec2<u32>(global4.x, global4.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -464f))) * 279f);
    var var_1 = Struct_1(any(select(global2.b, global3.b, select(!vec4<bool>(global0[_wgslsmith_index_u32(global4.x, 21u)], true, true, false), global3.b, select(vec4<bool>(global3.a, true, false, false), global2.b, global2.b.x)))), global3.b);
    global2 = Struct_1(true, !select(select(var_1.b, var_1.b, !global3.b), !vec4<bool>(false, var_1.a, true, global3.a), vec4<bool>(true, false, any(vec3<bool>(true, false, global3.a)), any(vec3<bool>(global3.b.x, global3.b.x, global2.b.x)))));
    global1 = array<vec3<bool>, 26>();
    let var_2 = true;
    let var_3 = vec2<u32>(~global4.x, global4.x);
    let var_4 = Struct_1((~(35289i | u_input.a) < (33925i << ((global4.x ^ 22855u) % 32u))) || !(!global3.b.x && true), var_1.b);
    let x = u_input.a;
    s_output = func_5(u_input.a, var_4, func_4(func_1()));
}

