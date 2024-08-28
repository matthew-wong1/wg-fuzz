struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<bool>(false, false), false, vec3<u32>(0u, 56253u, 39803u)), Struct_1(vec2<bool>(true, true), true, vec3<u32>(32565u, 0u, 4294967295u)), Struct_1(vec2<bool>(true, false), true, vec3<u32>(1u, 4294967295u, 74780u)), Struct_1(vec2<bool>(true, false), false, vec3<u32>(6521u, 4294967295u, 23571u)), Struct_1(vec2<bool>(false, true), false, vec3<u32>(32891u, 85315u, 18477u)), Struct_1(vec2<bool>(false, false), false, vec3<u32>(71819u, 1u, 0u)), Struct_1(vec2<bool>(true, false), true, vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec2<bool>(true, false), true, vec3<u32>(0u, 1u, 0u)), Struct_1(vec2<bool>(false, false), false, vec3<u32>(0u, 1874u, 4294967295u)), Struct_1(vec2<bool>(false, true), false, vec3<u32>(1u, 4294967295u, 42435u)), Struct_1(vec2<bool>(false, false), true, vec3<u32>(3648u, 4294967295u, 0u)), Struct_1(vec2<bool>(false, true), false, vec3<u32>(1u, 24330u, 0u)), Struct_1(vec2<bool>(true, true), true, vec3<u32>(65424u, 0u, 4294967295u)), Struct_1(vec2<bool>(false, false), true, vec3<u32>(9u, 36057u, 4294967295u)), Struct_1(vec2<bool>(true, false), false, vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(vec2<bool>(false, true), true, vec3<u32>(67139u, 16257u, 99928u)), Struct_1(vec2<bool>(false, true), true, vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec2<bool>(false, false), true, vec3<u32>(29857u, 1u, 787u)), Struct_1(vec2<bool>(false, true), true, vec3<u32>(4294967295u, 44102u, 4294967295u)), Struct_1(vec2<bool>(true, true), true, vec3<u32>(1679u, 1u, 47583u)), Struct_1(vec2<bool>(true, false), true, vec3<u32>(116676u, 12552u, 0u)));

var<private> global1: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.c.x, arg_0.e, -445f, global1.x))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.c.x, 1484f, global1.x, -654f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.e, -515f, global1.x, arg_0.e))))), !vec4<bool>(arg_0.a, any(vec3<bool>(false, true, arg_1.b)), true, arg_1.c.x < 29586u))));
    let var_1 = Struct_3(all(select(!select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_1.b, false), arg_0.d.x), !arg_1.a, any(!arg_2))), -firstLeadingBit(arg_0.b), _wgslsmith_f_op_vec2_f32(var_0.zx - arg_0.c), vec2<bool>(arg_0.d.x, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 2464f) - _wgslsmith_f_op_f32(select(arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(825f, -1562f)), !any(arg_2)))));
    var var_2 = Struct_4(vec3<i32>(-23773i, _wgslsmith_div_i32(var_1.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a.xzy, vec3<i32>(1i, arg_0.b.x, arg_0.b.x)), var_1.b.x)), _wgslsmith_div_i32(~min(-1i, 0i), -select(var_1.b.x, var_1.b.x, arg_0.d.x))), ~firstTrailingBit(~abs(vec4<u32>(9081u, 4294967295u, 1u, 58306u))), arg_1.c.xz, arg_1, true);
    return var_2.a.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: bool, arg_3: Struct_3) -> i32 {
    global0 = array<Struct_1, 21>();
    var var_0 = arg_0.x;
    var var_1 = Struct_2(-9329i);
    var_1 = Struct_2(u_input.b.x ^ _wgslsmith_add_i32(~reverseBits(1i), -1i));
    var var_2 = ~arg_1;
    return 7271i;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_2(_wgslsmith_add_i32(14807i, func_4(vec3<i32>(func_3(Struct_3(arg_1, vec2<i32>(u_input.b.x, 3725i), vec2<f32>(-915f, global1.x), vec2<bool>(arg_1, arg_2), arg_0), Struct_1(vec2<bool>(true, arg_2), arg_2, vec3<u32>(28051u, 38025u, 0u)), vec3<bool>(true, arg_2, false)), ~u_input.b.x, _wgslsmith_div_i32(0i, u_input.b.x)), 4294967295u, arg_2, Struct_3(861f >= global1.x, _wgslsmith_add_vec2_i32(u_input.b, u_input.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), !vec2<bool>(true, arg_1), _wgslsmith_f_op_f32(-888f * global1.x)))));
    var var_1 = 263f;
    var var_2 = vec4<u32>(1u, 1u, 1u, 1u);
    var var_3 = var_0.a;
    return Struct_4(firstLeadingBit(~countOneBits(vec3<i32>(var_0.a, var_0.a, 1264i))), vec4<u32>(31978u >> (~(~var_2.x) % 32u), 67102u, var_2.x, _wgslsmith_dot_vec2_u32(var_2.ww, var_2.xx)), ~vec2<u32>(19343u, 3068u), global0[_wgslsmith_index_u32(~var_2.x, 21u)], true);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = arg_2.d;
    var var_1 = !(!(!(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))));
    let var_2 = func_2(-870f, !all(vec2<bool>(true, all(var_1.xzx))), u_input.d.x >= ~arg_2.b.x);
    var_1 = !select(!vec4<bool>(!var_2.d.a.x, true, var_1.x, false), select(!vec4<bool>(var_1.x, false, false, false), vec4<bool>(true, true, var_0.x, any(arg_2.d)), var_2.d.b), !select(select(vec4<bool>(var_2.d.a.x, true, var_0.x, false), vec4<bool>(var_1.x, arg_2.a, var_2.d.b, true), vec4<bool>(var_2.d.b, true, var_0.x, var_2.e)), vec4<bool>(var_0.x, true, true, false), true));
    let var_3 = Struct_4(abs(firstTrailingBit(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -32814i), var_2.a)))), vec4<u32>(0u, abs(3562u), _wgslsmith_dot_vec2_u32(func_2(_wgslsmith_f_op_f32(max(arg_2.c.x, global1.x)), 2147483647i >= u_input.d.x, func_2(1038f, true, false).d.a.x).c, var_2.b.zw), var_2.d.c.x), var_2.d.c.xx, global0[_wgslsmith_index_u32(1u, 21u)], ~var_2.a.x < arg_2.b.x);
    return var_3.d.c.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global1.x);
    var var_1 = global1.x;
    var var_2 = var_0;
    var var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(abs(~func_1(Struct_2(u_input.c.x), vec2<f32>(var_0, -1477f), Struct_3(true, u_input.d, vec2<f32>(-364f, -989f), vec2<bool>(false, true), -1000f))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 13884u)), select(vec2<u32>(1u, 4294967295u), vec2<u32>(53734u, 1u), vec2<bool>(false, true))))), vec2<u32>(~43737u, 0u));
    var var_4 = countOneBits(u_input.a);
    let var_5 = vec3<f32>(global1.x, var_0, 520f);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_5.yx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_5.x, var_0), var_5.yx)))))));
}

