struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: bool) -> vec2<f32> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 5u)];
    global0 = array<Struct_1, 5>();
    let var_1 = _wgslsmith_clamp_u32(2433u, 21201u, 8824u);
    let var_2 = vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-7827i, var_0.e, -2147483647i, 146i), vec4<i32>(-2147483647i, var_0.e, var_0.d, -14489i)), var_0.d & 0i), -1i & _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -2147483647i, 1i, 0i), select(vec4<i32>(var_0.e, var_0.e, -18157i, 30750i), vec4<i32>(36176i, var_0.d, -2147483647i, var_0.e), vec4<bool>(true, true, false, false)))) >> ((~firstLeadingBit(~vec2<u32>(u_input.a.x, 4294967295u)) ^ ~u_input.a) % vec2<u32>(32u));
    var var_3 = firstLeadingBit(_wgslsmith_sub_i32(1876i, 2147483647i));
    return vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -546f));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: bool, arg_3: vec4<u32>) -> i32 {
    var var_0 = arg_3.x;
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var_0 = 24291u;
    var_0 = u_input.a.x;
    return -reverseBits(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, 2292i, 1i, 0i)), vec4<i32>(-6334i, select(-1i, 41608i, arg_2), reverseBits(-8286i), i32(-1i) * -2103i)));
}

fn func_1() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_2(34218u < _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, u_input.a.x, u_input.a.x)), firstLeadingBit(vec3<u32>(0u, u_input.a.x, u_input.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-638f, 1275f, 752f))))))), ~abs(1u), func_3(vec4<f32>(1f, 1f, 1f, 1f), u_input.a.x <= abs(u_input.a.x), true, _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(1u, 4669u, u_input.a.x, 55255u))) >> (min(_wgslsmith_mod_u32(abs(4294967295u), u_input.a.x & u_input.a.x), ~u_input.a.x) % 32u), -57227i);
    global0 = array<Struct_1, 5>();
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, 24247u), 5u)];
    var var_1 = var_0.a.x;
    var var_2 = select(vec4<bool>(!(true != any(vec2<bool>(false, true))), select(false, true, (var_0.e ^ var_0.e) <= 0i), all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true), all(vec2<bool>(true, true))))), !vec4<bool>(true, false, true, 1000f >= _wgslsmith_f_op_f32(-var_0.a.x)), select(vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false)), true, any(vec2<bool>(false, false)), any(vec2<bool>(true, true))), vec4<bool>(any(vec3<bool>(true, true, true)), select(true, true, true), true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, any(vec2<bool>(false, true)), false, true), false)));
    return !any(select(select(select(vec4<bool>(var_2.x, var_2.x, false, false), vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(false, false, false, true)), vec4<bool>(false, var_2.x, false, false), true), vec4<bool>(true, true, true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    let var_0 = 489f;
    var var_1 = select(select(vec4<bool>(func_1(), true, all(vec2<bool>(true, true)), true), vec4<bool>(select(true, false, false) && any(vec4<bool>(true, true, false, false)), !(var_0 <= 522f), false, !any(vec2<bool>(true, false))), (1u >= (u_input.a.x ^ 0u)) | true), vec4<bool>(true, (select(false, false, false) || true) & true, true, false || (true | any(vec3<bool>(false, true, true)))), select(true, true, true));
    var var_2 = select(firstLeadingBit(_wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, 15369i, 23466i), ~vec3<i32>(-25842i, 46594i, 0i)) << (~(~vec3<u32>(u_input.a.x, u_input.a.x, 25405u)) % vec3<u32>(32u))), max(firstTrailingBit(vec3<i32>(1i, 1i, 1i)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, 0i, 0i), vec3<i32>(0i, _wgslsmith_mod_i32(-34484i, 28949i), select(-1i, -18111i, var_1.x)), vec3<i32>(~(-2147483647i), select(-62572i, -2147483647i, false), _wgslsmith_div_i32(-15628i, -2147483647i)))), var_1.wxw);
    global0 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

