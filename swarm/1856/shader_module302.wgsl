struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<i32, 29> = array<i32, 29>(2147483647i, 0i, 2147483647i, 0i, -15620i, i32(-2147483648), 2147483647i, 1i, 4374i, -23085i, 2147483647i, 1i, 20918i, 1i, 1i, -30531i, -16242i, -8078i, 2147483647i, 0i, -11097i, -2625i, -54101i, 68820i, 25107i, i32(-2147483648), 2147483647i, 2147483647i, 2147483647i);

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(51039u, vec2<u32>(27873u, 105507u), vec3<f32>(-386f, -329f, 1529f)), Struct_1(4294967295u, vec2<u32>(4294967295u, 1u), vec3<f32>(-1071f, -396f, 1570f)), Struct_1(23358u, vec2<u32>(1558u, 152508u), vec3<f32>(-391f, 1100f, 423f)), Struct_1(4294967295u, vec2<u32>(4294967295u, 44192u), vec3<f32>(1000f, -213f, 1771f)), Struct_1(4294967295u, vec2<u32>(0u, 0u), vec3<f32>(552f, -327f, -1129f)), Struct_1(21960u, vec2<u32>(4294967295u, 65349u), vec3<f32>(782f, 255f, -1327f)), Struct_1(4294967295u, vec2<u32>(0u, 4294967295u), vec3<f32>(437f, -971f, -233f)), Struct_1(4294967295u, vec2<u32>(75186u, 46855u), vec3<f32>(627f, 267f, 779f)), Struct_1(8288u, vec2<u32>(70475u, 15717u), vec3<f32>(1198f, 205f, -1000f)), Struct_1(4294967295u, vec2<u32>(111381u, 1u), vec3<f32>(-812f, 899f, 515f)), Struct_1(34867u, vec2<u32>(4294967295u, 89188u), vec3<f32>(1000f, 710f, 777f)), Struct_1(25828u, vec2<u32>(27810u, 4294967295u), vec3<f32>(-815f, -259f, -676f)));

var<private> global3: Struct_1 = Struct_1(4294967295u, vec2<u32>(8950u, 4294967295u), vec3<f32>(1000f, -182f, -317f));

var<private> global4: array<f32, 23> = array<f32, 23>(498f, 1227f, -531f, -847f, -543f, -258f, 287f, -935f, 804f, 1515f, -708f, 1000f, -1443f, 921f, 312f, -1869f, -566f, 1150f, -178f, 1397f, 1554f, 977f, -206f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    global4 = array<f32, 23>();
    var var_0 = u_input.c;
    var var_1 = global2[_wgslsmith_index_u32(global3.b.x, 12u)];
    global3 = global2[_wgslsmith_index_u32(4294967295u, 12u)];
    var var_2 = global2[_wgslsmith_index_u32(u_input.c, 12u)];
    return global2[_wgslsmith_index_u32(firstLeadingBit(var_2.b.x), 12u)];
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global0 = arg_0.a;
    global3 = arg_0;
    let var_0 = func_2();
    var var_1 = abs(0u) << (_wgslsmith_sub_u32(arg_0.b.x & func_2().b.x, 39401u) % 32u);
    global1 = array<i32, 29>();
    return ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~arg_0.b.x, u_input.c, 1u, abs(36363u)), ~(~vec4<u32>(arg_0.b.x, 0u, 4294967295u, u_input.c))), firstTrailingBit(vec4<u32>(~0u, global3.a, ~var_0.b.x, ~0u)), ~((vec4<u32>(1u, 0u, arg_0.b.x, u_input.c) ^ vec4<u32>(var_0.b.x, 4294967295u, 0u, u_input.c)) | (vec4<u32>(11128u, var_0.b.x, var_0.b.x, var_0.a) | vec4<u32>(1u, u_input.c, var_0.a, u_input.c))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec2<bool>) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(0u, 12u)];
    var var_1 = func_2();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1257f)), _wgslsmith_f_op_f32(1048f - -2974f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(16265u, 23u)])) + _wgslsmith_f_op_f32(min(-445f, -728f))), all(!vec2<bool>(arg_2.x, false))))), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(func_3(Struct_1(var_0.a, vec2<u32>(u_input.c, global3.b.x), vec3<f32>(333f, var_1.c.x, var_1.c.x))), vec4<u32>(var_0.a, ~74200u, firstTrailingBit(var_0.a), 1u)), 23u)]);
    var var_3 = firstTrailingBit(u_input.b);
    var var_4 = select(vec3<bool>(arg_1.x, true, global1[_wgslsmith_index_u32(u_input.c, 29u)] >= firstLeadingBit(_wgslsmith_mod_i32(2147483647i, global1[_wgslsmith_index_u32(var_0.b.x, 29u)]))), select(arg_1, select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_2.x, false), select(arg_1, arg_1, vec3<bool>(true, false, true)), true), select(false, arg_2.x, false) & arg_2.x), arg_1), true);
    return !all(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global3.c - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(613f - -921f) - global4[_wgslsmith_index_u32(~48966u, 23u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(u_input.c, 23u)])))), -449f))));
    var var_1 = vec4<bool>(!(_wgslsmith_mult_i32(u_input.b.x >> (global3.a % 32u), 1i) <= 58354i), all(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false)), vec2<bool>(true, true), true && (u_input.c <= global3.a))), true, !func_1(vec2<u32>(~0u, min(global3.b.x, u_input.c)), vec3<bool>(true, true, true), vec2<bool>(true, true)));
    var var_2 = Struct_1(1u, global3.b, _wgslsmith_f_op_vec3_f32(-var_0));
    let var_3 = Struct_1(u_input.c, reverseBits(~_wgslsmith_add_vec2_u32(vec2<u32>(var_2.a, var_2.a), vec2<u32>(var_2.a, 13483u) >> (global3.b % vec2<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 23u)] - global3.c.x)))), _wgslsmith_f_op_f32(trunc(-136f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -572f))))));
    let var_4 = var_1.wx;
    let x = u_input.a;
    s_output = StorageBuffer(40996i, reverseBits(~(~(~vec4<u32>(u_input.c, 0u, global3.a, 0u)))));
}

