struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

var<private> global3: array<vec2<i32>, 10>;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(1i, -58580i, 1i), 8309i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> Struct_1 {
    global2 = array<vec3<bool>, 3>();
    global1 = array<Struct_1, 2>();
    let var_0 = global1[_wgslsmith_index_u32(~arg_0.x, 2u)];
    let var_1 = Struct_1(-u_input.e, _wgslsmith_dot_vec2_i32(-countOneBits(var_0.a.yz), (vec2<i32>(global4.a.x, -2147483647i) & vec2<i32>(u_input.c, 0i)) | vec2<i32>(u_input.c, 5872i)));
    let var_2 = 470f;
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~_wgslsmith_mult_u32(arg_0.x, 4294967295u)) << (93643u % 32u), max(~(arg_0.x & ~0u), arg_0.x)), 2u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    var var_0 = func_2(vec4<u32>(0u, ~_wgslsmith_sub_u32(~1u, ~4294967295u), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(44328u, 4592u), vec2<u32>(0u, 19668u), arg_1.x), ~(~vec2<u32>(4294967295u, 1u))), ~1u), select(global0.xy, arg_1.wx, vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(29417u, 51905u), vec2<u32>(4294967295u, 12159u)) <= _wgslsmith_sub_u32(51762u, 41767u), any(!vec3<bool>(global0.x, arg_1.x, false)))));
    let var_1 = Struct_1(u_input.e, (select(global4.a.x, _wgslsmith_sub_i32(var_0.a.x, -47045i), !global0.x) >> (abs(1u >> (0u % 32u)) % 32u)) & _wgslsmith_add_i32(1i, arg_0.a.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-430f, -1540f), _wgslsmith_f_op_f32(f32(-1f) * -439f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(1000f)), 1f))));
    global1 = array<Struct_1, 2>();
    let var_3 = ~arg_0.a;
    return countOneBits(~_wgslsmith_mod_i32(_wgslsmith_add_i32(-arg_0.a.x, u_input.b), ~(i32(-1i) * -27779i)));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = abs(_wgslsmith_div_u32(arg_0.x, ~(~(~2791u))));
    global4 = arg_2;
    global2 = array<vec3<bool>, 3>();
    let var_1 = func_2(~(~(~abs(vec4<u32>(arg_0.x, 0u, arg_0.x, 13444u)))), global0.zy);
    return reverseBits(~(~(~_wgslsmith_clamp_u32(arg_0.x, arg_0.x, 25445u))));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    global4 = global1[_wgslsmith_index_u32(func_4(vec2<u32>(abs(57996u), 1u), ~abs(global4.a.x) & -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.c, global4.a.x), u_input.e), Struct_1(~vec3<i32>(u_input.b, -2147483647i, global4.a.x), func_3(func_2(vec4<u32>(17160u, 6659u, 14555u, 46381u), vec2<bool>(false, false)), !vec4<bool>(true, true, global0.x, arg_0.x), select(global4.a.x, global4.a.x, false)))) >> (~113092u % 32u), 2u)];
    global1 = array<Struct_1, 2>();
    global3 = array<vec2<i32>, 10>();
    global1 = array<Struct_1, 2>();
    global4 = Struct_1(_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(global4.b, global4.a.x, -61742i)), global4.a, -countOneBits(vec3<i32>(2147483647i, -29329i, -1i))) >> (~vec3<u32>(1u, firstTrailingBit(4294967295u), 1u) % vec3<u32>(32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~u_input.e, firstLeadingBit(u_input.e)) >> ((firstTrailingBit(vec3<u32>(61430u, 15269u, 62063u)) & ~vec3<u32>(0u, 1u, 11794u)) % vec3<u32>(32u)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(global4.b, u_input.a, global4.b), vec3<i32>(u_input.d, global4.a.x, global4.b)))));
    return false && global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(!func_1(vec2<bool>(global4.a.x < 9425i, true)), true, true);
    global3 = array<vec2<i32>, 10>();
    let var_0 = ~(-vec2<i32>(global4.b & 16283i, -2147483647i));
    var var_1 = global1[_wgslsmith_index_u32(~(~73503u), 2u)];
    global3 = array<vec2<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-281f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2378f, -565f, global0.x))))), func_3(global1[_wgslsmith_index_u32(firstTrailingBit(~(~4294967295u)), 2u)], vec4<bool>(true, true, true, true), select(-1i, var_0.x, true)), vec4<i32>(-min(global4.b, 1i), ~95018i, func_3(Struct_1(-vec3<i32>(2147483647i, 0i, -67232i), var_0.x), !(!vec4<bool>(global0.x, global0.x, true, false)), u_input.b), 1i), vec3<f32>(-1153f, 121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f)))));
}

