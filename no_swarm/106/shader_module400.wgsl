struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 23079u);

var<private> global2: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> i32 {
    let var_0 = -(~_wgslsmith_add_vec4_i32(vec4<i32>(abs(1i), _wgslsmith_sub_i32(u_input.c, -9873i), _wgslsmith_mod_i32(u_input.b, -17363i), u_input.b), ~firstLeadingBit(vec4<i32>(0i, 2147483647i, 2147483647i, -1i))));
    global1 = u_input.d;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global1.x | u_input.d.x), 17u)];
    global2 = Struct_3(Struct_2(vec4<u32>(~_wgslsmith_div_u32(4294967295u, 93798u), firstTrailingBit(~0u), global2.a.a.x, firstTrailingBit(~0u))), vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) - global2.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-384f, global2.b.x)) * _wgslsmith_f_op_f32(var_1.a.x - -980f)), _wgslsmith_f_op_f32(abs(1670f)))), global2.b.x));
    var var_2 = vec2<bool>(false || !(1i >= var_0.x), false);
    return ~(min(_wgslsmith_div_i32(countOneBits(var_0.x), u_input.c), -2147483647i >> (u_input.a % 32u)) ^ var_0.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3) -> vec3<i32> {
    global0 = array<Struct_1, 17>();
    var var_0 = firstTrailingBit(-2147483647i);
    let var_1 = any(vec3<bool>(true, true, false));
    var var_2 = arg_1;
    global0 = array<Struct_1, 17>();
    return vec3<i32>(firstTrailingBit(~(-u_input.b) & -(~u_input.e.x)), min(u_input.e.x, func_3()), -2147483647i);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    global2 = Struct_3(Struct_2(_wgslsmith_clamp_vec4_u32(arg_0.a, global2.a.a, vec4<u32>(501u, 1u, global1.x, 1u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.b + vec4<f32>(global2.b.x, arg_3.x, 541f, arg_2.a.x)))))));
    let var_0 = _wgslsmith_clamp_i32(~u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-10563i, -31611i), -_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.x, 1i), vec2<i32>(1i, -14560i)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), -u_input.e)), _wgslsmith_dot_vec4_i32(-(~select(vec4<i32>(0i, -1i, 22028i, arg_1.x), vec4<i32>(arg_1.x, 22166i, -29169i, u_input.b), true)), min(-reverseBits(vec4<i32>(2147483647i, arg_1.x, arg_1.x, -27310i)), abs(vec4<i32>(u_input.c, u_input.b, 2147483647i, u_input.b) ^ vec4<i32>(u_input.c, arg_1.x, arg_1.x, arg_1.x)))));
    let var_1 = vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(-128f - arg_3.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.b.x, global2.b.x))))))));
    let var_2 = 1116f;
    let var_3 = _wgslsmith_f_op_vec4_f32(-global2.b);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.b.x, var_1.x), _wgslsmith_f_op_vec2_f32(select(var_1.xy, var_3.wy, true))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_3.zx)))) * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-254f, var_2)))))), _wgslsmith_sub_u32(arg_0.a.x, ~1u));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: bool) -> Struct_2 {
    global1 = u_input.d;
    var var_0 = ~_wgslsmith_add_u32(~(arg_0.b >> ((global2.a.a.x | 4294967295u) % 32u)), global1.x);
    var var_1 = firstLeadingBit(i32(-1i) * -(u_input.e.x | (i32(-1i) * -1i)));
    let var_2 = global2.a;
    var var_3 = Struct_2(_wgslsmith_sub_vec4_u32(global2.a.a, vec4<u32>(func_4(Struct_2(global2.a.a), vec3<i32>(-1i, -5128i, 2147483647i), Struct_1(global2.b.wy, 14253u), vec2<f32>(-165f, arg_0.a.x)).b, 4294967295u, global1.x, _wgslsmith_add_u32(6624u, 1u))) & (~vec4<u32>(40164u, 4294967295u, arg_0.b, global1.x) & ~(global2.a.a << (vec4<u32>(1u, 15546u, 98u, 25964u) % vec4<u32>(32u)))));
    return global2.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    global0 = array<Struct_1, 17>();
    let var_0 = global2.b.x;
    let var_1 = Struct_3(func_5(func_4(Struct_2(global2.a.a << (vec4<u32>(global1.x, global1.x, u_input.d.x, 1767u) % vec4<u32>(32u))), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, arg_1, 1i), vec3<i32>(21430i, u_input.b, u_input.b), vec3<i32>(arg_1, u_input.b, 1i)), func_2(vec3<bool>(false, true, false), Struct_3(Struct_2(global2.a.a), global2.b))), Struct_1(vec2<f32>(1f, 1f), ~63585u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(global2.b.xy)), vec2<f32>(-211f, arg_0.x), true))), true, func_4(Struct_2(global2.a.a), select(vec3<i32>(u_input.e.x, u_input.e.x, -2147483647i), abs(vec3<i32>(1i, u_input.c, u_input.c)), true), Struct_1(vec2<f32>(1703f, arg_0.x), 1u), global2.b.zy).a.x, false), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2.b), _wgslsmith_f_op_vec4_f32(global2.b - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, 275f, 2147f, global2.b.x) + vec4<f32>(arg_0.x, global2.b.x, 1075f, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global2.b.x, arg_0.x, global2.b.x) + vec4<f32>(454f, 1651f, global2.b.x, global2.b.x))))), vec4<bool>(all(vec3<bool>(true, false, false)), true, firstLeadingBit(0i) < _wgslsmith_mult_i32(6421i, u_input.b), any(vec4<bool>(false, true, true, true))))));
    var var_2 = ~(~var_1.a.a.xwx);
    global0 = array<Struct_1, 17>();
    return func_4(Struct_2(vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.zz, vec2<u32>(var_1.a.a.x, global2.a.a.x)) ^ ~4317u, ~(u_input.a & var_1.a.a.x), var_1.a.a.x, abs(_wgslsmith_mult_u32(u_input.d.x, var_1.a.a.x)))), vec3<i32>(1577i, arg_1, 1i), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-697f, _wgslsmith_f_op_f32(ceil(-1578f)))), global2.a.a.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -301f)) * vec2<f32>(_wgslsmith_f_op_f32(global2.b.x + var_1.b.x), arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.yz), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global2.b.x, global2.b.x)), _wgslsmith_f_op_f32(global2.b.x + global2.b.x)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.b.x, -387f))))), u_input.e.x);
    let var_1 = !(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))));
    let var_2 = Struct_3(global2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global2.b)))));
    let var_3 = var_2;
    global1 = (_wgslsmith_mult_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(global2.a.a.yx, vec2<u32>(var_3.a.a.x, 66459u))), ~vec2<u32>(var_2.a.a.x, var_0.b)) ^ ~vec2<u32>(~42619u, _wgslsmith_div_u32(global2.a.a.x, var_2.a.a.x))) ^ var_3.a.a.xz;
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_4.b.yw * _wgslsmith_f_op_vec2_f32(-var_2.b.xw)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1431f), var_3.b.x, var_2.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.b.wxx * vec3<f32>(var_2.b.x, -1950f, -535f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(462f, var_2.b.x, 1042f)))), !select(!vec3<bool>(var_1.x, false, false), !vec3<bool>(var_1.x, true, var_1.x), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, false), false)))), _wgslsmith_dot_vec2_u32(reverseBits(~u_input.d), _wgslsmith_div_vec2_u32(abs(vec2<u32>(var_2.a.a.x, u_input.d.x)), select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, 70609u), var_2.a.a.yy), ~var_3.a.a.yx, false))));
}

