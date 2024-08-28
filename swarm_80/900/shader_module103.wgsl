struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1() -> u32 {
    global0 = array<Struct_1, 5>();
    let var_0 = u_input.a.x;
    let var_1 = firstLeadingBit(~((_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 13373u, u_input.d.x), vec3<u32>(13564u, 1u, 57046u)) | countOneBits(vec3<u32>(14387u, u_input.d.x, 0u))) & countOneBits(~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    return var_1.x;
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(372f + 105f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1405f + -580f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(430f, 661f))))));
    var var_1 = max(~abs(abs(abs(u_input.b))), _wgslsmith_dot_vec3_i32(~select(u_input.e.yzx | vec3<i32>(u_input.e.x, 19088i, u_input.a.x), vec3<i32>(u_input.e.x, 51426i, 32209i), all(arg_0)), _wgslsmith_mod_vec3_i32(firstTrailingBit(-u_input.a), firstTrailingBit(u_input.e.yxx))));
    var var_2 = 56145u;
    var var_3 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.e, select(~u_input.e, vec4<i32>(u_input.a.x, u_input.b, u_input.c, 9279i), true)), _wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(u_input.c, -53147i | u_input.c)), ~_wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, u_input.b), -14846i));
    var var_4 = 1u == ~u_input.d.x;
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> Struct_4 {
    let var_0 = ~(~(-1i));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1957f))) + _wgslsmith_f_op_f32(max(-2270f, 560f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f)));
    var_1 = Struct_3(Struct_2(-913f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-988f, var_1.b.x) - var_1.b)))), vec2<f32>(-136f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.a, var_1.b.x) + _wgslsmith_f_op_f32(func_3(vec4<bool>(true, arg_3.b, arg_3.b, true))))))));
    let var_2 = vec4<bool>(true, all(vec2<bool>(true, false)), any(!(!vec4<bool>(arg_3.b, true, true, true))), true);
    var var_3 = arg_2 | select(~arg_0 <= max(~40348i, 59613i), any(vec2<bool>(true, true)), any(!vec3<bool>(true, false, arg_3.b)));
    return Struct_4(vec4<i32>(1i << (min(min(u_input.d.x, u_input.d.x), u_input.d.x ^ u_input.d.x) % 32u), _wgslsmith_mod_i32(_wgslsmith_add_i32(0i & var_0, _wgslsmith_mod_i32(1i, -6816i)), _wgslsmith_sub_i32(arg_0, var_0)), 2147483647i, -25340i), var_1.a, vec3<i32>(var_0, _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(-26650i, var_0), _wgslsmith_mod_i32(2147483647i, 41974i)), _wgslsmith_mod_i32(var_0, u_input.b)), firstTrailingBit(~u_input.e.x) ^ _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.e.x, u_input.a.x), 41678i)), _wgslsmith_div_i32(i32(-1i) * -_wgslsmith_clamp_i32(u_input.a.x, arg_3.a.x, -2147483647i), 1i));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec2<u32>, arg_3: bool) -> vec3<u32> {
    let var_0 = !arg_3;
    var var_1 = func_2(-1i, !var_0, 2766u >= ~u_input.d.x, Struct_1(-reverseBits(vec3<i32>(8289i, -2147483647i, arg_0.a.x)), -552f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -405f) + -568f)));
    let var_2 = vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(~(~50181u)), firstTrailingBit(~(u_input.d.x >> (u_input.d.x % 32u)))), arg_2.x, (u_input.d.x >> (~1u % 32u)) ^ 1u);
    let var_3 = !select(!(!(!vec3<bool>(true, var_0, var_0))), !select(vec3<bool>(var_0, false, var_0), !vec3<bool>(var_0, true, true), !vec3<bool>(arg_3, false, false)), vec3<bool>(any(select(vec3<bool>(false, var_0, true), vec3<bool>(arg_3, var_0, var_0), false)), true || (u_input.c == -2147483647i), arg_3));
    let var_4 = arg_2.x;
    return _wgslsmith_div_vec3_u32(~select(var_2, ~vec3<u32>(8371u, u_input.d.x, 1u), false) << (select(~vec3<u32>(4294967295u, 1u, 32001u), vec3<u32>(firstLeadingBit(arg_2.x), var_2.x, _wgslsmith_sub_u32(83998u, 0u)), false) % vec3<u32>(32u)), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    var var_0 = false;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(285f, -179f))) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(123f, -365f), -182f, false))))));
    let var_1 = ~func_4(func_2(~(~6571i), true, true, global0[_wgslsmith_index_u32(func_1() ^ u_input.d.x, 5u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2493f))), max(~u_input.d, ~_wgslsmith_mult_vec2_u32(vec2<u32>(43084u, 4294967295u), vec2<u32>(6972u, 1u))), true);
    var_0 = !(!all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(563f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f) * 1009f))), u_input.c);
}

