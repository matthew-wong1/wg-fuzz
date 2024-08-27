struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    let var_0 = u_input.a;
    let var_1 = ~abs(vec2<i32>(~82308i, var_0));
    var var_2 = vec2<bool>(global0.a.x & global0.a.x, -145f == _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(844f)) * 624f)));
    return var_0;
}

fn func_2() -> vec4<i32> {
    global1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(_wgslsmith_f_op_f32(-565f * _wgslsmith_f_op_f32(global1.x * _wgslsmith_div_f32(-110f, global1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.x)), -1953f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, global1.x)) - _wgslsmith_f_op_f32(global1.x + 2110f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x + global1.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, -1582f)))))));
    global0 = Struct_2(global0.a);
    var var_0 = Struct_2(vec2<bool>(func_3(countOneBits(vec3<u32>(69406u, 1u, 0u))) > ~_wgslsmith_div_i32(u_input.a, 0i), true));
    let var_1 = Struct_4(Struct_3(-1i, Struct_2(select(global0.a, var_0.a, !global0.a.x))), Struct_1(all(vec3<bool>(all(vec3<bool>(true, true, global0.a.x)), var_0.a.x, global0.a.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-580f, global1.x, 219f))))), ~min(~(4294967295u << (0u % 32u)), ~77915u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * global1.x), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -384f))));
    var var_2 = select(var_0.a.x, global0.a.x, !var_1.b.a | false);
    return _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.a, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(var_1.a.a, -2147483647i, -14645i)), ~(~vec3<i32>(1i, var_1.a.a, var_1.a.a))), ~(-2147483647i) >> (_wgslsmith_mult_u32(var_1.c & var_1.c, var_1.c) % 32u), 9846i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.a.a, -33150i, var_1.a.a) >> (vec4<u32>(var_1.c, 4294967295u, var_1.c, var_1.c) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(-20607i, u_input.a, u_input.a, -1i))), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, var_1.a.a, var_1.a.a), -vec3<i32>(-1i, var_1.a.a, u_input.b)), _wgslsmith_sub_i32(var_1.a.a, -u_input.b), 1i) & (_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(1i, var_1.a.a, u_input.a, var_1.a.a)), vec4<i32>(31542i, var_1.a.a, 2147483647i, -19940i)) << (min(vec4<u32>(var_1.c, 29898u, 4294967295u, 66884u), vec4<u32>(var_1.c, var_1.c, var_1.c, 24163u)) % vec4<u32>(32u))));
}

fn func_1() -> f32 {
    global0 = Struct_2(!(!(!vec2<bool>(global0.a.x, false))));
    let var_0 = countOneBits(_wgslsmith_mult_vec4_i32(func_2() >> (vec4<u32>(~22241u, abs(4294967295u), 1u, 1u) % vec4<u32>(32u)), abs(-(vec4<i32>(-25563i, u_input.b, 2147483647i, 2147483647i) | vec4<i32>(u_input.a, 43984i, u_input.b, u_input.b)))));
    return _wgslsmith_f_op_f32(-1951f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1353f + 1000f), global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-563f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x - -137f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(122f)) * _wgslsmith_f_op_f32(-global1.x)), false)), 30033u <= (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 38479u, 1u), vec3<u32>(0u, 4294967295u, 5356u)) << (~4294967295u % 32u)))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))));
    let var_0 = Struct_5(Struct_1(true, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-166f, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(893f, global1.x, -1447f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -2271f, global1.x)))))), !(!select(!vec3<bool>(global0.a.x, global0.a.x, true), select(vec3<bool>(true, false, global0.a.x), vec3<bool>(global0.a.x, global0.a.x, global0.a.x), global0.a.x), select(vec3<bool>(false, global0.a.x, global0.a.x), vec3<bool>(false, global0.a.x, true), false))), Struct_3(u_input.b, Struct_2(global0.a)), all(select(vec3<bool>(u_input.b >= u_input.b, global0.a.x & true, true), !vec3<bool>(true, global0.a.x, false), global0.a.x)));
    var var_1 = vec2<u32>(~(~1u), 0u & _wgslsmith_clamp_u32(1u, 4294967295u, 30843u)) << (vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_add_u32(11945u, 43293u)), _wgslsmith_mult_u32(~54709u, ~4294967295u)), 4294967295u) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_1.x, 64534u, var_1.x), ~abs(vec3<u32>(25099u, 85316u, 6948u))), abs(~countOneBits(vec3<u32>(var_1.x, var_1.x, 3158u))), any(!select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), vec4<bool>(true, var_0.c.b.a.x, global0.a.x, global0.a.x), true))), 1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -595f, 1359f, global1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, var_0.a.b.x, 547f, 999f))))), var_1.x);
}

