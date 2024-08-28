struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(17532u, 12307u), vec2<u32>(43568u, 4294967295u), vec2<u32>(1u, 79115u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_clamp_u32(~abs(arg_2 | (arg_2 >> (arg_2 % 32u))), ~arg_2, ~firstLeadingBit(firstLeadingBit(1u)));
    return 153f;
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = Struct_3(select(vec2<bool>(true, true), select(vec2<bool>(false, all(vec4<bool>(false, true, true, false))), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, true, true))), vec2<bool>(u_input.a.x == u_input.a.x, true), true)), arg_0);
    var var_1 = ~_wgslsmith_sub_u32(u_input.b, ~5462u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.x, 507f), arg_0)) * arg_0))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b, var_0.b), _wgslsmith_f_op_vec2_f32(arg_0 * var_0.b)), arg_0)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-298f)) + 956f) * var_0.b.x);
    let var_4 = Struct_4(Struct_3(vec2<bool>(abs(u_input.b) <= firstTrailingBit(u_input.b), !all(vec4<bool>(false, true, var_0.a.x, true))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-160f, arg_0.x)))), 170f)), Struct_1(false), u_input.b, (~countOneBits(u_input.a.x) <= (i32(-1i) * -1i)) == true, var_0.a.x);
    return _wgslsmith_div_u32(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4831u, 1u), vec4<u32>(42054u, 0u, u_input.b, var_4.c))), ~u_input.b), 61521u);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> vec3<u32> {
    var var_0 = vec4<bool>(true, true, true, true && all(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -701f);
    let var_2 = ((vec3<u32>(41783u, abs(u_input.b), arg_1) >> (vec3<u32>(1u, _wgslsmith_div_u32(0u, 55313u), u_input.b) % vec3<u32>(32u))) << (vec3<u32>(arg_1, 0u, 1u) % vec3<u32>(32u))) & abs(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, 1u, 0u), ~vec3<u32>(59101u, arg_1, 1u)));
    var var_3 = global0[_wgslsmith_index_u32(~func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(var_0.x, Struct_1(var_0.x), var_2.x)), _wgslsmith_f_op_f32(abs(730f))))), 3u)];
    let var_4 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -arg_0, vec3<i32>(arg_0.x | min(-21213i, 2147483647i), u_input.a.x, 1i)), arg_0.zx, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, ~(u_input.b ^ var_3.x), abs(var_2.x) ^ countOneBits(var_3.x)), ~vec3<u32>(_wgslsmith_mod_u32(var_3.x, var_2.x), 1u, 50413u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-857f, _wgslsmith_f_op_f32(abs(362f)))))), !select(select(!vec4<bool>(var_0.x, true, var_0.x, false), !vec4<bool>(true, false, var_0.x, var_0.x), true), select(!vec4<bool>(true, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, false, false, var_0.x), var_0.x), select(!vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), true)));
    return var_4.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~abs(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 1i, 2147483647i)), ~u_input.a, ~_wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(20272u, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, 81345u))), func_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.b) >> ((vec3<u32>(4294967295u, 4294967295u, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), -456f, select(vec4<bool>(true, true, true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)))), !vec4<bool>(any(vec3<bool>(true, false, false)), true, any(vec4<bool>(false, true, true, true)), true), vec4<bool>(true, true, select(true, true, all(vec2<bool>(true, false))), true)));
    var var_1 = Struct_5(Struct_1(true), firstLeadingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(53967i, u_input.a.x, -1i, 13479i), vec4<i32>(var_0.a.x, 2147483647i, 1i, -2147483647i)) ^ (abs(vec4<i32>(var_0.b.x, u_input.a.x, 7192i, -8728i)) ^ firstLeadingBit(vec4<i32>(-2147483647i, 0i, u_input.a.x, -2147483647i)))));
    var var_2 = ~select(func_1(vec3<i32>(1i, _wgslsmith_add_i32(u_input.a.x, 2147483647i), reverseBits(0i)), ~(~var_0.c.x)).x, var_0.c.x, all(vec2<bool>(true, true)));
    global0 = array<vec2<u32>, 3>();
    let var_3 = Struct_3(select(!(!select(var_0.e.yx, vec2<bool>(false, var_0.e.x), var_0.e.x)), select(select(!vec2<bool>(false, var_1.a.a), var_0.e.zy, vec2<bool>(var_1.a.a, var_1.a.a)), !vec2<bool>(false, var_0.e.x), select(select(vec2<bool>(var_1.a.a, var_0.e.x), vec2<bool>(var_0.e.x, var_1.a.a), false), select(var_0.e.zw, vec2<bool>(var_0.e.x, var_1.a.a), true), var_0.e.ww)), !(true | any(vec2<bool>(var_0.e.x, var_0.e.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(408f, 189f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(700f, -318f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d))))));
    var_1 = Struct_5(var_1.a, min(var_1.b, reverseBits(var_1.b)));
    var var_4 = Struct_4(Struct_3(var_3.a, var_3.b), var_1.a, u_input.b, true, ~(~1u) != ~max(~u_input.b, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, var_0.c, _wgslsmith_mod_vec2_i32(max(~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-2147483647i, 0i)), vec2<i32>(-10353i, var_0.a.x)), vec2<i32>(-46514i, -2147483647i)), -2147483647i);
}

