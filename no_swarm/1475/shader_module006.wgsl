struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(74029u, 4945u, 1u, 87322u), -821f, vec4<f32>(295f, -1059f, -516f, -385f), 438f);

var<private> global2: array<Struct_4, 21>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    return -u_input.a;
}

fn func_3() -> u32 {
    let var_0 = true;
    global0 = array<vec3<bool>, 7>();
    global1 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 70378u, ~global1.a.x, global1.a.x), global1.a), firstLeadingBit(firstTrailingBit(countOneBits(705u))), _wgslsmith_clamp_u32(abs(31800u), global1.a.x, _wgslsmith_mod_u32(global1.a.x, 60912u)), firstLeadingBit(firstLeadingBit(global1.a.x) & global1.a.x)), global1.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global1.c)) * global1.c)) + global1.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.c.x)))))));
    let var_1 = global2[_wgslsmith_index_u32(global1.a.x, 21u)];
    let var_2 = select(_wgslsmith_dot_vec3_u32(var_1.b.a.a.a.yzx, reverseBits(global1.a.yxz << (var_1.c.a.a.a.wzz % vec3<u32>(32u)))) ^ global1.a.x, global1.a.x << (59836u % 32u), var_0);
    return var_1.b.a.a.a.x;
}

fn func_1(arg_0: u32, arg_1: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_add_vec2_i32(~vec2<i32>(-18487i, u_input.a), ~firstTrailingBit(vec2<i32>(1i, func_2(vec2<i32>(u_input.a, u_input.a)))));
    global0 = array<vec3<bool>, 7>();
    let var_1 = global2[_wgslsmith_index_u32(~func_3(), 21u)];
    global1 = var_1.a.a.a;
    global1 = var_1.b.a.a;
    return var_1.a.a.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(global1.a.x, max(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global1.a.x, 18326u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 34061u), vec2<u32>(19434u, global1.a.x))), ~_wgslsmith_sub_u32(global1.a.x, 0u)), ~35291u, 28334u), global1.c.x, _wgslsmith_f_op_vec4_f32(func_1(1u, global1.b)), global1.d);
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec3_i32(-(~vec3<i32>(u_input.a, -49017i, u_input.a)), ~(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 21599i, u_input.a), vec3<i32>(u_input.a, u_input.a, 1i)))));
    global0 = array<vec3<bool>, 7>();
    let var_2 = Struct_2(Struct_1(~(~select(vec4<u32>(var_0.a.x, 23597u, 38730u, 71976u), global1.a, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), 1190f, global1.d, _wgslsmith_f_op_f32(-global1.c.x))), 1090f), u_input.a, global1.a.wwx & global1.a.yyz);
    global1 = Struct_1(vec4<u32>(~_wgslsmith_mult_u32(~global1.a.x, ~var_0.a.x), 58891u, ~1u | global1.a.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 1u), ~global1.a.x)), -675f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1442f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1094f)) * 405f), 1413f, _wgslsmith_f_op_f32(1852f * var_2.a.b)), _wgslsmith_f_op_vec4_f32(func_1(~countOneBits(4294967295u), global1.c.x)), select(vec4<bool>(true, true, true, select(true, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.b), _wgslsmith_f_op_f32(step(var_2.a.b, 1000f))) * global1.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.c.x - var_2.a.d))))));
    global0 = array<vec3<bool>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(global1.a.x, 43884u), countOneBits(var_0.a.ww) << (var_2.a.a.yx % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, global1.d))), _wgslsmith_f_op_vec2_f32(global1.c.zy - _wgslsmith_f_op_vec2_f32(vec2<f32>(-128f, var_2.a.b) * _wgslsmith_f_op_vec2_f32(step(var_2.a.c.yz, var_0.c.yz)))))));
}

