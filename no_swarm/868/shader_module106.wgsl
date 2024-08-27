struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: f32,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<i32, 12>;

var<private> global2: array<u32, 11> = array<u32, 11>(22614u, 0u, 0u, 20739u, 1u, 0u, 18842u, 0u, 51808u, 59465u, 80368u);

var<private> global3: u32 = 1u;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<u32> {
    let var_0 = global4.d;
    let var_1 = firstTrailingBit(vec2<i32>(abs(~global4.c), _wgslsmith_div_i32(global4.c, global4.c)));
    var var_2 = global4.b;
    global4 = Struct_2(global4.b, Struct_1(_wgslsmith_f_op_f32(751f - -1282f)), _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(var_1, var_1, vec2<i32>(-7684i, var_1.x))) | -vec2<i32>(7382i, var_1.x), max(~vec2<i32>(-2147483647i, -356i), firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(1u, 12u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(max(-133f, global4.a.a)), var_2.a, _wgslsmith_f_op_f32(trunc(752f)))))), 4294967295u);
    var var_3 = select(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(41645u, 11u)], 0u)), min(~vec3<u32>(53734u, global4.e, global4.e), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27958u, 11u)], 11u)], u_input.a, 0u))), 4294967295u, (any(vec2<bool>(false, false)) && true) & true) | ~27149u;
    return vec2<u32>(0u, firstTrailingBit(~(5178u << (1u % 32u))));
}

fn func_2() -> Struct_2 {
    var var_0 = ~func_3();
    let var_1 = 1u;
    global0 = array<Struct_2, 8>();
    let var_2 = _wgslsmith_div_f32(global4.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.a.a), -126f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1466f) * _wgslsmith_f_op_f32(f32(-1f) * -679f)), -438f)))));
    global1 = array<i32, 12>();
    return global0[_wgslsmith_index_u32(0u, 8u)];
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: i32) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.b.a))))), global4.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2413f))));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = ~(vec2<u32>(0u, _wgslsmith_div_u32(~global4.e, 98033u)) & countOneBits(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 68419u), vec2<u32>(global4.e, global2[_wgslsmith_index_u32(1u, 11u)])), ~vec2<u32>(27773u, 61679u))));
    let var_1 = select(!select(!select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec2<bool>(true, false))), vec2<bool>(true, false)), vec2<bool>(true, true));
    let var_2 = global4.a;
    let var_3 = Struct_2(global4.b, global4.b, ~(-1i) ^ global1[_wgslsmith_index_u32(~firstTrailingBit(reverseBits(var_0.x)), 12u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 11u)], 8u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.d.x, 1193f, 532f, 876f) * vec4<f32>(var_2.a, global4.b.a, -334f, -1822f)), _wgslsmith_f_op_f32(f32(-1f) * -490f), func_2(), var_0 | vec2<u32>(4294967295u, 0u)), -vec4<i32>(arg_0, arg_0, -11150i, -6965i), global4.c)) + global4.d), u_input.a);
    global0 = array<Struct_2, 8>();
    return StorageBuffer(func_2().b.a, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(23049u, 12u)] ^ 391i, _wgslsmith_sub_i32(51295i, global1[_wgslsmith_index_u32(19361u, 12u)])), vec2<i32>(~(-2147483647i), _wgslsmith_sub_i32(2147483647i, 2147483647i)), select(vec2<i32>(global4.c, 2147483647i), vec2<i32>(20689i, -53808i) & vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], -2249i), true != var_1.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -53863i), firstTrailingBit(vec2<i32>(arg_0, arg_0))) << (vec2<u32>(~0u, ~4294967295u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-global4.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a, 333f))), vec4<i32>(~_wgslsmith_clamp_i32(arg_0 | -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, -2147483647i, 25059i), vec4<i32>(var_3.c, 0i, -3559i, 0i)), func_2().c), -2147483647i, ~firstLeadingBit(36140i & arg_0), _wgslsmith_sub_i32(max(select(arg_0, var_3.c, false), _wgslsmith_mod_i32(-39654i, -1i)), _wgslsmith_add_i32(abs(global1[_wgslsmith_index_u32(1u, 12u)]), i32(-1i) * -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 11>();
    let x = u_input.a;
    s_output = func_1(-26614i);
}

