struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8>;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(-201f, 651f, 1000f, -2250f), Struct_1(1567f, vec4<f32>(1678f, 727f, 970f, -1000f)), vec4<f32>(-424f, -2532f, 219f, 244f), Struct_1(-1428f, vec4<f32>(1882f, -1559f, 667f, -1000f)));

var<private> global2: Struct_3 = Struct_3(vec3<f32>(-204f, -929f, 132f), i32(-2147483648), Struct_1(-187f, vec4<f32>(-273f, -527f, 572f, -109f)));

var<private> global3: u32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = ~u_input.a.x;
    global1 = Struct_2(arg_0.d.b, Struct_1(-1362f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.a.x + arg_1.a.x), _wgslsmith_f_op_f32(min(-498f, 767f)), global1.b.b.x, _wgslsmith_f_op_f32(step(146f, 595f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(723f, global1.c.x, -1966f, -306f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, global2.c.a))) * _wgslsmith_f_op_f32(193f * _wgslsmith_f_op_f32(round(global2.c.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d.b.x + global2.c.b.x), -616f) + -1000f), arg_1.a.x, arg_1.d.a), arg_0.b);
    global2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-281f * 554f), _wgslsmith_f_op_f32(arg_1.a.x + -1000f), _wgslsmith_f_op_f32(-global1.a.x)), vec3<f32>(517f, _wgslsmith_f_op_f32(f32(-1f) * -684f), global1.a.x)))), -2147483647i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(121f))), global2.c.b));
    let var_1 = ~global2.b;
    let var_2 = ~firstTrailingBit(~(~u_input.b));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    let var_0 = -(~(global2.b ^ _wgslsmith_dot_vec4_i32(min(vec4<i32>(2147483647i, -1i, arg_3.b, global2.b), vec4<i32>(0i, arg_1, 38776i, arg_3.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.b, -23912i, global2.b, arg_1), vec4<i32>(arg_1, 570i, arg_3.b, arg_1)))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_div_u32(reverseBits(u_input.b.x), 51641u), 39581u), countOneBits(reverseBits(select(vec3<u32>(1u, u_input.a.x, 23843u), vec3<u32>(71384u, 1u, u_input.a.x), arg_0)) << (vec3<u32>(u_input.b.x, 4294967295u << (u_input.a.x % 32u), abs(u_input.a.x)) % vec3<u32>(32u)))), 8u)];
    var var_2 = !(!select(select(select(vec3<bool>(arg_0, true, true), vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, false, true)), vec3<bool>(arg_0, false, true), !vec3<bool>(true, false, arg_0)), select(!vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, false, arg_0)), !vec3<bool>(arg_0, arg_0, arg_0)));
    var_2 = vec3<bool>(true || (_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.b, 0i), vec2<i32>(-11992i, arg_1))) != arg_1), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global2.c.a)), _wgslsmith_f_op_f32(-global2.a.x))))) != -669f, true);
    let var_3 = true;
    return 980f;
}

fn func_1() -> vec4<bool> {
    var var_0 = global1.d.b.x;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(132f, -542f, global1.c.x, global1.d.b.x), global1.d, global2.c.b, global2.c), Struct_2(vec4<f32>(1000f, 1000f, global1.d.b.x, -2378f), Struct_1(global2.c.b.x, vec4<f32>(global1.a.x, global1.b.b.x, -1452f, global1.a.x)), global2.c.b, Struct_1(1548f, vec4<f32>(global2.a.x, 645f, -1044f, global2.c.a))))), -179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, -2147483647i, Struct_1(global2.a.x, global2.c.b), Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global2.b, global2.c))))))), global2.b, Struct_1(_wgslsmith_f_op_f32(func_2(Struct_2(global2.c.b, global2.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, -1277f, global2.c.b.x, global2.c.b.x)), Struct_1(global2.c.b.x, vec4<f32>(global1.d.b.x, -1571f, 1336f, 1931f))), Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c.x, -1338f, global2.c.a, -537f), global1.a, true)), global1.d, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1492f, 369f, 178f, global1.a.x))), Struct_1(global2.a.x, vec4<f32>(global2.c.a, global2.a.x, global1.d.b.x, -115f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.b.x, -914f, _wgslsmith_f_op_f32(-1995f + -410f), _wgslsmith_f_op_f32(-691f * global1.c.x)))));
    var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(global2.c.b.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(118f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(374f)))), ~_wgslsmith_add_i32(firstTrailingBit(-var_1.b), firstTrailingBit(1i)), global2.c);
    let var_2 = select(select(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), vec3<bool>(false, true, any(vec3<bool>(false, true, true)) || false), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, false), true)), vec3<bool>(false, !all(vec3<bool>(false, true, false)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))) & false), firstLeadingBit(firstLeadingBit(0u)) >= _wgslsmith_dot_vec3_u32(vec3<u32>(~58586u, _wgslsmith_dot_vec4_u32(vec4<u32>(27907u, u_input.a.x, 4294967295u, 1u), vec4<u32>(u_input.a.x, u_input.b.x, 15375u, 17624u)), _wgslsmith_mod_u32(35318u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 62119u), reverseBits(u_input.a))));
    global3 = u_input.b.x;
    return !(!(!select(!vec4<bool>(true, var_2.x, true, true), select(vec4<bool>(var_2.x, true, true, false), vec4<bool>(var_2.x, var_2.x, false, false), true), var_2.x || false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = select(vec4<bool>(!any(vec2<bool>(true, true)), true, true, true), func_1(), u_input.a.x < u_input.a.x);
    var var_2 = global1.d;
    let var_3 = global2.c;
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_2.b), global1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.b.x), global1.b.a, true)), var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-576f)) - global2.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(global2.c.a, global2.a.x, -1111f, global2.c.b.x), global2.c, var_3.b, Struct_1(-1007f, vec4<f32>(var_2.b.x, -953f, global1.a.x, var_2.a))), Struct_2(vec4<f32>(-1442f, global1.c.x, 1324f, global1.b.a), Struct_1(-527f, global1.a), var_2.b, Struct_1(global1.c.x, var_2.b))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.a, -1000f, global1.b.b.x, global1.b.b.x) - _wgslsmith_f_op_vec4_f32(trunc(var_2.b))) + global1.d.b)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -313f))), vec4<f32>(1897f, global1.b.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_2.b.x)), _wgslsmith_f_op_f32(-global2.c.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-865f))))));
    var var_4 = Struct_3(global0[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(reverseBits(var_0), select(0u, var_0, var_1.x), 0u) >> (31572u % 32u)), 8u)], -(~(~_wgslsmith_mult_i32(-1628i, global2.b))), Struct_1(_wgslsmith_div_f32(-735f, -1421f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_3.b), _wgslsmith_f_op_vec4_f32(-var_2.b))), vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(max(global1.d.b.x, global2.c.b.x)), var_3.a, global1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, reverseBits(-50364i)), min(vec2<i32>(-41903i, global2.b), vec2<i32>(1053i, 1i)) ^ firstTrailingBit(vec2<i32>(2147483647i, var_4.b))) | _wgslsmith_mod_vec2_i32(-(vec2<i32>(-51100i, 1i) | vec2<i32>(-41952i, var_4.b)), vec2<i32>(29489i, 6375i) << ((u_input.b | u_input.b) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.c.a, _wgslsmith_f_op_f32(trunc(global1.a.x)), 657f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.a))));
}

