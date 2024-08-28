struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(11739u, 1u, 17594u);

var<private> global1: array<u32, 26>;

var<private> global2: vec3<i32>;

var<private> global3: vec3<u32>;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(-5909i, i32(-2147483648), 1i), vec4<u32>(34912u, 59077u, 3500u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> vec3<i32> {
    return global4.a;
}

fn func_2() -> vec4<f32> {
    global2 = reverseBits(vec3<i32>(1i, -1i, 2147483647i) & select(reverseBits(global4.a), -func_3(true, vec2<bool>(false, true)), true));
    var var_0 = vec4<bool>((-1i >> (~global3.x % 32u)) != global2.x, all(vec3<bool>(true, true, any(vec2<bool>(true, true)))), true | select(all(vec4<bool>(true, true, true, true)), true, (global0.x < 4294967295u) | true), (global1[_wgslsmith_index_u32(4294967295u, 26u)] | _wgslsmith_sub_u32(_wgslsmith_sub_u32(global3.x, 4294967295u), abs(6844u))) != ~global3.x);
    let var_1 = Struct_1(abs(global4.a), (vec4<u32>(max(global3.x, 1u), min(global0.x, global4.c.x), 1u, ~global3.x) << (global4.b % vec4<u32>(32u))) >> (~global4.b % vec4<u32>(32u)), global4.c);
    var_0 = select(!(!(!(!vec4<bool>(var_0.x, false, false, var_0.x)))), vec4<bool>(var_1.a.x < abs(28892i), select(all(var_0.yxy), true, var_0.x), true, true != var_0.x), vec4<bool>(global1[_wgslsmith_index_u32(~select(global3.x, 0u, false), 26u)] != 1u, true, true, true & var_0.x));
    global0 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.x, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], global1[_wgslsmith_index_u32(32646u, 26u)]), 0u), select(vec3<u32>(50902u, 90842u, global1[_wgslsmith_index_u32(4294967295u, 26u)]), ~global4.c, vec3<bool>(var_0.x, false, var_0.x)), ~(vec3<u32>(40204u, global1[_wgslsmith_index_u32(43795u, 26u)], 0u) & vec3<u32>(44702u, global4.b.x, 14203u))), ~(~(~vec3<u32>(4294967295u, 10405u, 1u)))), ~_wgslsmith_mod_vec3_u32((vec3<u32>(65919u, 4864u, global0.x) << (var_1.c % vec3<u32>(32u))) | firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(global4.c.x, 26u)], var_1.c.x, global3.x)), firstLeadingBit(global4.b.zxw)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1292f, 485f, -1000f, -714f), vec4<f32>(-1000f, 1357f, -804f, 826f))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(741f, -509f, -1129f, 139f))))))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2());
    let var_1 = !vec3<bool>(true, any(vec3<bool>(true, any(vec2<bool>(false, false)), false)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    global1 = array<u32, 26>();
    global0 = ~global4.b.wwy;
    let var_2 = Struct_1(select(vec3<i32>(2147483647i, 2147483647i, global4.a.x), -vec3<i32>(global4.a.x, -u_input.a, 31254i), !(!var_1)), max(vec4<u32>(abs(global0.x), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(58538u, global0.x)), 26u)], global0.x, countOneBits(max(4294967295u, global4.b.x))), global4.b), vec3<u32>(_wgslsmith_div_u32(abs(169u), global1[_wgslsmith_index_u32(global3.x, 26u)]), global3.x, 25793u));
    return Struct_2(Struct_1(var_2.a, vec4<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~global4.c.x, 26u)], 1u >> (var_2.c.x % 32u), global1[_wgslsmith_index_u32(~0u, 26u)]), var_2.c.x, abs(global1[_wgslsmith_index_u32(0u, 26u)]), ~global1[_wgslsmith_index_u32(abs(141181u), 26u)]), ~max(global4.b.zwx, global4.b.wwx) | _wgslsmith_clamp_vec3_u32(vec3<u32>(11074u, global0.x, global4.c.x), firstTrailingBit(var_2.b.wzz), vec3<u32>(13880u, global4.b.x, 23984u))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(arg_2.a, select(vec3<i32>(-3534i, u_input.b.x, arg_1), max(vec3<i32>(arg_1, 38911i, 22916i), vec3<i32>(arg_2.a.x, 32993i, -25117i)), vec3<bool>(true, false, false))), global4.b, vec3<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a.b.x, global4.c.x), 26u)], 4294967295u), 4294967295u, ~(~4294967295u))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -947f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(980f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-459f)) + -647f)), -589f, all(vec3<bool>(false, true, true)))));
    var var_2 = !(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_0.a.b.zw, arg_2.c.yy), 105884u), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 0u)), arg_0.a.c.zy)) >= global0.x);
    let var_3 = false;
    let var_4 = arg_0.a;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(global4.a, global4.a) | u_input.b.wwz, _wgslsmith_mod_vec4_u32(vec4<u32>(62502u, global1[_wgslsmith_index_u32(1u, 26u)], global3.x, 6690u), global4.b) >> (vec4<u32>(global1[_wgslsmith_index_u32(countOneBits(19568u), 26u)], firstLeadingBit(2580u), global3.x ^ global4.c.x, 1u << (0u % 32u)) % vec4<u32>(32u)), vec3<u32>(3082u, 23968u, func_4(func_1(), func_3(false, vec2<bool>(false, false)).x, Struct_1(global4.a, vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec3<u32>(4294967295u, global3.x, global4.b.x))))));
    let var_1 = -21631i;
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_f_op_vec4_f32(func_2()).wx, var_0.a.c, ~(~var_0.a.b.xwy));
}

