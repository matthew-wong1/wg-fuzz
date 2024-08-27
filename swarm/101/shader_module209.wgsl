struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<i32, 8>;

var<private> global2: array<Struct_1, 15>;

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, 62581i, 0i, -47347i);

var<private> global4: array<Struct_2, 26>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1() -> u32 {
    return 20104u;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>) -> vec2<i32> {
    let var_0 = arg_0;
    let var_1 = vec4<bool>(!any(vec3<bool>(select(false, var_0.c, false), any(vec3<bool>(true, false, arg_0.b)), true)), arg_1.b, ((u_input.a.x & 56354u) < 70509u) | arg_0.c, all(!(!(!vec2<bool>(arg_0.b, false)))));
    let var_2 = Struct_2(arg_1.a, var_1.x, true);
    let var_3 = Struct_2(reverseBits(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, var_0.a.x, var_0.a.x), vec3<i32>(-30116i, global0.x, -2147483647i)), abs(global0.x), global1[_wgslsmith_index_u32(~u_input.a.x, 8u)])), _wgslsmith_clamp_i32(arg_0.a.x, firstLeadingBit(global3.x), global3.x << (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u)) >= -(-arg_0.a.x & _wgslsmith_dot_vec3_i32(arg_1.a, vec3<i32>(arg_0.a.x, -1i, u_input.b))), !(4294967295u <= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u) & u_input.a, u_input.a)));
    let var_4 = firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, ~vec2<u32>(50139u, 1u) & u_input.a, vec2<u32>(u_input.a.x, abs(u_input.a.x))), _wgslsmith_div_vec2_u32(select(countOneBits(u_input.a), max(u_input.a, vec2<u32>(5204u, 42671u)), any(var_1.wxx)), vec2<u32>(u_input.a.x | u_input.a.x, reverseBits(u_input.a.x)))));
    return firstLeadingBit(global3.xx);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = global2[_wgslsmith_index_u32(1u, 15u)];
    global0 = global3.xyy;
    var var_1 = _wgslsmith_mult_u32(~u_input.a.x, ~_wgslsmith_div_u32(~(~26193u), arg_2.b));
    var var_2 = 1i;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-582f, _wgslsmith_f_op_f32(f32(-1f) * -1501f), var_0.a.x)))), ~4002u, _wgslsmith_clamp_vec2_i32(func_3(arg_3, arg_1, vec2<f32>(-446f, _wgslsmith_f_op_f32(-var_0.a.x))), select(reverseBits(vec2<i32>(27651i, global1[_wgslsmith_index_u32(arg_2.b, 8u)])) | reverseBits(global0.xx), ~(var_0.c | vec2<i32>(44190i, arg_2.c.x)), select(select(vec2<bool>(true, arg_1.c), vec2<bool>(true, arg_3.b), arg_3.b), vec2<bool>(false, arg_1.b), true)), ~vec2<i32>(arg_1.a.x, ~u_input.b)));
    return !(!vec3<bool>(true, !arg_1.c, any(vec4<bool>(true, arg_3.b, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x > (func_1() >> ((u_input.a.x << (1420u % 32u)) % 32u));
    global1 = array<i32, 8>();
    global4 = array<Struct_2, 26>();
    var_0 = select(!all(vec4<bool>(true, true, true, 12626u <= u_input.a.x)), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(vec2<f32>(2007f, -1000f), global4[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 15u)], Struct_2(vec3<i32>(global1[_wgslsmith_index_u32(0u, 8u)], global3.x, global3.x), true, false)))), true && ((any(vec3<bool>(false, false, false)) && true) || true));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(select(_wgslsmith_mult_u32(4294967295u, u_input.a.x), ~u_input.a.x, any(vec3<bool>(false, true, false))), func_1()), _wgslsmith_div_u32(u_input.a.x, 26099u)), u_input.a.x), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 10414u, ~0u, firstTrailingBit(1u)), ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, var_1.b, u_input.a.x, u_input.a.x)))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_1.b, countOneBits(var_1.b), ~u_input.a.x, func_1())), vec4<u32>(~abs(20632u), var_1.b, u_input.a.x, 4294967295u)), 38853i, 2147483647i, ~vec3<u32>(var_1.b << (abs(u_input.a.x) % 32u), _wgslsmith_mod_u32(u_input.a.x, 1u), abs(var_1.b)));
}

