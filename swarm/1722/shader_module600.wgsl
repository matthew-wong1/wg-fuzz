struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec2<u32>, 2>;

var<private> global2: vec3<i32> = vec3<i32>(-51821i, 34873i, 60024i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> i32 {
    var var_0 = arg_0;
    let var_1 = true;
    var var_2 = countOneBits(vec3<i32>(2147483647i, ~global2.x, reverseBits(global2.x)));
    let var_3 = Struct_1(vec4<u32>(_wgslsmith_div_u32(~10830u, _wgslsmith_clamp_u32(4294967295u, 110341u, 30174u)), firstLeadingBit(_wgslsmith_add_u32(25932u, 82808u)), ~reverseBits(4294967295u), 95044u) << (vec4<u32>(1u, ~(17698u << (1u % 32u)), 0u, 67806u) % vec4<u32>(32u)), ~vec3<u32>(58859u, firstTrailingBit(firstLeadingBit(4294967295u)), 38539u), -(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global2.x, -1i, 4218i), u_input.a))), abs(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, var_2.x), vec2<i32>(-1i, var_2.x)), -u_input.a.yy), 17751i)), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), arg_1.x, arg_1.x, _wgslsmith_div_f32(475f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))))));
    return 26651i;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> i32 {
    var var_0 = 4294967295u;
    let var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_1.a.e.wyy, _wgslsmith_f_op_vec3_f32(arg_1.b + var_1.e.yyw))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2, arg_1.b.x, arg_1.b.x)))))))));
    global2 = -abs(u_input.a.zwz);
    let var_3 = 21606i;
    return func_3(false && all(select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), global0.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-417f, _wgslsmith_div_f32(-1591f, -785f)) + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -238f), var_2.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_mult_i32(u_input.a.x, ~reverseBits(0i));
    global2 = vec3<i32>(var_0, -898i, func_4(_wgslsmith_mod_u32(arg_2.x, 49260u), Struct_2(Struct_1(~arg_2, reverseBits(vec3<u32>(arg_2.x, arg_2.x, 4294967295u)), _wgslsmith_div_i32(-1i, var_0), func_3(arg_1.a, arg_1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1020f, 1062f, arg_0.x, arg_1.b.x) * vec4<f32>(arg_1.b.x, arg_1.b.x, -1000f, arg_0.x))), arg_1.b), arg_0.x));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x + arg_0.x) + _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -907f), arg_0.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b)), arg_1.b));
    return 0u;
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> bool {
    var var_0 = u_input.a.xzz;
    var var_1 = arg_1.a.a.x;
    let var_2 = 0u;
    var_1 = func_2(_wgslsmith_f_op_vec2_f32(arg_1.a.e.ww - arg_1.b.yz), Struct_3(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, arg_0, arg_1.a.e.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1861f, arg_0, arg_0))), vec2<bool>(true, !global0.x), u_input.a.xxy), ~arg_1.a.a) >> (1u % 32u);
    let var_3 = any(!select(!select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, true, global0.x), global0.x), vec3<bool>(global2.x <= var_0.x, global0.x, true), vec3<bool>(any(vec4<bool>(global0.x, false, true, global0.x)), global0.x, global0.x | false)));
    return false & any(select(!vec3<bool>(var_3, global0.x, true), !vec3<bool>(true, false, var_3), select(vec3<bool>(true, false, true), !vec3<bool>(global0.x, true, true), !vec3<bool>(var_3, var_3, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(true, true, func_1(-1451f, Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 1u), vec3<u32>(0u, 0u, 265u), global2.x, _wgslsmith_mult_i32(global2.x, -2147483647i), vec4<f32>(1320f, 327f, -513f, -608f)), vec3<f32>(_wgslsmith_div_f32(2681f, 598f), _wgslsmith_f_op_f32(f32(-1f) * -590f), 773f))));
    let var_1 = !vec2<bool>(all(vec4<bool>(false, !var_0, global0.x, var_0 | true)), any(!vec4<bool>(var_0, true, global0.x, false)));
    global2 = ~abs(u_input.a.zyw);
    let var_2 = vec3<i32>(u_input.a.x ^ -14592i, firstTrailingBit(-42016i), (firstLeadingBit(~u_input.a.x) ^ 57134i) | -1i);
    let var_3 = Struct_3(any(select(!select(vec2<bool>(var_1.x, true), var_1, vec2<bool>(var_0, var_0)), vec2<bool>(true, all(vec3<bool>(true, false, var_1.x))), select(!var_1, vec2<bool>(var_0, var_1.x), any(vec4<bool>(false, true, false, true))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-458f, -278f, -219f) - vec3<f32>(-1430f, 905f, 1771f))))), select(var_1, var_1, var_1), -vec3<i32>(1i, -global2.x, ~u_input.a.x) ^ u_input.a.yyx);
    let var_4 = !vec3<bool>(!(!global0.x) != var_3.a, true, _wgslsmith_f_op_f32(var_3.b.x + _wgslsmith_f_op_f32(var_3.b.x + var_3.b.x)) <= -1165f);
    let var_5 = _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, var_2.x, u_input.a.x), -u_input.a.zxx);
    var var_6 = Struct_3(all(select(vec4<bool>(true, global0.x | var_4.x, all(var_3.c), var_1.x && var_0), vec4<bool>(var_1.x, all(var_4), var_1.x, select(var_3.c.x, var_1.x, false)), var_0)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(373f, 1553f, -1527f)), _wgslsmith_div_vec3_f32(var_3.b, var_3.b)))))), var_3.c, countOneBits(-var_3.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~vec2<u32>(36264u, 42669u), global1[_wgslsmith_index_u32(~1u, 2u)], vec2<u32>(~0u, 1u)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, countOneBits(4294967295u), firstTrailingBit(4294967295u)) >> (vec3<u32>(1u, countOneBits(1u), 4294967295u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(9878u, 30583u, 54974u)), firstLeadingBit(vec3<u32>(1u, 81974u, 61772u))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(38222u, 47735u), 68367u), 1u)), 0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_6.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.b.x, var_3.b.x, var_0)) * _wgslsmith_f_op_f32(ceil(-1288f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-489f, _wgslsmith_f_op_f32(round(var_6.b.x))) * 112f))));
}

