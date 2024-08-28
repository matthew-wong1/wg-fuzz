struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(946f, 406f, -254f, 366f);

var<private> global1: vec2<u32>;

var<private> global2: array<i32, 2> = array<i32, 2>(10923i, 1i);

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-15480i, -15058i, -1i, -11045i));

var<private> global4: bool;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<bool> {
    var var_0 = 4294967295u;
    return vec2<bool>(all(vec2<bool>(all(vec4<bool>(false, false, false, true)), _wgslsmith_dot_vec3_i32(global3.a.wzy, global3.a.wyz) > global2[_wgslsmith_index_u32(20093u, 2u)])), global1.x < ~abs(u_input.a));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: f32, arg_3: vec2<f32>) -> vec2<u32> {
    let var_0 = !any(!select(func_3(), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true)));
    global0 = vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f + _wgslsmith_f_op_f32(ceil(-351f)))), -1144f);
    let var_1 = !select(!select(vec2<bool>(var_0, true), vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(var_0, var_0), select(vec2<bool>(false == var_0, true), !(!vec2<bool>(var_0, var_0)), (0u == global1.x) && false));
    global2 = array<i32, 2>();
    var var_2 = Struct_2(Struct_1(vec4<i32>(countOneBits(global3.a.x << (79920u % 32u)), u_input.c ^ abs(-22374i), global3.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 2u)], global3.a.x, arg_1.x, arg_1.x), vec4<i32>(1i, u_input.c, arg_1.x, 14721i)))), vec3<u32>(~abs(global1.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(global1.x, 0u)), ~vec2<u32>(1u, u_input.a)), select(~u_input.a, countOneBits(_wgslsmith_sub_u32(u_input.a, 4294967295u)), var_0)));
    return ~((~_wgslsmith_mult_vec2_u32(var_2.b.zz, var_2.b.yz) & ~firstLeadingBit(vec2<u32>(27675u, 4294967295u))) | vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(44451u, global1.x, global1.x, global1.x), vec4<u32>(4294967295u, var_2.b.x, u_input.a, 0u)) << (~4294967295u % 32u), 84841u));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = select(arg_0.xx, select(~func_2(vec2<i32>(u_input.c, global3.a.x), arg_2.a.a.wzx, 977f, vec2<f32>(global0.x, 114f)), arg_2.b.zy, select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), func_3().x)) | arg_2.b.zz, select(vec2<bool>(true, ~arg_2.b.x <= 36639u), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), false));
    global3 = arg_2.a;
    var_0 = func_2(arg_2.a.a.zx, global3.a.wzx, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1342f, -1000f)) - arg_1), -1108f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0.wx, vec2<f32>(_wgslsmith_f_op_f32(max(arg_1, 125f)), 1404f)))));
    return Struct_1(~(-select(reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(arg_0.x, 2u)], global2[_wgslsmith_index_u32(u_input.a, 2u)], -23621i, arg_2.a.a.x)), vec4<i32>(u_input.c, arg_2.a.a.x, 6874i, arg_2.a.a.x) ^ vec4<i32>(-12004i, 36428i, -1i, 40915i), vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = countOneBits(vec2<u32>(~u_input.a, 50018u));
    global2 = array<i32, 2>();
    var var_0 = ~(-vec4<i32>(0i, _wgslsmith_sub_i32(-1i, global2[_wgslsmith_index_u32(u_input.a, 2u)]) | min(global3.a.x, 670i), _wgslsmith_div_i32(countOneBits(global3.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global3.a.x, 0i, global2[_wgslsmith_index_u32(4294967295u, 2u)]), global3.a)), u_input.c));
    var var_1 = Struct_2(func_1(~vec3<u32>(1u, firstLeadingBit(73932u), abs(global1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), Struct_2(Struct_1(-global3.a), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(10205u, u_input.a, global1.x)), firstLeadingBit(vec3<u32>(4683u, 0u, global1.x))))), abs(vec3<u32>(_wgslsmith_mod_u32(~1u, 96011u), u_input.a, func_2(_wgslsmith_add_vec2_i32(global3.a.wy, vec2<i32>(var_0.x, var_0.x)), var_0.zzw, global0.x, _wgslsmith_f_op_vec2_f32(global0.ww - global0.zy)).x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.x)))));
    let var_3 = Struct_2(var_1.a, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(global3.a.x, var_0.x) >> (vec2<u32>(26991u, u_input.a) % vec2<u32>(32u))), vec2<i32>(-1i) * -vec2<i32>(2147483647i, var_1.a.a.x)), -21502i, global3.a.xx, global1.x);
}

